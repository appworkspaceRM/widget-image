# flutter_application_9

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Image Widget

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Image Wigdet',
          ),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image(),
          ),
        ),
      ),
    );
  }
}
```

image widget adalah widget yang dapat menampilkan sebuah gambar. format yang support pada flutter image wiget yaitu:

- JPEG
- PNG
- GIFT
- WEBP
- BMP
- WBMP

terdapat 4 jenis provider image atau sumber source image yang bisa digunakan yaitu

- Asset merupakan sumber gambar yang berada pada directory aplikasi flutter
- Network merupakan sumber dari sebuah url link dari internet
- File merupakan sumber gambar berasal dari komputer dari luar aplikasi
- Memory merupakan sumber dari memori device yang digunakan

kecepatan provider mulai dari yang tercepat hingga paling lambat

cepat ——————————>lambat

memory → asset → file → network

- Asset Image
    
    mendapat kan asset image harus memiliki sebuah folder dan file yang dituju dan wajib di daftarkan pada file pubspec.yaml. Asset image sendiri merupakan sebuah sumber gambar yang berada pada directory file flutter, example : images/file.jpg || pubspec.yaml {assets: images/file.jpg}
    
    ```dart
    import 'package:flutter/material.dart';
    
    void main(List<String> args) {
      runApp(const MyApp());
    }
    
    class MyApp extends StatelessWidget {
      const MyApp({super.key});
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Image Wigdet',
              ),
            ),
            body: Center(
              child: Container(
                width: 350,
                height: 500,
                color: Colors.amber,
                child: Image(
                  image: AssetImage(
                    'images/906-536x354.jpg',
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }
    ```

- Network Image
    
    mendapatkan sumber image dari internet menggunakan widget NetworkImage(). namun agak sedikit lambar karna harus mengambil gambal dari internet yang membutuhkan koneksi internet.
    
    ```dart
    import 'package:flutter/material.dart';
    
    void main(List<String> args) {
      runApp(const MyApp());
    }
    
    class MyApp extends StatelessWidget {
      const MyApp({super.key});
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Image Wigdet',
              ),
            ),
            body: Center(
              child: Container(
                width: 350,
                height: 500,
                color: Colors.amber,
                child: Image(
                  image: NetworkImage(
    	              "https://picsum.photos/350/500",
    	            ),
                ),
              ),
            ),
          ),
        );
      }
    }
    ```

pada Widget Image terdapat banyak properti yang bisa kita gunakan untuk customize pada image seperti fit dimana fit membutuhkan widget BoxFit membuat sebuah image yang tampil dapat diatur ukuran size atau ukuran panjang dan lebar sesuai static yang kita pilih dan masih banyak lagi. Widget image sendiri dapat dilakukan dengan menggunakan Image enum seperti
```dart
Image.asset()
Image.Network()
```

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Image Wigdet',
          ),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage(
            //     'images/906-536x354.jpg',
            //   ),
            //    image: NetworkImage("https://picsum.photos/350/500"),
            // ),
            // child: Image.asset("images/906-536x354.jpg"),
            child: Image.network("https://picsum.photos/350/500"),
          ),
        ),
      ),
    );
  }
}
```