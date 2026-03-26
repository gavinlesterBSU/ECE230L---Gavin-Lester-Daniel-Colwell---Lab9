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
We started the lab as usual , listening to the instructions at the front of the room. We then opened the project in verilog, importing all of the right things, such as the Basys 3 board. We then made  D latch script, and following the given notes, we wrote in the always loop in the D latch script, and fixed a few errors along the way. We then gpot stuck for a bit and then found pout just how helpful the guide was for writing each
individual component of the memory system. We forgot that it was all supposed to be within a single file, and that led to more problems, which were caught and corrected by a TA. He also helped us put all of the necessary components of the meomory system into that single file. We then went through the process of shifting variables and names for modules around in order for it to make sense. We got lost and missed a few connections in the verilog code between the second demux and the bytes, meaning there was no storage... and after looking around for a while and asking questions we figured it out! We then generated the bitstream, implemeted the basys 3 board, and ran the tests, finishing the lab.
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







module byte_memory(
    input [7:0] data,
    input store,
    output [7:0] memory
);

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : latch_array
            d_latch d(
                .D(data[i]),
                .E(store),      // SAME enable for all
                .Q(memory[i]),
                .NotQ()
            );
        end
    endgenerate

endmodule
