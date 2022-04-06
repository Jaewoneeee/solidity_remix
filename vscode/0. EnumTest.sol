pragma solidity ^0.4.19;

contract test {
    enum ActionChoices {GoLeft, GoRight, GoStraight, SitStill} // 함수처럼 처리라 ; 생략
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() public {
        choice = ActionChoices.GoStraight;
    }

    function getChoice() public view returns (ActionChoices) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}