import 'package:evoke_new_api/view/detils_screen.dart';
import 'package:flutter/material.dart';

import '../Model/news_model.dart';
import '../service/get_news_service.dart';

class Home_Scrren extends StatefulWidget {
  const Home_Scrren({Key? key}) : super(key: key);

  @override
  State<Home_Scrren> createState() => _Home_ScrrenState();
}

class _Home_ScrrenState extends State<Home_Scrren> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: FutureBuilder(
        future: GetNewsService.getNewsModel(),
        builder: (context, AsyncSnapshot<NewsModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        final news = snapshot.data!.articles![index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Detils_screen(
                                          image: news.urlToImage,
                                          title: news.title,
                                          author: news.author,
                                          discription: news.description),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: height * 0.12,
                                  width: width * 0.28,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              news.urlToImage.toString()))),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data!.articles![index].title
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        snapshot
                                            .data!.articles![index].publishedAt
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        );
                      },
                      itemCount: snapshot.data!.articles!.length),
                )
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
