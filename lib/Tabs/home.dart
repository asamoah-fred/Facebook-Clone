// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:facebook/constants/my_story.dart';
import 'package:facebook/constants/friend_post.dart';
import 'package:facebook/constants/friend_story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 390,
                height: 50,
                // color: Colors.blue,
                // 1st layer Open

                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_pin,
                            color: Colors.black,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 2),
                          child: OutlineButton(
                            onPressed: () {
                              // child:
                              // TextField();
                            },
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                            child:
                                Text("What's on your mind?                  "),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Container(
                width: 390,
                height: 40,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.videocam,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Live",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.image_rounded,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Photo",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 130,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.pink,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Check In",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // 2nd layer closed

          // 3rd Layer Open
          Row(
            children: [
              Container(
                width: 390,
                height: 10,
                color: Colors.black26,
              ),
            ],
          ),

          // 3rd Layer Closed

          // 4th Layer Open (Story & Friends)

          Container(
            width: double.infinity,
            height: 170,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyStory(myStory: 'images/6.jpg'),
                  FriendStory(
                      FriendStory: 'images/2.jpg',
                      proName: 'Twumasi Henry',
                      proPic: 'images/2.jpg'),
                  FriendStory(
                      FriendStory: 'images/15.jpg',
                      proName: 'Peter Asamaoh',
                      proPic: 'images/15.jpg'),
                  FriendStory(
                      FriendStory: 'images/3.jpg',
                      proName: 'Asamoah Godfred',
                      proPic: 'images/3.jpg'),
                  FriendStory(
                      FriendStory: 'images/4.jpg',
                      proName: 'Nkrumah Emma',
                      proPic: 'images/4.jpg'),
                  FriendStory(
                      FriendStory: 'images/7.jpg',
                      proName: 'Osei Lydia',
                      proPic: 'images/4.jpg'),
                ],
              ),
            ),
          ),
//   Divider
          Row(
            children: [
              Container(
                width: 390,
                height: 10,
                color: Colors.black26,
              ),
            ],
          ),

// Post Layer Open

          FriendPost(
            proPic: 'images/autumn_30.jpg',
            proName: 'Agyei Hannah',
            dateAndLocation: 'Now, Berlin',
          ),
          FriendPost(
            proPic: 'images/autumn_27.jpg',
            proName: 'Asamoah Micael',
            dateAndLocation: '6h, Kyiv',
          ),
          FriendPost(
            proPic: 'images/autumn_29.jpg',
            proName: 'Junior Tinho',
            dateAndLocation: '2days, New York',
          ),
          FriendPost(
            proPic: 'images/autumn_18.jpg',
            proName: 'Asamoah Peter',
            dateAndLocation: 'yesterday at 2PM, UK',
          ),

// Post Layer Closed
        ],
      ),
    );
  }
}
