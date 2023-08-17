import 'package:flutter/material.dart';

class PrivatePolicyPage extends StatelessWidget {
  const PrivatePolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('assets/private_policy.txt'),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return SingleChildScrollView(child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(snapshot.data??'',),
            ));
          },
        ),
      ),
    );
  }
}
