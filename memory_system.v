module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

wire [7:0] m0, m1, m2, m3;
wire [7:0] s0, s1, s2, s3;

    byte_memory cir1(
     .data(data),
     .store(s0),
     .memory(m0)
    );
    
    
    byte_memory cir2(
     .data(data),
     .store(s1),
     .memory(m1)
    );
    
    byte_memory cir3(
     .data(data),
     .store(s2),
     .memory(m2)
    );
    
    byte_memory cir4(
     .data(data),
     .store(s3),
     .memory(m3)
    );
    
    assign s0 = ((addr == 0) ? store : 0);
    assign s1 =  ((addr == 1) ? store : 0);
    assign s2 =  ((addr == 2) ? store : 0);
    assign s3 =  ((addr == 3) ? store : 0);
    
    
    assign memory = 
                     (addr == 0) ? m0 :
                     (addr == 1) ? m1 :
                     (addr == 2) ? m2 :
                     (addr == 3) ? m3 : 0;




endmodule
