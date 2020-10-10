import 'package:aboutme/education.dart';
import 'package:aboutme/experience.dart';
import 'package:aboutme/gallary.dart';
import 'package:aboutme/game.dart';
import 'package:aboutme/hobby.dart';
import 'package:aboutme/reference.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      title: "About Me",
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String myBio =
        "Ghufran Ataie s/o Malang Ataie Born on 30-Jun-1989 in Kabul, Afghanistan currently enrolled as a student at Aria University in 7th Semester of Computer Science department, "
        "he finished his high school at Sheerpoor high school of Kabul, he is a from middle class family, his father was a bushiness man and died due to high blood pressure and his mother is a "
        "house wife, he is the 3th son of the family and his elder brothers are Paiman Ataie which is currently working as Technical General Manager in Mazar-e Sharif Airport and the other one "
        "is Sulaiman Ataie currently living in Toronto, Canada, his younger brother name is Imran Ataie and currently working as operation office in New Kabul Bank.\n"
        "This was the Ghufran Ataie Biography for more details kindly click bellow social media icons to access the Ghufran Ataie online social icons";
    List<DItem> DItems = new List<DItem>();
    DItems.add(DItem("Education", "assets/education.png"));
    DItems.add(DItem("Experience", "assets/exper.png"));
    DItems.add(DItem("References", "assets/ref.png"));
    DItems.add(DItem("Hobbies", "assets/hobbies.png"));
    DItems.add(DItem("My Game", "assets/games.png"));
    DItems.add(DItem("Gallary", "assets/gallary.png"));
    return Scaffold(
      appBar: AppBar(
        title: Text("Biography"),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 81, 131, 190),
          child: ListView(
            padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: ListTile(
                  leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: ExactAssetImage("assets/ghufran.jpg")))),
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      "Ghufran Ataie",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  subtitle: Text(
                    "ghufranataie@hotmail.com\n+93707525294",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: DItems.length,
                  itemBuilder: (Context, Index) {
                    return ListTile(
                      leading: Image.asset(
                        DItems[Index].pic,
                        height: 30,
                      ),
                      title: Text(
                        DItems[Index].Name,
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      onTap: () {
                        if(DItems[Index].Name == "Education"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Educations()));
                        }else if(DItems[Index].Name == "Hobbies"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Hobbies()));
                        }
                        else if(DItems[Index].Name == "References"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> References()));
                        }
                        else if(DItems[Index].Name == "Experience"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Experiences()));
                        }
                        else if(DItems[Index].Name == "My Game"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Games()));
                        }else if(DItems[Index].Name == "Gallary"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Gallaries()));
                        }else{
                          Navigator.pop(context);
                        }
                      },
                    );
                  })
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset("assets/ghufran3.jpg")),
              ), // Card(
              //   margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //   elevation: 3,
              //   child: Container(
              //     padding: EdgeInsets.all(8),
              //       child: Image.asset("assets/ghufran2.jpg",),
              //   ),
              // ),
              Positioned(
                top: 200,
                left: 30,
                child: Text(
                  "GHUFRAN ATAIE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 0.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                      ]),
                ),
              ),
              Positioned(
                top: 225,
                left: 123,
                child: Text(
                  "OCTOBER 10",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 0.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )
                      ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(myBio),
          ),
          Container(
            color: Color.fromARGB(255, 81, 131, 190),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Image.asset("assets/socials/fb.png", width: 100, height: 100,),
                  onPressed: ()=> _openLink("https://www.facebook.com/ghufranataie"),
                ),
                IconButton(
                  icon: Image.asset("assets/socials/tw.png", width: 100, height: 100,),
                  onPressed: ()=> _openLink("https://www.twitter.com/ghufranataie"),
                ),
                IconButton(
                  icon: Image.asset("assets/socials/lk.png", width: 100, height: 100,),
                  onPressed: ()=> _openLink("https://www.Linkedin.com/ghufranataie"),
                ),
                IconButton(
                  icon: Image.asset("assets/socials/ig.png", width: 100, height: 100,),
                  onPressed: ()=> _openLink("https://www.instagram.com/ghufranataie"),
                ),
                IconButton(
                  icon: Image.asset("assets/socials/gt.png", width: 100, height: 100,),
                  onPressed: ()=> _openLink("https://www.github.com/ghufranataie"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //asynchronous
  _openLink(String url) async{
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw "Unable to Lanuch Url: $url";
    }
  }
}

class DItem {
  String Name;
  String pic;
  DItem(this.Name, this.pic);
}
