import 'package:dating_app/components/cpn_home/list_image_post.dart';
import 'package:dating_app/components/cpn_home/title_des_icon.dart';
import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ClipRRect(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        const ListImagePost(),
        Positioned(
          width: deviceSize.width,
          bottom: 110,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Duy Duy 22',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                TitleDesIcon(
                    title: 'Sống tại TP Hồ Chí Minh',
                    icon: Icons.maps_home_work_outlined),
                SizedBox(height: 5),
                TitleDesIcon(
                    title: 'Cách xa 1 km', icon: Icons.location_on_outlined),
                SizedBox(height: 5),
                TitleDesIcon(
                    title: 'Rất thích đi du lịch cùng với em người yêu',
                    icon: Icons.description_outlined),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
