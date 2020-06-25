import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'CircleTabIndicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  TabController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Container(
            height: 1,
            width: 1,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.account_circle,
              color: Colors.grey,
            )),
        actions: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.grey,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                  child: Text(
                    "Let's Enjoy \n your Vacation !!",
                    style: TextStyle(fontSize: 35.0),
                  ),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 25.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30.0)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                      hintText: "Type Here"),
                  cursorColor: Colors.black,
                ),
              ),
            ),
            Container(
                child: TabBar(
                  indicator: CircleTabIndicator(color: Colors.black, radius: 3),
                  controller: _controller, tabs: [
                  Tab(
                    child: Text("All", style: TextStyle(color: Colors.black),),
                  ),
                  Tab(
                    child: Text("New", style: TextStyle(color: Colors.black),),
                  ),
                  Tab(
                    child: Text("Mostly Viewed", style: TextStyle(color: Colors.black, fontSize: 11.0),),
                  ),
                  Tab(
                    child: Text("Recomended", style: TextStyle(color: Colors.black),),
                  ),
                ])),
                Expanded(
                  child: Container(
                    child: TabBarView(controller: _controller,
                      children: <Widget>[
                        ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                width: 300.0,
                                height: 470.0,
                                child: Card(
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image.asset("assets/3.jpg", fit: BoxFit.cover,),
                                  ),
                                ),
                              ),
                            ], 
                          ),
                          Container(
                            width: 300.0,
                            child: Card(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset("assets/shanghai.png", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Container(
                            width: 300.0,
                            child: Card(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset("assets/4.png", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Container(
                            width: 300.0,
                            child: Card(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset("assets/shanghai.png", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("2"),
                      Text("3"),
                      Text("4"),
                      ],
                    ),
                  ),
                ),
            Container(
              child: Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 9,
                          child: Text("Popular Categories", style: TextStyle(fontSize: 20.0),)
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("See All")
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
                            height: 70.0,
                            
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.asset("assets/3.jpg", fit: BoxFit.cover)
                            ),
                          )
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
                            height: 70.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.asset("assets/shanghai.png", fit: BoxFit.cover)
                            ),
                          )
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
                            height: 70.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.asset("assets/6.png", fit: BoxFit.cover)
                            ),
                          )
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
                            height: 70.0,
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image.asset("assets/5.png", fit: BoxFit.cover)
                                ),
                                // Center(child: Text("India"),)
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(flex: 2,child: Center(child: Text("Heaven"))),
                        Expanded(flex: 2,child: Center(child: Text("Earth"))),
                        Expanded(flex: 2,child: Center(child: Text("Mars"))),
                        Expanded(flex: 2,child: Center(child: Text("Hell")))
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
