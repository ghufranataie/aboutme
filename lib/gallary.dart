import 'package:flutter/material.dart';


class Gallaries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Photo> Photos = new List<Photo>();
    Photos.add(Photo("assets/myPhotos/1.jpg"));
    Photos.add(Photo("assets/myPhotos/2.jpg"));
    Photos.add(Photo("assets/myPhotos/3.jpg"));
    Photos.add(Photo("assets/myPhotos/4.jpg"));
    Photos.add(Photo("assets/myPhotos/5.jpg"));
    Photos.add(Photo("assets/myPhotos/6.jpg"));
    Photos.add(Photo("assets/myPhotos/7.jpg"));
    Photos.add(Photo("assets/myPhotos/8.jpg"));
    Photos.add(Photo("assets/myPhotos/9.jpg"));
    Photos.add(Photo("assets/myPhotos/10.jpg"));
    Photos.add(Photo("assets/myPhotos/11.jpg"));
    Photos.add(Photo("assets/myPhotos/12.jpg"));
    Photos.add(Photo("assets/myPhotos/13.jpg"));
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallary Jan"),
      ),
      body: GridView.builder(
        itemCount: Photos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                child: Image.asset(Photos[index].pName),
              ),
            ],
          );
          },
      ),
    );
  }
}

class Photo{
  String pName;
  Photo(this.pName);
}
