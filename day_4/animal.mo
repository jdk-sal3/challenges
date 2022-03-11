module {

  public type Animal ={
    species : Text;
    energy : Nat;
  };

    // challenge 3
    // create a public function called animal_sleep that takes an Animal and returns the same Animal where the field energy has been increased by 10
    // dfx canister call animal animal_sleep '(c)'

  public func animal_sleep (c : Animal) : Animal {
    let a : Animal = {
      species = c.species;
      energy = c.energy + 10;
    };
    return a;
  };
}