import 'package:flutter/material.dart';
import 'package:instagram_flutter/ui/stories.dart';

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

    return new SizedBox(
      child: Stories(), height: 100,
    );
  }
}
