import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.transparent,
            Theme.of(context).colorScheme.secondary,
          ],
        )),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              _TopBar(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: AdaptiveProfileCard(),
              ),
              _AppsList()
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black12,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/inmind/private_policy');
            //   },
            //   child: const Text('Private Policy'),
            // ),
          ],
        ),
      ),
    );
  }
}

class AdaptiveProfileCard extends StatelessWidget {
  const AdaptiveProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool avatarIsVisible = true;
    bool nameIsVisible = true;
    bool descriptionIsVisible = true;
    double height = 150.0; // Adjust this threshold as needed
    if (screenHeight < height) {
      avatarIsVisible = false;
      nameIsVisible = false;
      descriptionIsVisible = false;
    }
    double avatarSize;
    double maxAvatarSize = 100.0;
    double minAvatarSize = 60.0;
    if (screenWidth < 600 || screenHeight < 200) {
      avatarSize = minAvatarSize;
      descriptionIsVisible = false;
    } else {
      avatarSize = maxAvatarSize;
    }

    double nameFontSize = 23.0;
    double descriptionFontSize = 18.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (avatarIsVisible)
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: avatarSize,
              height: avatarSize,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black26,offset: Offset(1, 1),blurRadius: 5,spreadRadius: 5)],
                image: DecorationImage(image: AssetImage("assets/avatar.png")),
                shape: BoxShape.circle,
              ),
            ),
          ),
        if (nameIsVisible || descriptionIsVisible)
          SizedBox(
            width: screenWidth * 0.7,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (nameIsVisible)
                    Text(
                      'Ignat Morozov',
                      style: TextStyle(fontSize: nameFontSize),
                    ),
                  if (descriptionIsVisible)
                    Text(
                      "Welcome to my website! Here, you'll find a collection of all the applications crafted by my hands, each one a testament to my dedication and creativity. Explore this digital portfolio and immerse yourself in the world of my creations.",
                      style: TextStyle(fontSize: descriptionFontSize),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _AppsList extends StatelessWidget {
  const _AppsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My apps",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const _InMindAppCard(),
      ],
    );
  }
}

class _InMindAppCard extends StatelessWidget {
  const _InMindAppCard();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool descriptionIsVisible = true;
    double width = 300;
    double height = 400.0; // Adjust this threshold as needed
    if (screenHeight < height) {
      descriptionIsVisible = false;
    }
    double logoSize;
    double maxAvatarSize = 50.0;
    double minAvatarSize = 25.0;
    if (screenWidth < 600 || screenHeight < 200) {
      logoSize = minAvatarSize;
      descriptionIsVisible = false;
      //width = 300;
    } else {
      logoSize = maxAvatarSize;
    }
    double nameFontSize = 23.0;
    double descriptionFontSize = 18.0;
    return Card(
        elevation: 10,
        color: Theme.of(context).colorScheme.surface,
        child: AnimatedContainer(
          width: width,
          //height: height,
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 10,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/in_mind_logo_with_background.png'))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "InMind!",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                child: Text(
                  "InMind! is an app for practicing mental calculations, designed to enhance mathematical thinking skills. It offers tasks of varying difficulty, timed practice options, and error analysis for more effective learning.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.fade,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0,15,15,0),
                child: SizedBox(
                    width: 150, child: Image.asset('assets/google_play_img.png')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,5,15,10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/inmind/private_policy');
                        },
                        child: const Text(
                          "private policy",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),),
                      const Text(' and '),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/inmind/terms_of_use');
                        },
                        child: const Text(
                          "terms of use",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
