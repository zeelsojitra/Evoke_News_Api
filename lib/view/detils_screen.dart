import 'package:flutter/material.dart';

class Detils_screen extends StatefulWidget {
  final image;
  final title;
  final author;
  final discription;
  const Detils_screen(
      {Key? key, this.image, this.title, this.author, this.discription})
      : super(key: key);

  @override
  State<Detils_screen> createState() => _Detils_screenState();
}

class _Detils_screenState extends State<Detils_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.network(
              widget.image ??
                  "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAIoAigMBIgACEQEDEQH/xAAbAAEBAAMBAQEAAAAAAAAAAAAABQEEBgIDB//EADgQAAIBAwIDAgsGBwAAAAAAAAABAgMEEQUSEyExBlEUMkFCUmFxcoGRsRUiIzOh4SU2Y7LB8PH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A/cQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADxKrCDxKcU/Wz2QtTk537guqxFAXE0+jRkhvTrun4ii/dlgx/EaPLFb6gXQQvtG7pvE+fvQwbdhqE7mqqcoRXLOYgUgAAAAAAAAAAAAAA0rq6nSqOEIr2sDdOdjLj61jycV/p/woW9erOvmc24xi20R9IrRjeTuKre2nCU21/vrA6owc1X1ytOspUVspxeVH0vabN1r0diVrTe5rnKa5ICvdyULarJ45QbJGgLdc1JejDHzf7GlRr1Klpe3FWcpNxjDLfe/wBij2aj+BWn3yS+S/cCyAAAAAAAAAAAAAE/UoYlGffyKBr3sN9vL1cwJqnwrS7q91JkOwuLeFO4p3MpxVWKipQWcc8lq4oVa2lXELeG6pJpbU+qyc5Vsryl+ZbVor3GBuO3spP8PUYp/wBSm0Z+zqsvybi2qvujV5/qSZPa8TTT7nyG74gWrijVstI2VoqM6tfOM55JFrs5DbpdOXpycv1x/g4ve/K3hHe6TT4Wm20H1VNfQDbAAAAAAAAAAAAADEllNd6MgCOqdWM3Gmp8n5ptUqV351XavW8s3gB8+Fuhtq4qe2KNarpVhV8e0pZ71HH0N0ASKnZzTp9Kc4+7NlaMVGKiuiWEZAAAAAAAAAAAADzuW7blZ7j0cZ2kp3D7Uxr2PO5tdPVxTj6eKjTj8U2B2O5ZxlZ9plySeH17jlbC/pXGu3mo263U5aZCpFexvl8+R40TRbbWdHhf6k51ry6Tnxt7Tp83hRx0wB1xjcm2k1ldVkidj7yve6JTlczc6tOcqbm/OSfJny0n+bdc92j/AGgX4zUujT+IUk20mm115nBdmL1aXOtc1nihd29a45vz6c3lfJm/2MpVLfVb6FfPHrUKVepn0pZb+oHXblnGVnuPR+f+GU1rK1zjwblf+DumpLPB27c49qyXNZ36l2gtdHnVnTtODKvWUJbXVw8KOe4DolNS8Vp+xmOLDyzj8yDo8dEtNXqWmn21Shd7JKWYzSlFNZxnk+flRA0ehp1WvdK70a6u6vhs1GvSpOUIrPlafkA/QAF0AAAAAAAJr06T7QLU+ItqtPB+HjnnfuzkpACFpfZ+Om6teXVKonb14bY0dviZeX8M5PlT0K/tKVS003VODZTbcYzo750k+qi8/U6IAammWFDTLGlaWyap011fVvytmta6ZOhq2o33Fi1dxglDHOO1Y6lQAczPsqquk6fZVbhbrWq5Tmo+PFtuUcevl8jeqaVWWp3t7Qrwg69qqMIuL+7JdJFgAc7LstavQPs5Qoq44W3wnh/e35znPXr6z73uiVbqFnXjeOhqNrDbG4hHKly5pp9Uy2AIlnpV6tXhqOoXtOtUp0ZUYwpUdiw2nnqa1no2sWDrxstRto0qtaVXbO3cmsvvydIAMLOFnqZAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/9k=",
              height: 300,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.title ?? "No Found",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.author ?? "No Found",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.discription ?? "No Found",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
