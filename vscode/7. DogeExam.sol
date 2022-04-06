 // SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract Doge {
    //public은 노출시키는것!
    function catchphrase() public returns (string memory) {
        return "So Wow Crypto Doge - Musk";
    }
}

// babydoge에서 doge를 상속받기 때문에 deploy후 babydoge를 contract하면 둘다 나온다
contract BabyDoge is Doge {
    function wowCatchPhrase() public returns (string memory) {
        return "Such Moon Babydonge";
    }
}