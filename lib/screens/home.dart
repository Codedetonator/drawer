import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'other.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  String profilepic =
      "https://cdn.imgbin.com/3/12/17/imgbin-computer-icons-avatar-user-login-avatar-man-wearing-blue-shirt-illustration-mJrXLG07YnZUc2bH5pGfFKUhX.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
            ),
            child: Drawer(
                child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Bijith"),
                  accountEmail: Text("bijith@gmail.com"),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(profilepic),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => OtherPage("Other"),
                      ));
                    }),
                     ListTile(
                    title: Text("import"),
                    leading: Icon(Icons.import_export_rounded),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => OtherPage("Other"),
                      ));
                    }),
                     ListTile(
                    title: Text("Gallery"),
                    leading: Icon(Icons.image),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => OtherPage("Other"),
                      ));
                    }),
                ListTile(
                    title: Text("Slideshow"),
                    leading: Icon(Icons.slideshow),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => aboutPage("About"),
                      ));
                    }),
                ListTile(
                    title: const Text("tools"),
                    leading: Icon(Icons.settings),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            OtherPage("Settings"),
                      ));
                    }),
                const Divider(
                  thickness: 3,
                ),
                 ListTile(
                    title: Text("share"),
                    leading: Icon(Icons.share),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => OtherPage("Other"),
                      ));
                    }),
                ListTile(
                  title: Text("Send"),
                  leading: Icon(Icons.send),
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ))));
  }
}
