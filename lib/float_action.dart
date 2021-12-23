import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jea_1/contact.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        onPressed: (){Navigator.pop(context);}, icon:Icon( Icons.arrow_back_ios_new)),
        title: Text("New Message"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.sort),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        FloatingActionButton(
            child: Icon(Icons.person_add),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Add()));
            })
      ]),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.group_outlined,
                        color: Colors.grey,
                      ),
                      title: Text("Create  Group", ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      title: Text(
                        "Create a Secret Chat",
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        FontAwesomeIcons.bullhorn,
                        color: Colors.grey,
                        size: 18,
                      ),
                      title: Text("Create Channel", ),
                    )
                  ],
                ),
              ),
              
              
              Divider(color: Color(0xfffffffff),),


              Text("Sorted by last seen",style: TextStyle(color: Colors.white),),
              Divider(color: Color(0xfffffffff),),


              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("A"),
                      ),
                      title: Text(
                        "Apple Motion",
                        // style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text("last seen at 4:48 PM",),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("K"),
                      ),
                      title: Text(
                        "Kweku Baah",
                      ),
                      subtitle: Text("last seen at 4:48 PM", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("A"),
                      ),
                      title: Text(
                        "Aki Ola",
                      ),
                      subtitle: Text("last seen at 4:48 PM", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("A"),
                      ),
                      title: Text(
                        "Albert Einsten",
                      ),
                      subtitle: Text("last seen at 4:48 PM", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("A"),
                      ),
                      title: Text(
                        "Albert Coleman",
                      ),
                      subtitle: Text("last seen at 4:48 PM", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("A"),
                      ),
                      title: Text(
                        "Albert Eshun",
                      ),
                      subtitle: Text("last seen at 12:03 AM", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("A"),
                      ),
                      title: Text(
                        "Ada Loverance",
                      ),
                      subtitle: Text("last seen at yesterday", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("L"),
                      ),
                      title: Text(
                        "Linus Yeboah",
                        
                      ),
                      subtitle: Text("last seen at four days ago", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("Y"),
                      ),
                      title: Text(
                        "Yaa Cutie",
                      ),
                      subtitle: Text("last seen at weeks ago", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("E"),
                      ),
                      title: Text(
                        "Eric Ato Aidoo",
                      ),
                      subtitle: Text("last seen at weeks ago", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("F"),
                      ),
                      title: Text(
                        "Francis Arthur",
                      ),
                      subtitle: Text("last seen at last month", ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("O"),
                      ),
                      title: Text(
                        "Oliver Arthur",
                      ),
                      subtitle: Text("last seen at @#@", ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
