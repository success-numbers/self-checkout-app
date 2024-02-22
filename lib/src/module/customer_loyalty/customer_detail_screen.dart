import 'package:flutter/material.dart';

class CustomerDetailScreen extends StatelessWidget {
  final String userId;
  const CustomerDetailScreen({Key? key, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(),
        ),
      ),
    );
  }
}
