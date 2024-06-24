import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Image Wigdet',
          ),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage(
            //     'images/906-536x354.jpg',
            //   ),
            //    image: NetworkImage("https://picsum.photos/350/500"),
            // ),
            // child: Image.asset("images/906-536x354.jpg"),
            child: Image.network("https://picsum.photos/350/500"),
          ),
        ),
      ),
    );
  }
}
