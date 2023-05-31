import 'package:assigments/assigment_3_travel_booking/model/hotels_items.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HotelContainer extends StatelessWidget {
  const HotelContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Hotels',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: hotelsDummyData.length,
              itemBuilder: (context, index) { 
                return HotelSubContainer(hotelsModel: hotelsDummyData[index]);
                },
            ),
          ),
        ],
      ),
    );
  }
}

class HotelSubContainer extends StatelessWidget {
  
  final HotelsModel hotelsModel;

  const HotelSubContainer({Key? key, required this.hotelsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.75,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 6,
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: hotelsModel.hotelImageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: width * 0.75,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelsModel.hotelName,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    hotelsModel.hotelLocation,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 18,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 18,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 18,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 18,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        hotelsModel.hotelRating,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelsModel.hotelDistance,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          hotelsModel.hotelPrice,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}