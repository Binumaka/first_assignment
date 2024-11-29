import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10, // Horizontal spacing between grid items
          mainAxisSpacing: 10, // Vertical spacing between grid items
          children: [
            DashboardCard(
              icon: Icons.person,
              title: 'Profile',
              onTap: () {
                // Navigate or perform an action
                print('Profile tapped');
              },
            ),
            DashboardCard(
              icon: Icons.message,
              title: 'Messages',
              onTap: () {
                print('Messages tapped');
              },
            ),
            DashboardCard(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {
                print('Settings tapped');
              },
            ),
            DashboardCard(
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () {
                print('Notifications tapped');
              },
            ),
            DashboardCard(
              icon: Icons.analytics,
              title: 'Reports',
              onTap: () {
                print('Reports tapped');
              },
            ),
            DashboardCard(
              icon: Icons.logout,
              title: 'Logout',
              onTap: () {
                print('Logout tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DashboardCard({
    required this.icon,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
