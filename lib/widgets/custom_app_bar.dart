import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: 'Tv Shows', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'Movies', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'My List', onTap: () => ('Tv Shows')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: 'Home', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'Tv Shows', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'Movies', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'Latest', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'My List', onTap: () => ('Tv Shows')),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => print("object"),
                  icon: Icon(Icons.search),
                  iconSize: 20,
                  color: Colors.white,
                ),
                _AppBarButton(title: 'Home', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'Kids', onTap: () => ('Tv Shows')),
                _AppBarButton(title: 'DVD', onTap: () => ('Tv Shows')),
                IconButton(
                  onPressed: () => print("object"),
                  icon: Icon(Icons.card_giftcard),
                  iconSize: 20,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () => print("object"),
                  icon: Icon(Icons.notifications),
                  iconSize: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  const _AppBarButton({Key key, @required this.title, @required this.onTap})
      : super(key: key);

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
