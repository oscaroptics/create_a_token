//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Together{
    string public TokenName;
    string public TokenAbbr;
    uint public TotalSuppply;

    constructor(){
        TokenName = "OSCAR";
        TokenAbbr = "OSC";
    }

    mapping (address => uint) public balances;

    function mint(address userAdress, uint value)  public {
        TotalSuppply = TotalSuppply + value;
        balances[userAdress] = balances[userAdress] + value;
    }

    function burn(address userAddress, uint value) public {
        require(balances[userAddress]>=value);
        TotalSuppply = TotalSuppply-value;
        balances[userAddress] = balances[userAddress]-value;
    }
}
