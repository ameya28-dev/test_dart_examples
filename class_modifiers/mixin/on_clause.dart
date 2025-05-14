class Musician {
  void musicianMethod() {
    print('Playing music!');
  }
}

mixin MusicalPerformer on Musician {
  void performerMethod() {
    print('Performing music!');
    super.musicianMethod();
  }
}

class Singer extends Musician {}

class Dancer extends Musician with MusicalPerformer {}

class Actor extends Singer {}

mixin Dancing on Musician {}

class TripleThreat extends Actor with MusicalPerformer, Dancing {}

mixin class Artist {}

class Novice extends Artist {}

class Expert with Artist {}

void main() {
  Singer().musicianMethod();
  Dancer().musicianMethod();
  Dancer().performerMethod();

  final dancer = Dancer();
}
