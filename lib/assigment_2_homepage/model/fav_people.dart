import 'package:flutter/material.dart';

class FavPeople {
  FavPeople(
      {required this.userName,
        required this.profileUrl,
        required this.countryIconUrl});

  final String userName;
  final String? profileUrl;
  final String countryIconUrl;
}

final dummyPeopleData = [
  FavPeople(
      userName: 'Gaurav',
      profileUrl: 'assets/images/man.png',
      countryIconUrl: 'assets/images/india.png'),
  FavPeople(
      userName: 'Albert',
      profileUrl: 'assets/images/profile.png',
      countryIconUrl: 'assets/images/us_flag.png'),
];