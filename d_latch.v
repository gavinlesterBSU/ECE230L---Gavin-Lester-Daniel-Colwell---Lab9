module d_latch(
    input D, E,
    output reg Q, NotQ
);

    always @(D) begin 
        if (E)
             Q <= D; 
             
        NotQ <= ~Q;
        
    end

    

endmodule
