import 'package:flutter/material.dart';

class CategoryModel {
  String? name;
  String? image;

  CategoryModel({this.name,this.image});
}

final categoryDummyData = [CategoryModel(name: 'Hotels',image: 'https://shorturl.at/dxW36'),
  CategoryModel(name: 'Flights',image: 'https://shorturl.at/aboyW'),
  CategoryModel(name: 'Activities',image: 'https://shorturl.at/dtuNW'),
  CategoryModel(name: 'Restaurant',image: 'https://shorturl.at/xDY78'),
  CategoryModel(name: 'Trains',image: 'https://shorturl.at/opvFX')];
