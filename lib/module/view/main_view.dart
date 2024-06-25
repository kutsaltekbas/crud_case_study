import 'package:crud_case_study/module/view_model/main_view_model.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainViewModel viewmodel = MainViewModel();
  @override
  void initState() {
    viewmodel.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stok Kontrol Sistemi"),
      ),
    );
  }
}
