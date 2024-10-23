import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'page_pelanggan.dart';

class HasilPage extends StatelessWidget {
  final Pelanggan pelanggan;

  HasilPage({required this.pelanggan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabel Pelanggan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Kode Pelanggan'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${pelanggan.kodePelanggan}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Nama Pelanggan'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${pelanggan.namaPelanggan}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Jenis Pelanggan'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${pelanggan.jenisPelanggan}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Tanggal Masuk'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${DateFormat.yMd().format(pelanggan.tglMasuk)}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Jam Masuk'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${DateFormat.Hm().format(pelanggan.jamMasuk)}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Jam Keluar'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${DateFormat.Hm().format(pelanggan.jamKeluar)}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Lama Bermain'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '${pelanggan.lama.inHours} jam ${pelanggan.lama.inMinutes.remainder(60)} menit'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Tarif'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rp${pelanggan.tarif.toStringAsFixed(2)}'),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Total Biaya'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rp${pelanggan.totalBiaya.toStringAsFixed(2)}'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WarnetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warnet'),
      ),
      body: Center(
        child: Text('Warnet Screen'),
      ),
    );
  }
}
