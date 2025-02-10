import 'package:flutter/material.dart';

class NotificationFilter extends StatelessWidget {
  const NotificationFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context),
          ),
          SizedBox(width: 9),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'RECENT',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Example ListView
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildNotificationTile(
                  icon: Icons.comment,
                  title: 'chugith_mwonu commented: Supercool work 🌟',
                  subtitle: '4fs',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static void _showFilterDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            bool mentions = false;
            bool likes = true;
            bool comments = false;
            bool follows = true;
            bool peopleFollow = false;

            return Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(width: 8),
                      Text(
                        "Filter",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildSwitchTile("Mentions", mentions, (value) {
                    setState(() => mentions = value);
                  }),
                  _buildSwitchTile("Likes", likes, (value) {
                    setState(() => likes = value);
                  }),
                  _buildSwitchTile("Comments", comments, (value) {
                    setState(() => comments = value);
                  }),
                  _buildSwitchTile("Follows", follows, (value) {
                    setState(() => follows = value);
                  }),
                  _buildSwitchTile("People you follow", peopleFollow, (value) {
                    setState(() => peopleFollow = value);
                  }),
                  SizedBox(height: 16),
                ],
              ),
            );
          },
        );
      },
    );
  }

  static Widget _buildSwitchTile(
      String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
    );
  }

  static Widget _buildNotificationTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 18,
            child: Icon(
              Icons.notifications,
              size: 16,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: -4,
            right: -4,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                size: 12,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 14),
      ),
      subtitle: Text(subtitle),
    );
  }
}
