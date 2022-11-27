import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

class ListImagePost extends StatefulWidget {
  const ListImagePost({super.key});
  @override
  State<ListImagePost> createState() => _ListImagePostState();
}

class _ListImagePostState extends State<ListImagePost> {
  late PageController _pageController;
  int activePage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 1);
  }

  List<String> images = [
    "https://i.pinimg.com/originals/dc/03/ce/dc03ce7c7192e0946a4567f591d56ba9.jpg",
    "https://images.pexels.com/photos/11424548/pexels-photo-11424548.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://i.pinimg.com/originals/a8/be/64/a8be64e2ee126ecd923e1d07648fe719.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZRLU083ON23cK_e5CsilRDaEoTiKyxwjDLb76dzhwBodrDLEySZRH9V-TgmPNVzfVugQ&usqp=CAU",
    "https://allimages.sgp1.digitaloceanspaces.com/tipeduvn/2022/08/1659386538_Bo-Hinh-Nen-Thien-Nhien-Dep-Danh-Cho-Iphone-7.jpg",
    "https://media.bizwebmedia.net/sites/23563/data/Upload/2016/8/phuong_phap_lap_bo_cuc_anh_theo_cac_ti_le_man_hinh__4(2).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: deviceSize.height * 0.8,
          width: deviceSize.width,
          child: PageView.builder(
              itemCount: images.length,
              pageSnapping: true,
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, pagePosition) {
                return Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.network(images[pagePosition],
                          height: deviceSize.height * 0.8,
                          width: deviceSize.width,
                          fit: BoxFit.fitWidth),
                    ),
                    Positioned(
                      bottom: 0,
                      height: deviceSize.height * 0.3,
                      width: deviceSize.width,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.01)
                            ])),
                      ),
                    ),
                  ],
                );
              }),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length, activePage)),
          ),
        )
      ],
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
          color:
              currentIndex == index ? AppColors.dPrimaryColor : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
