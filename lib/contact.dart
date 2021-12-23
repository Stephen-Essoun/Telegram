import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        // elevation: 10,
        title: Text("Add Contact"),
        // backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check),
          )
        ],
      ),

      // body:
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: 40,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(hintText: "Name"),
                      ),
                      TextFormField(
                          decoration:
                              InputDecoration(hintText: "example@gmail.com"))
                    ],
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.004),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: CountryCodePicker(
                    backgroundColor: Colors.amber,
                    dialogBackgroundColor: Colors.blue[300],
                    flagDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    initialSelection: "GH",
                    showCountryOnly: false,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(hintText: "Phone"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//Testing
