import 'package:flutter_ui_widgets/models/article.dart';

class ArticleAPI {
  Future<List<Article>> fetchArticles() async {
    try {
      final response =
          await Future.delayed(const Duration(seconds: 10), () => articles);
      return response;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
