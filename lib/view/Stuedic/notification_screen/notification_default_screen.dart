import 'package:flutter/material.dart';
import 'package:my_own_post_put/view/Stuedic/notification_screen/notification_screen_filter.dart';

class NotificationDefaultScreen extends StatelessWidget {
  const NotificationDefaultScreen({super.key});

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
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationFilter(),
                    ));
              },
              child: Icon(Icons.filter_list)),
          SizedBox(
            width: 9,
          )
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
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildNotificationTile(
                  icon: Icons.comment,
                  title: 'chugith_mwonu commented: Supercool work 🌟',
                  subtitle: '4fs',
                ),
                _buildNotificationTileWithFollow(
                  icon: Icons.person_add,
                  title: 'veshiii started following you',
                  subtitle: '1m',
                ),
                _buildNotificationTile(
                  icon: Icons.thumb_up,
                  title: 'pranav mwon liked your posts',
                  subtitle: '10m',
                ),
                Text(
                  '7 Days ago',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
                _buildNotificationTile(
                  icon: Icons.tag,
                  title: 'gokul mentioned you in a post: bla bla bla blu',
                  subtitle: '1 hour ago',
                ),
                _buildNotificationTile(
                  icon: Icons.thumb_up,
                  title:
                      'vishnuu, jayalaskmi.jp and 350 others liked your posts',
                  subtitle: 'Oct. 31',
                ),
                _buildNotificationTile(
                  icon: Icons.person_add,
                  title: 'obama started following you',
                  subtitle: 'Oct. 31',
                ),
                _buildNotificationTile(
                  icon: Icons.thumb_up,
                  title: 'podakoppe liked your posts',
                  subtitle: 'Oct. 30',
                ),
                _buildNotificationTile(
                  icon: Icons.comment,
                  title: 'shihab mwonu.jpg commented: Awesome mockup 🌟',
                  subtitle: 'Oct. 31',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildNotificationTileWithFollow({
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
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.yellow, // colour maaatt mwonu
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Follow',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
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
