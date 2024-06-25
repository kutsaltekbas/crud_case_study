import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'main_view_model.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase with Store {
  List<Tab> tabs = const [
    Tab(icon: Icon(Icons.cloud_download_outlined), text: "Stok Görüntüle"),
    Tab(icon: Icon(Icons.cloud_upload_outlined), text: "Stok Oluştur"),
    Tab(icon: Icon(Icons.cloud_sync_outlined), text: "Stok Güncelle"),
    Tab(icon: Icon(Icons.cloud_off_outlined), text: "Stok Sil"),
  ];

  @observable
  bool isLoading = false;

  void init() {}

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
