# Yul Puzzles by RareSkills

## How to play
Open `src/ReturnBool.sol` and `test/ReturnBool.t.sol`. Your goal is to write assembly code in each puzzle that makes the test pass. You may only write assembly code.

Run the test with

```shell
forge test --mp test/ReturnBool.t.sol
```

Now repeat this with the other puzzles.


## Suggested order of the Puzzles
Go through the puzzles sequentially 


0.	[ReturnBool](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReturnBool.sol) (_solved_)
1.	[SimpleRevert](https://github.com/RareSkills/yul-puzzles/blob/main/src/SimpleRevert.sol) (_solved_)
2.	[RevertWithSelector](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithSelector.sol) (_solved_)
3.	[Return42](https://github.com/RareSkills/yul-puzzles/blob/main/src/Return42.sol) (_solved_)
4.	[RevertWithError](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithError.sol) (_solved_)
5.	[RevertWithSelectorPlusArgs](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithSelectorPlusArgs.sol) (_solved_)
6.	[RevertWithPanic](https://github.com/RareSkills/yul-puzzles/blob/main/src/RevertWithPanic.sol) 
7.	[Double](https://github.com/RareSkills/yul-puzzles/blob/main/src/Double.sol) 
8.	[Calculator](https://github.com/RareSkills/yul-puzzles/blob/main/src/Calculator.sol) 
9.	[DoubleOrNothing](https://github.com/RareSkills/yul-puzzles/blob/main/src/DoubleOrNothing.sol) 
10.	[MaxOfTwoValues](https://github.com/RareSkills/yul-puzzles/blob/main/src/MaxOfTwoValues.sol) 
11.	[IsPrime](https://github.com/RareSkills/yul-puzzles/blob/main/src/IsPrime.sol) 
12.	[CalldataLength](https://github.com/RareSkills/yul-puzzles/blob/main/src/CalldataLength.sol) 
13.	[KeccakX](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakX.sol) 
14.	[KeccakFirstCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakFirstCalldata.sol) 
15.	[KeccakSecondCalldata](https://github.com/RareSkills/yul-puzzles/blob/main/src/KeccakSecondCalldata.sol) 
16.	[LengthOfDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/LengthOfDynamicArray.sol) 
17.	[MaxOfArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/MaxOfArray.sol) 
18.	[ReadFromStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromStorage.sol) 
19.	[WriteToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToStorage.sol) 
20.	[ReadFromFixedArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromFixedArray.sol) 
21.	[Tenary](https://github.com/RareSkills/yul-puzzles/blob/main/src/Tenary.sol) 
22.	[WriteToFixedArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToFixedArray.sol) 
23.	[ReadFromDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDynamicArray.sol) 
24.	[WriteToDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToDynamicArray.sol) 
25.	[ReadFromMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromMapping.sol) 
26.	[WriteToMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToMapping.sol) 
27.	[PushToDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/PushToDynamicArray.sol) 
28.	[PopFromDynamicArray](https://github.com/RareSkills/yul-puzzles/blob/main/src/PopFromDynamicArray.sol) 
29.	[ReadFromDoubleMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDoubleMapping.sol) 
30.	[ReadFromDynamicArrayAndRevertOnFailure](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromDynamicArrayAndRevertOnFailure.sol) 
31.	[WriteToDoubleMapping](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToDoubleMapping.sol) 
32.	[WriteDynamicArrayToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteDynamicArrayToStorage.sol) 
33.	[WriteTwoDynamicArraysToStorage](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteTwoDynamicArraysToStorage.sol) 
34.	[ReadFromPacked128](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromPacked128.sol) 
35.	[WriteToPacked128](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPacked128.sol) 
36.	[ReadFromPacked64](https://github.com/RareSkills/yul-puzzles/blob/main/src/ReadFromPacked64.sol) 
37.	[WriteToPacked64](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPacked64.sol) 
38.	[WriteToPackedDynamicArray64](https://github.com/RareSkills/yul-puzzles/blob/main/src/WriteToPackedDynamicArray64.sol) 
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