import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jea_1/float_action.dart';
// import 'package:jea_1/mpm.dart';
import 'package:theme_provider/theme_provider.dart';
// import 'package:jea_1/mpm.dart';
// import 'package:jea_1/mpm.dart';

class Gram extends StatefulWidget {
  // const Gram({Key? key}) : super(key: key);

  @override
  _GramState createState() => _GramState();
}

class _GramState extends State<Gram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FloatButton()));
            },
            // backgroundColor: Colors.deepOrange,
            child: Icon(Icons.edit)),
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            // CycleThemeIconButton()
          ],
          title: Text("ChatWith"),
          // backgroundColor: Colors.deepOrange[500],
        ),
        drawer: Drawer(
          child: Container(
            color: Color(0xFF72726D),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  onDetailsPressed: () {
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/ta.jpg"),
                        radius: 10,
                      ),
                      title: Text("Kessey"),
                    );
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Add Account"),
                    );
                  },
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/ta.jpg")),
                  decoration: BoxDecoration(color: Colors.black12),
                  accountName: Text("Kessey"),
                  accountEmail: Text("jea@gmail.com"),
                ),

                ListTile(
                  leading: Icon(Icons.group_outlined),
                  title: Text("New Group"),
                ),
                ListTile(
                  leading: Icon(Icons.person_outline_outlined),
                  title: Text("Contacts"),
                ),
                ListTile(
                  leading: Icon(Icons.call_outlined),
                  title: Text("Calls"),
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.streetView),
                  title: Text("Person Nearby"),
                ),
                ListTile(
                  leading: Icon(Icons.save_alt_outlined),
                  title: Text("Saved Messages"),
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.person_add_outlined),
                  title: Text("Invite Friends"),
                ),
                ListTile(
                  leading: Icon(Icons.help_outline_rounded),
                  title: Text("Telegram Features"),
                ),

                // ListView.builder(
                //   itemCount: 2,
                //   itemBuilder: (BuildContext context, int index) {
                //     return ListViewBuilder() ;
                //   },
              ],
            ),
          ),
        ),
        body: ListView(
          children: 
            [ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/ade.jpg"),
                radius: 20,
              ),
              title: Text(
                "MT PMC MEDIA",
              ),
              subtitle: Text(
                "Follow me on YouTube",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                "yesterday",
                style: TextStyle(),
              ),
        
              // backgroundColor: Colors.black,
            ),ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("images/ade.jpg"),
        radius: 20,
      ),
      title: Text(
        "MT PMC MEDIA",
      ),
      subtitle: Text(
        "Follow me on YouTube",style: TextStyle(color: Colors.grey),
      ),
      trailing: Text(
        "yesterday",
        style: TextStyle(
          
      ),
      ),
      
      // backgroundColor: Colors.black,
    )
          ],
        ),
        );
  }
}
