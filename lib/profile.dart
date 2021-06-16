import 'package:flutter/material.dart';
import 'package:telegram/chatScreen.dart';
import 'package:telegram/switch.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final username = 'Anumodh K J';
    final lastseen = 'last seen recently';
    final imgurl = 'assets/user.png';

    var gridView = GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2.0, crossAxisSpacing: 2.0, crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Image.network(
                  'https://cdn.vox-cdn.com/thumbor/iqbKqSTMnIh5kMdWAw0M0qIAORM=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/15969338/surprise_marvel_releases_a_new_full_trailer_and_poster_for_avengers_endgame_social.jpg'));
        });
    var files = ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: .2,
            margin: EdgeInsets.all(1),
            child: ListTile(
              leading: CircleAvatar(
                  child: Image.asset('assets/icMKV.png'), radius: 15),
              title: Text("The.Walking.Dead.S08E$index WEBRip.x264.mkv"),
              subtitle: Text("40$index MB"),
            ),
          );
        });
    var links = ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
           
               ListTile(
                leading: CircleAvatar(
                    child: Image.asset('assets/icLink.png'), radius: 15),
                title: Text("CC Links Channel No$index"),
                subtitle:
                    Text("Channels & Bot Lists Made By Team Cinema Company"),
              ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 35,
            color: Colors.grey[200],
            child: Text('May 2020',
            style: TextStyle(color: Colors.grey),
            ),)
          ]);
        });
    var groups = ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: .2,
            margin: EdgeInsets.all(1),
            child: ListTile(
              subtitle: Text("Common Groups will appear here"),
            ),
          );
        });

    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Color.fromRGBO(41, 118, 186, 5),
                  leadingWidth: 25.0,
                  leading: BackButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ChatScreen();
                        }),
                      );
                    },
                  ),
                  pinned: true,
                  snap: false,
                  floating: false,
                  expandedHeight: MediaQuery.of(context).size.height * .45,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(left: 25, bottom: 7),
                    title: ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Text(
                          username,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      subtitle: Text(lastseen,
                          style:
                              TextStyle(fontSize: 10, color: Colors.white70)),
                    ),
                    background: Image.asset(
                      imgurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.videocam),
                      onPressed: () {
                        print('Video Call');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.call),
                      onPressed: () {
                        print('Voice Call');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {
                        print('Menu Button');
                      },
                    ),
                  ],
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Info',
                                  style: TextStyle(
                                      color: Colors.blue[400], fontSize: 18),
                                ),
                                FloatingActionButton(
                                  elevation: 1,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.message_outlined,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) {
                                        return ChatScreen();
                                      }),
                                    );
                                  },
                                ),
                              ]),
                          Text('7034153111'),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          Text(
                            'Mobile',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Notifications'),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                  ),
                                  Text(
                                    'Off',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SwitchScreen()
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 13,
                      width: double.infinity,
                      color: Colors.grey[200],
                    ),
                  ]),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue[300],
                      indicatorWeight: 3.0,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.blue[300],
                      tabs: [
                        Tab(text: "Media"),
                        Tab(text: "Files"),
                        Tab(text: "Links"),
                        Tab(text: "Groups"),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                gridView,
                files,
                links,
                groups,
              ],
            )),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Card(
      margin: EdgeInsets.all(0),
      elevation: 0,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
