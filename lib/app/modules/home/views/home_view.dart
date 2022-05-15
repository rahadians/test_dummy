import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('App Transparant'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          // backgroundColor: Colors.greenAccent,
          elevation: 20,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft),
            ),
          ),
          bottom: TabBar(
              indicatorColor: Colors.greenAccent,
              indicatorWeight: 5,
              isScrollable: false,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.star), text: "Feed"),
                Tab(icon: Icon(Icons.face), text: "Profile"),
                Tab(icon: Icon(Icons.settings), text: "Setting"),
              ]),
        ),
        body: TabBarView(
          children: [
            buildPage('Home Page'),
            buildPage('Feed Page'),
            buildPage('Profile Page'),
            buildPage('Setting Page'),
          ],
        ),
      ),
    );
  }
}

Widget buildPage(String text) => Center(
        child: Text(
      text,
      style: TextStyle(fontSize: 20),
    ));
