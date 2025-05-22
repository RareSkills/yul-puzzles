# Yul Puzzles by RareSkills

## How to play
Open `src/ReturnBool.sol` and `test/ReturnBool.t.sol`. Your goal is to write assembly code in each puzzle that makes the test pass. You may only write assembly code.

Run the test with 

```shell
make test file=ReturnBool
```

```shell
forge test --mp test/ReturnBool.t.sol
```

Now repeat this with the other puzzles.


## Suggested order of the Puzzles
Go through the puzzles sequentially 


0.	(_solved_) [ReturnBool](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnBool.sol)
1.	(_solved_) [SimpleRevert](https://github.com/RareSkills/yul-puzzles/blob/main/src/SimpleRevert.sol)
2.	(_solved_) [RevertWithSelector](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithSelector.sol)
3.	(_solved_) [Return42](https://github.com/RareSkills/yul-puzzles/blob/main/src/Return42.sol)
4.	(_solved_) [RevertWithError](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithError.sol)
5.	(_solved_) [RevertWithSelectorPlusArgs](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithSelectorPlusArgs.sol)
6.	(_solved_) [RevertWithPanic](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithPanic.sol)
7.	(_solved_) [Double](https://github.com/RareSkills/yul-puzzles/blob/main/src/Double.sol) 
8.	(_solved_) [Calculator](https://github.com/RareSkills/yul-puzzles/blob/main/src/Calculator.sol) 
9.	(_solved_) [DoubleOrNothing](https://github.com/RareSkills/yul-puzzles/blob/main/src/DoubleOrNothing.sol) 
10.	(_solved_) [MaxOfTwoValues](https://github.com/RareSkills/yul-puzzles/blob/main/src/MaxOfTwoValues.sol) 
11.	(_solved_) [IsPrime](https://github.com/RareSkills/yul-puzzles/blob/main/src/IsPrime.sol) 
12.	(_solved_) [CalldataLength](https://github.com/RareSkills/yul-puzzles/blob/main/src/CalldataLength.sol) 
13.	(_solved_) [KeccakX](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakX.sol) 
14.	(_solved_) [KeccakFirstCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakFirstCalldata.sol) 
15.	(_solved_) [KeccakSecondCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakSecondCalldata.sol) 
16.	(_solved_) [LengthOfDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/LengthOfDynamicArray.sol) 
17.	(_solved_) [MaxOfArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/MaxOfArray.sol) 
18.	(_solved_) [ReadFromStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromStorage.sol) 
19.	(_solved_) [WriteToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToStorage.sol) 
20.	(_solved_) [ReadFromFixedArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromFixedArray.sol) 
21.	(_solved_) [Tenary](https://github.com/RareSkills/yul-puzzles/blob/main/src/Tenary.sol) 
22.	(_solved_) [WriteToFixedArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToFixedArray.sol) 
23.	(_solved_) [ReadFromDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDynamicArray.sol) 
24.	(_solved_) [WriteToDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToDynamicArray.sol) 
25.	(_solved_) [ReadFromMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromMapping.sol) 
26.	(_solved_) [WriteToMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToMapping.sol) 
27.	(_solved_) [PushToDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/PushToDynamicArray.sol) 
28.	(_solved_) [PopFromDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/PopFromDynamicArray.sol) 
29.	(_solved_) [ReadFromDoubleMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDoubleMapping.sol) 
30.	(_solved_) [ReadFromDynamicArrayAndRevertOnFailure](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDynamicArrayAndRevertOnFailure.sol) 
31.	(_solved_) [WriteToDoubleMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToDoubleMapping.sol) 
32.	(_solved_) [WriteDynamicArrayToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteDynamicArrayToStorage.sol) 
33.	(_solved_) [WriteTwoDynamicArraysToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteTwoDynamicArraysToStorage.sol) 
34.	(_solved_)  [ReadFromPacked128](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromPacked128.sol) 
35.	(_solved_) [WriteToPacked128](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPacked128.sol) 
36.	(_solved_) [ReadFromPacked64](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromPacked64.sol) 
37.	(_solved_) [WriteToPacked64](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPacked64.sol) 
38.	(_solved_) [WriteToPackedDynamicArray64](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPackedDynamicArray64.sol) 
39.	[ReadFromMappingInStruct](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromMappingInStruct.sol) 
40.	[EventWithoutData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithoutData.sol) 
41.	[EventWithData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithData.sol) 
42.	[EventWithIndexedData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithIndexedData.sol) 
43.	[EventWithMultipleData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithMultipleData.sol) 
44.	[AnonymonusEventWithoutData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithoutData.sol) 
45.	[AnonymonusEventWithData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithData.sol) 
46.	[AnonymonusEventWithIndexedData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithIndexedData.sol) 
47.	[AnonymonusEventWithComplexData](https://github.com/RareSkills/yul-puzzles/blob/main/src/AnonymonusEventWithComplexData.sol) 
48.	[EventWithComplexData](https://github.com/RareSkills/yul-puzzles/blob/main/src/EventWithComplexData.sol) 
49.	[BatchEvents](https://github.com/RareSkills/yul-puzzles/blob/main/src/BatchEvents.sol) 
50.	[CalculatorInFallback](https://github.com/RareSkills/yul-puzzles/blob/main/src/CalculatorInFallback.sol)
51. [ReturnOppositeBool](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnOppositeBool.sol)
52. [ReturnTwoBools](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTwoBools.sol)
53. [ReturnArrayOfUint256](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnArrayOfUint256.sol)
54. [ReturnString](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnString.sol)
55. [ReturnBytes](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnBytes.sol)
56. [FizzBuzz](https://github.com/RareSkills/yul-puzzles/blob/main/src/FizzBuzz.sol)
57. [ReturnTupleOfString](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTupleOfString.sol)
58. [ReturnSimpleStruct](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnSimpleStruct.sol)
59. [ReturnTupleOfUint256String](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTupleOfUint256String.sol)
60. [ReturnTupleOfStringUnit256](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnTupleOfStringUnit256.sol)
61. [SendEther](https://github.com/RareSkills/yul-puzzles/blob/main/src/SendEther.sol)
62. [SendAllEther](https://github.com/RareSkills/yul-puzzles/blob/main/src/SendAllEther.sol)
63. [PaymentSplitter](https://github.com/RareSkills/yul-puzzles/blob/main/src/PaymentSplitter.sol)
64. [SendBack](https://github.com/RareSkills/yul-puzzles/blob/main/src/SendBack.sol)