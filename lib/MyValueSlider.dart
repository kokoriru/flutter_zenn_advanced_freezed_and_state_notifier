import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyValue.dart';

class MyValueSlider extends StatefulWidget {
  @override
  createState() => _MyValueSliderState();
}

class _MyValueSliderState extends State<MyValueSlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
        value: context.select((MyValue myValue) => myValue.value),
        onChanged: (newValue) =>
            {context.read<MyValueStateNotifier>().change(newValue)});
  }
}
