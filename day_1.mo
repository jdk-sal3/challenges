import Array "mo:base/Array";
import Iter "mo:base/Iter";

actor {

  // ----------------------------------------------------------------------------------
  // challenge 1 
  // Write a function add that takes two natural numbers n and m and returns the sum.
  // dfx canister call day_1 add '(10,5)'
  // (15 : nat)

  public func add (n : Nat, m : Nat) : async Nat {
    return (n + m);
  };

  // ----------------------------------------------------------------------------------
  // challenge 2 
  // Write a function square that takes a natural number n and returns the area of a square of length n.
  // dfx canister call day_1 square '(10)'
  // (100 : nat)

  public func square (n : Nat) : async Nat {
    return (n * n);
  };

  // ----------------------------------------------------------------------------------
  // challenge 3 
  // Write a function days_to_second that takes a number of days n and returns the number of seconds.
  // dfx canister call day_1 days_to_second '(1)'
  // (86_400 : nat)

  public func days_to_second (n : Nat) : async Nat {
    return (n * 24 * 60 * 60);
  };

  // ----------------------------------------------------------------------------------
  // challenge 4a
  // increment_counter returns the incremented value of counter by n.
  // dfx canister call day_1 increment_counter '(2)'
  // (2 : nat)
  // (4 : nat)

  var counter : Nat = 0;
  public func increment_counter (n : Nat) : async Nat {
    counter += n;
    return (counter);
  };

  // challenge 4b
  // clear_counter sets the value of counter to 0. 
  // dfx canister call day_1 clear_counter '()'
  // (0 : nat)
  public func clear_counter () : async Nat {
    counter := 0;
    return (counter);
  };

  // ----------------------------------------------------------------------------------
  // challenge 5 
  // Write a function divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
  // dfx canister call day_1 divide '(11,5)'
  // (false)

  public func divide (n : Nat, m : Nat) : async Bool {
    if (n % m == 0) {
      return (true);
    };
    return (false);
  };

  // ----------------------------------------------------------------------------------
  // challenge 6 
  // Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
  // dfx canister call day_1 is_even '(11)'
  // (false)

  public func is_even (n : Nat) : async Bool {
    if (n % 2 == 0) {
      return (true);
    };
    return (false);
  };

  // ----------------------------------------------------------------------------------
  // challenge 7 - from solution
  // Write a function sum_of_array that takes an array of natural numbers and returns the sum. This function will returns 0 if the array is empty.
  // dfx canister call day_1 sum_of_array '(vec {1;2;3})'
  // (6: nat)
  // dfx canister call day_1 sum_of_array '(vec {})'
  // (0 : nat)

  public func sum_of_array (array : [Nat]) : async Nat {
    if (array.size() == 0) {
      return (0);
    };
    var sum : Nat = 0;
    for (value in array.vals()) {
      sum += value;
    };
    return (sum);
  };
  
  // ----------------------------------------------------------------------------------
  // challenge 8 - from solution
  // Write a function maximum that takes an array of natural numbers and returns the maximum value in the array. This function will returns 0 if the array is empty.
  // dfx canister call day_1 maximum '(vec {7;2;3})'
  // (7: nat)
  public func maximum(array : [Nat]) : async Nat {
    if(array.size() == 0) return 0;
    var maximum = array[0];
    for (value in array.vals()){ // variable 'value' can be change to any character or string (work without declaring)
      if (value >= maximum) {
        maximum := value;
      };
    };
    return(maximum)
  };

  // challenge 9 - from solution 
  // Write a function remove_from_array that takes 2 parameters : an array of natural numbers and a natural number n and returns a new array where all occurences of n have been removed (order should remain unchanged).
  // dfx canister call day_1 remove_from_array '(vec {7;2;3;7}, 7)'
  // (vec { 2 : nat; 3 : nat })
  public func remove_from_array (array : [Nat], n : Nat) : async [Nat] {  // need to use/import Array library
    var new_array : [Nat] = [];
    for (vals in array.vals()){
      if (vals != n){
        new_array := Array.append<Nat>(new_array, [vals]);
      };
    };
    return (new_array);
  };


  // challenge 10 - from solution - still confuse!!!
  // Implement a function selection_sort that takes an array of natural numbers and returns the sorted array .
  // dfx canister call day_1 selection_sort '(vec {5;1;7;7;2;3})'
  // (vec { 1 : nat; 2 : nat; 3 : nat; 5 : nat; 7 : nat; 7 : nat })

  private func _swap (array : [Nat], i : Nat, j : Nat) : [Nat] {
    // Transform our immutable array into a mutable one so we can modify values.
    let mutable_array = Array.thaw<Nat>(array);
    let tmp = array[i];
    mutable_array[i] := mutable_array[j];
    mutable_array[j] := tmp;
    // Transform our mutable array into an immutable array.
    return(Array.freeze<Nat>(mutable_array));
  };

  public func selection_sort (array : [Nat]) : async [Nat] {  // need to use/import Iter libraby
    var sorted = array;
    let size = array.size();
    // First loop
    for(i in Iter.range(0, size - 1)){
      var index_minimum = i;
      // Second loop to determine the minimum in the sub array
      for(j in Iter.range(i, size - 1)){
        if(sorted[j] < sorted[index_minimum]){
          index_minimum := j;
        };
      };
    sorted := _swap(sorted, index_minimum, i);
    };  
    return(sorted);
  };  

};
