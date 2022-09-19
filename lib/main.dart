import 'package:skeleton_text/skeleton_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skeleton Text"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blueGrey,
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SkeletonAnimation(
                      child: Container(
                        width: 70,
                        height: 70,
                        color: Colors.blue,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          child: SkeletonAnimation(
                            child: Container(
                              width: 250,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          child: SkeletonAnimation(
                            child: Container(
                              width: 150,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
