import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor {

  // ----------------------------------------------------------------------------------
  // Challenge 1
  // Write a function is_anonymous that takes no arguments but returns true is the caller is anonymous and false otherwise.
  // dfx canister call day_5 is_anonymous '()'
  // (true)

  public func is_anonymous(): async Bool{
    let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
    if(whoami == anonymous_principal){
      return true;
    } else {
      return false;
    };
  };  

  public shared({caller}) func whoami() : async Principal {
    return(caller);
  };


  // ----------------------------------------------------------------------------------
  // Challenge 2
  // Create an HashMap called favoriteNumber where the keys are Principal and the value are Nat.
  // dfx canister call day_5 test '()'
  // (opt (125 : nat))

  let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
  let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);
  favoriteNumber.put(anonymous_principal, 125);

  public func test(): async ?Nat {
      return(favoriteNumber.get(Principal.fromText("2vxsx-fae")));
  };


  // ----------------------------------------------------------------------------------
  // Challenge 3
  // Write two functions :
  /*
    add_favorite_number that takes n of type Nat and stores this value in the HashMap where the key is the principal of the caller. This function has no return value.
    show_favorite_number that takes no argument and returns n of type ?Nat, n is the favorite number of the person as defined in the previous function or null if the person hasn't registered.
  */
  // dfx canister call day_5 add_favorite_number '(23)'
  // ()
  // dfx canister call day_5 show_favorite_number '()'
  // (opt (23 : nat))

    public func add_favorite_number(n: Nat): () {
      favoriteNumber.put(anonymous_principal, n);
    };
    
    public func show_favorite_number(): async ?Nat {
      return(favoriteNumber.get(anonymous_principal));
    };


  // ----------------------------------------------------------------------------------
  // Challenge 4
  // Rewrite your function add_favorite_number so that if the caller has already registered his favorite number, the value in memory isn't modified. This function will return a text of type Text that indicates "You've already registered your number" in that case and "You've successfully registered your number" in the other scenario.
  // dfx canister call day_5 add_favorite_number_rewrite '(23)'
  // (opt "You\'ve already registered your number")

  public func add_favorite_number_rewrite (n: Nat): async ?Text {
    var temp: ?Nat = favoriteNumber.get(anonymous_principal);
    if (temp == n) {
      return ?"You've already registered your number";
    } else {
      favoriteNumber.put(anonymous_principal, n);
      return ?"You've successfully registered your number";
    };
  };

  // ----------------------------------------------------------------------------------
  // Challenge 5
  // Write two functions
  // - update_favorite_number
  // - delete_favorite_number 
  // 
  // 





  // ----------------------------------------------------------------------------------
  // Challenge 6
  // 
  // 
  // 




  // ----------------------------------------------------------------------------------
  // Challenge 7
  // 
  // 
  // 



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


}