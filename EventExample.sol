// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {
    event ValueChanged(address indexed sender, uint oldValue, uint newValue);

    uint public value;

    function setValue(uint _newValue) public {
        emit ValueChanged(msg.sender, value, _newValue);
        value = _newValue;
    }
}