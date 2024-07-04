import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor:const  Color(0xFF6B5AE0),
      expandedHeight: 168.0,
      floating: true,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: const  Color(0xFF6B5AE0),// Set your color here
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/200?image=3'), // Replace with your image URL
                    ),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Misty Simon',
                          style: TextStyle(
                            fontFamily: 'PoppinsSemiBold',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/setting.svg',
                      fit: BoxFit.cover,
                      height: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child:  Row(
                    children: [
                      const Icon(Icons.search, color: Colors.black54),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search doctor,',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/search.svg',
                        fit: BoxFit.cover,
                        height: 30,
                      ),
                      // Icon(, color: Colors.black54),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


