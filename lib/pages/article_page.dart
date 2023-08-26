import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';

class ArticlePage extends StatelessWidget {
  final Article? article;
  const ArticlePage({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            floating: true,
            elevation: 50,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                article!.urlToImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ArticleMeta(article: article),
                ArticleContent(article: article),
                const ArticleTags(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  height: 16,
                  color: Colors.grey[300],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ArticleMeta extends StatelessWidget {
  final Article? article;

  const ArticleMeta({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            article!.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(article!.author),
            subtitle: Text(article!.publishedAt),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'Subscribe',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

class ArticleContent extends StatelessWidget {
  final Article? article;

  const ArticleContent({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: <Widget>[
          Text(
            '\"${article!.description}\"',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            article!.content,
            style: const TextStyle(fontSize: 18, height: 1.5),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ArticleTags extends StatelessWidget {
  final Article? article;
  const ArticleTags({super.key, this.article});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: <Widget>[
          Chip(label: Text('Science')),
          Chip(label: Text('Technology')),
          Chip(label: Text('Devices')),
        ],
      ),
    );
  }
}
