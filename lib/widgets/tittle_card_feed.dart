import 'package:flutter/material.dart';

class TittleCardFeed extends StatelessWidget {
  const TittleCardFeed({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            child: Text("W"),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
                color: Color.fromARGB(239, 54, 52, 52),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
