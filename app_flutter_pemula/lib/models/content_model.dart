import 'package:app_flutter_pemula/data/constants/assets.gen.dart';
import 'package:app_flutter_pemula/data/constants/constring.dart';
import 'package:flutter/cupertino.dart';

class ContentModel {
  int id;
  String title;
  String subTitle;
  String description;
  String imageUrl;
  IconData? iconData;
  String level;
  String category;
  String rating;
  String note;
  String duration;
  String modul;
  String student;
  ContentModel({
    this.id = 0,
    this.title = '',
    this.subTitle = '',
    this.description = '',
    this.imageUrl = '',
    this.iconData,
    this.level = '',
    this.category = '',
    this.rating = '',
    this.note = '',
    this.duration = '',
    this.modul = '',
    this.student = '',
  });
}

final itemsTrustedBy = [
  Assets.images.trustedby.dIsat,
  Assets.images.trustedby.dAws,
  Assets.images.trustedby.dGoogle,
  Assets.images.trustedby.dIbm,
  Assets.images.trustedby.dMicrosoft,
  Assets.images.trustedby.dSamsung,
];
final itemsProgramBy = <ContentModel>[
  ContentModel(
    note: 'Oleh Indosat Ooredoo Hutchison',
    title: 'Beasiswa IDCamp 2022',
    imageUrl: Assets.images.dByIsat.path,
    description: 'IDCamp adalah program beasiswa dari Indosat Ooredoo Hutchison untuk mencetak developer Indonesia. Tersedia 8 opsi alur belajar. Daftarkan dirimu sekarang! Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
  ),
  ContentModel(
    note: 'Oleh Snapchat',
    title: 'Augmented Reality Creator program powered by Snap AR',
    imageUrl: Assets.images.dAureality.path,
    description: 'Program beasiswa belajar membuat produk Augmented Reality di platform Snapchat untuk seluruh Warga Negara Indonesia.',
  ),
  ContentModel(
    note: 'Oleh Kemenko Perekonomian',
    title: 'Kartu Prakerja',
    imageUrl: Assets.images.dPrakerja.path,
    description: 'Bantuan biaya pelatihan bagi masyarakat Indonesia yang ingin memiliki atau meningkatkan keterampilannya.',
  ),
  ContentModel(
    note: 'Oleh Dicoding & Kemendikbudristek - Dikti',
    title: 'Studi Independen Bersertifikat Kampus Merdeka Batch Kedua',
    imageUrl: Assets.images.dKampusmerdeka.path,
    description: 'Program Studi Independen memungkinkan mahasiswa/i dari jurusan apapun mempelajari Teknologi &amp; Persiapan Karier sebagai Developer dengan konversi hingga 20 SKS.',
  ),
  ContentModel(
    note: 'Oleh Google, GoTo, Traveloka, Kemdikbudristek',
    title: 'Bangkit Academy 2022',
    imageUrl: Assets.images.dBangkit.path,
    description: 'Program kesiapan karier terafiliasi Kampus Merdeka. Melatih mahasiswa agar memiliki keterampilan relevan untuk karier sukses di perusahaan teknologi terkemuka.',
  ),
];
final learningPathCategories = <ContentModel>[
  ContentModel(
    id: 1,
    title: Constring.androidDev,
    imageUrl: Assets.images.android.dAndroid.path,
    subTitle: 'Kurikulum didesain dengan persetujuan dari Tim Google Android untuk mempersiapkan developer Android standar Global. Dicoding adalah Google Developer Authorized Training Partner.',
  ),
  ContentModel(
    id: 2,
    title: Constring.backend,
    imageUrl: Assets.images.backEnd.dBackend.path,
    subTitle: 'Kurikulum disusun oleh Dicoding bersama AWS beserta pelaku industri Back-End Development. Siswa dipersiapkan untuk menjadi Back-End Developer sesuai kebutuhan industri.',
  ),
  ContentModel(
    id: 1,
    title: Constring.frontend,
    imageUrl: Assets.images.frontEndWeb.dFrontend.path,
    subTitle: 'Kurikulum disusun oleh Dicoding dan pelaku industri di bidang Web Development. Siswa dipersiapkan untuk menjadi Front-End Web Developer sesuai standar kebutuhan industri.',
  ),
  ContentModel(
    id: 1,
    title: Constring.ios,
    imageUrl: Assets.images.ios.dIos.path,
    subTitle: 'Kurikulum disusun oleh Dicoding dan pelaku industri di bidang iOS Development. Siswa dipersiapkan untuk menjadi iOS Developer sesuai standar kebutuhan industri.',
  ),
  ContentModel(
    id: 1,
    title: Constring.multiPlatform,
    imageUrl: Assets.images.multiflatform.dMultiplatofrma.path,
    subTitle: 'Kurikulum disusun oleh Dicoding bersama Google beserta pelaku industri Multi-Platform App Development. Siswa dipersiapkan untuk menjadi Multi-Platform App Developer sesuai standar kebutuhan industri.',
  ),
  ContentModel(
    id: 1,
    title: Constring.react,
    imageUrl: Assets.images.react.dReactjs.path,
    subTitle: 'Kurikulum lengkap yang didesain oleh tim expert Dicoding bersama para praktisi industri. Siswa dipersiapkan untuk menjadi seorang React Developer berstandar global.',
  ),
];
final learningClassItems = <ContentModel>[
  ContentModel(
    category: Constring.androidDev,
    id: 1,
    title: 'Memulai Pemrograman Dengan Kotlin',
    duration: '50 jam',
    rating: '4.85',
    level: 'Dasar - Pemula',
    modul: '34 Modul',
    student: '989 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.androidDev,
    id: 2,
    title: 'Belajar Membuat Aplikasi Android Untuk Pemula',
    duration: '40 jam',
    rating: '4.52',
    level: 'Pemula',
    modul: '54 Modul',
    student: '589 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.androidDev,
    id: 3,
    title: 'Belajar Fundamental Aplikasi Android',
    duration: '43 jam',
    rating: '4.57',
    level: 'Menengah',
    modul: '52Modul',
    student: '5892 Siswa terdaftar',
  ),
  //Backend
  ContentModel(
    category: Constring.backend,
    id: 1,
    title: 'Cloud Practitioner Essentials (Belajar Dasar AWS Cloud)',
    duration: '50 jam',
    rating: '4.85',
    level: 'Dasar - Pemula',
    modul: '34 Modul',
    student: '989 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.backend,
    id: 2,
    title: 'Belajar Dasar Pemrograman JavaScript',
    duration: '40 jam',
    rating: '4.59',
    level: 'Pemula',
    modul: '54 Modul',
    student: '589 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.backend,
    id: 3,
    title: 'Belajar Membuat Aplikasi Back-End untuk Pemula',
    duration: '43 jam',
    rating: '4.57',
    level: 'Menengah',
    modul: '52Modul',
    student: '5892 Siswa terdaftar',
  ),
  //Front-End
  ContentModel(
    category: Constring.frontend,
    id: 1,
    title: 'Belajar Dasar Pemrograman Web',
    duration: '50 jam',
    rating: '4.85',
    level: 'Dasar - Pemula',
    modul: '34 Modul',
    student: '989 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.frontend,
    id: 2,
    title: 'Belajar Membuat Front-End Web untuk Pemula',
    duration: '40 jam',
    rating: '4.81',
    level: 'Pemula',
    modul: '54 Modul',
    student: '589 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.frontend,
    id: 3,
    title: 'Belajar Fundamental Front-End Web Development',
    duration: '43 jam',
    rating: '4.57',
    level: 'Menengah',
    modul: '52Modul',
    student: '5892 Siswa terdaftar',
  ),
  //Ios Dev
  ContentModel(
    category: Constring.ios,
    id: 1,
    title: 'Belajar Pemrograman Dengan Swift',
    duration: '35 jam',
    rating: '4.25',
    level: 'Dasar',
    modul: '34 Modul',
    student: '989 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.ios,
    id: 2,
    title: 'Belajar Membuat Aplikasi iOS untuk Pemula',
    duration: '40 jam',
    rating: '4.65',
    level: 'Pemula',
    modul: '54 Modul',
    student: '589 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.ios,
    id: 3,
    title: 'Belajar Fundamental Aplikasi iOS',
    duration: '43 jam',
    rating: '4.57',
    level: 'Menengah',
    modul: '52Modul',
    student: '5892 Siswa terdaftar',
  ),
  //MultiPlatform Dev
  ContentModel(
    category: Constring.multiPlatform,
    id: 1,
    title: 'Memulai Pemrograman Dengan Dart',
    duration: '55 jam',
    rating: '4.25',
    level: 'Dasar',
    modul: '34 Modul',
    student: '989 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.multiPlatform,
    id: 2,
    title: 'Belajar Membuat Aplikasi Flutter untuk Pemula',
    duration: '40 jam',
    rating: '4.95',
    level: 'Pemula',
    modul: '54 Modul',
    student: '589 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.multiPlatform,
    id: 3,
    title: 'Belajar Fundamental Aplikasi Flutter',
    duration: '43 jam',
    rating: '4.57',
    level: 'Menengah',
    modul: '52Modul',
    student: '5892 Siswa terdaftar',
  ),
  //MultiPlatform Dev
  ContentModel(
    category: Constring.react,
    id: 1,
    title: 'Memulai Pemrograman Dengan React',
    duration: '55 jam',
    rating: '4.25',
    level: 'Dasar',
    modul: '34 Modul',
    student: '989 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.react,
    id: 2,
    title: 'Belajar Membuat Pemrograman JavaScript React',
    duration: '40 jam',
    rating: '4.56',
    level: 'Pemula',
    modul: '54 Modul',
    student: '589 Siswa terdaftar',
  ),
  ContentModel(
    category: Constring.react,
    id: 3,
    title: 'Belajar Fundamental Aplikasi React',
    duration: '43 jam',
    rating: '4.57',
    level: 'Menengah',
    modul: '52Modul',
    student: '5892 Siswa terdaftar',
  ),
];
