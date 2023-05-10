import 'package:flutter/material.dart';

class MenuGridItem {
  MenuGridItem(
      {required this.icon,
        required this.title,
        required this.subTitle,
        required this.cardBackgroundColor});

  final Icon icon;
  final String title;
  final String subTitle;
  final Color cardBackgroundColor;
}

final gridItemData = [
  MenuGridItem(
    icon: const Icon(Icons.mobile_screen_share),
    title: 'Pay Someone',
    subTitle: 'To wallet, Bank or mobile number',
    cardBackgroundColor: Colors.grey,
  ),
  MenuGridItem(
    icon: const Icon(Icons.install_mobile),
    title: 'Request money',
    subTitle: 'Request money from OroboPay user',
    cardBackgroundColor: Colors.lightGreen,
  ),
  MenuGridItem(
    icon: const Icon(Icons.phone_iphone),
    title: 'Buy airtime',
    subTitle: 'Top - up or send airtime across africa',
    cardBackgroundColor: Colors.lime,
  ),
  MenuGridItem(
    icon: const Icon(Icons.account_balance_wallet_outlined),
    title: 'Pay bill',
    subTitle: 'Zero Transaction Fee When you pay',
    cardBackgroundColor: Colors.grey,
  ),
];