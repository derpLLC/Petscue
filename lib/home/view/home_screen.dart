import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () => {
                        Scaffold.of(context).openDrawer(),
                      },
                      minWidth: 10,
                      child: Icon(Icons.menu),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Material(
                      elevation: 20,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Username',
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/1629781/pexels-photo-1629781.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                    fit: BoxFit.cover),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: size.height * 0.25,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/4422100/pexels-photo-4422100.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                    ),
                  ),
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '50% off',
                          style: TextStyle(color: Colors.pink),
                        ),
                        Text(
                          'Fresh sell',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        MaterialButton(
                          onPressed: () => {
                            print('see all'),
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: size.height * 0.065,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.search),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Explore Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.pink,
                        size: 30,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Container(
                //   height: size.height * 0.4,
                //   child: ListView.builder(
                //     itemBuilder: _cardsWidget,
                //     itemCount: 2,
                //     scrollDirection: Axis.horizontal,
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
      drawerEdgeDragWidth: size.width * 0.1,
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Container(child: Center(child: Text('Hello, user!'))),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Liked'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Orders'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Your Listings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {},
            ),
            // ListTile(
            //   title: Text(_isSignedIn ? 'Logout' : 'Sign In'),
            //   onTap: () {
            //     _isSignedIn
            //         ? context.read<FireAuth>().signOut()
            //         : Navigator.pushNamed(context, MyRoutes.loginRoute);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

//   Widget _cardsWidget(BuildContext context, int) {
//     final size = MediaQuery.of(context).size;
//     return InkWell(
//       borderRadius: BorderRadius.circular(20),
//       onTap: () {
//         Navigator.pushNamed(context, MyRoutes.productsRoute);
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: NetworkImage(
//                     'https://images.pexels.com/photos/4588435/pexels-photo-4588435.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
//               ),
//               borderRadius: BorderRadius.circular(20)),
//           width: size.width * 0.7,
//           child: Container(
//             padding: EdgeInsets.only(top: 20, left: 20, right: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     children: [
//                       Text(
//                         'Lucy',
//                         style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         '799\$',
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                       )
//                     ],
//                   ),
//                 ),
//                 _LikeButton()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _LikeButton extends StatefulWidget {
//   const _LikeButton({Key? key}) : super(key: key);
//
//   @override
//   _LikeButtonState createState() => _LikeButtonState();
// }
//
// class _LikeButtonState extends State<_LikeButton> {
//   bool _liked = false;
//
//   void _isLiked() {
//     if (_liked) {
//       _liked = false;
//     } else {
//       _liked = true;
//     }
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height * 0.06,
//       width: size.width * 0.2,
//       decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//       child: Center(
//         child: InkWell(
//           onTap: () {
//             _isLiked();
//           },
//           child: FaIcon(
//             _liked == true
//                 ? FontAwesomeIcons.solidHeart
//                 : FontAwesomeIcons.heart,
//             color: Colors.red,
//           ),
//         ),
//       ),
//     );
//   }
// }
