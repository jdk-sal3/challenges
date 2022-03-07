actor {

  // ----------------------------------------------------------------------------------
  // challenge 1 
  //  dfx canister call day_1 add '(10,5)'
  //  (15 : nat)

  public func add (n : Nat, m : Nat) : async Nat {
    return (n + m);
  };

  // ----------------------------------------------------------------------------------
  // challenge 2 
  // dfx canister call day_1 square '(10)'
  // (100 : nat)

  public func square (n : Nat) : async Nat {
    return (n * n);
  };

  // ----------------------------------------------------------------------------------
  // challenge 3 
  // dfx canister call day_1 days_to_second '(1)'
  // (86_400 : nat)

  public func days_to_second (n : Nat) : async Nat {
    return (n * 24 * 60 * 60);
  };

  // ----------------------------------------------------------------------------------
  // challenge 4a
  // dfx canister call day_1 increment_counter '(2)'
  // (2 : nat)
  // (4 : nat)

  var counter : Nat = 0;
  public func increment_counter (n : Nat) : async Nat {
    counter += n;
    return (counter);
  };

  public func clear_counter () : async () {
    var counter = 0 : Nat;
  };

  // ----------------------------------------------------------------------------------
  // challenge 5 
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
  // dfx canister call day_1 is_even '(11)'
  // (false)

  public func is_even (n : Nat) : async Bool {
    if (n % 2 == 0) {
      return (true);
    };
    return (false);
  };

  // ----------------------------------------------------------------------------------
  // challenge 7 
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
  // challenge 8 ??????
  // challenge 9 ?????
  // challenge 10 ?????

};
