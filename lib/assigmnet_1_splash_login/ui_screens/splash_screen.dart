import 'package:assigments/assigment_2_homepage/homepage.dart';
import 'package:assigments/assigmnet_1_splash_login/widgets/background_page.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    /*
    * Function to navigate screen*/
    _navigatetoHomepage();
  }


  _navigatetoHomepage() async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundPage(
        childWidget: Text('Mr Bookworm!',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
