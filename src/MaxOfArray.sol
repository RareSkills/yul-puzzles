// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract MaxOfArray {
    function main(uint256[] memory arr) external pure returns (uint256) {
        assembly {
            // your code here
            // return the maximum value in the array
            // revert if array is empty
            let result :=0
            result:= mload(arr)
            if iszero(result){
                revert(0,0)
            }
            let largest := mload(add(arr,0x20))
            for {let i:=1} lt(i,result){i:=add(i,1)}{
                let value:=mload(add(arr,mul(0x20,i)))
                if gt(largest,value){
                    largest:=value
                }
            }
            mstore(0x00,largest)
            return(0x00,0x20)
        }
    }
}
