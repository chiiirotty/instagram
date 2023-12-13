import 'package:flutter/material.dart';
class  FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);
  final images = [
    'https://pbs.twimg.com/profile_images/1647878586416893952/0CdiwJYC_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1672473298461147136/LK14MfY1_400x400.jpg',
  ];
  final users = [
    'chiiirotty',
    'mochmatch',
    'innu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Instagram',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24
    ),

    ),
    actions: [
    Icon(Icons.favorite), // アイコンを右寄せに配置
    const SizedBox(width: 16),
    Icon(Icons.message), // アイコンを右寄せに配置
    const SizedBox(width: 16),
    ],
    ),
    body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                      child: Image.network(
                        images[index],
                        width: 50,
                        height: 50,)
                  ),
                  SizedBox(width: 8,),
                  Text(users[index]),
                  Spacer(),
                  Icon(Icons.menu)
                ],
              ),
              SizedBox(height: 8,),
              Image.network(
                images[index],
                // width: 400,
                // height: 400,
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Icon(Icons.favorite), // アイコンを右寄せに配置
                  const SizedBox(width: 16),
                  Icon(Icons.message), // アイコンを右寄せに配置
                  const SizedBox(width: 16),
                  Icon(Icons.mail), // アイコンを右寄せに配置
                  const SizedBox(width: 280),
                  Icon(Icons.bookmark),
                ],
              ),
              Text('「いいね！」123,456,789件', textAlign: TextAlign.left ),
              Text('シーシャを愛し愛されたシステムエンジニアです。シーシャ好きが自分にピッタリのシーシャ屋さんに出会えるアプリ「もくまっち」@mochmatchをシーシャ屋さんにて開発中👩‍💻 友人ｲｯﾇ🐶のアカウント→@shishawosuuinnu'),
              SizedBox(height: 8,),
            ],
          );
        }
    ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: 119,
      height: 119,
    );
  }
}
