// ignore_for_file: prefer_const_constructors

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'bottomnavbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavbarState> {
  int currentIndex = 0;
  BottomNavbarCubit() : super(const BottomNavbarInitial());

  void changeIndex(int index) {
    currentIndex = index;
    emit(OnChangedPage());
  }
}
