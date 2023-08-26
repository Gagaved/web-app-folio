import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/terms_of_use.txt'),
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
