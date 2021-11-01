import 'package:flutter/material.dart';
import 'package:theme_bloc_pattern/themeBloc.dart';

class HomePage extends StatelessWidget {

  dynamic isDarkThemeEnabled;
  final ThemeBloc bloc;

  HomePage(this.isDarkThemeEnabled, this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Robot Cartoons"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text("User ${index+1}"),
            leading: Image.network('https://robohash.org/user$index}'),
            trailing: Icon(Icons.edit),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                  value: isDarkThemeEnabled,
                  onChanged: bloc.changeTheTheme
              ),
            )
          ],
        ),
      ),
    );
  }
}