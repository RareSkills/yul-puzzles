// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract CreateSimple {
    function main(bytes memory deploymentBytecode) external returns (address addr) {
        assembly {
            // your code here
            // create a contract using the deploymentBytecode
            // return the address of the contract
            // hint: use the `create` opcode
            // hint: the bytecode is already in memory
            let byteCodeSize := mload(deploymentBytecode)
            let bytesPtr := add(deploymentBytecode,0x20)
            addr := create(0,bytesPtr,byteCodeSize)
           
            // Check for failure
            if iszero(extcodesize(addr)){
                revert(0, 0)
            }

        }
    }
}
