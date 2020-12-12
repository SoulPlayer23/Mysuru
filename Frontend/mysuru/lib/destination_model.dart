class Destination {
  String dname;
  String description;
  String image;
  Destination({this.dname, this.description, this.image});
}

List<Destination> destinations = [
  Destination(
      dname: 'Mysore\nPalace',
      description:
          "The Mysore Palace is a historical palace and the royal residence at Mysore in the Indian State of Karnataka. It is the official residence of the Wadiyar dynasty and the seat of the Kingdom of Mysore. The palace is in the centre of Mysore, and faces the Chamundi Hills eastward. Mysore is commonly described as the 'City of Palaces', and there are seven palaces including this one; however, 'Mysore Palace' refers specifically to this one within the Old fort.The land on which the palace now stands was originally known as puragiri (literally, citadel), and is now known as the Old Fort. Yaduraya built the first palace inside the Old Fort in the 14th century, which was demolished and constructed multiple times. The current structure was constructed between 1897 and 1912, after the Old Palace was burnt ablaze.Mysore Palace is now one of the most famous tourist attractions in India, after the Taj Mahal, with more than 6 million annual visitors.",
      image: 'assets/mysore_palace.jpg'),
  Destination(
      dname: 'Brindavan\nGardern',
      description:
          'The Brindavan Gardens is a garden located in the Mandya District of the Indian State of Karnataka. It lies adjoining the Krishnarajasagara Dam which is built across the river Kaveri. The work on laying out this garden was started in the year 1927 and completed in 1932. Visited by close to 2 million tourists per year, the garden is one of the major attractions of Srirangapatna. Sir Mirza Ismail, the Deewan of Mysore, a man with a penchant for gardens, founded the Brindavan Gardens (Krishnaraja Sagar Dam in particular) and built the Cauvery River high-level canal to irrigate 120,000 acres (490 km2) in modern Mandya district. He was inspired by Hyder Ali who had earlier built the Lalbagh Botanical Gardens at Bangalore.',
      image: 'assets/brindavan_gardens.jpg'),
  Destination(
      dname: "St.Philomena's\nCathedral",
      description:
          "St. Philomena’s Cathedral is a Catholic church that is the cathedral of the Diocese of Mysore, India. The full name is the Cathedral of St. Joseph and St. Philomena. It is also known as St. Joseph's Cathedral. It was constructed in 1936 using a Neo Gothic style and its architecture was inspired by the Cologne Cathedral in Germany. This is one of the tallest churches in Asia.",
      image: 'assets/philomina_cathedral.jpg'),
  Destination(
      dname: 'Ranganathittu\nBird\nSanctuary',
      description:
          'Ranganathittu Bird Sanctuary (also known as Pakshi Kashi of Karnataka), is a bird sanctuary in the Mandya District of the state of Karnataka in India. It is the largest bird sanctuary in the state, 40 acres (16 ha) in area, and comprises six islets on the banks of the Kaveri river.Ranganathittu is located 3 kilometers from the historic town of Srirangapattana and 16 kilometres (9.9 mi) north of Mysore. The sanctuary attracted about 3 lakh visitors during 2016–17.',
      image: 'assets/ranganathittu.jpg'),
];
