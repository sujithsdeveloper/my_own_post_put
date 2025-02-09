import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MyProfileSettings extends StatelessWidget {
  const MyProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        children: [
          _buildSectionHeader('Account'),
          _buildListItem('Account', LucideIcons.user),
          _buildListItem('Privacy', LucideIcons.lock, trailingText: 'Public'),
          _buildListItem('Security', LucideIcons.shield),
          _buildListItem('Share profile', LucideIcons.share2),
          _buildSectionHeader('Content & Display'),
          _buildListItem('Notifications', LucideIcons.bell),
          _buildListItem('Language', LucideIcons.globe,
              trailingText: 'English (UK)'),
          _buildListItem('Time spent', LucideIcons.clock),
          _buildSectionHeader('Support'),
          _buildListItem('Report a problem', LucideIcons.flag),
          _buildListItem('Help center', LucideIcons.helpCircle),
          _buildListItem('About Pipel', LucideIcons.info),
          _buildSectionHeader('Login'),
          _buildListItem('Switch account', LucideIcons.rotateCw),
          _buildListItem('Log out', LucideIcons.logOut),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildListItem(String title, IconData icon, {String? trailingText}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: trailingText != null
          ? Text(
              trailingText,
              style: const TextStyle(color: Colors.grey),
            )
          : const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }
}
