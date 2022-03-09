import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Char "mo:base/Char";

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
  
  /*
  public func decimal_to_bits(n : Nat) : async Text {
    var decimal : Nat = n / 2;
    var binary : Text := Nat.toText(dec % 2);

  */  
  
  // ----------------------------------------------------------------------------------
  // Challenge 4
  // Write a function capitalize_character that takes a Char c and returns the capitalized version of it.
  // 
  //

  /*
  public func capitalize_character () : async Text {
    let c : Char = "c";


  } 
  */

  // ----------------------------------------------------------------------------------
  // Challenge 5
  // 
  // 
  //



  // ----------------------------------------------------------------------------------
  // Challenge 6
  // 
  // 
  //


  // ----------------------------------------------------------------------------------
  // Challenge 7
  // Write a function trim_whitespace that takes a text t and returns the trimmed version of t. Note : Trim means removing any leading and trailing spaces from the text : trim_whitespace(" Hello ") -> "Hello".
  // dfx canister call day_2 trim_whitespace '(" He l lo ")'
  // ("Hello")

	public func trim_whitespace(t : Text) : async Text {
		let no_whitespace: Text = Text.replace(t, #text(" "),"");
		return no_whitespace;
	};

  // ----------------------------------------------------------------------------------
  // Challenge 8
  //
  // 
  //


  // ----------------------------------------------------------------------------------
  // Challenge 9
  //
  // 
  //


      
  // ----------------------------------------------------------------------------------
  // Challenge 10
  // 
  // 
  //







};