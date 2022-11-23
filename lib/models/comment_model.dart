import 'package:ecom_users/models/user_model.dart';

const String collectionComment = 'Comments';

const String commentFieldCommentId = 'commentId';
const String commentFieldUserModel = 'userModel';
const String commentFieldProductId = 'productId';
const String commentFieldComment = 'comment';
const String commentFieldDate = 'date';
const String commentFieldApproved = 'approved';

class CommentModel {
  String? commentId;
  UserModel userModel;
  String productId;
  String comment;
  String date;
  bool approved;

  CommentModel({
     this.commentId,
    required this.userModel,
    required this.productId,
    required this.comment,
    required this.date,
    this.approved = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      commentFieldCommentId: commentId,
      commentFieldUserModel: userModel.toMap(),
      commentFieldProductId: productId,
      commentFieldComment: comment,
      commentFieldDate: date,
      commentFieldApproved: approved,
    };
  }

  factory CommentModel.fromMap(Map<String, dynamic> map) => CommentModel(
        commentId: map[commentFieldCommentId],
        userModel: UserModel.fromMap(map[commentFieldUserModel]),
        productId: map[commentFieldProductId],
        comment: map[commentFieldComment],
        date: map[commentFieldDate],
        approved: map[commentFieldApproved],
      );
}
