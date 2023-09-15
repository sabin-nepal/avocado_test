import 'package:avocado_test/widgets/trending_post.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Posts"),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Material(
                elevation: 2,
                child: TabBar(isScrollable: true, tabs: [
                  Tab(
                    text: "Trending",
                  ),
                  Tab(
                    text: "Trending",
                  ),
                  Tab(
                    text: "Trending",
                  ),
                  Tab(
                    text: "Trending",
                  ),
                  Tab(
                    text: "Trending",
                  )
                ]),
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              const TrendingPost(),
              Container(),
              Container(),
              const TrendingPost(),
              Container(),
            ])),
          ],
        ),
      ),
    );
  }
}
