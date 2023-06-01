import 'package:flutter/material.dart';
import 'package:step_5/components/country_code.dart';
import 'package:step_5/constants/api_constant.dart';
import 'package:step_5/models/top_news.dart';
import 'package:step_5/services/fetch_service.dart';
import 'package:step_5/theme/app_styles.dart';
import 'package:step_5/theme/app_text_style.dart';
import '../theme/app_color.dart';
import 'detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;

  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
    setState(() {});
  }

  @override
  void initState() {
    fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(AppText.appBarText, style: AppTextStyles.appBar),
        centerTitle: true,
        backgroundColor: AppColors.appBar,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return countrySet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          ),
        ],
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: (context, index) {
                final news = topNews!.articles[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailView(news: news),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Card(
                      color: AppColors.appBar,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.network(
                              news.urlToImage ?? ApiConst.image,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(news.title, style: AppTextStyles.body),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
