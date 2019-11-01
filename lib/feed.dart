import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FeedState();
  }
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.red,
    );
  }
}
