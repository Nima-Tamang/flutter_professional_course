import 'dart:ffi';

import 'package:flutter/material.dart';

class Profilemodel {
  final String name;
  final int colornumber;
  final String image;
  final double price;
  final bool isadded;

  const Profilemodel(
      {required this.name,
      required this.colornumber,
      required this.price,
      required this.image,
      required this.isadded});
}
