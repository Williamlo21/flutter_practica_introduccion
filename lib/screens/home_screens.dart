// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica Facebook'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: 350,
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(color: Colors.white),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    CircleAvatar(
                      child: Text("W"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "William Lopez",
                      style: TextStyle(
                          color: Color.fromARGB(239, 54, 52, 52),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child:
                    // Text("hola mundo"),
                    Image.network(
                        "https://media.gq.com.mx/photos/622f89b2ea1d03f2815e74e4/16:9/w_2560%2Cc_limit/132.jpg",
                        fit: BoxFit.cover, errorBuilder: (BuildContext context,
                            Object error, StackTrace? stackTrace) {
                  return Container(
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
              ),
              Container(
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
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
