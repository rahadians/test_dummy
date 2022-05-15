import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../views/widget/buildimage.dart';
import '../../../data/constant.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 400,
              enlargeCenterPage: false,
              // enableInfiniteScroll: false,
              // initialPage: 2,
            ),
            itemCount: imgList.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = imgList[index];
              return buildimage(urlImage: urlImage, index: index);
            }),
      ),
    );
  }
}
