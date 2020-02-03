import 'package:team_lead/services/contracts/service_post_list_item_data.dart';

/// Данные поста
class PostListItemData {
  /// ID поста
  final String id;

  /// Имя пользователя
  final String userName;

  /// Заголовок
  final String title;

  /// Короткое описание поста
  final String shortText;

  /// Количество просмотров
  final int viewCount;

  /// Добавлено ли в избранное
  final bool isFavorite;

  /// Создаёт из контракта сервиса
  static PostListItemData fromServicePostListItemData(
      ServicePostListItemData data) {
    return PostListItemData(data.id, data.userName, data.title, data.shortText,
        data.viewCount, data.isFavorite);
  }

  /// Конструктор
  PostListItemData(this.id, this.userName, this.title, this.shortText,
      this.viewCount, this.isFavorite);
}
