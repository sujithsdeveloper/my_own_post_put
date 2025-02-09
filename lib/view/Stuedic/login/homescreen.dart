import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Pipel',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            // Story section (Scrollable horizontally)
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8.0),
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.yellow, width: 3),
                        ),
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
                        style: TextStyle(fontSize: 6),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(),

            // Tabs below the story section
            TabBar(
              tabs: [
                Tab(text: "Home"),
                Tab(text: "For You"),
              ],
              indicatorColor: Colors.black,
            ),

            // TabBar content
            Expanded(
              child: TabBarView(
                children: [
                  // Home Tab content
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        5,
                        (index) => Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  Icon(Icons.more_vert, color: Colors.black),
                                ],
                              ),
                              SizedBox(height: 16),
                              Text(
                                "When life gives you limes, arrange them in a zesty flatlay and create a 'lime-light' masterpiece!",
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 16),
                              Container(
                                width: double.infinity,
                                height: 200,
                                color: Colors.grey[300],
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://sp.yimg.com/ib/th?id=OIP.UidYXknATm9TVaVDAEDm6AHaE8&pid=Api&w=148&h=148&c=7&dpr=2&rs=1',
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite_outline,
                                        color: Colors.black),
                                    SizedBox(width: 8),
                                    Text('349 Likes'),
                                    SizedBox(width: 16),
                                    Icon(Icons.comment_outlined,
                                        color: Colors.black),
                                    SizedBox(width: 8),
                                    Text('760 Comments'),
                                    Spacer(),
                                    Icon(Icons.share, color: Colors.black),
                                    SizedBox(width: 8),
                                    Icon(Icons.bookmark_add,
                                        color: Colors.black)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // For You Tab content (you can replace with different content later)
                  Center(
                    child: Text('For You Content'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
