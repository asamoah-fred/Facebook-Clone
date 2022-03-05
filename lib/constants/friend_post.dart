// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Widget FriendPost({proPic, proName, dateAndLocation}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: Row(
      children: [
        Container(
          width: 390,
          height: 510,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 390,
                height: 60,
                // color: Colors.red,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                    color: Colors.brown,
                                    style: BorderStyle.solid,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      proPic,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 240,
                              height: 20,
                              child: Text(
                                proName,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 240,
                              height: 40,
                              child: Text(
                                dateAndLocation,
                                style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          height: 60,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 390,
                height: 390,
                color: Colors.brown,
              ),
              Container(
                width: 390,
                height: 20,
                color: Colors.green,
              ),
              Container(
                width: 390,
                height: 30,
                color: Colors.pink,
              ),
              Container(
                width: 390,
                height: 5,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
