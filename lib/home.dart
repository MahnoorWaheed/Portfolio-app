import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  aboutAchivements(num, type) {
    return Row(
      children: [
        Text("${num}:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Soho",
            )),
        Container(
            // margin: EdgeInsets.only(top: 10),
            child: Text(
              type,

              style: TextStyle(
                fontFamily: "Soho",
                fontSize: 15,
              ),
            ))
      ],
    );
  }

  mySpec(icon, text) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16, fontFamily: "Soho", color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      height: 115,
      width: 105,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: Icon(Icons.menu),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: TextButton(
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/project');
                        }),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: TextButton(
                        child: Text(
                          'About Me',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/about');
                        }),
                    value: 2,
                  )
                ]),
      ),

      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 0),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  // child: Image.asset(
                  //   'assests/mahnoor.jpg',
                  //   height: double.infinity,
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                child: Column(
                  children: [
                    Text('Mahnoor Waheed',
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Mobile Application Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Soho",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, top: 30, right: 20),
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  aboutAchivements('Education', '   Bachelors in Cs'),
                  aboutAchivements('Country', '    Pakistan'),
                  aboutAchivements('Experience', '   One Year'),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Skills',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Soho",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      mySpec(FontAwesomeIcons.android, 'Android'),
                      mySpec(FontAwesomeIcons.github, 'GitHub'),
                     mySpec(FontAwesomeIcons.bug, 'Bug solving'),
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    mySpec(FontAwesomeIcons.spinner, 'Agile'),
                   SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Frame Work',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Soho",
                        fontWeight: FontWeight.bold),
                  ),
                    SizedBox(
                    height: 10,
                  ),
                   mySpec(FontAwesomeIcons.f, 'Flutter'),
                    SizedBox(
                    height: 10,
                  ),
                   aboutAchivements('StateManagement', '   Getx, Provider'),
                   aboutAchivements('Backend', '   Firebase and API'),
                    SizedBox(
                    height: 10,
                  ),
                  
                  const Text(
                    'Tools',textAlign: TextAlign.start,
            
                    style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Soho",
                    fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // mySpec(FontAwesomeIcons.a, 'Android Studio'),
                      // mySpec(FontAwesomeIcons.code, 'VsCode'),
                      // mySpec(FontAwesomeIcons.jira, 'Jira'),
                     
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.a, 'Android Studio'),
                      mySpec(FontAwesomeIcons.code, 'VsCode'),
                      mySpec(FontAwesomeIcons.jira, 'Jira'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
              mySpec(FontAwesomeIcons.slack, 'Slack'),

SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          );
        },
      ),

    );
  }
}
