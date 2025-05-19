// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Double {

  function main(uint256 x) external pure returns (uint256) {
      assembly {
          // your code here
          // return 2 * x using assembly
          // assume x will always be less
          // than half type(uint256).max
          // so it won't overflow
          // hint: x can be directly accessed in assembly

          // see here for how to multiply in YUL: https://docs.soliditylang.org/en/latest/yul.html#evm-dialect
          let result :=mul(x,2)
          mstore(0x00,result)
          return(0x00,0x20)
      }
  }
}
