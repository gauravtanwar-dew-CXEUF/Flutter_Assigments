import 'package:assigments/assigment_3_travel_booking/model/most_popular_items.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MostPopularContainer extends StatelessWidget {

   const MostPopularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Most Popular Now',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: MostPopularDummyData.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 1 / 2.9,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),


                itemBuilder: (context, index) {
                  final popularItems = MostPopularDummyData[index];
                  final itemNo = index+1;
                  return PopulorItemContainer(mostPopularModel: popularItems,itemNo: itemNo.toString(),);
                }

                ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class PopulorItemContainer extends StatelessWidget {

  PopulorItemContainer({super.key,required this.mostPopularModel , required this.itemNo});

  MostPopularModel mostPopularModel;
  final String itemNo;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: width * 0.9,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(mostPopularModel.imageUrl),
                fit: BoxFit.cover,
                height: 120,
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                itemNo,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const Spacer(),
                  Text(
                    mostPopularModel.title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    mostPopularModel.subTitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  const Divider(
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


