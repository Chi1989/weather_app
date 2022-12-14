import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  bool isActive;
  SliderDot(this.isActive);
  //const SliderDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 5,
        width: isActive ? 12 : 5,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white54,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      );
  }
}
