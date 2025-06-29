import 'package:flutter/material.dart';

class ProviderDetailScreen extends StatelessWidget {
  const ProviderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider's Details"),
        centerTitle: true,
      ),
    );
  }
}
