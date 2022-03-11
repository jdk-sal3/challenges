module {

  public type Animal ={
    species : Text;
    energy : Nat;
  };

  // challenge 3

  public func animal_sleep (c : Animal) : Animal {
    let a : Animal = {
      species = c.species;
      energy = c.energy + 10;
    };
    return a;
  };
}