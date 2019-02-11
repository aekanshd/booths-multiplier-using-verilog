module tb;
wire signed [15:0] z;
reg signed [7:0] a,b;


boothmul my_booth(.a(a),.b(b),.c(z));

initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial
begin
$monitor($time,"       ",a," *",b," = ", z);

a = 8'b11110000;
b = 8'b11110000;

#10

a = 8'b10010101;
b = 8'b100000;

#10

a = 8'b0111;
b = 8'b0;

#10

b = 8'b1;
a = 8'b1;

#10  

a = 8'b00111100;
b = 8'b0101;

#10

a = 8'b10101010;
b = 8'b100011;

#10

a = 8'b010001;
b = 8'b11100;

#10
a = 8'b1000;
b = 8'b10111111;

end
endmodule
