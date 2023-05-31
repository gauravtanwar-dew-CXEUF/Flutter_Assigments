import 'package:assigments/assigment_3_travel_booking/model/story_item.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class StoryContainer extends StatelessWidget {
  const StoryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: StoryDummyData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: StoryDummyData[index].storyImage,
                        fit: BoxFit.cover,
                        height: 180,
                        width: 120,
                      ),
                    ),
                    Positioned(
                      top: 4,
                      left: 4,
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: StoryDummyData[index].storyImage,
                              fit: BoxFit.cover,
                              height: 180,
                              width: 120,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


