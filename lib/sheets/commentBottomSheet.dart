import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:my_own_post_put/styles/string_styles.dart';
import 'package:my_own_post_put/widgets/gradient_circle_avathar.dart';


Future<dynamic> commentBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.7, // Start with 60% of screen height
      minChildSize: 0.4, // Min height when dragged down
      builder: (context, scrollController) => SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(HugeIcons.strokeRoundedMessageMultiple01),
                  const SizedBox(width: 5),
                  Text(
                    '760',
                    style: StringStyle.smallText(isBold: true),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Comments',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontFamily: 'latoRegular'),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  controller:
                      scrollController, // Enables scrolling within modal
                  itemCount: 10, // Example count
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(radius: 18),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'User Name',
                                  style: StringStyle.normalTextBold(),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                                Row(
                                  spacing: 12,
                                  children: [
                                    Text('25m', style: StringStyle.greyText()),
                                    // Text('Replay',
                                    //     style:
                                    //         StringStyle.greyText(isBold: true)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(HugeIcons.strokeRoundedThumbsUp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16), // Spacing before input field
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom +
                        16), // Prevents keyboard overlap
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.smiley),
                          hintText: 'Write a comment...',
                          filled: true,
                          fillColor: Color(0xffF6F8F9),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GradientCircleAvathar(
                      radius: 30,
                      child:
                          const Icon(CupertinoIcons.paperplane_fill, size: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
