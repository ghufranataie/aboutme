import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Educations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Edu> Edus = new List<Edu>();
    Edus.add(Edu("assets/edus/aria.png", "Aria University", "Computer Science", "Mazar-e Sharif", "2021"));
    Edus.add(Edu("assets/edus/medu.png", "Ahmad Shah Masoud", "High School", "Kabul", "2006"));
    Edus.add(Edu("assets/edus/kardan.png", "Kardan Institute", "MCSE", "Kabul", "2010"));
    return Scaffold(
      appBar: AppBar(
        title: Text("Educations"),
      ),
      body: ListView.builder(
        itemCount: Edus.length,
        itemBuilder: (context, index){
          return Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Edus[index].Logo, height: 120, width: 120,),
              ),
              Expanded(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Text(Edus[index].title, style: TextStyle(fontSize: 22),),
                  ),
                  subtitle: Text(Edus[index].schoolName +"\n" +Edus[index].year+ " - "+Edus[index].city),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class Edu{
  String Logo;
  String schoolName;
  String title;
  String city;
  String year;
  Edu(this.Logo, this.schoolName, this.title, this.city, this.year);
}
