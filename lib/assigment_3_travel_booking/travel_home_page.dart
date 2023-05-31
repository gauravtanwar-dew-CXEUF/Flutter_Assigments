import 'package:assigments/assigment_3_travel_booking/widgets/MostPopularWidgets.dart';
import 'package:assigments/assigment_3_travel_booking/widgets/StoryWidgets.dart';
import 'package:assigments/assigment_3_travel_booking/widgets/catogery_Widgets.dart';
import 'package:assigments/assigment_3_travel_booking/widgets/city_banner_widgets.dart';
import 'package:assigments/assigment_3_travel_booking/widgets/hotels_widgets.dart';
import 'package:assigments/assigment_3_travel_booking/widgets/searchwidgets.dart';
import 'package:flutter/material.dart';

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final widgetMap = {
      0: const CategoryContainer(),
      1: const SearchBar(),
      2: const StoryContainer(),
      3: const MostPopularContainer(),
      4: const CityBannerComponent(),
      5: const HotelContainer(),
    };


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return widgetMap[index]?? Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

