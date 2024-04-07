import 'package:admin_app/camera_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mjpeg/flutter_mjpeg.dart';

class IpCamera extends HookWidget {
  const IpCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const CameraSection()));
      },
      child: Container(
        height: 50,
        width: 80,
        child: Mjpeg(
          isLive: true,
          // isRunning.value,
          error: (context, error, stack) {
            // devtools.log(error.toString());
            // devtools.log(stack);
            // return Text(error.toString(), style: const TextStyle(color: Colors.red));
            return Container(
              color: Colors.black,
            );
          },
          stream:
          'http://10.233.72.141:8080/video', //'http://192.168.1.37:8081',
        ),
      )
    );
  }
}