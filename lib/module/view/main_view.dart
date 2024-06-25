import 'package:crud_case_study/core/extension/context_extension.dart';
import 'package:crud_case_study/module/view_model/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with SingleTickerProviderStateMixin {
  MainViewModel viewmodel = MainViewModel();
  late TabController _tabController;
  @override
  void initState() {
    viewmodel.init();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stok Kontrol Sistemi"),
        bottom: TabBar(
          labelPadding: EdgeInsets.zero,
          controller: _tabController,
          tabs: viewmodel.tabs,
          labelStyle: TextStyle(fontSize: 10.sp),
          padding: EdgeInsets.zero,
          indicatorWeight: 4.w,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          getStocksTab(),
          const Center(child: Text('Star Tab')),
          const Center(child: Text('Settings Tab')),
          const Center(child: Text('Settings Tab')),
        ],
      ),
    );
  }

  Widget getStocksTab() {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Column(
        children: [
          getStockServiceCardBuilder(
            "Tüm Stok Getir",
            "Tüm stoğu görüntülemek için bu fonksiyonu kullanabilirsiniz.",
            () {},
          ),
          const Divider(),
          getStockServiceCardBuilder(
            "Stok Tipine Göre Getir",
            "Stok tipine göre görüntüleme yapmak için bu fonksiyonu kullanabilirsiniz.",
            () {},
          ),
          const Divider(),
          getStockServiceCardBuilder(
            "ID'ye Göre Getir",
            "Stok ID'sine göre görüntüleme yapmak için bu fonksiyonu kullanabilirsiniz.",
            () {},
          ),
          const Divider(),
          getStockServiceCardBuilder(
            "Stock Tipini Getir",
            "Stok Tiplerini görüntülemek için bu fonksiyonu kullanabilirsiniz.",
            () {},
          ),
          const Divider(),
          getStockServiceCardBuilder(
            "ID'ye Göre Stock Tipini Getir",
            "ID'ye Stok Tiplerini görüntülemek için bu fonksiyonu kullanabilirsiniz.",
            () {},
          ),
        ],
      ),
    );
  }

  SizedBox getStockServiceCardBuilder(String title, String subtitle, void Function() onPressed) {
    return SizedBox(
      width: context.width,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: ElevatedButton(
            onPressed: () => onPressed(),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 12.w,
            )),
      ),
    );
  }
}
