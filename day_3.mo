import Array "mo:base/Array";
import Iter "mo:base/Iter";


actor {

  // ----------------------------------------------------------------------------------
  // Challenge 1 - from mentorship
  // Write a private function swap that takes 3 parameters : a mutable array , an index j and an index i and returns the same array but where value at index i and index j have been swapped.
  // 

  private func swap (array : [Nat], i : Nat, j : Nat) : [Nat] {
    var newArr : [var Nat] = Array.thaw(array);
    newArr[j] := array[i];
    newArr[i] := array[j];
    return Array.freeze(newArr);
  }; 

  // ----------------------------------------------------------------------------------
  // Challenge 2 - from mentorship
  // Write a function init_count that takes a Nat n and returns an array [Nat] where value is equal to it's corresponding index. 
  // dfx canister call day_3 init_count '(4)'
  // (vec { 0 : nat; 1 : nat; 2 : nat; 3 : nat })

  public func init_count (n : Nat) : async [Nat] {
    let arr : [var Nat] = Array.init<Nat>(n, 0);
    for (i in Iter.range(0, n-1)){
      arr[i] := i
    };
    return Array.freeze<Nat>(arr)
  };

  // ----------------------------------------------------------------------------------
  // Challenge 3
  // Write a function seven that takes an array [Nat] and returns "Seven is found" if one digit of ANY number is 7. Otherwise this function will return "Seven not found".
  // dfx canister call day_3 seven '(vec {4;2;7})'
  // ("Seven is found")

  public func seven (arr : [Nat]) : async Text {
    for(v in arr.vals()) {
      if(v == 7) return "Seven is found";
    };
    return "Seven not found";
  };

  // ----------------------------------------------------------------------------------
  // Challenge 4 - from mentorship
  // Write a function nat_opt_to_nat that takes two parameters : n of type ?Nat and m of type Nat . This function will return the value of n if n is not null and if n is null it will default to the value of m.
  // dfx canister call day_3 nat_opt_to_nat '(null,4)' // '(opt 2,5)'
  // (4 : nat) // (2 : nat)

  public func nat_opt_to_nat(n: ?Nat, m: Nat): async Nat{
    switch(n){
      case(null){
        return m;
      };
      case(?something){
        return something;
      };
    };
  };


  // ----------------------------------------------------------------------------------
  // Challenge 5 - from mentorship
  // Write a function day_of_the_week that takes a Nat n and returns a Text value corresponding to the day. If n doesn't correspond to any day it will return null . 
  // dfx canister call day_3 day_of_the_week '(1)'
  // (opt "Monday")

  public func day_of_the_week(n : Nat) : async ?Text {
    switch(n) {
      case (1) { return ?("Monday") };
      case (2) { return ?("Tuesday") };
      case (3) { return ?("Wednesday") };
      case (4) { return ?("Thursday") };
      case (5) { return ?("Friday") };
      case (6) { return ?("Saturday") };
      case (7) { return ?("Sunday") };
      case (_) { return null };
    };
  };

  // ----------------------------------------------------------------------------------
  // Challenge 6 - 
  // Write a function populate_array that takes an array [?Nat] and returns an array [Nat] where all null values have been replaced by 0. 
  // dfx canister call day_3 
  // 




  // ----------------------------------------------------------------------------------
  // Challenge 7 - 
  // 
  // dfx canister call day_3 
  // 

  // ----------------------------------------------------------------------------------
  // Challenge 8 - 
  // 
  // dfx canister call day_3 
  //   


  // ----------------------------------------------------------------------------------
  // Challenge 9 - from mentorship
  // 
  // dfx canister call day_3 
  // 


  // ----------------------------------------------------------------------------------
  // Challenge 10 - from mentorship
  // 
  // dfx canister call day_3 
  // 




}