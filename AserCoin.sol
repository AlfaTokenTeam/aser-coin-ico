pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract AserCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function AserCoin(address _owner)  UpgradeableToken(_owner) {
    name = "AserCoin";
    symbol = "asr";
    totalSupply = 50000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}