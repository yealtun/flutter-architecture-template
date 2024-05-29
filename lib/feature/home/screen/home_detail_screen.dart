import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/index.dart';

@RoutePage<bool?>()
final class HomeDetailScreen extends StatelessWidget {
  HomeDetailScreen({required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Detail Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response =
              await SuccessDialog.show(context: context, title: 'Başarılı');
          if (kDebugMode) {
            print(response);
          }
        },
        child: const Icon(Icons.check),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home Detail Screen'),
            Expanded(
              child: Image.network(''.ext.randomImage),
            ),
            const Expanded(child: Placeholder()),
            ElevatedButton(
              onPressed: () {
                context.router.popForced(true);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
