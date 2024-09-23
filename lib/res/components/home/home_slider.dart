import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../colors/app_colors.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          CarouselSlider(
            options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                onPageChanged: (int page, _) {
                  _selectedSlider.value = page;
                }),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor.withOpacity(0.1),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'text $i',
                        style: const TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 8.0),
          ValueListenableBuilder(
              valueListenable: _selectedSlider,
              builder: (context, value, _){
                List<Widget> list = [];
                for(int i=0; i<5; i++){
                  list.add(
                      Container(
                          width: 10.0,
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              color: value == i ? AppColors.primaryColor : null
                          ))
                  );
                }
                return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list
                );
              })
        ]
    );
  }
}
