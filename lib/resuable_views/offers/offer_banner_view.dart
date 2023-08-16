
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../grocery/grocery_screen.dart';

class OfferBannerView extends StatefulWidget {

  OfferBannerView({Key? key}) : super(key: key);

  @override
  State<OfferBannerView> createState() => _OfferBannerViewState();
}

class _OfferBannerViewState extends State<OfferBannerView> {


  final List<String> images = [
    'assets/restuarant/img1.jpg',
    'assets/restuarant/img2.jpg',
    'assets/restuarant/img3.jpg',
    'assets/restuarant/img4.jpg',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: InkWell(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15.0),
          height: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Swiper(
            itemHeight: 100,
            duration: 500,
            itemWidth: double.infinity,
            pagination: const SwiperPagination(),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) => Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
            autoplay: true,
            viewportFraction: 1.0,
            scale: 0.9,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GroceryScreen(),
            ),
          );
        },
      ),
    );
  }
}
