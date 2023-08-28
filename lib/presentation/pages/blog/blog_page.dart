import 'package:flutter/material.dart';
import 'package:webappfolio/presentation/widgets/app_bar.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppTopBar(),  automaticallyImplyLeading: false,),
      body: const Center(child: Text('Blog page. work in progress'),),
    );
  }
}
