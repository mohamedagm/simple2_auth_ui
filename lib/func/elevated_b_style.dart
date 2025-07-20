import 'package:flutter/material.dart';

ButtonStyle elevatedBstyle(BuildContext context) {
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: Colors.grey[200],
    minimumSize: Size(
      MediaQuery.of(context).size.width * 0.6,
      MediaQuery.of(context).size.height * 0.05,
    ),
  );
}
