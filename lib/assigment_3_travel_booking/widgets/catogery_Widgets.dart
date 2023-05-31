import 'package:assigments/assigment_3_travel_booking/model/category_item.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class CategoryContainer extends StatelessWidget {
  const CategoryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryDummyData.length,
        itemBuilder: (context, index) {
          final categoryModel = categoryDummyData[index];
          return CategorySubitemWidgets(categoryModel: categoryModel);
        },
      ),
    );
  }
}

class CategorySubitemWidgets extends StatelessWidget {
  const CategorySubitemWidgets({Key? key, required this.categoryModel})
      : super(key: key);

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: categoryModel.image?? '',
              fit: BoxFit.cover,
              height: 70,
              width: 70,
            ),
          ),
          Text(
            categoryModel.name!,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}


