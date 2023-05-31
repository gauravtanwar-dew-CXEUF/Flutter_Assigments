import 'package:flutter/material.dart';

class HotelsModel{
  
  final String hotelImageUrl;
  final String hotelName;
  final String hotelLocation;
  final String hotelRating;
  final String hotelDistance;
  final String hotelPrice;
  
  HotelsModel({
    required this.hotelImageUrl,
    required this.hotelName,
    required this.hotelLocation,
    required this.hotelRating,
    required this.hotelDistance,
    required this.hotelPrice
  });
  
}

final hotelsDummyData = [
  HotelsModel(hotelImageUrl: 'https://shorturl.at/dxW36', hotelName: 'Polania place hotel', hotelLocation: 'Wola, Warsaw', hotelRating: '4.1 (188)',
      hotelDistance: '1.5 Kilometers away', hotelPrice: '\$25 night'),

  HotelsModel(hotelImageUrl: 'https://shorturl.at/imrCO', hotelName: 'Sofitel', hotelLocation: 'Mokotow, Warsaw', hotelRating: '3.9 (205)',
    hotelDistance: '2.5 Kilometers away', hotelPrice: '\$22 night',)
];