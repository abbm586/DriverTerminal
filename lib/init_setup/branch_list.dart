

class Branches{

  int id;
  String name;

  Branches(this.id, this.name);

  static List<Branches> getBranches() {
    return <Branches>[
      Branches(1, 'Atteridgeville'),
      Branches(2, 'Centurion'),
      Branches(3, 'Johannesburg'),
      Branches(4, 'Johannesburg CBD'),
      Branches(5, 'Sandton'),
      Branches(6, 'Pretoria'),
      Branches(7, 'Pretoria West'),
      Branches(8, 'Port Elizabeth'),
      Branches(9, 'Cape Town'),
      Branches(10, 'Montana'),
      Branches(11, 'Midrand'),
    ];
  }
}