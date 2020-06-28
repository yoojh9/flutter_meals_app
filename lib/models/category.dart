import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  // const Constuctor: all these properties are final,
  // the properties of an object can't be changed after the object has been created
  // therefore a list where the value will never change.
  const Category({@required this.id, this.title, this.color = Colors.orange});
}
