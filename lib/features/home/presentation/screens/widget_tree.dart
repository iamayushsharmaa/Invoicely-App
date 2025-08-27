import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class WidgetTree extends StatelessWidget {
  final Widget child;

  const WidgetTree({super.key, required this.child});

  static const _tabs = ['/home', '/invoices', '/clients', '/analytics'];

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    return _tabs.indexWhere((path) => location.startsWith(path));
  }

  void _onTabTapped(BuildContext context, int index) {
    if (index >= 0 && index < _tabs.length) {
      context.go(_tabs[index]);
    }
  }

  bool _shouldShowFAB(String location) {
    return location.startsWith('/home') ||
        //location.startsWith('/clients') ||
        location.startsWith('/invoice');
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final selectedIndex = _getSelectedIndex(context);

    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        height: 75,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) => _onTabTapped(context, index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/invoice.svg',
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Invoices',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/client.svg',
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Clients',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/analytic.svg',
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Analytics',
            ),
          ],
        ),
      ),
      floatingActionButton: _shouldShowFAB(location)
          ? FloatingActionButton(
              onPressed: () {
                context.pushNamed('addInvoice');
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
