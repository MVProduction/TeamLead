import 'package:flutter/foundation.dart';
import 'package:team_lead/models/posts/post_list_item_data.dart';
import 'package:team_lead/models/posts/post_tab_type.dart';
import 'package:team_lead/services/team_lead_service.dart';

/// Модель для постов
class PostsModel extends ChangeNotifier {
  /// Посты
  List<PostListItemData> posts = [];

  /// Состояние того какие посты отображаются
  PostTabType postTabType = PostTabType.All;

  void setPostTabType(PostTabType postTabType) {
    this.postTabType = postTabType;
    switch (postTabType) {
      case PostTabType.All:
        TeamLeadService().loadPosts().then((res) {
          setPosts(res
              .map((x) => PostListItemData.fromServicePostListItemData(x))
              .toList());
        });
        break;
      case PostTabType.Featured:
        setPosts([]);
        break;
      case PostTabType.My:
        setPosts([]);
        break;
    }
  }

  /// Устанавливает посты
  void setPosts(List<PostListItemData> posts) {
    this.posts = posts;
    notifyListeners();
  }

  /// Конструктор
  PostsModel() {
    TeamLeadService().loadPosts().then((res) {
      setPosts(res
          .map((x) => PostListItemData.fromServicePostListItemData(x))
          .toList());
    });
  }
}
