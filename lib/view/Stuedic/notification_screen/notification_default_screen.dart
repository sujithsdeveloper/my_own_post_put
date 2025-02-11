import 'package:flutter/material.dart';
import 'package:my_own_post_put/styles/string_styles.dart';
import 'package:my_own_post_put/utils/constants/color_constants.dart';
import 'package:my_own_post_put/widgets/gradient_circle_avathar.dart';
import 'package:hugeicons/hugeicons.dart';



class NotificationDefaultScreen extends StatelessWidget {
  const NotificationDefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of notifications
    final List<Map<String, dynamic>> notifications = [
      {
        'title': 'chugith_mwonu commented: Supercool work 🌟',
        'subtitle': '45s',
        'isFollowNotification': false,
        'isComment': true,
        'isLike': false,
        'isPost': false,
        'isFollow': false,
      },
      {
        'title': 'veshiii started following you',
        'subtitle': '1m',
        'isFollowNotification': true,
        'isComment': false,
        'isLike': false,
        'isPost': false,
        'isFollow': true,
      },
      {
        'title': 'pranav mwon liked your posts',
        'subtitle': '10m',
        'isFollowNotification': false,
        'isComment': false,
        'isLike': true,
        'isPost': false,
        'isFollow': false,
      },
      {
        'title': 'gokul mentioned you in a post: bla bla bla blu',
        'subtitle': '1 hour ago',
        'isFollowNotification': false,
        'isComment': false,
        'isLike': false,
        'isPost': true,
        'isFollow': false,
      },
      {
        'title': 'vishnuu, jayalaskmi.jp and 350 others liked your posts',
        'subtitle': 'Oct. 31',
        'isFollowNotification': false,
        'isComment': false,
        'isLike': true,
        'isPost': false,
        'isFollow': false,
      },
      {
        'title': 'obama started following you',
        'subtitle': 'Oct. 31',
        'isFollowNotification': true,
        'isComment': false,
        'isLike': false,
        'isPost': false,
        'isFollow': true,
      },
      {
        'title': 'podakoppe liked your posts',
        'subtitle': 'Oct. 30',
        'isFollowNotification': false,
        'isComment': false,
        'isLike': true,
        'isPost': false,
        'isFollow': false,
      },
      {
        'title': 'shihab mwonu.jpg commented: Awesome mockup 🌟',
        'subtitle': 'Oct. 31',
        'isFollowNotification': false,
        'isComment': true,
        'isLike': false,
        'isPost': false,
        'isFollow': false,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        onRefresh: () async {
          return await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Recent",
                  style: StringStyle.normalText(size: 20, isBold: true),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];

                  return NotificationTile(
                      isComment: notification['isComment'],
                      isLike: notification['isLike'],
                      isFollow: notification['isFollow'],
                      isPost: notification['isPost'],
                      title: notification['title'],
                      subtitle: notification['subtitle'],
                      isFollowNotification:
                          notification['isFollowNotification']);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget NotificationTile(
      {required String title,
      required String subtitle,
      required bool isComment,
      required bool isLike,
      required bool isPost,
      required bool isFollow,
      bool isFollowNotification = false}) {
    return ListTile(
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            GradientCircleAvathar(
              radius: 36,
              child: Icon(
                Icons.notifications,
                size: 16,
                color: ColorConstants.secondaryColor,
              ),
            ),
            Positioned(
              bottom: -4,
              right: -4,
              child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: Builder(
                    builder: (context) {
                      if (isLike) {
                        return Icon(
                          HugeIcons.strokeRoundedThumbsUp,
                          size: 12,
                          color: Colors.blue,
                        );
                      } else if (isComment) {
                        return Icon(
                          HugeIcons.strokeRoundedMessage01,
                          size: 12,
                          color: Colors.blue,
                        );
                      } else if (isPost) {
                        return Icon(
                          HugeIcons.strokeRoundedTag01,
                          size: 12,
                          color: Colors.blue,
                        );
                      } else if (isFollow) {
                        return Icon(
                          Icons.person_outline,
                          size: 12,
                          color: Colors.blue,
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  )),
            ),
          ],
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
        subtitle: Text(subtitle),
        trailing: isFollowNotification
            ? Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Follow',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            : null);
  }
}
