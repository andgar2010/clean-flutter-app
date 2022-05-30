import '../surveys.dart';
import './components.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SurveyItems extends StatelessWidget {
  final List<SurveyViewModel> viewModels;

   const SurveyItems(this.viewModels, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: CarouselSlider(
        options: CarouselOptions(enlargeCenterPage: true, aspectRatio: 1),
        items: viewModels.map((viewModel) => SurveyItem(viewModel)).toList(),
      ),
    );
  }
}
