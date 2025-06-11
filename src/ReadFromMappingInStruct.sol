// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReadFromMappingInStruct {
    struct RandomValues {
        uint256 someValue1;
        uint128 someValue2;
        uint128 someValue3;
        mapping(uint256 index => uint256) readMe;
        uint256 someValue4;
    }

    uint256 someValue5 = 7;
    RandomValues randValues;

    function setValue(uint256 i, uint256 v, uint256 s1, uint128 s2, uint128 s3, uint256 s4, uint256 s5) external {
        randValues.someValue1 = s1;
        randValues.someValue2 = s2;
        randValues.someValue3 = s3;
        randValues.someValue4 = s4;
        randValues.readMe[i] = v;
        someValue5 = s5;
    }

    function main(uint256 index) external view returns (uint256) {
        assembly {
            // your code here
            // within the struct `RandomValues`, read from the mapping `readMe` at `index`
            // and return it
            // Hint: https://www.rareskills.io/post/solidity-dynamic

            mstore(0x00, index)
            mstore(0x20, add(randValues.slot, 2)) // base slot of mapping
            mstore(0x00, keccak256(0x00, 0x40)) // slot for mapping
            mstore(0x00, sload(mload(0x00))) // load the value at the computed slot
            return(0x00, 0x20) // return the value
        }
    }
}
