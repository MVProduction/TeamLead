/// Информация о комментарии
class ServiceCommentData {
  /// Идентификатор комментария
  final int id;

  /// Имя пользователя сделавшего пост
  final String userName;

  /// URL фотографии пользователя
  final String userPhotoUrl;

  /// Дата и время комментария
  final DateTime dateTime;

  /// Текст комментария
  final String text;

  /// Конструктор
  ServiceCommentData(
      this.id, this.userName, this.userPhotoUrl, this.dateTime, this.text);
}