// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract modificador {
    address public dono = msg.sender;
    uint restrita;

    modifier onlyOwner () {
        require(msg.sender == dono);
        _;
    }

    function setRestrita (uint _valor) public onlyOwner{
        restrita = _valor;
    }
}
