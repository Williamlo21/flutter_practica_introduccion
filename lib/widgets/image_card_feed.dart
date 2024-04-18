import 'package:flutter/material.dart';

class ImageCardFeed extends StatelessWidget {
  const ImageCardFeed({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child:
          // Text("hola mundo"),
          Image.network(image, fit: BoxFit.cover, errorBuilder:
              (BuildContext context, Object error, StackTrace? stackTrace) {
        return const SizedBox(
          child: Center(
            child: Text('No se pudo cargar la imagen'),
          ),
        );
      }, loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child; // Retorna la imagen si la carga ha finalizado
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    (loadingProgress.expectedTotalBytes ?? 1)
                : null,
          ),
        );
      }),
    );
  }
}
