`timescale 1ns / 1ps

module ram(i_clk, i_rst, i_write_en, i_addr, i_write_data, o_read_data);
    input i_clk, i_rst, i_write_en;
    input [2:0] i_addr;
    input [3:0] i_write_data;
    output reg [3:0] o_read_data;
    
    reg [3:0] mem [0:7];
    
    always @ (posedge i_clk) begin
        if(i_rst) begin
            mem[0]<= 4'b0;
            mem[1]<= 4'b0;
            mem[2]<= 4'b0;
            mem[3]<= 4'b0;
            mem[4]<= 4'b0;
            mem[5]<= 4'b0;
            mem[6]<= 4'b0;
            mem[7]<= 4'b0;
        end 
        else begin
            if(i_write_en)
                mem[i_addr] <= i_write_data;
            else
                o_read_data <= mem[i_addr];
            end
        end
            
endmodule
