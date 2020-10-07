import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'book_list_page.dart';
import 'main_model.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<MainModel>(
              builder: (context, model, child) {
                return Center(
                  child: Column(
                    children: [
                      Text(
                        model.kboyText,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      RaisedButton(
                        child: Text('ボタン'),
                        onPressed: (){
                          //TODO
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BookList()),
                          );
                        },
                      ),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}