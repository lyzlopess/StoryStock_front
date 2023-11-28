import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_stock/view/pages/home_page.dart';
import 'package:story_stock/view/pages/registerbook_page.dart';

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

class AddPhotosPage extends StatefulWidget {
  @override
  State<AddPhotosPage> createState() => _AddPhotosPageState();
}

class _AddPhotosPageState extends State<AddPhotosPage> {
  XFile? photo_book;
  selectPhotoBook() async {
    final ImagePicker picker = ImagePicker();
    try {
      XFile? file = await picker.pickImage(source: ImageSource.gallery);
      if (file != null) setState(() => photo_book = file);
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicione Fotos dos Livros'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return PhotoIcon(onPressed: () {});
                },
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (RegisterBookPage()))); // Adicione a lógica para confirmar e processar as fotos aqui
              },
              child: Text('Confirmar'),
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoIcon extends StatefulWidget {
  final VoidCallback onPressed;
  PhotoIcon({required this.onPressed});

  @override
  State<PhotoIcon> createState() => _PhotoIconState();
}

class _PhotoIconState extends State<PhotoIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade500,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: widget.onPressed,

        // Adicione a lógica para escolher uma foto aqui
      ),
    );
  }
}
