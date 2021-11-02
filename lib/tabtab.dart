import 'package:flutter/material.dart';
import 'package:sssssssssssssssssssss/baal.dart';
import 'package:sssssssssssssssssssss/textfield.dart';

class tabtab extends StatelessWidget {
  const tabtab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.people_alt_outlined),
              ),
              Tab(
                icon: Icon(Icons.lunch_dining),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BalerMatha(),
            textfield(),
          ],
        ),
      ),
    );
  }
}






class tabtab1 extends StatelessWidget {
  const tabtab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            centerTitle: true,
            bottom: TabBar(
              tabs:<Tab>[
                Tab(
                  icon: Icon(Icons.people_alt_outlined),
                ),
                Tab(
                  icon: Icon(Icons.lunch_dining),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children:<Widget>[
              BalerMatha(),
              textfield(),
            ],
          ),
        ),
      ),
    );
  }
}




class drawdraw extends StatelessWidget {
  const drawdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawerr"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/How_to_use_icon.svg/60px-How_to_use_icon.svg.png")),
              ListTile(
                title: Text("gsdkjfhsdjf"),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(),
      ),
    );
  }
}
