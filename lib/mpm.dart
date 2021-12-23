// import 'dart:html';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool showUser = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          child: Container(
            color: Colors.black87,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    onDetailsPressed: () {
                      setState(() {
                        showUser = !showUser;
                      });
                    },
                    accountName: Text("userName"),
                    currentAccountPicture: CircleAvatar(),
                    accountEmail: Text("fgfgddd@gf.com")),
                showUser
                    ? ListTile(
                        title: Text("Steve"),
                      )
                    : Container(),
                ListTile(title: Text("Setting"), leading: Icon(Icons.settings))
                // ListView.builder(itemBuilder: )
              ],
            ),
          ),
        ),
        //  appBar: AppBar(title: Text("vhjhgjhg"),),

        body: CustomScrollView(
          // ListViewBuilder(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black26,
              title: Center(
                child: Text(
                  "Get the latest on our COVID-19 response",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ),
              floating: false,
              pinned: true,
              flexibleSpace: Image.asset(
                "images/aej.jpg",
                cacheWidth: 200,
                cacheHeight: 300,
                fit: BoxFit.fill,
              ),
              expandedHeight: 09,
            ),
            ListView.builder(itemBuilder: (context, index) {
              return ListViewBuilder(children: [],);
            })
            // BottomAppBar(
            // color: Colors.black
            // ),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (context, index) => Column(
            //       children: [
            //         Row(
            //           children: [
            //             Container(
            //               child: Text("")
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //     childCount: 1000,
            //   ),
            // )
          ],
        ));
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key, required List<ListTile> children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("images/caa.png"),
          ),
        );
      },
    );
  }
}
//         child: Column(
//           children: [
//             Container(
              
//               child: AppBar(centerTitle:true,
//               backgroundColor: Colors.black12,
//               title: Text("Get the latest on our COVID-19 response",
//               style: TextStyle(
//                 fontSize:10,
//                 fontWeight: FontWeight.w100
//               ),),
//               ),
//             ),
//           ],
//         ),
//       ),
      
//     );
//   }
// }