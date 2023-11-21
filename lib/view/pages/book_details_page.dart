import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  final String bookTitle;
  final String author;
  final String userImage;
  final String userName;
  final String description;

  BookDetailsPage({
    required this.bookTitle,
    required this.author,
    required this.userImage,
    required this.userName,
    required this.description,
  });

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookTitle, style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                "lib/images/book.png",
                width: 300.0, // Ajuste o tamanho da largura conforme necessário
                height: 300.0, // Ajuste o tamanho da altura conforme necessário
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.bookTitle,
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.author,
                  style: TextStyle(fontSize: 18.0, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(widget.userImage),
                ),
                SizedBox(width: 8.0),
                Text(
                  widget.userName,
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              "Descrição: ${widget.description}",
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
