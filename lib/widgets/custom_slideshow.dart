
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomSlideshow extends StatelessWidget {
  final List<String> imageUrls;

  const CustomSlideshow({
    super.key,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayCurve: Curves.bounceInOut,
        enlargeFactor: 0.1,
        clipBehavior: Clip.antiAlias,
        height: 180.0,
        aspectRatio: 16 / 9,
        autoPlay: true,
        enlargeCenterPage: true,
      ),

      items: imageUrls.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber,
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  i,
                  fit: BoxFit.cover,

                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }

                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },

                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.broken_image,
                        size: 40,
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
