import 'package:flutter/material.dart';
import 'package:webappfolio/presentation/widgets/app_bar.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppTopBar(),  automaticallyImplyLeading: false,),
      body: const Center(child: Text('Games page. work in progress'),),
    );
  }}