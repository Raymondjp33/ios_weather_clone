import 'package:flutter/material.dart';
import '../models/weather_response.model.dart';
import '../models/zipcode_weather.model.dart';
import '../services/api_service.dart';

class AppProvider extends ChangeNotifier {
  final List<ZipCodeWeatherModel> _zipsWeatherModels = [];
  final PageController _pageController = PageController();
  int _selectedPage = 0;
  String _inputtedZip = '';
  final TextEditingController _zipInputController = TextEditingController();

  List<ZipCodeWeatherModel> get zipsWeatherModels => _zipsWeatherModels;
  PageController get pageController => _pageController;
  int get selectedPage => _selectedPage;
  String get inputtedZip => _inputtedZip;
  TextEditingController get zipInputController => _zipInputController;

  void setInputtedZip(String value) {
    _inputtedZip = value;
    notifyListeners();
  }

  Future<void> handleAddZip() async {
    WeatherModel? newWeatherModel =
        await ApiService.fetchWeatherModel(_inputtedZip);

    if (newWeatherModel == null) {
      return;
    }

    _zipsWeatherModels.add(
      ZipCodeWeatherModel(zip: inputtedZip, weatherModel: newWeatherModel),
    );
    int index = _zipsWeatherModels.length - 1;
    _pageController.jumpToPage(index);
    _selectedPage = index;
    clearInputtedZip();
  }

  void clearInputtedZip() {
    _inputtedZip = '';
    _zipInputController.clear();
    notifyListeners();
  }

  void handleNavigateToPage(int index) {
    _pageController.jumpToPage(index);
  }

  void handlePageChanged(int value) {
    _selectedPage = value;
    notifyListeners();
  }

  bool isCurrentPage(int index) => index == _selectedPage;
}