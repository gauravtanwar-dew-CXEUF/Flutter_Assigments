import 'package:assigments/assigment_2_homepage/model/fav_people.dart';
import 'package:flutter/material.dart';

class FavPeopleWidget extends StatelessWidget {

  const FavPeopleWidget({super.key, required this.favPeople,});

  final FavPeople favPeople;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            height: 65,
            width: 65,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [

                (favPeople.profileUrl != null) ? CircleAvatar(
                  backgroundImage: AssetImage(favPeople.profileUrl!),
                  backgroundColor: Colors.grey,
                )

                    : CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text(favPeople.userName.substring(0, 2).toUpperCase()),
                ),


                Positioned(
                  right: -5,
                  bottom: 5,
                  height: 25,
                  width: 25,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(favPeople.countryIconUrl),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(favPeople.userName.length > 10 ? '${favPeople.userName.substring(0, 10)}...' : favPeople.userName),
      ],
    );
  }
}
