import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainTopicButton extends StatelessWidget {
  final String title;
  VoidCallback? onTap;
  MainTopicButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
