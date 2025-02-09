import 'package:flutter/material.dart';

class SettingsNotifications extends StatefulWidget {
  const SettingsNotifications({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsNotificationsState createState() => _SettingsNotificationsState();
}

class _SettingsNotificationsState extends State<SettingsNotifications> {
  // Switch states
  bool likes = true;
  bool comments = true;
  bool mentions = true;
  bool newFollowers = true;
  bool reposts = true;
  bool directMessages = true;
  bool directMessagePreviews = true;
  bool postFromAccountsFollow = true;
  bool postFromPeopleMayKnow = true;
  bool postYouMightLike = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SectionHeader(title: 'Interactions'),
          buildSwitchTile('Likes', likes, (value) {
            setState(() => likes = value);
          }),
          buildSwitchTile('Comments', comments, (value) {
            setState(() => comments = value);
          }),
          buildSwitchTile('Mentions', mentions, (value) {
            setState(() => mentions = value);
          }),
          buildSwitchTile('New followers', newFollowers, (value) {
            setState(() => newFollowers = value);
          }),
          buildSwitchTile('Reposts', reposts, (value) {
            setState(() => reposts = value);
          }),
          const SectionHeader(title: 'Messages'),
          buildSwitchTile('Direct messages', directMessages, (value) {
            setState(() => directMessages = value);
          }),
          buildSwitchTile('Direct messages preview', directMessagePreviews, (value) {
            setState(() => directMessagePreviews = value);
          }),
          const SectionHeader(title: 'Suggestions'),
          buildSwitchTile('Post from accounts you follow', postFromAccountsFollow, (value) {
            setState(() => postFromAccountsFollow = value);
          }),
          buildSwitchTile('Post from people you may know', postFromPeopleMayKnow, (value) {
            setState(() => postFromPeopleMayKnow = value);
          }),
          buildSwitchTile('Post you might like', postYouMightLike, (value) {
            setState(() => postYouMightLike = value);
          }),
        ],
      ),
    );
  }

  Widget buildSwitchTile(String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
