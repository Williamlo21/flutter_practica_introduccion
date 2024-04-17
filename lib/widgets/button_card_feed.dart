import 'package:flutter/material.dart';


class ButtonsCardFeed extends StatelessWidget {
  const ButtonsCardFeed({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Me gusta',
                style: textStyle,
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Compartir',
                style: textStyle,
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Comentar',
                style: textStyle,
              )),
        ],
      ),
    );
  }
}
