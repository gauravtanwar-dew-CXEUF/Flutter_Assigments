import 'package:assigments/assigment_3_travel_booking/model/city_banner_items.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CityBannerComponent extends StatelessWidget {

  const CityBannerComponent({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: NetworkImage(cityBannerDummyData.imageUrl),
          fit: BoxFit.cover,
          height: 320,
          width: double.infinity,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 185,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityBannerDummyData.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cityBannerDummyData.subTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: cityBannerDummyData.citySubModel.length,
                    itemBuilder: (_, index) {
                      final cityBannerSubModel = cityBannerDummyData.citySubModel[index];
                      return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: FadeInImage(
                              placeholder: MemoryImage(kTransparentImage),
                              image: NetworkImage(cityBannerSubModel.imageUrl),
                              fit: BoxFit.cover,
                              height: 120,
                              width: 180,
                            ),
                          ),
                          Text(
                            cityBannerSubModel.title,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
