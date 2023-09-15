import 'package:avocado_test/bloc/post_cubit.dart';
import 'package:avocado_test/screen/post_screen.dart';
import 'package:avocado_test/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avocado Test',
      theme: lightTheme,
      home: BlocProvider(
        create: (_) => PostCubit(),
        child: const PostScreen()),
    );
  }
}

