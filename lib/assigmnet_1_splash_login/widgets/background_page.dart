import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({Key? key,required this.childWidget}) : super(key: key);

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/images/background.jpg').image),

            gradient: const LinearGradient(colors: [
              Color.fromARGB(71, 0, 0, 0),
              Color.fromARGB(226, 0, 0, 0)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),

            )
          ),
        Center(child: childWidget,)
      ],

    );
  }
}
