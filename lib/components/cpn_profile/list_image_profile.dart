import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "https://i.pinimg.com/originals/dc/03/ce/dc03ce7c7192e0946a4567f591d56ba9.jpg",
  "https://images.pexels.com/photos/11424548/pexels-photo-11424548.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://i.pinimg.com/originals/a8/be/64/a8be64e2ee126ecd923e1d07648fe719.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZRLU083ON23cK_e5CsilRDaEoTiKyxwjDLb76dzhwBodrDLEySZRH9V-TgmPNVzfVugQ&usqp=CAU",
  "https://allimages.sgp1.digitaloceanspaces.com/tipeduvn/2022/08/1659386538_Bo-Hinh-Nen-Thien-Nhien-Dep-Danh-Cho-Iphone-7.jpg",
  "https://media.bizwebmedia.net/sites/23563/data/Upload/2016/8/phuong_phap_lap_bo_cuc_anh_theo_cac_ti_le_man_hinh__4(2).jpg",
  "https://i.pinimg.com/originals/dc/03/ce/dc03ce7c7192e0946a4567f591d56ba9.jpg",
  "https://images.pexels.com/photos/11424548/pexels-photo-11424548.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://i.pinimg.com/originals/a8/be/64/a8be64e2ee126ecd923e1d07648fe719.jpg",
];

class ListImageProfile extends StatelessWidget {
  const ListImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Gallery",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.dWhite,
                fontWeight: FontWeight.w600)),
        GridView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              images[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ],
    );
  }
}
