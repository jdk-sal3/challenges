import Person "person";
import List "mo:base/List";
import Animal "animal";

actor {
  public type Person = Person.Person;
  let penelope : Person = {
    name = "Penelope Cruz";
    age = 47;
  };

  // challenge 4
  /* unbound??
  public func create_animal_then_takes_a_break(s : Text, e : Nat) : async Animal {
    let new_animal : Animal = {
      species = s;
      energy = e;
    };
    return Animal.animal_sleep(new_animal);
  };
  */

};
