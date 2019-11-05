import 'package:flutter/material.dart';

class DyCheckbox extends StatefulWidget {
  @override
  Store createState() => new Store();
}

class Store extends State {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: (e) {
        setState(() {
          value = e;
        });
      },
    );
  }
}
