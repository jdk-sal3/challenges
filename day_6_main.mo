// day_6
actor {

  // ----------------------------------------------------------------------------------
  // Challenge 1
  // Create an actor in main.mo and declare the following types.
  //  - TokenIndex of type Nat.
  //  - Error which is a variant type with multiples tags :

  type TokenIndex = Nat;
  type Error = {
    #error1;
    #error2;
  };


  // ----------------------------------------------------------------------------------
  // Challenge 2
  // Declare an HashMap called registry with Key of type TokenIndex and value of type Principal. This will keeep track of which principal owns which TokenIndex.



  // ----------------------------------------------------------------------------------
  // Challenge 3
  // Declare a variable of type Nat called nextTokenIndex, initialized at 0 that will keep track of the number of minted NFTs.
  // Write a function called mint that takes no argument.
  // This function should :
  //  Returns a result of type Result and indicate an error in case the caller is anonymous.
  // If the user is authenticated : associate the current TokenIndex with the caller (use the HashMap we've created) and increase nextTokenIndex.
  


  // ----------------------------------------------------------------------------------
  // Challenge 4
  // Write a function called transfer that takes two arguments :
  // - to of type Principal.
  // - tokenIndex of type Nat.



  // ----------------------------------------------------------------------------------
  // Challenge 5
  // Write a function called balance that takes no arguments but returns a list of tokenIndex owned by the called.


  // ----------------------------------------------------------------------------------
  // Challenge 6
  // Write a function called http_request that should return a message indicating the number of nft minted so far and the principal of the latest minter
  // 
  // 




  // ----------------------------------------------------------------------------------
  // Challenge 7
  // Modify the actor so that you can safely upgrade it without loosing any state.
  // 
  // 



}