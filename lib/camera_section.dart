import 'package:admin_app/ip_camera.dart';
import 'package:flutter/material.dart';

class CameraSection extends StatefulWidget {
  const CameraSection({super.key});

  @override
  State<CameraSection> createState() => _CameraSectionState();
}

class _CameraSectionState extends State<CameraSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Center(
          child: Text(
            "Guardian",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    child: const IpCamera(),
                  ),
                  const SizedBox(width: 100),
                  Container(
                    height: 300,
                    width: 400,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                height: 200,
                width: 900,
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(width: 85),
          Container(
            width: 250,
            height: 700,
            color: Colors.black,
          )
        ],
      )
    ));
  }
}