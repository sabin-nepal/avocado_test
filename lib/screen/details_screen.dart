import 'package:avocado_test/model/post.dart';
import 'package:avocado_test/widgets/custom_chip.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PostDetails extends StatefulWidget {
  final Post post;
  const PostDetails({super.key, required this.post});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  late YoutubePlayerController _youtubePlayerController;
  final videoUrl = "https://www.youtube.com/watch?v=Pmg2PtMwhgs";

  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          YoutubePlayer(controller: _youtubePlayerController),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomChip(),
                    Text(
                      "1 hour ago",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 10,
                          ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.post.title.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(widget.post.body)
              ],
            ),
          )
        ],
      )),
    );
  }
}
