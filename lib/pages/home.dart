import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notiflex/pages/splash.dart';
import 'package:notiflex/services/data_set.dart';
import 'package:notiflex/widgets/main_card.dart';
import 'package:notiflex/widgets/sub_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          //leading: Icon(Icons.person_outline),
          title: Text(
            'Notiflex',
            style: TextStyle(fontSize: 20.0),
          ),
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  'lead stories'.toUpperCase(),
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'our picks'.toUpperCase(),
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'business'.toUpperCase(),
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'for you'.toUpperCase(),
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'good news'.toUpperCase(),
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'national'.toUpperCase(),
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainCard(),
                    SubCard()
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainCard(),
                    SubCard()
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainCard(),
                    SubCard()
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainCard(),
                    SubCard()
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainCard(),
                    SubCard()
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    MainCard(),
                    SubCard()
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.attach_file,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
