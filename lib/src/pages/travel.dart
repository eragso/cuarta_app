import 'dart:io';
import 'package:flutter/material.dart';
class PNetworkImage extends StatelessWidget {
  final String image;
  final BoxFit fit;
  final double width,height;
  const PNetworkImage(this.image, {Key key,this.fit,this.height,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      // placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      // errorWidget: (context, url, error) => Image.asset('assets/placeholder.jpg',fit: BoxFit.cover,),
      fit: fit,
      width: width,
      height: height,
    );
  }
}

class DestinationPage extends StatelessWidget {
  static final String path = "lib/src/pages/travel/tdestination.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage('https://wallpaperaccess.com/full/1192022.jpg'), fit: BoxFit.cover)),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 200, left: 40),
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Platform.isIOS
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_back),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Text("Japan",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            IconButton(
                              icon: Icon(Icons.star_border),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 16.0),
                            child: Text(
                              "Japan is an island nation in the Pacific Ocean with dense cities, imperial palaces, mountainous national parks, and thousands of shrines and temples.",
                              textAlign: TextAlign.justify,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Places to visit")),
                  FlatButton(
                      textColor: Colors.red,
                      onPressed: () => Navigator.pushNamed(context, 'basico'),
                      child: Text("Back")),
                ],
              ),
              
              Container(
                height: 250,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: PNetworkImage('https://i.pinimg.com/736x/2a/c6/9e/2ac69ed5f6027cdef78da110d9cfc8ce.jpg',
                                height: 180, fit: BoxFit.cover))),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child:
                                  PNetworkImage('https://i.pinimg.com/originals/f2/a3/77/f2a37772871bd2a1525eaa08c092ea6f.jpg', fit: BoxFit.cover)),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: PNetworkImage('https://all-images.net/wp-content/uploads/2020/07/Wallpaper-iphone-Japan-81.jpg',
                                  fit: BoxFit.cover)),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: PNetworkImage('https://r1.ilikewallpaper.net/iphone-x-wallpapers/download/76021/Fusihimi-Inari-Kyoto-Japan-iphone-x-wallpaper-ilikewallpaper_com_200.jpg',
                                  fit: BoxFit.cover)),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child:
                                  PNetworkImage('https://wallpaperaccess.com/full/15370.jpg', fit: BoxFit.cover)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
