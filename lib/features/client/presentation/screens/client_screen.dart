import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/features/client/presentation/widgets/client_card.dart';

import '../../../../core/router/route_names.dart';
import '../../../home/presentation/widgets/search_text_field.dart';
import '../bloc/client_bloc.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen({super.key});

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    // TODO: add search use case to ClientBloc later
    // for now just reload all on empty
    if (query.trim().isEmpty) {
      context.read<ClientBloc>().add(const ClientEvent.getAllClients());
    }
  }

  void _showClientOptions(BuildContext context, String clientId) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: const Text(
                  'Delete Client',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _showDeleteConfirmation(context, clientId);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDeleteConfirmation(BuildContext context, String clientId) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('Delete Client'),
          content: const Text(
            'Are you sure you want to delete this client? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<ClientBloc>().add(
                  ClientEvent.deleteClient(clientId),
                );
              },
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  void _handleStateChanges(BuildContext context, ClientState state) {
    state.whenOrNull(
      error: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientBloc, ClientState>(
      listenWhen: (previous, current) =>
          current.maybeWhen(error: (_) => true, orElse: () => false),
      listener: _handleStateChanges,
      buildWhen: (previous, current) =>
          current.maybeWhen(
            loading: () => true,
            loaded: (_) => true,
            error: (_) => true,
            orElse: () => false,
          ) ||
          previous.maybeWhen(loading: () => true, orElse: () => false),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Clients',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: SearchTextField(
                    controller: _searchController,
                    hintText: 'Search here',
                    onChanged: _onSearch,
                    onSubmitted: _onSearch,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (clients) => clients.isEmpty
                        ? const Center(
                            child: Text(
                              'No clients yet',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        : ListView.separated(
                            itemCount: clients.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 10),
                            itemBuilder: (context, index) {
                              final client = clients[index];
                              return ClientCard(
                                client: client,
                                onClick: () => context.pushNamed(
                                  RouteNames.clientDetails,
                                  extra: client.id,
                                ),
                                onLongPress: () =>
                                    _showClientOptions(context, client.id),
                              );
                            },
                          ),
                    clientLoaded: (_) => const SizedBox.shrink(),
                    error: (message) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            message,
                            style: const TextStyle(color: Colors.red),
                          ),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: () => context.read<ClientBloc>().add(
                              const ClientEvent.getAllClients(),
                            ),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
