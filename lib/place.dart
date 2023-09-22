class Place {
  String namaTempat;
  String namaDaerah;
  String imageUrl;

  Place({
    required this.namaTempat,
    required this.namaDaerah,
    required this.imageUrl
  });
}

var placeLists = [
  Place(
    namaTempat: "MT Haryono",
    namaDaerah: "Balikpapan",
    imageUrl: "https://www.inibalikpapan.com/wp-content/uploads/2019/08/Kota-Balikpapan.jpg",
  ),
  Place(
    namaTempat: "Stadiun Datu Adil",
    namaDaerah: "Tarakan",
    imageUrl: "https://photos.wikimapia.org/p/00/01/02/27/37_big.jpg",
  ),
  Place(
    namaTempat: "Saranjana",
    namaDaerah: "Oka-oka, Kotabaru",
    imageUrl: "https://static.republika.co.id/uploads/images/inpicture_slide/salah-satu-adegan-di-film-saranjana-sejak-awal-tahun_230912160134-246.png",
  ),
  Place(
    namaTempat: "Lapangan Klidon",
    namaDaerah: "Sleman",
    imageUrl: "https://static-id.lamudi.com/static/media/cXVhbGl0eS82NQ%3D%3D/2x2x5x440x195/84455d0510073a.jpg",
  ),
  Place(
    namaTempat: "Institut Teknologi Kalimantan",
    namaDaerah: "Balikpapan KM 15",
    imageUrl: "https://itk.ac.id/wp-content/uploads/2021/09/Belakang-Kiri-1024x576.jpg",
  )
];
