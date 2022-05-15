import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/transparent_controller.dart';

class TransparentView extends GetView<TransparentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Transparant AppBar"),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {},
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.white.withOpacity(0.25),
          elevation: ,
        ),
        body: 
        Image.network(
          "https://picsum.photos/id/152/1024/1080",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
        ));
  }
}
