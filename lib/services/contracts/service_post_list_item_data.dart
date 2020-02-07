/// Данные поста для списка присылаемые сервисом
class ServicePostListItemData {
  /// ID поста
  final String id;

  /// Имя пользователя
  final String userName;

  /// Заголовок
  final String title;

  /// Время создания поста
  final DateTime createDate;

  /// Короткое описание поста
  final String shortText;

  /// Количество просмотров
  final int viewCount;

  /// Добавлено ли в избранное
  final bool isFavorite;

  /// Конструктор
  ServicePostListItemData(this.id, this.userName, this.title, this.createDate,
      this.shortText, this.viewCount, this.isFavorite);
}