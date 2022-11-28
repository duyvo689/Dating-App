import 'package:dating_app/components/cpn_profile/list_image_profile.dart';
import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.dLightDark,
      body: Stack(
        children: [
          Stack(children: [
            AspectRatio(
              aspectRatio: 0.9,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://thuthuatnhanh.com/wp-content/uploads/2019/07/anh-girl-xinh-facebook-tuyet-dep-387x580.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
                      AppColors.dPrimaryColor.withOpacity(0.6),
                      Colors.white.withOpacity(0.01)
                    ])),
              ),
            ),
          ]),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 1,
            snap: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: AppColors.dBlack,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.9,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                CustomInnerContent()
                              ],
                            ),
                          )),
                      IgnorePointer(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: AppColors.dBlack,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.dWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class CustomInnerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: <Widget>[
          SizedBox(height: 16),
          CustomExploreBerlin(),
          SizedBox(height: 20),
          CustomExploreBerlin2(),
          SizedBox(height: 20),
          CustomExploreBerlin3(),
          SizedBox(height: 20),
          CustomExploreBerlin4(),
          SizedBox(height: 20),
          ListImageProfile(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CustomExploreBerlin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Thảo Nguyên",
                style: TextStyle(
                    fontSize: 22,
                    color: AppColors.dWhite,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text("Explore Berlin",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.dTextLightGray,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        const SizedBox(width: 8),
        Container(
          height: 45,
          width: 50,
          child: Icon(Icons.send_outlined,
              size: 32, color: AppColors.dPrimaryColor),
          decoration: BoxDecoration(
              color: AppColors.dTextLightGray,
              borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }
}

class CustomExploreBerlin2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Location",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.dWhite,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text("Q.1 TP Hồ Chí Minh",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.dTextLightGray,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        const SizedBox(width: 8),
        Container(
          height: 30,
          width: 60,
          alignment: Alignment.center,
          child: Text("1 Km",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.dPrimaryColor,
                  fontWeight: FontWeight.w600)),
          decoration: BoxDecoration(
              color: AppColors.dTextLightGray,
              borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}

class CustomExploreBerlin3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("About",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.dWhite,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 8),
          Text(
            "I'am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative. I am able to work well under pressure and adhere to strict deadlines.",
            style: TextStyle(
                fontSize: 16,
                color: AppColors.dTextLightGray,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class Interest {
  const Interest({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

List<Interest> interests = const <Interest>[
  const Interest(title: 'Music', icon: UniconsLine.video),
  const Interest(title: 'Dancer', icon: UniconsLine.camera),
  const Interest(title: 'Traver', icon: UniconsLine.bus),
  const Interest(title: 'Sing', icon: UniconsLine.telescope),
  const Interest(title: 'Read', icon: UniconsLine.camera),
  const Interest(title: 'Runer', icon: UniconsLine.tennis_ball),
];

class CustomExploreBerlin4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Interests",
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.dWhite,
                  fontWeight: FontWeight.w600)),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: interests.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3,
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: AppColors.dTextLightGray),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        interests[index].icon,
                        color: AppColors.dPrimaryColor,
                      ),
                      const SizedBox(width: 5),
                      Text(interests[index].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.dWhite,
                              fontSize: 14)),
                    ],
                  )));
            },
          ),
        ],
      ),
    );
  }
}
