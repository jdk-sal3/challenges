import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";

actor {

  // ----------------------------------------------------------------------------------
  // Challenge 1
  // Write a function nat_to_nat8 that converts a Nat n to a Nat8. Make sure that your function never trap.
  // dfx canister call day_2 nat_to_nat8 '(25)'
  // (25 : nat)

  public func nat_to_nat8 (n : Nat) : async Nat8 {
    if (n > 255) {
      return 0
    };
    return (Nat8.fromNat(n))
  };

  // ----------------------------------------------------------------------------------
  // Challenge 2
  // Write a function max_number_with_n_bits that takes a Nat n and returns the maximum number than can be represented with only n-bits.
  // dfx canister call day_2 max_number_with_n_bits '(8)'
  // (255 : nat)

  public func max_number_with_n_bits (n : Nat) : async Nat {
    return ((2 ** n) - 1);
  };

  // ----------------------------------------------------------------------------------
  // Challenge 3
  // Write a function decimal_to_bits that takes a Nat n and returns a Text corresponding to the binary representation of this number. 
  // 
  // 
  public func decimal_to_bits(n : Nat) : async Text {
    var decimal : Nat = n / 2;
    var binary : Text := Nat.toText(dec % 2);
  


  // ----------------------------------------------------------------------------------
  // Challenge 4
  // Write a function capitalize_character that takes a Char c and returns the capitalized version of it.
  // 
  //
  public func capitalize_character () : async Text {
    let c : Char = "c";


  } 



};