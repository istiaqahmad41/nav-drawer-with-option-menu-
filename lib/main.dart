import 'package:flutter/material.dart';

void main() {
  runApp(menu_optionmenu_122_demo());
}

class menu_optionmenu_122_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //------------------start appbar section
          appBar: AppBar(
            title: Text('Menu Example'),
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: (String result) {
                  switch (result) {
                    case 'Developer info':

                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Developer()),
                      );
                      break;
                    case 'Contact':
                      print('Contact selected');
                      // Navigate to developer screen
                      //Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact()),
                      );

                      break;
                    case 'Container_sample':
                      print('Contact selected');
                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Container_sample()),
                      );
                      break;
                    case 'Scaffold_sample_all':
                      print('Scaffoldt selected');
                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Scaffold_sample_all()),
                      );

                      //drawer_individul_example
                      break;
                    case 'drawer_individul_example':
                      print('drawer selected');
                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => drawer_individul_example()),
                      );
                      //TabBarDemo

                      break;
                    case 'TabBarDemo':
                      print('TabBarDemo');
                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabBarDemo()),
                      );
                      //--hor_listview
                      break;
                    case 'hor_listview':
                      print('Horizontal List');
                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hor_listview()),
                      );

                      //gridview

                      break;
                    case 'gridview':
                      print('gridview List');
                      // Navigate to developer screen
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => gridview()),
                      );

                      break;
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Developer info',
                    child: Text('Developer info'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Contact',
                    child: Text('Contact'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Container_sample',
                    child: Text('Container sample'),
                  ),

                  const PopupMenuItem<String>(
                    value: 'Scaffold_sample_all',
                    child: Text('Scaffold sample'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'drawer_individul_example',
                    child: Text('drawer sample'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'TabBarDemo',
                    child: Text('TabBarDemo sample'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'hor_listview',
                    child: Text('Horizontal List'),
                  ),

                  const PopupMenuItem<String>(
                    value: 'gridview',
                    child: Text('gridview List'),
                  ),

//gridview
                ],
              ),
            ],
          ),

          //------------------end appbar section
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    // Update the state of the app

                    // ...
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Row column Sample'),
                  onTap: () {
                    // Navigate to settings screen
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  onTap: () {
                    // Navigate to about screen
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          body: Center(
            child: Text('Home Screen'),
          ),
        ));
  }
}

//-------------
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}

//---------------------------
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text('About Screen'),
      ),
    );
  }
}

//---------

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Stamasoft'),
      ),
      body: Center(
        child: Text('Stamasoft Technologies'),
      ),
    ));
  }
}

//-------------

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('mobile:01819011863'),
      ),
      body: Center(
        child: Text('showrav.stamasoft@gmail.com'),
      ),
    );
  }
}

//------s---container-example--

class Container_sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Container Example',
        home: Scaffold(
          backgroundColor: Colors.lightGreen,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text('Stamasoft Technologies'),
          ),
          body: Container(
            height: 200,
            // height: double.infinity,
            width: double.infinity,
            color: Colors.purple,
            //alignment: Alignment.bottomRight,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(30),
            //transform: Matrix4.rotationZ(0.1),
            child: const Text("Hello! i am inside a container!",
                style: TextStyle(fontSize: 20)),
          ),
        ));
  }
}

//-------e--container-example--

//--------Scaffold example start

class Scaffold_sample_all extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scaffold  Example',
      //theme: ThemeData(primarySwatch: Colors.green),
      // darkTheme: ThemeData(primarySwatch: Colors.grey),
      //  color: Colors.amberAccent,
      //supportedLocales: {const Locale('en', ' ')},
      home: Scaffold(
        appBar: AppBar(title: const Text('stamasoft')),
        body: const Center(
          child: Text(
            "Welcome to stamasoft!!!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
            ),
          ),
        ),

        //------------
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.add),
          onPressed: () {
            // action on button press
          },
        ),

        //-----drawer-------

        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Admin section',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text('Dashboard'),
                leading: Icon(Icons.dashboard),
              ),
            ],
          ),
        ),

//----drawer end---

        //----buttomnav
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.green,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              ),
            ],
            onTap: (int indexOfItem) {}),

        //---buttomnav
      ),
    );
  }
}

//-----scaffold example end

//-----s----drawer_individul_example

class drawer_individul_example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        //backgroundColor: Colors.yellow,
        title: const Text("STAMASOFT"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.yellow[400],

        //title: Text('mobile:01819011863'),
      ),
      body: Center(
        child: Text('showrav.stamasoft@gmail.com'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                accountName: Text(
                  "Showrav Stamasoft",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("stamasoft@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer
    );
  }
}

//-----e----drawer_individul_example

//-s-TabBarDemo

class TabBarDemo extends StatelessWidget {
  // build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ), // TabBar
            title: const Text('stamasoft'),
            backgroundColor: Colors.green,
          ), // AppBar
          body: const TabBarView(
            children: [
              Icon(Icons.music_note),
              Icon(Icons.music_video),
              Icon(Icons.camera_alt),
              Icon(Icons.grade),
              Icon(Icons.email),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}

//-e-TabBarDemo

//----s----hor listview

class hor_listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizantal Listview';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
            // title: const Text(title),
            ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.red,
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//----e----hor listview

//----s----gridview

class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(75, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}

//----e----hor gridview
