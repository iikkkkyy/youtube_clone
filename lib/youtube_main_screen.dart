import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YoutubeAppClone extends StatefulWidget {
  const YoutubeAppClone({super.key});

  @override
  State<YoutubeAppClone> createState() => _YoutubeAppCloneState();
}

class _YoutubeAppCloneState extends State<YoutubeAppClone> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/youtube_icon/youtube_premium_logo.svg',
          width: 110,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cast),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TextButton(style: TextButton.styleFrom(

              ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/youtube_icon/youtube_compass.svg', width: 30,)),
              TextButton(onPressed: () {}, child: Text('전체'), style:,),
              TextButton(onPressed: () {}, child: Text('게임')),
              TextButton(onPressed: () {}, child: Text('믹스')),
              TextButton(onPressed: () {}, child: Text('실시간')),
              TextButton(onPressed: () {}, child: Text('음악')),
              TextButton(onPressed: () {}, child: Text('액션 어드벤쳐 게임')),
            ],
          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            label: '홈',
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/youtube_icon/youtube_shorts.svg',
              height: 25,
            ),
            label: 'Shorts',
          ),
          const BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.grey,
              size: 40,
            ),
          ),
          const BottomNavigationBarItem(
            label: '구독',
            icon: Icon(
              Icons.subscriptions_outlined,
              color: Colors.grey,
            ),
          ),
          const BottomNavigationBarItem(
            label: '나',
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
