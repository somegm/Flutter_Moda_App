import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: AnaSayfa());
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.black,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 22,
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          Container(
            // color: Colors.blue.shade300,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //Liste Elemanlarının oluşturulduğu yer üst taraftaki profiller
                ListeElemani(
                  'assets/model1.jpeg',
                  'assets/channellogo.jpg',
                ),
                SizedBox(width: 30),
                ListeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(width: 30),
                ListeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
                SizedBox(
                  width: 30,
                ),
                ListeElemani(
                  'assets/model1.jpeg',
                  'assets/channellogo.jpg',
                ),
                SizedBox(width: 30),
                ListeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(width: 30),
                ListeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
                SizedBox(
                  width: 30,
                ),
                ListeElemani(
                  'assets/model1.jpeg',
                  'assets/channellogo.jpg',
                ),
                SizedBox(width: 30),
                ListeElemani(
                  'assets/model2.jpeg',
                  'assets/louisvuitton.jpg',
                ),
                SizedBox(width: 30),
                ListeElemani(
                  'assets/model3.jpeg',
                  'assets/chloelogo.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              // color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "34 minutes ago",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.more_vert, color: Colors.grey),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is"
                      "modern and stylish. It looks very temparament and is recommend to friends",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      imgPath: 'assets/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag: 'assets/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/modelgrid1.jpeg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 90,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid2.jpeg'),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                  tag: 'assets/modelgrid3.jpeg',
                                  child: Container(
                                    height: 90,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover,
                                        )),
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text("#Louis vuitton",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown,
                                  )),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text("# Chloe",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.brown,
                                  )),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.reply,
                          color: Colors.grey.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1.7k",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "325",
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.3k",
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ListeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
                top: 50,
                left: 50,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.contain),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.brown),
            child: Center(
              child: Text(
                "Follow",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
