import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height*0.25,
      child: Card(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 0, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  
                ],
              )
            ],
          ),
        ),
        color: Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                projetCard(
                  'FLUTTER', 'Order Box', 'Ui', 'Ui for Client'),
                projetCard(
                  'FLUTTER', 'Wood Glaze', 'Admin panel and user app to check documents', 'App for Client'),
              projetCard(
                  'FLUTTER', 'Dr Alarming', 'Appointment reminders', 'Personal Product'),
              projetCard('FLUTTER', 'Medica reminder', 'app for health appointments and awareness and saving records',
               'Company Haztech'),
              projetCard('FLUTTER', 'Skill App',
                  'Finding nearby worker.', 'Company Xtremes Software\n & Services'),
              projetCard('FLUTTER', 'Property Marketing', 'Property buying and selling app.', 'Company Xtremes Software\n & Services'),
              projetCard(
                  'FLUTTER', 'Fruit Market Ui', 'Fruit order app', 'Company ItechExperts')
            ],
          ),
        ),
      ),
    );
  }
}
