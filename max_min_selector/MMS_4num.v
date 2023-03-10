module MMS_4num(result, select, number0, number1, number2, number3);

input        select;
input  [7:0] number0;
input  [7:0] number1;
input  [7:0] number2;
input  [7:0] number3;
output [7:0] result; 
wire [7:0] w1, w2;

MMS_2num M1(w1, select, number0, number1);
MMS_2num M2(w2, select, number2, number3);
MMS_2num M3(result, select, w1, w2);

endmodule


module MMS_2num(result0, select0, number00, number01);

input        select0;
input  [7:0] number00;
input  [7:0] number01;
output reg [7:0] result0;

always @(number00 or number01)
begin
if (select0)
    result0 = (number00 > number01)? number00: number01;
else
    result0 = (number00 < number01)? number00: number01;
end

endmodule