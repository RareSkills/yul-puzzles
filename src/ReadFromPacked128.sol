// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReadFromPacked128 {
    uint128 someValue;
    uint128 readMe;

    function setValue(uint128 v1, uint128 v2) external {
        someValue = v1;
        readMe = v2;
    }

    function main() external view returns (uint256) {
        assembly {
            // your code here
            // unpack and read data from the storage variable `readMe` of type uint128
            // then return it
            mstore(0x0, shr(128, sload(readMe.slot)))
            return(0x0, 0x20)
        }
    }
}
