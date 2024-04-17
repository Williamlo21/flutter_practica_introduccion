import 'package:facebook_practica/data/data.dart';
import 'package:flutter/material.dart';

import 'card_feed.dart';

class ListViewCardFeed extends StatelessWidget {
  const ListViewCardFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listCard.length,
        itemBuilder: (context, index) {
          return CardFeed(card: listCard[index],);
        });
  }
}
