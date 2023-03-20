import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gallery(),
  ));
}

class ImageModel {
  final String imageUrl;
  final String caption;

  ImageModel({required this.imageUrl, required this.caption});
}

final List<ImageModel> images = [
  ImageModel(imageUrl: 'assets/1.jpg', caption: 'Gambar pertama'),
  ImageModel(imageUrl: 'assets/2.jpg', caption: 'Gambar kedua'),
  ImageModel(imageUrl: 'assets/3.jpg', caption: 'Gambar ketiga'),
  ImageModel(imageUrl: 'assets/4.webp', caption: 'Gambar keempat'),
];

class GalleryItem extends StatelessWidget {
  final ImageModel image;

  GalleryItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(image.imageUrl),
                      SizedBox(height: 8.0),
                      Text(image.caption),
                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Tutup'),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            image.imageUrl,
            height: 150.0,
            width: 150.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(images.length, (index) {
          return GalleryItem(image: images[index]);
        }),
      ),
    );
  }
}
