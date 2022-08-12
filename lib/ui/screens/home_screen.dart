import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parcel_app/ui/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Track Parcel',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            centerTitle: false,
            floating: true,
            snap: false,
            pinned: true,
            titleSpacing: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('assets/images/IMG_7240.jpg'),
                  ),
                ),
              )
            ],
            shadowColor: Colors.transparent,
            expandedHeight: 426,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter parcel number or scan QR code',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 40),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 49,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color:
                                            Theme.of(context).backgroundColor),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(14),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).bottomAppBarColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: SvgPicture.asset(
                                      'assets/images/icon_qrcode.svg'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Track',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      style: Theme.of(context).textButtonTheme.style,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.only(top: 32)),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Parcels',
                          style: Theme.of(context).textTheme.headline3,
                        )
                      ]),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((_, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Container(
                  height: 174,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0012412355227442',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Container(
                          height: 31,
                          width: 78,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              scale: 4,
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_VQYs1Qz8VA2Gh9D9f1iNG3w2BSNrJnYTj1PTN8kJ20zMQFxKCA7gt76-yhuS6pYXvKI&usqp=CAU',
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              );
            }),
          )
        ],
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
