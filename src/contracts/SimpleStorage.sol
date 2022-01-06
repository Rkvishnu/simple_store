// // SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

// Store a signal dat point and allow fetching /updating of that datapoints


contract SimpleStore
{
    //data points

    string public storedData;
    event myEventTest(string evenOutput);
    function set (string memory myText) public {
        storedData = myText;
        emit myEventTest(myText);
    }

    function get() public view returns (string memory)
    {
        return storedData;
    }
}