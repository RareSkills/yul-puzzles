// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Approve {
    // emit these
    function main(address token, uint256 amount) external {
        assembly {
            // your code here
            // approve "token" to spend "amount"
            // hint: approve has function selector 0x095ea7b3 and signature "approve(address,uint256)"
            let ptr := mload(0x40)
            let oldPtr := ptr
            mstore(ptr,0x095ea7b3)
            mstore(add(ptr,0x20),token)
            mstore(add(ptr,0x40),amount)
            mstore(0x40,add(ptr,0x60)) // advance the free memory pointer
            let success := call(gas(),token,0,add(oldPtr,28),mload(0x40),0x00,0x20)
            if iszero(success){
                revert(0,0)
            }
       }
    }
}

