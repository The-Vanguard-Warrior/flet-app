import 'package:flutter/material.dart';
import 'package:admin_app/ip_camera.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, // Number of columns
            crossAxisSpacing: 30.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const IpCamera(); // Display the IP camera widget for each item
            }
            return Container(
              color: Colors.black,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
