import 'package:flutter/material.dart';


class References extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Ref> Refs = new List<Ref>();
    Refs.add(Ref("assets/ref/arif.jpg", "Arif Harooni", "MTN Afghanistan", "arif.harooni@mtna.com", "+93770334459"));
    Refs.add(Ref("assets/ref/zabi.jpg", "Zaibullah Shifa", "GIZ", "zabiullah.shia@giz.org", "+93788665544"));

    return Scaffold(
      appBar: AppBar(
        title: Text("References"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: Refs.length,
          itemBuilder: (context, index){
            return Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(Refs[index].logo, height: 100, width: 100,),
                ),
                Expanded(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(Refs[index].Name, style: TextStyle(fontSize: 22),),
                    ),
                    subtitle: Text(Refs[index].Org +"\n" +Refs[index].Email+ "\n"+Refs[index].Phone),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}


class Ref{
  String logo;
  String Name;
  String Org;
  String Email;
  String Phone;
  Ref(this.logo, this.Name, this.Org, this.Email, this.Phone);
}