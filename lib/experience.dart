import 'package:flutter/material.dart';



class Experiences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Exp> Expr = new List<Exp>();
    Expr.add(Exp("", "Regional Manager", "New Kabul Bank", "Herat", "2008 - 2009"));
    Expr.add(Exp("", "Promotion Leader", "GIZ", "Balkh", "2017 - 2019"));
    Expr.add(Exp("", "Database Developer", "USAID", "Balkh", "2019 - 2020"));

    return Scaffold(
      appBar: AppBar(
        title: Text("Experiences"),
      ),
      body: ListView.builder(
        itemCount: Expr.length,
        itemBuilder: (context, index){
          return Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Expr[index].logo, height: 120, width: 120,),
              ),
              Expanded(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(Expr[index].jobTitle, style: TextStyle(fontSize: 22),),
                  ),
                  subtitle: Text(Expr[index].organization +"\n" +Expr[index].from+ " - "+Expr[index].city),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}


class Exp{
  String logo;
  String jobTitle;
  String organization;
  String city;
  String from;

  Exp(this.logo, this.jobTitle, this.organization, this.city, this.from);
}