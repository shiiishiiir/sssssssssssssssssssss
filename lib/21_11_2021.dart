import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/animatedContainer.dart';

class tabletable extends StatefulWidget {
  const tabletable({Key? key}) : super(key: key);

  @override
  _tabletableState createState() => _tabletableState();
}

class _tabletableState extends State<tabletable> {
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table"),
      ),
      body: Center(
        child: Column(
          children: [
            DataTable(columns: [
              DataColumn(
                label: Text("Name"),
              ),
              DataColumn(
                label: Text("Age"),
              ),
              DataColumn(
                label: Text("Occupation"),
              ),
            ], rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text("Shishir"),
                  ),
                  DataCell(
                    Text("25"),
                  ),
                  DataCell(
                    Text("Student"),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text("Kabir"),
                  ),
                  DataCell(
                    Text("25"),
                  ),
                  DataCell(
                    Text("Actor"),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text("Tahsan"),
                  ),
                  DataCell(
                    Text("25"),
                  ),
                  DataCell(
                    Text("Singer"),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class railrail extends StatefulWidget {
  const railrail({Key? key}) : super(key: key);

  @override
  _railrailState createState() => _railrailState();
}

class _railrailState extends State<railrail> {
  int _index = 0;
  final pages=[
    tabletable(),
    animatContain(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Colors.black,
              labelType: NavigationRailLabelType.all,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.wifi, color: Colors.white,),
                  label: Text("Wifi"),
                  selectedIcon: Icon(Icons.wifi, color: Colors.blue,),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.wb_sunny, color: Colors.white,),
                  label: Text("Sunny"),
                  selectedIcon: Icon(Icons.wb_sunny, color: Colors.blue,),
                ),
              ],
              selectedIndex: _index,
              onDestinationSelected: (fff){
                setState(() {
                  _index=fff;
                });
              },
            ),
            Expanded(child: Container(
              child: pages[_index],
            ),),
          ],
        ),
      ),
    );
  }
}
