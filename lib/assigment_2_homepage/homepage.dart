import 'package:assigments/assigment_2_homepage/model/fav_people.dart';
import 'package:assigments/assigment_2_homepage/model/menu_item.dart';
import 'package:assigments/assigment_2_homepage/widgets/fav_peoples.dart';
import 'package:assigments/assigment_2_homepage/widgets/menu_Items.dart';
import 'package:assigments/assigment_2_homepage/widgets/notification_widgets.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Hi Ehi',
                      style: TextStyle(color: Colors.grey),
                    ),
                    NotificationWidgets(),
                  ],
                ),
                Text('1,234.00',
                  style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 15),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/images/india.png'),
                      width: 18,
                      height: 18,
                    ),
                    SizedBox(width: 10),
                    Text('GHS'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded),
                  ],
                ),
                const SizedBox(height: 48),
                const Text('Here are something you can do',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 18),

                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: gridItemData.length,
                      itemBuilder: (BuildContext context, int index) {
                        final menuItem = gridItemData[index];
                        return MenuItemWidgets(
                            menuItem: menuItem);
                      }),
                ),

                const Text(
                  'Your Favourite people',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey, // replace with your desired background color
                      ),

                      child: const Icon(
                        Icons.add, // replace with your desired icon
                        color: Colors.black54, // repla
                        size: 40, // ce with your desired icon color
                      ),

                    ),
                    const SizedBox(width: 8,),

                    Expanded(
                      child: SizedBox(
                        height: 92, // set fixed height
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: dummyPeopleData.length,
                          itemBuilder: (context, index) {
                            final favPeople = dummyPeopleData[index];
                            return FavPeopleWidget(
                                favPeople: favPeople);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
