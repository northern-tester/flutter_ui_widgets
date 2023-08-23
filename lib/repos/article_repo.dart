import 'package:flutter_ui_widgets/models/article.dart';

import '../api/article_api.dart';

class ArticleRepo {
  final articleApi = ArticleAPI();

  Future<List<Article>> getArticles() => articleApi.fetchArticles();
}
