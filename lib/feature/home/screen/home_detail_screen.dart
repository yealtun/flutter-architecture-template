import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class HomeDetailScreen extends StatelessWidget {
  final int id;
  HomeDetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Detail Screen'),
            Text('ID: $id'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
