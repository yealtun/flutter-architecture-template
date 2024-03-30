import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/feature/home/screen/mixin/home_screen_mixin.dart';

part 'widget/home_app_bar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeScreenMixin{
  @override
  Widget build(BuildContext context) {
    return const _HomeAppBar();
  }
}