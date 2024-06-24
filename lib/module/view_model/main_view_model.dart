import 'package:mobx/mobx.dart';
part 'main_view_model.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase with Store {
  @observable
  bool isLoading = false;

  void init() {}

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
