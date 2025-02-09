import 'package:flutter/material.dart';

class SettingsAccount extends StatelessWidget {
  const SettingsAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Login & Security'),
            onTap: () {
              // Navigate to Login & Security screen
            },
          ),
          ListTile(
            title: const Text('Link/Change Phone Number'),
            onTap: () {
              // Navigate to Link/Change Phone Number screen
            },
          ),
          ListTile(
            title: const Text('Verify Email Address'),
            subtitle: const Text('akmalnetlh@gmail.com'),
            onTap: () {
              // Navigate to Verify Email Address screen
            },
          ),
          ListTile(
            title: const Text('Password'),
            onTap: () {
              // Navigate to Password settings screen
            },
          ),
          ListTile(
            title: const Text('Account Management'),
            onTap: () {
              // Navigate to Account Management screen
            },
          ),
          ListTile(
            title: const Text('Switch to Business Account'),
            onTap: () {
              // Navigate to Business Account setup screen
            },
          ),
          ListTile(
            title: const Text('Deactivate or Delete Account'),
            onTap: () {
              // Navigate to Deactivate or Delete Account screen
            },
          ),
        ],
      ),
    );
  }
}
