import 'package:flutter/material.dart';

class FacultyPage extends StatelessWidget {
  const FacultyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Faculty Page'),
      ),
      body: Center(
        child: const Text(
          'facultypage!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
