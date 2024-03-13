import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 150,),
          Text("Login Text", style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 10),
          Text("Texts.loginSubTitle", style: Theme.of(context).textTheme.bodyMedium),
        ]
    );
  }
}