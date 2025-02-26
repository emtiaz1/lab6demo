import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const AdvancedUI());
}

class AdvancedUI extends StatelessWidget {
  const AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.alarm_outlined),
                  title: Text('Recent'),
                  trailing: Icon(Icons.arrow_drop_down),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Images'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.video_settings),
                  title: Text('Videos'),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Advanced UI'),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://motionbgs.com/media/1405/goku-beast-mode.jpg"),
                  ),
                  Image.network(
                      "https://motionbgs.com/media/1405/goku-beast-mode.jpg"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4kdeVK2XRBAaZEV2PVqehiVDMFDNNp4x49A&s"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsb3ipZexAsmxnHO_6FDIAKUA7aOovFj4p0A&s"),
                  CachedNetworkImage(
                    imageUrl:
                        "https://motionbgs.com/i/c/364x205/media/364/black-background-with-goku-dragon-ball-z.jpg",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
