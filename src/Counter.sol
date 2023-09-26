// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;
    string[] public wordList;

    constructor() {
        wordList = [
            'Lorem', 'ipsum', 'dolor', 'sit', 'amet', 
            'consectetur', 'adipiscing', 'elit', 'sed', 'do'
        ];
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function getNum() public view returns (uint256){
        return number;
    }

    function getSlice(uint256 limit) public view returns (string[] memory) {
        require(limit <= wordList.length, "Limit exceeds wordList length");
        string[] memory slicedWords = new string[](limit);
        for (uint256 i = 0; i < limit; i++) {
            slicedWords[i] = wordList[i];
        }
        return slicedWords;
    }
    
}
