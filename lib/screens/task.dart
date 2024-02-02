import 'package:flutter/material.dart';
import 'dart:math';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  Color _currentColor = Colors.blue;
  String _currentColorName = '0-ff34acd0';

  void _changeColor() {
    setState(() {
      final random = Random();
      _currentColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
      _currentColorName = _currentColor.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _changeColor,
              child: Container(
                width: 200,
                height: 200,
                color: _currentColor,
              ),
            ),
            SizedBox(height: 16),
            Text(
              _currentColorName,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
