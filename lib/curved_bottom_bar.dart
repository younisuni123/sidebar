import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar extends StatefulWidget {
  final String title;
  const BottomBar({Key? key, this.title = "Login"}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    MyList(),
    MyList(),
    MyList(),
    MyList(),
  ];
  // int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 1,

        // shadowColor: Colors.amber,
        title: Image.asset("assets/img/alnoor-logo.png", height: 50),
        centerTitle: true,
        leading: const DrawerWidget(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        color: Colors.amber,
        backgroundColor: Colors.white,
        height: 60,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Container(
            height: 50,
            child: Column(
              children: const [Icon(Icons.add, size: 30), Text("add")],
            ),
          ),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Icon(Icons.menu),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(children: <Widget>[
          Card(
            child: ListTile(
                onTap: () {
                  print(" pressed");
                },
                leading: const Icon(Icons.check),
                title: const Text("Completed"),
                subtitle: Text("08:00 am to 09:00 am"),
                trailing: const Icon(Icons.check)),
          ),
          Card(
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.circle_outlined),
              title: const Text("Absent"),
              subtitle: Text("11:00 am to 11:30 am"),
              trailing: const Icon(Icons.circle_outlined),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 10:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              onTap: () {
                print(" pressed");
              },
              leading: const Icon(Icons.timelapse),
              title: const Text("present"),
              subtitle: Text("09:00 am to 3:00 am"),
              trailing: const Icon(Icons.timelapse),
            ),
          ),
        ]),
      ),
    );
  }
}
