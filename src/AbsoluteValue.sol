// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract AbsoluteValue{

  function main(int256 x) external pure returns (uint256) {
      assembly {
          if slt(x,0){
            x := sub(0,x)
          }
          mstore(0x00,x)
          return(0x00,0x20)
      }
  }
}
