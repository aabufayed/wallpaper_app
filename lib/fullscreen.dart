import 'package:flutter/material.dart';

class FullScrenn extends StatefulWidget {
  final String imageurl;

  const FullScrenn({super.key, required this.imageurl});

  @override
  State<FullScrenn> createState() => _FullScrennState();
}

class _FullScrennState extends State<FullScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.network(
                  widget.imageurl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: Colors.black,
                height: 60,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Set as a Wallpaper',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
