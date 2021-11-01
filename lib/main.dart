import 'package:flutter/material.dart';
import 'package:theme_bloc_pattern/home.dart';
import 'package:theme_bloc_pattern/themeBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: false,
        stream: bloc.darkThemeIsEnabled,
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              theme: snapshot.data == true ? ThemeData.dark() : ThemeData.light(),
              home: HomePage(snapshot.data, bloc)
          );
        }
    );
  }
}

final bloc = ThemeBloc();