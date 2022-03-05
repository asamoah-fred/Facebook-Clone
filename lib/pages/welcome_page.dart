// ignore_for_file: prefer_const_constructors

import 'package:facebook/Tabs/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          // elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          //TabBar
          bottom: TabBar(
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.ondemand_video),
              ),
              Tab(
                icon: Icon(Icons.notifications_none),
              ),
              Tab(
                icon: Icon(Icons.menu),
              ),
            ],
          ),
        ),
        //Tab Bar View

        body: TabBarView(
          children: const [
            HomeScreen(),
            Icon(Icons.group),
            Icon(Icons.ondemand_video),
            Icon(Icons.notifications_none),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}
