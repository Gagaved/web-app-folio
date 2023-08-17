import 'package:flutter/material.dart';

class PrivatePolicyPage extends StatelessWidget {
  const PrivatePolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/private_policy.txt'),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          String text = snapshot.data ?? '';
          List<String> paragraphs = text.split('\n');

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListView.builder(
              itemCount: paragraphs.length,
              itemBuilder: (context, index) {
                return Text(
                  paragraphs[index],
                  style: const TextStyle(fontSize: 16),
                );
              },),
          );}
      ),
    );
  }
}
