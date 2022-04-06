// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

contract HotelRoom {
    enum Statuses { Vacant, Occupied }
    Statuses curStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

    // owner가 payable하게 하겠다는 소리

    // constructor 객체 생성자
    // sender한 사람에게 주겠다

    constructor() public {
        owner = msg.sender;
        curStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        // Check Status
        require(curStatus == Statuses.Vacant, "Currently occupied.");
        _; // modifier는 _; 으로 끝난다.  현재 contrat의 상태변수 가능 여부를 사전에 체크 
    }

    modifier costs (uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provider.");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {  //receive를 통해 metamask와 같은 지갑과 연동이 가능하다
        curStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value); //위에서 선언한 Occupy
    }
}


// 결국 modifier의 함수 연결을 이해하는것 
