import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/nikenew.png',
                height: 240,),
              ),
              const SizedBox(
                height: 48,
              ),
              const Text('Just Do It',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              const SizedBox(height: 24,),

              const Text('Brand new sneakers and custom kicks made with premium quality',
              style: TextStyle(fontSize: 16,color: Colors.grey,),textAlign: TextAlign.center,),

              const SizedBox(height: 24,),


            ],
          ),
        ),
      ),
    );
  }
}