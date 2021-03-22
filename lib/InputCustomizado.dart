import 'package:flutter/material.dart';

class InputCustomizado extends StatelessWidget {

  final String hint;
  final bool obscure;
  final Icon icon;


  InputCustomizado({
    @required this.hint,
    this.obscure = false,
    this.icon = const Icon(Icons.person)
  });

  @override
  Widget build(BuildContext context) {
    return     Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        obscureText: this.obscure,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: this.icon,
            border: InputBorder.none,
            hintText: this.hint,
            hintStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 18
            )
        ),
      ),
    );
  }
}
