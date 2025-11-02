import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/app_constant.dart';
import '../style/app_style.dart';

class PromoCarousel extends StatefulWidget {
  const PromoCarousel({super.key});

  @override
  State<PromoCarousel> createState() => _PromoCarouselState();
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80',
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80'
];

class _PromoCarouselState extends State<PromoCarousel> {
  int currentIndex = 1;
  final CarouselSliderController promoCarouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: promoCarouselController,
          options: CarouselOptions(
            height: 122,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            initialPage: currentIndex,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
          ),
          items: imageList
              .map(
                (item) => Center(
                child: Container(
                  height: 122,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              item
                          )
                      )
                  ),
                )
            ),
          ).toList(),
        ),
        const SizedBox(height: kPadding20),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) =>
                  GestureDetector(
                    onTap: () => promoCarouselController.animateToPage(entry.key),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6
                      ),
                      child: SvgPicture.asset(currentIndex == entry.key ? dotsIndicatorIcon : dotsIndicatorIconDisable),
                    ),
                  )
              ).toList()
          ),
        )
      ],
    );
  }
}