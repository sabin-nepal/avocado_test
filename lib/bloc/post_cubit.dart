
import 'package:avocado_test/bloc/post_state.dart';
import 'package:avocado_test/model/post.dart';
import 'package:avocado_test/services/post_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState>{
  PostCubit(): super(LoadingState()){
    fetch();
  }

  void fetch()async{
    List<Post> posts = await PostService().getPosts();
    emit(SuccessState(posts: posts));
  }

}