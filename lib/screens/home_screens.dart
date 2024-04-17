// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/card_feed.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica Facebook'),
        backgroundColor: Colors.blue,
      ),
      body: CardFeed(),
      backgroundColor: Colors.grey[300],
    );
  }
}
