import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_ui_ii_example/page/home_page.dart';
import 'package:todo_app_ui_ii_example/page/login_page.dart';
import 'package:todo_app_ui_ii_example/provider/todos.dart';

void main() => runApp(MyApp(
  MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/second': (context) => LoginPage(),
    },
  )
));

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  MyApp(MaterialApp materialApp);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            scaffoldBackgroundColor: Colors.white10,
          ),
          home: HomePage(),
        ),
      );
}
