import 'package:flutter/material.dart';

import 'button_card_feed.dart';
import 'description_card_feed.dart';
import 'image_card_feed.dart';
import 'tittle_card_feed.dart';

class CardFeed extends StatelessWidget {
  const CardFeed({super.key, required this.card});

  final Map<String, String> card;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TittleCardFeed(name: card["name"]!),
            DescriptionCardFeed(description: card["description"]!),
            ImageCardFeed(image: card["image"]!),
            const ButtonsCardFeed(),
          ],
        ),
      ),
    );
  }
}
