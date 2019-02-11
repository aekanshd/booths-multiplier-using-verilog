module tb;
wire signed [7:0] z;
reg signed [3:0] a,b;


boothmul my_booth(.a(a),.b(b),.c(z));

initial begin $dumpfile("tb_boothsalgo.vcd"); $dumpvars(0,tb); end

initial
begin
$monitor($time,"       ",a," *",b," = ", z);

a = 4'b1100;
b = 4'b1100;

#10

a = 4'b1111;
b = 4'b1111;

#10

a = 4'b011;
b = 4'b0;

#10

b = 4'b1;
a = 4'b1;

#10  

a = 4'b0011;
b = 4'b0101;

#10

a = 4'b1011;
b = 4'b1001;

#10

a = 4'b0100;
b = 4'b1110;

#10
a = 4'b1000;
b = 4'b1011;

end
endmodule
