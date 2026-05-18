import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_snackbar.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../domain/entities/change_password_params.dart';
import '../../domain/entities/update_user_params.dart';
import '../../domain/entities/user_entity.dart';
import '../bloc/user_bloc.dart';
import '../widgets/profile_info_card.dart';
import '../widgets/profile_menu_items.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  void _handleStateChanges(BuildContext context, UserState state) {
    state.whenOrNull(
      profileLoaded: (user) {
        // update controllers when profile loads
        _nameController.text = user.name;
        _phoneController.text = user.phone ?? '';
      },
      success: (message) {
        AppSnackbar.success(context, message);
        context.read<UserBloc>().add(const UserEvent.getProfile());
      },
      error: (message) {
        AppSnackbar.error(context, message);
      },
    );
  }

  void _showEditProfileSheet(BuildContext context, UserEntity user) {
    _nameController.text = user.name;
    _phoneController.text = user.phone ?? '';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                _buildTextField('Name', _nameController),
                const SizedBox(height: 12),
                _buildTextField('Phone', _phoneController),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_nameController.text.trim().isEmpty) {
                        AppSnackbar.error(context, 'Name is required');
                        return;
                      }
                      Navigator.pop(context);
                      context.read<UserBloc>().add(
                        UserEvent.updateProfile(
                          UpdateProfileParams(
                            name: _nameController.text.trim(),
                            phone: _phoneController.text.trim().isEmpty
                                ? null
                                : _phoneController.text.trim(),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3F51B5),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showChangePasswordSheet(BuildContext context) {
    _currentPasswordController.clear();
    _newPasswordController.clear();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  'Current Password',
                  _currentPasswordController,
                  obscure: true,
                ),
                const SizedBox(height: 12),
                _buildTextField(
                  'New Password',
                  _newPasswordController,
                  obscure: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_currentPasswordController.text.trim().isEmpty ||
                          _newPasswordController.text.trim().isEmpty) {
                        AppSnackbar.error(context, 'All fields are required');
                        return;
                      }
                      if (_newPasswordController.text.trim().length < 6) {
                        AppSnackbar.error(
                          context,
                          'Password must be at least 6 characters',
                        );
                        return;
                      }
                      Navigator.pop(context);
                      context.read<UserBloc>().add(
                        UserEvent.changePassword(
                          ChangePasswordParams(
                            currentPassword: _currentPasswordController.text
                                .trim(),
                            newPassword: _newPasswordController.text.trim(),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3F51B5),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Update Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    );
  }

  // ─── Delete Account Dialog ────────────────────────────────────────────────
  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('Delete Account'),
          content: const Text(
            'Are you sure you want to delete your account? '
            'This action cannot be undone and all your data will be lost.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(ctx).pop();
                context.read<UserBloc>().add(const UserEvent.deleteAccount());
              },
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  // ─── Sign Out Dialog ──────────────────────────────────────────────────────
  void _showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('Sign Out'),
          content: const Text('Are you sure you want to sign out?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3F51B5),
              ),
              onPressed: () {
                Navigator.of(ctx).pop();
                context.read<AuthBloc>().add(SignOutEvent());
              },
              child: const Text(
                'Sign Out',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listenWhen: (previous, current) => current.maybeWhen(
        profileLoaded: (_) => true,
        success: (_) => true,
        error: (_) => true,
        orElse: () => false,
      ),
      listener: _handleStateChanges,
      buildWhen: (previous, current) => current.maybeWhen(
        profileLoaded: (_) => true,
        loading: () => true,
        error: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          body: state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message, style: const TextStyle(color: Colors.red)),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () => context.read<UserBloc>().add(
                      const UserEvent.getProfile(),
                    ),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
            profileLoaded: (user) => _buildContent(context, user),
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, UserEntity user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          ProfileInfoCard(user: user),
          const SizedBox(height: 24),

          _sectionTitle('Account'),
          const SizedBox(height: 8),
          ProfileMenuItem(
            icon: Icons.edit,
            label: 'Edit Profile',
            onTap: () => _showEditProfileSheet(context, user),
          ),
          const SizedBox(height: 8),
          ProfileMenuItem(
            icon: Icons.lock_outline,
            label: 'Change Password',
            onTap: () => _showChangePasswordSheet(context),
          ),

          const SizedBox(height: 24),

          _sectionTitle('Danger Zone'),
          const SizedBox(height: 8),
          ProfileMenuItem(
            icon: Icons.delete_outline,
            label: 'Delete Account',
            onTap: () => _showDeleteAccountDialog(context),
            iconColor: Colors.red,
            labelColor: Colors.red,
          ),
          const SizedBox(height: 8),
          ProfileMenuItem(
            icon: Icons.logout,
            label: 'Sign Out',
            onTap: () => _showSignOutDialog(context),
            iconColor: Colors.red,
            labelColor: Colors.red,
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.grey.shade400,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    bool obscure = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey.shade400),
        filled: true,
        fillColor: Colors.grey.shade800,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
