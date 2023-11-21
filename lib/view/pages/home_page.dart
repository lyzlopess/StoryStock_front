import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/search_page.dart';
import 'package:story_stock/view/pages/settings_page.dart';
import 'package:story_stock/view/pages/user_page.dart';
import 'package:story_stock/view/pages/book_details_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoryStockHome(),
    );
  }
}

class StoryStockHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StoryStock"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: 12, // Aumentado o número total de itens
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return BookCard(
              bookTitle: "É assim que acaba",
              author: "Colleen Hoover",
              imagePath: "lib/images/book.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailsPage(
                      bookTitle: "É assim que acaba",
                      author: "Colleen Hoover",
                      userImage: "lib/images/userr.png",
                      userName: "Aline Santos",
                      description: "É um livro de romance usado, porém em perfeito estado de conservação.",
                    ),
                  ),
                );
              },
            );
          } else if (index == 1) {
            return BookCard(
              bookTitle: "A culpa é das Estrelas",
              author: "John Green",
              imagePath: "lib/images/a_culpa_é_das_estrelas.png",
              smallerImage: true,
              onTap: () {
                // Adicione a navegação para o segundo livro, se necessário
              },
            );
          } else if (index == 2) {
            return BookCard(
              bookTitle: "O lado feio do amor",
              author: "Colleen Hoover",
              imagePath: "lib/images/o_lado.png",
              onTap: () {
                // Adicione a navegação para o terceiro livro, se necessário
              },
            );
          } else if (index == 3) {
            return BookCard(
              bookTitle: "Os sete maridos de Evelyn Hugo",
              author: "Taylor Jenkins Reid",
              imagePath: "lib/images/os_sete.png",
              onTap: () {
                // Adicione a navegação para o quarto livro, se necessário
              },
            );
          } else if (index == 4) {
            return BookCard(
              bookTitle: "Amor & Gelato",
              author: "Jenna Evans Welch",
              imagePath: "lib/images/amor.png",
              onTap: () {
                // Adicione a navegação para o quinto livro, se necessário
              },
            );
          } else if (index == 5) {
            return BookCard(
              bookTitle: "O Homem de Giz",
              author: "C. J. Tudor",
              imagePath: "lib/images/o_homem.png",
              onTap: () {
                // Adicione a navegação para o sexto livro, se necessário
              },
            );
          } else if (index == 6) {
            return BookCard(
              bookTitle: "Todas as suas (im)perfeições",
              author: "Colleen Hoover",
              imagePath: "lib/images/todas.png",
              onTap: () {
                // Adicione a navegação para o sétimo livro, se necessário
              },
            );
            
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String bookTitle;
  final String author;
  final String imagePath;
  final bool smallerImage;
  final Function onTap;

  BookCard({
    required this.bookTitle,
    required this.author,
    required this.imagePath,
    this.smallerImage = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 250.0,
            height: smallerImage ? 250.0 : 350.0,
          ),
          SizedBox(height: 8),
          Text(
            bookTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(author, style: TextStyle(fontSize: 18)),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              onTap();
            },
            child: Text("Detalhes", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
