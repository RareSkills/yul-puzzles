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

0.	[ReturnBool](./src/ReturnBool.sol) (_solved_)
1.	[SimpleRevert](./src/SimpleRevert.sol)
2.	[RevertWithSelector](./src/RevertWithSelector.sol)
3.	[Return42](./src/Return42.sol) 
4.	[RevertWithError](./src/RevertWithError.sol) 
5.	[RevertWithSelectorPlusArgs](./src/RevertWithSelectorPlusArgs.sol) 
6.	[RevertWithPanic](./src/RevertWithPanic.sol) 
7.	[Double](./src/Double.sol) 
8.	[Calculator](./src/Calculator.sol) 
9.	[DoubleOrNothing](./src/DoubleOrNothing.sol) 
10.	[MaxOfTwoValues](./src/MaxOfTwoValues.sol) 
11.	[IsPrime](./src/IsPrime.sol) 
12.	[CalldataLength](./src/CalldataLength.sol) 
13.	[KeccakX](./src/KeccakX.sol) 
14.	[KeccakFirstCalldata](./src/KeccakFirstCalldata.sol) 
15.	[KeccakSecondCalldata](./src/KeccakSecondCalldata.sol) 
16.	[LengthOfDynamicArray](./src/LengthOfDynamicArray.sol) 
17.	[MaxOfArray](./src/MaxOfArray.sol) 
18.	[ReadFromStorage](./src/ReadFromStorage.sol) 
19.	[WriteToStorage](./src/WriteToStorage.sol) 
20.	[ReadFromFixedArray](./src/ReadFromFixedArray.sol) 
21.	[Tenary](./src/Tenary.sol) 
22.	[WriteToFixedArray](./src/WriteToFixedArray.sol) 
23.	[ReadFromDynamicArray](./src/ReadFromDynamicArray.sol) 
24.	[WriteToDynamicArray](./src/WriteToDynamicArray.sol) 
25.	[ReadFromMapping](./src/ReadFromMapping.sol) 
26.	[WriteToMapping](./src/WriteToMapping.sol) 
27.	[PushToDynamicArray](./src/PushToDynamicArray.sol) 
28.	[PopFromDynamicArray](./src/PopFromDynamicArray.sol) 
29.	[ReadFromDoubleMapping](./src/ReadFromDoubleMapping.sol) 
30.	[ReadFromDynamicArrayAndRevertOnFailure](./src/ReadFromDynamicArrayAndRevertOnFailure.sol) 
31.	[WriteToDoubleMapping](./src/WriteToDoubleMapping.sol) 
32.	[WriteDynamicArrayToStorage](./src/WriteDynamicArrayToStorage.sol) 
33.	[WriteTwoDynamicArraysToStorage](./src/WriteTwoDynamicArraysToStorage.sol) 
34.	[ReadFromPacked128](./src/ReadFromPacked128.sol) 
35.	[WriteToPacked128](./src/WriteToPacked128.sol) 
36.	[ReadFromPacked64](./src/ReadFromPacked64.sol) 
37.	[WriteToPacked64](./src/WriteToPacked64.sol) 
38.	[WriteToPackedDynamicArray64](./src/WriteToPackedDynamicArray64.sol) 
39.	[ReadFromMappingInStruct](./src/ReadFromMappingInStruct.sol) 
40.	[EventWithoutData](./src/EventWithoutData.sol) 
41.	[EventWithData](./src/EventWithData.sol) 
42.	[EventWithIndexedData](./src/EventWithIndexedData.sol) 
43.	[EventWithMultipleData](./src/EventWithMultipleData.sol) 
44.	[AnonymonusEventWithoutData](./src/AnonymonusEventWithoutData.sol) 
45.	[AnonymonusEventWithData](./src/AnonymonusEventWithData.sol) 
46.	[AnonymonusEventWithIndexedData](./src/AnonymonusEventWithIndexedData.sol) 
47.	[AnonymonusEventWithComplexData](./src/AnonymonusEventWithComplexData.sol) 
48.	[EventWithComplexData](./src/EventWithComplexData.sol) 
49.	[BatchEvents](./src/BatchEvents.sol) 
50.	[CalculatorInFallback](./src/CalculatorInFallback.sol)
51. [ReturnOppositeBool](./src/ReturnOppositeBool.sol)
52. [ReturnTwoBools](./src/ReturnTwoBools.sol)
53. [ReturnArrayOfUint256](./src/ReturnArrayOfUint256.sol)
54. [ReturnString](./src/ReturnString.sol)
55. [ReturnBytes](./src/ReturnBytes.sol)
56. [FizzBuzz](./src/FizzBuzz.sol)
57. [ReturnTupleOfString](./src/ReturnTupleOfString.sol)
58. [ReturnSimpleStruct](./src/ReturnSimpleStruct.sol)
59. [ReturnTupleOfUint256String](./src/ReturnTupleOfUint256String.sol)
60. [ReturnTupleOfStringUnit256](./src/ReturnTupleOfStringUnit256.sol)
61. [SendEther](./src/SendEther.sol)
62. [SendAllEther](./src/SendAllEther.sol)
63. [PaymentSplitter](./src/PaymentSplitter.sol)
64. [SendBack](./src/SendBack.sol)
65. [BasicBank](./src/BasicBank.sol)
66. [SimpleCall](./src/SimpleCall.sol)
67. [SimpleCallWithValue](./src/SimpleCallWithValue.sol)
68. [Approve](./src/Approve.sol)
69. [TransferFrom](./src/TransferFrom.sol)
70. [BalanceOf](./src/BalanceOf.sol)
71. [CreateSimple](./src/CreateSimple.sol)
72. [CreateSimplePayable](./src/CreateSimplePayable.sol)
73. [CreateSimpleCalldata](./src/CreateSimpleCalldata.sol)
74. [DeployOneByte](./src/DeployOneByte.sol)
75. [DeployNBytes](./src/DeployNBytes.sol)
76. [SquareRoot](./src/SquareRoot.sol)
77. [Division](./src/Division.sol)
78. [AbsoluteValue](./src/AbsoluteValue.sol)
79. [SetBit](./src/SetBit.sol)
80. [Log2](./src/Log2.sol)

## Acknowledgement
This work was funded by a [grant from the Ethereum Foundation](https://blog.ethereum.org/2025/02/06/allocation-q4-24#:~:text=Set%20of%2080%20puzzles%20for%20players%20to%20become%20comfortable%20with%20writing%20Yul%20assembly%20where%20players%20fill%20out%20a%20code%20block%20and%20see%20if%20the%20unit%20tests%20pass.).
