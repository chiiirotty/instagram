import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class  MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final images = [
    'https://pbs.twimg.com/profile_images/1647878586416893952/0CdiwJYC_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1672473298461147136/LK14MfY1_400x400.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text('mochmatch',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24
          ),

          ),
        actions: [
          Icon(Icons.keyboard_arrow_down), // アイコンを右寄せに配置
          const SizedBox(width: 110),
          Icon(Icons.add_outlined), // アイコンを右寄せに配置
          const SizedBox(width: 16),
          Icon(Icons.menu), // アイコンを右寄せに配置
          const SizedBox(width: 16),
        ],

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(children: [
              ClipOval(
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text('25',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  Text('投稿'),
                ],
              ),
              const SizedBox(width: 32),
              Column(
                children: [
                  Text('123',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
                  ),
                  Text('フォロワー')
                ],
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  Text('172',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  Text('フォロー中')
                ],
              ),
            ],
            ),
              const SizedBox(height: 16),
              Text('シーシャアプリ『もくまっち』公式',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
              Text('その日の目的や気分にピッタリのシーシャ屋さんに出会えるアプリ『もくまっち』の公式アカウントです☁️アプリは鋭意作成中💪お試し版を使ってみたい方はDMください！シーシャ好きの力を結集して目指せ全国制覇✊',
                style: TextStyle(
                    fontSize: 14
                ),
              ),
              GestureDetector(
                onTap: () {
                  final url = Uri.parse('https://kibidango.com/2433');
                  launchUrl(url);
                },
                child: Text(
                  '🔗kibidango.com/2433、他1件',
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              Row(
                children: [
                  // Column(
                  //   children: [
                      Expanded(
                        child: Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('プロフィールを編集',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                              ),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('プロフィールをシェア', style: TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.bold
                                  )
                              ),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 1), // ボタンとボタンの間隔

                      // SizedBox(width: 1), // ボタンとボタンの間隔
                      OutlinedButton(
                        onPressed: () {},
                        child: Icon(Icons.person),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  // )

                // ],
              ),
              Text('ストーリーズハイライト',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('プロフィールにお気に入りのストーリーズを',
                        style: TextStyle(
                            fontSize: 14
                        ),
                      ),
                        Text('保存しよう',
    style: TextStyle(
    fontSize: 14
    ),
                        )],
                  ),
    const SizedBox(width: 40),
    Icon(Icons.keyboard_arrow_up),
                ],
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://sato-icons.com/wp/wp-content/uploads/2021/05/%E3%83%97%E3%83%A9%E3%82%B9%E3%81%AE%E3%82%A2%E3%82%A4%E3%82%B3%E3%83%B3.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  SizedBox(width: 5),
                  ClipOval(
                    child: Image.network(
                      'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
                      width: 65,
                      height: 65,
                    ),
                  ),
                  SizedBox(width: 5),
                  ClipOval(
                    child: Image.network(
                      'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
                      width: 65,
                      height: 65,
                    ),
                  ),
                  SizedBox(width: 5),
                  ClipOval(
                    child: Image.network(
                      'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
                      width: 65,
                      height: 65,
                    ),
                  ),
                  SizedBox(width: 5),
                  ClipOval(
                    child: Image.network(
                      'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
                      width: 65,
                      height: 65,
                    ),
                  ),
                ],
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Row(

                children: [
                  const SizedBox(width: 80),
                  Icon(Icons.square, size: 32),
                  const SizedBox(width: 130),
                  Icon(Icons.person, size: 32),
                  const SizedBox(width: 80),
                ],
              )
                ]
              ),
              // Row(children: [
              //   Image.network(
              //     'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
              //     width: 119,
              //     height: 119,
              //   ),
              //   const SizedBox(width: 1),
              //   Image.network(
              //     'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
              //     width: 119,
              //     height: 119,
              //   ),
              //   const SizedBox(width: 1),
              //   Image.network(
              //     'https://pbs.twimg.com/profile_images/1673692042919292928/U0a0Tb8U_400x400.jpg',
              //     width: 119,
              //     height: 119,
              //   ),
              // ],),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisCount: 3,
                children: images.map((imageUrl) {
                  return InstagramPostItem(imageUrl: imageUrl);
                }).toList(),
              )
            ],
          ),
        ),
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

