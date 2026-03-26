# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Daniel Colwell & Gavin Lester
## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Latches rely on feedback loops, where the outputs get sent to the inputs. Structural verilog deals with explicit connections, 
but latches need behavioural connections to be carried out safely / efficiently; Which behavioral Veriog does quite well.
### What is the meaning of always @(*) in a sensitivity block?
"always @(*)" means that the block it is on will always update whenever any new input is added, or in other words, 
if the input signal in the block ever changes. This makes sure the blocks update whenever an output is sent to an input. 
### What importance is memory to digital circuits?
Since memory allows digital circuits to store and remember information, it allows them to carry out much more meaningful
and complicated processes. They become capable of holding states, and can carry out actions past purely combinational logic.
