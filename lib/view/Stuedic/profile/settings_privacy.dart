import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SettingsPrivacy extends StatelessWidget {
  const SettingsPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          _buildDiscoverabilitySection(),
          _buildSectionHeader('Interactions'),
          _buildListItem('Comments', LucideIcons.messageSquare),
          _buildListItem('Mentions', LucideIcons.atSign),
          _buildListItem('Direct messages', LucideIcons.mail),
          _buildListItem('Downloads', LucideIcons.download,
              trailingText: 'Off'),
          _buildListItem('Liked post', LucideIcons.thumbsUp,
              trailingText: 'Only me'),
          _buildListItem('Post views', LucideIcons.eye, trailingText: 'On'),
          _buildListItem('Blocked account', LucideIcons.userX,
              trailingText: '20'),
        ],
      ),
    );
  }

  Widget _buildDiscoverabilitySection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader('Discoverability'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Private account',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              Switch(value: false, onChanged: (bool value) {}),
            ],
          ),
          const Text(
            'When your account is public, your profile and posts can be seen by anyone, on or off Pipel, even if they don\'t have a Pipel account.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'When your account is private, only the followers you approve can follow you and see your post. Your existing followers won\'t be affected.',
            style: TextStyle(color: Colors.grey),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Learn more'),
          ),
          _buildListItem(
              'Suggest your account to others', LucideIcons.userPlus),
          _buildListItem('Sync contacts friends', LucideIcons.users),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
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
