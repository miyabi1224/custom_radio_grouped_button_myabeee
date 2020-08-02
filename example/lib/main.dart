import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:example/RadioButtonPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GroupedButton());
  }
}

class GroupedButton extends StatelessWidget {
  const GroupedButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grouped Button Example'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Radio Button'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RadioButton()));
        },
        icon: Icon(Icons.radio_button_checked),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              'Horizontal',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shape Disabled',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomCheckBoxGroup(
                        unSelectedColor: Theme.of(context).canvasColor,
                        buttonLables: [
                          "Monday",
                          "Tuesday",
                          "Wednesday",
                          "Thursday",
                        ],
                        buttonValuesList: [
                          "Monday",
                          "Tuesday",
                          "Wednesday",
                          "Thursday",
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        defaultSelected: "Monday",
                        horizontal: true,
                        width: 120,
                        // hight: 50,
                        selectedColor: Theme.of(context).accentColor,
                        padding: 5,
                        spacing: 20.0,
                        // enableShape: true,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shape Enabled',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomCheckBoxGroup(
                        unSelectedColor: Theme.of(context).canvasColor,
                        buttonLables: [
                          "Thursday",
                          "Friday",
                          "Saturday",
                          "Sunday",
                        ],
                        buttonValuesList: [
                          "Thursday",
                          "Friday",
                          "Saturday",
                          "Sunday",
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        defaultSelected: "Sunday",
                        horizontal: true,
                        width: 120,
                        // hight: 50,
                        selectedColor: Theme.of(context).accentColor,
                        padding: 5,
                        enableShape: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Verticle',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Shape Disabled',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomCheckBoxGroup(
                      fontSize: 18,
                      unSelectedColor: Theme.of(context).canvasColor,
                      buttonLables: [
                        "Monday",
                        "Tuesday",
                        "Wednesday",
                        "Thursday",
                        "Friday",
                        "Saturday",
                        "Sunday",
                      ],
                      buttonValuesList: [
                        "Monday",
                        "Tuesday",
                        "Wednesday",
                        "Thursday",
                        "Friday",
                        "Saturday",
                        "Sunday",
                      ],
                      checkBoxButtonValues: (values) {
                        print(values);
                      },
                      defaultSelected: "Monday",
                      horizontal: false,
                      enableButtonWrap: false,
                      width: 120,
                      // hight: 50,
                      selectedColor: Theme.of(context).accentColor,
                      padding: 5,
                      // enableShape: true,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Shape Enabled and Wrap enabled',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomCheckBoxGroup(
                      fontSize: 18,
                      autoWidth: false,
                      enableButtonWrap: true,
                      unSelectedColor: Theme.of(context).canvasColor,
                      buttonLables: [
                        "Monday",
                        "Tuesday",
                        "Wednesday",
                        "Thursday",
                        "Friday",
                        "Saturday",
                        "Sunday",
                      ],
                      buttonValuesList: [
                        "Monday",
                        "Tuesday",
                        "Wednesday",
                        "Thursday",
                        "Friday",
                        "Saturday",
                        "Sunday",
                      ],
                      checkBoxButtonValues: (values) {
                        print(values);
                      },
                      defaultSelected: "Sunday",
                      horizontal: false,
                      width: 120,
                      // hight: 50,
                      selectedColor: Theme.of(context).accentColor,
                      padding: 5,
                      enableShape: true,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
