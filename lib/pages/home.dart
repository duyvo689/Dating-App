import 'package:dating_app/components/cpn_home/button_home.dart';
import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => null,
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => null,
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          PageView(
            scrollDirection: Axis.vertical,
            controller: controller,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: size.width * 0.9,
                height: size.height * 0.7,
                child: ClipRRect(
                  // borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Image.network(
                        'https://haycafe.vn/wp-content/uploads/2022/02/Anh-gai-xinh-de-thuong.jpg',
                        width: size.width,
                        height: size.height,
                        fit: BoxFit.cover),
                    Container(
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black.withOpacity(1),
                            Colors.black.withOpacity(0.01)
                          ])),
                    ),
                    Positioned(
                      width: size.width,
                      bottom: 110,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Duy Duy 22',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(
                                  Icons.maps_home_work_outlined,
                                  color: AppColors.dWhite,
                                  size: 16,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Sống tại TP Hồ Chí Minh',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.dWhite,
                                  size: 16,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Cách xa 1 km',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(
                                  Icons.description_outlined,
                                  color: AppColors.dWhite,
                                  size: 16,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Rất thích đi du lịch cùng với em người yêu',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              const Center(
                child: Text('Second Page'),
              ),
              const Center(
                child: Text('Third Page'),
              ),
            ],
          ),
          Positioned(
            width: size.width,
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ButtonHome(icon: Icons.favorite_border),
                SizedBox(width: 30),
                ButtonHome(icon: Icons.star_border),
                SizedBox(width: 30),
                ButtonHome(icon: Icons.arrow_forward_outlined),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
