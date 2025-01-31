// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Return42 {

  function main() external pure returns (uint256) {
      assembly {
          // your code here
          // return 42 in decimal
          // hint: return works the same way as revert
          // simply replace `revert(start, len)` with
          // `return(start, len)`
          // hint: you need to return 32 bytes of size
          // even though the returned value is 42
          // https://www.rareskills.io/post/assembly-revert

          mstore(0x00, 0x2A)
          return(0x00, 0x20)
      }
  }
}
