import 'package:flutter/material.dart';

Widget FriendPost() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: Row(
      children: [
        Container(
          width: 390,
          height: 450,
          color: Colors.blue,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 390,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
