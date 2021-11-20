// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MyContract {
  string public hello = "Hola desde la bloackchain!";

  function setHello(string memory _hello) public {
    hello = _hello;
  }
}
