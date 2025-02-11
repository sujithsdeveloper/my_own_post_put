import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:my_own_post_put/routes/app_routes.dart';
import 'package:my_own_post_put/sheets/commentBottomSheet.dart';
import 'package:my_own_post_put/sheets/shareBottomSheet.dart';
import 'package:my_own_post_put/styles/string_styles.dart';
import 'package:my_own_post_put/utils/constants/color_constants.dart';
import 'package:my_own_post_put/utils/constants/string_constants.dart';
import 'package:my_own_post_put/view/Stuedic/notification_screen/notification_default_screen.dart';
import 'package:my_own_post_put/widgets/gradient_circle_avathar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                StringConstants.appName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    HugeIcons.strokeRoundedNotification01,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // AppRoutes.rightNavigateRoute(NotificationDefaultScreen());
                    AppRoutes.push(context, NotificationDefaultScreen());
                  },
                ),
                IconButton(
                  icon: Icon(
                    HugeIcons.strokeRoundedShoppingBag01,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ]),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 110, // Increased for better spacing
              child: StorySection(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => PostCard(),
              childCount: 5, // Example count
            ),
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://sp.yimg.com/ib/th?id=OIP.UidYXknATm9TVaVDAEDm6AHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1',
                ),
                radius: 24,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'akmalnsrllh',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Bekasi • 1 min ago',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 61,
                    decoration: BoxDecoration(
                        gradient: ColorConstants.primaryGradientHorizontal,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        'Follow',
                        style: StringStyle.smallText(isBold: true),
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert, color: Colors.black),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Center(
              child: Image.network(
                height: 290,
                width: double.infinity,
                'https://sp.yimg.com/ib/th?id=OIP.UidYXknATm9TVaVDAEDm6AHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            "When life gives you limes, arrange them in a zesty flatlay and create a 'lime-light' masterpiece!",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Icon(HugeIcons.strokeRoundedThumbsUp,
                        color: Colors.black)),
                Row(
                  spacing: 5,
                  children: [
                    Text(
                      '349',
                      style: StringStyle.smallText(isBold: true),
                    ),
                    Text(
                      'Likes',
                      style: StringStyle.smallText(),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    commentBottomSheet(context);
                  },
                  child: Icon(HugeIcons.strokeRoundedMessageMultiple01,
                      color: Colors.black),
                ),
                SizedBox(width: 8),
                Row(
                  spacing: 5,
                  children: [
                    Text(
                      '760',
                      style: StringStyle.smallText(isBold: true),
                    ),
                    Text(
                      'Comments',
                      style: StringStyle.smallText(),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    shareBottomSheet(context);
                  },
                  icon:
                      Icon(HugeIcons.strokeRoundedShare05, color: Colors.black),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorConstants.primaryColor,
                      radius: 34,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                          'https://sp.yimg.com/ib/th?id=OIP.UidYXknATm9TVaVDAEDm6AHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 3,
                      child: GradientCircleAvathar(
                        radius: 20,
                        child: Icon(
                          Icons.add,
                          size: 12,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Username',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                )
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstants.primaryColor,
                    radius: 34,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(
                        'https://sp.yimg.com/ib/th?id=OIP.UidYXknATm9TVaVDAEDm6AHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
