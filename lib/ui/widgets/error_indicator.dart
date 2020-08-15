import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  final Object error;

  const ErrorIndicator({Key key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Error $error");

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Error: $error',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
