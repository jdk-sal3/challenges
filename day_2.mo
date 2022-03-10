import Nat32 "mo:base/Nat32";
import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Array "mo:base/Array";
import Blob "mo:base/Blob";


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
  // dfx canister call day_2 decimal_to_bits '(255)'
  // ("11111111")
  
  public func decimal_to_bits(n : Nat) : async Text {
    var bits : Text = "";
    var m: Nat = n; 
 
    while(m > 0){
      bits := Nat.toText(m % 2) # bits;
      m := m / 2;
    };
    return(bits);
  }; 
  
  // ----------------------------------------------------------------------------------
  // Challenge 4 and 5 - from solution
  // 4. Write a function capitalize_character that takes a Char c and returns the capitalized version of it.
  // 5. Write a function capitalize_text that takes a Text t and returns the capitalized version of it.
  // dfx canister call day_2 capitalize_text '("c")' // or '("some_text")'
  // ("C") // ("some_text")

  func _capitalize_character(char : Char) : Char {
        let unicode_value = Char.toNat32(char);
        if(unicode_value >= 97 or unicode_value <= 122){
            return(Char.fromNat32(unicode_value - 32))
        } else {
            return (Char.fromNat32(unicode_value));
        };
    };
    public func capitalize_text(word : Text) : async Text {
        var new_word : Text = "";
        for(char in word.chars()){
            new_word #= Char.toText(_capitalize_character(char));
        };
        return new_word;
    };

  // ----------------------------------------------------------------------------------
  // Challenge 6 - from solution
  // Write a function is_inside that takes two arguments : a Text t and a Char c and returns a Bool indicating if c is inside t .
  // dfx canister call day_2 is_inside '("something", "t")'
  // (true)

  public func is_inside(t : Text, l : Text) : async Bool {
    let p = #text(l);
    return(Text.contains(t, p));
  };


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
  // Write a function duplicated_character that takes a Text t and returns the first duplicated character in t converted to Text. Note : The function should return the whole Text if there is no duplicate character : duplicated_character("Hello") -> "l" & duplicated_character("World") -> "World".
  // 
  //



  // ----------------------------------------------------------------------------------
  // Challenge 9 - from solution
  // Write a function size_in_bytes that takes Text t and returns the number of bytes this text takes when encoded as UTF-8.
  // dfx canister call day_2 size_in_bytes '("Hello")'
  // (5 : nat)

    public func size_in_bytes (t : Text) : async Nat {
        let utf_blob = Text.encodeUtf8(t);
        let array_bytes = Blob.toArray(utf_blob);
        return(array_bytes.size()); 
    };
      
  // ----------------------------------------------------------------------------------
  // Challenge 10
  // Implement a function bubble_sort that takes an array of natural numbers and returns the sorted array .
  // dfx canister call day_2 size_in_bytes '(vec {2;4;6;8;3;5;7;9})'
  //

};