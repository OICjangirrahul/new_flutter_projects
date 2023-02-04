import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter_projects/user.dart';

import 'home_screen.dart';

//providers
//provider
//stateProvider
//stateNotifire

//stateProvider
// final nameProvider = Provider<String>((ref) => 'rahul');
// final nameProvider = StateProvider<String?>((ref) => 'rahul');

//stateNotifire
//pass only class not string int etc
final userProvider =
    StateNotifierProvider<UserNotifier,User>((ref) => UserNotifier(const User(name: '', age: 0)));

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyhomePage(),
    );
  }
}
