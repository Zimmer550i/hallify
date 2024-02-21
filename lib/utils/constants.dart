import 'package:flutter/material.dart';
import 'package:hallify/models/hotel.dart';

const Color primaryColor = Color(0xff535AA8);
const double authPadding = 20;
const String placeHolderString =
    "Lorem ipsum dolor sit amet consectetur. Sem posuere at etiam iaculis risus. Nisl diam tellus in in ac iaculis. Elementum pellentesque nunc parturient malesuada in. Posuere mauris viverra morbi nunc. Pharetra eget pellentesque ut blandit.";

List<Hotel> hotels = [
  Hotel(
    ["assets/moon.jpg"],
    "Hotel Moon",
    3.0,
    10,
    "Location",
    placeHolderString,
  ),
  Hotel(
    ["assets/del_luna.jpg"],
    "Hotel Del Luna",
    3.1,
    12,
    "Location",
    placeHolderString,
  ),
  Hotel(
    ["assets/dhaka.png"],
    "Dhaka Restaurant",
    5.0,
    1,
    "Dhanmondi",
    placeHolderString,
    price: 2200,
  ),
  Hotel(
    ["assets/uttara.png"],
    "Uttara Restaurant",
    5.0,
    2,
    "Dhanmondi",
    placeHolderString,
    price: 2100,
  ),
];
