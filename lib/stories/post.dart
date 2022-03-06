import 'package:flutter/material.dart';
import 'package:facebook/constants/friend_post.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text("Stories"),
        ),
      ),
      body: Container(
        // height: 760,
        // width: 390,
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FriendPost(
                  proPic: 'images/34.jpg',
                  proName: 'Nyarko Faustina',
                  dateAndLocation: '1wk ago, Manchester',
                  comments: 'Comments 900',
                  like: '3k',
                  caption: 'Enjoyment',
                  post: 'images/80.jpg'),
            ),
            FriendPost(
                proPic: 'images/38.jpg',
                proName: 'Kyeremeh Emmanuel',
                dateAndLocation: '2wks, Toronto',
                comments: 'Comments ',
                like: '1',
                caption: 'Love is Real',
                post: 'images/22.jpg'),
            FriendPost(
                proPic: 'images/80.jpg',
                proName: 'Charles Dankwa',
                dateAndLocation: '5months, New York',
                comments: 'Comments 100',
                like: '1k',
                caption: '',
                post: 'images/23.jpg'),
            FriendPost(
                proPic: 'images/99.jpg',
                proName: 'Ruth Asamoah',
                dateAndLocation: '6months, UK',
                comments: 'Comments 24k',
                like: '5k',
                caption: 'Hungry',
                post: 'images/5.jpg'),
            FriendPost(
                proPic: 'images/1.jpg',
                proName: 'Tweneboah Osei Andrews',
                dateAndLocation: '2yrs, Lagos',
                comments: 'Comments 7k',
                like: '10k',
                caption: '',
                post: 'images/39.jpg'),
          ],
        ),
      ),
    );
  }
}
