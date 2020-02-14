import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:team_lead/pages/post_list/stores/post_item_store.dart';
import 'package:team_lead/pages/post_list/widgets/post_item_widget.dart';
import 'package:team_lead/team_lead_app_store.dart';

/// Список избранных постов
class FavoritePostListWidget extends StatelessWidget {
  /// Создаёт виджет
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final future =
          teamLeadAppStore.postListPageStore.favoritePostListStore.allPosts;

      switch (future.status) {
        case FutureStatus.fulfilled:
          return ListView.builder(itemBuilder: (context, index) {
            final values = future.value;
            if (index >= values.length) return null;
            final post = values[index];
            return PostItemWidget(PostItemStore(post));
          });
          break;
        default:
          return Center(
            child: CircularProgressIndicator(),
          );
          break;
      }
    });
  }
}