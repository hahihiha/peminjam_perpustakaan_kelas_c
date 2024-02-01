import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/model/response_buku.dart';
import '../../../routes/app_pages.dart';
import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BookView',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0CBD63),
      ),
      body: controller.obx(
          (state) => ListView.separated(
                itemCount: state!.length,
                itemBuilder: (context, index) {
                  DataBuku dataBuku = state[index];
                  return ListTile(
                    title: Text("${dataBuku.judul}"),
                    subtitle: Text(
                        "Penulis ${dataBuku.penulis}\n${dataBuku.penerbit} - ${dataBuku.tahunTerbit}"),
                    trailing: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.ADD_PEMINJAMAN,
                          parameters: {
                            'id': (dataBuku.id ?? 0).toString(),
                            'judul': dataBuku.judul ?? '-'
                          }),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0CBD63),
                      ),
                      child: Text(
                        "Pinjam",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
              ),
          onLoading: Center(child: CupertinoActivityIndicator())),
    );
  }
}
