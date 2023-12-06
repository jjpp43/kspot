import 'package:flutter/material.dart';
import 'package:kspot/src/shared/styles.dart';
import '../style_export.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _controller = ScrollController();
  CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              SizedBox(height: 20),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Top Trending',
                                style: heading2Style,
                              ),
                              Text(
                                'Top most trending places',
                                style: bodyStyle,
                              )
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              width: 32,
                              height: 32,
                              'assets/icons/magnifying-glass.svg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //여기에 carousel넣기
                  Column(
                    children: [
                      const SizedBox(height: 88),
                      CarouselSlider(
                        carouselController: _carouselController,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 412.0,
                          enableInfiniteScroll: false,
                          aspectRatio: 4 / 5,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(right: 0),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Text(
                                  'text $i',
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [1, 2, 3, 4, 5].map((url) {
                          int index = [1, 2, 3, 4, 5].indexOf(url);
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                            width: _currentIndex == index ? 24 : 6,
                            height: 6,
                            margin: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: _currentIndex == index
                                  ? PrimaryColor
                                  : MediumGreyColor,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'K-Drama Popular Spots',
                    style: heading3Style,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Row(
                        children: [
                          const Text(
                            'more',
                            style: captionStyle,
                          ),
                          SvgPicture.asset(
                            'assets/icons/caret-right.svg',
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              OnSurfaceLightGreyColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              Container(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // 아이템의 개수를 설정합니다.
                  itemBuilder: (BuildContext ctx, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        // 'return' 키워드를 사용하여 Container 위젯을 반환합니다.
                        width: 135,
                        height: 180,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/1.png'),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Movie Spots',
                    style: heading3Style,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Row(
                        children: [
                          const Text(
                            'more',
                            style: captionStyle,
                          ),
                          SvgPicture.asset(
                            'assets/icons/caret-right.svg',
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              OnSurfaceLightGreyColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              Container(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // 아이템의 개수를 설정합니다.
                  itemBuilder: (BuildContext ctx, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        // 'return' 키워드를 사용하여 Container 위젯을 반환합니다.
                        width: 135,
                        height: 180,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/1.png'),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Search by Region',
                    style: heading3Style,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Row(
                        children: [
                          const Text(
                            'more',
                            style: captionStyle,
                          ),
                          SvgPicture.asset(
                            'assets/icons/caret-right.svg',
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              OnSurfaceLightGreyColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              Container(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // 아이템의 개수를 설정합니다.
                  itemBuilder: (BuildContext ctx, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        // 'return' 키워드를 사용하여 Container 위젯을 반환합니다.
                        width: 135,
                        height: 180,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/1.png'),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
