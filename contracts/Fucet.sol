// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Faucet {
    // function withdraw(uint _amount) public {
    //     // users can only withdraw .1 ETH at a time, feel free to change this!
    //     require(_amount <= 100000000000000000);
    //     payable(msg.sender).transfer(_amount);
    // }
    function withdraw(uint _amount) public {
        // users can only withdraw 0.0001 ETH at a time
        require(
            _amount <= 100000000000000,
            "Withdrawal amount exceeds the limit of 0.0001 ETH"
        );
        payable(msg.sender).transfer(_amount);
    }

    // fallback function
    receive() external payable {}
}
