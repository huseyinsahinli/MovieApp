import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:movie_time/pages/home_page/home_page.dart';

part 'main_page_state.dart';

class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageInitial());
  int currentIndex = 0;

  final List<Widget> pages = const <Widget>[
    HomePage(),
    Text('Search'),
    Text('Bookmarks'),
  ];

  void onItemTapped(int index) {
    currentIndex = index;
    emit(MainPageInitial());
  }
}
