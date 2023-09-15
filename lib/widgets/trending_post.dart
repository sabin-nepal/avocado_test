import 'package:avocado_test/bloc/post_cubit.dart';
import 'package:avocado_test/bloc/post_state.dart';
import 'package:avocado_test/model/post.dart';
import 'package:avocado_test/screen/details_screen.dart';
import 'package:avocado_test/widgets/custom_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingPost extends StatelessWidget {
  const TrendingPost({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is SuccessState) {
            return GridView.builder(
                shrinkWrap: true,
                itemCount: state.posts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 8.0),
                itemBuilder: (context, i) {
                  Post post = state.posts[i];
                  return InkWell(
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return PostDetails(
                        post: post,
                      );
                    })),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.title.toUpperCase(),
                            maxLines: 3,
                            overflow: TextOverflow.clip,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CustomChip(),
                              Text(
                                "1 hour ago",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontSize: 8,
                                    ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.network(
                            "https://i3.ytimg.com/vi/Pmg2PtMwhgs/hqdefault.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                          )
                        ],
                      ),
                    ),
                  );
                });
          }
          return Container();
        },
      ),
    );
  }
}
