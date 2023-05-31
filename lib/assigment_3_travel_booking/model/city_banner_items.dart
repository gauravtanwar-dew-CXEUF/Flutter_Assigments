import 'package:flutter/material.dart';

class CityBannerModel{

  final String title;
  final String subTitle;
  final String imageUrl;
  final List<CitySubModel> citySubModel;

  CityBannerModel(this.citySubModel, this.title, this.subTitle, this.imageUrl);

}

class CitySubModel{

  final String title;
  final String imageUrl;

  CitySubModel(this.title,this.imageUrl);

}


final cityBannerDummyData = CityBannerModel([
  CitySubModel('Warsaw', 'https://shorturl.at/qrACM'),
  CitySubModel('Karsaw', 'https://shorturl.at/QSY25'),
  CitySubModel('Garsaw', 'https://shorturl.at/qrACM'),
  CitySubModel('Sipatti', 'https://shorturl.at/QSY25'),
  CitySubModel('Belarus', 'https://shorturl.at/qrACM'),
],
    'Poland', 'A special city where culture collide',
'https://shorturl.at/gkqNS');