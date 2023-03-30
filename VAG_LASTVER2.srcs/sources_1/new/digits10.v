`timescale 1ns / 1ps
module digits10_case(
  
  input [5:0] digit,
  input [2:0] yofs,
  input clk,
  output reg [7:0] bits);

  wire [8:0] caseexpr = {digit,yofs};
  
  always @(posedge clk)
    case (caseexpr)
      9'o00: bits <= 8'b11111;
      9'o01: bits <= 8'b10001;
      9'o02: bits <= 8'b10001;
      9'o03: bits <= 8'b10001;
      9'o04: bits <= 8'b11111;

      9'o10: bits <= 8'b01100;
      9'o11: bits <= 8'b00100;
      9'o12: bits <= 8'b00100;
      9'o13: bits <= 8'b00100;
      9'o14: bits <= 8'b11111;

      9'o20: bits <= 8'b11111;
      9'o21: bits <= 8'b00001;
      9'o22: bits <= 8'b11111;
      9'o23: bits <= 8'b10000;
      9'o24: bits <= 8'b11111;
      
      9'o30: bits <= 8'b11111;
      9'o31: bits <= 8'b00001;
      9'o32: bits <= 8'b11111;
      9'o33: bits <= 8'b00001;
      9'o34: bits <= 8'b11111;

      9'o40: bits <= 8'b10001;
      9'o41: bits <= 8'b10001;
      9'o42: bits <= 8'b11111;
      9'o43: bits <= 8'b00001;
      9'o44: bits <= 8'b00001;

      9'o50: bits <= 8'b11111;
      9'o51: bits <= 8'b10000;
      9'o52: bits <= 8'b11111;
      9'o53: bits <= 8'b00001;
      9'o54: bits <= 8'b11111;

      9'o60: bits <= 8'b11111;
      9'o61: bits <= 8'b10000;
      9'o62: bits <= 8'b11111;
      9'o63: bits <= 8'b10001;
      9'o64: bits <= 8'b11111;

      9'o70: bits <= 8'b11111;
      9'o71: bits <= 8'b00001;
      9'o72: bits <= 8'b00001;
      9'o73: bits <= 8'b00001;
      9'o74: bits <= 8'b00001;

      9'o100: bits <= 8'b11111;
      9'o101: bits <= 8'b10001;
      9'o102: bits <= 8'b11111;
      9'o103: bits <= 8'b10001;
      9'o104: bits <= 8'b11111;

      9'o110: bits <= 8'b11111;
      9'o111: bits <= 8'b10001;
      9'o112: bits <= 8'b11111;
      9'o113: bits <= 8'b00001;
      9'o114: bits <= 8'b11111;
      
      9'o120: bits <= 8'b00100;
      9'o121: bits <= 8'b01010;
      9'o122: bits <= 8'b10001;
      9'o123: bits <= 8'b11111;
      9'o124: bits <= 8'b10001;
      
      9'o130: bits <= 8'b10000;
      9'o131: bits <= 8'b10000;
      9'o132: bits <= 8'b11111;
      9'o133: bits <= 8'b10001;
      9'o134: bits <= 8'b11111;
      
      9'o140: bits <= 8'b11111;
      9'o141: bits <= 8'b10000;
      9'o142: bits <= 8'b10000;
      9'o143: bits <= 8'b10000;
      9'o144: bits <= 8'b11111;

      9'o150: bits <= 8'b00001;
      9'o151: bits <= 8'b00001;
      9'o152: bits <= 8'b11111;
      9'o153: bits <= 8'b10001;
      9'o154: bits <= 8'b11111;
 
      9'o160: bits <= 8'b11111;
      9'o161: bits <= 8'b10000;
      9'o162: bits <= 8'b11111;
      9'o163: bits <= 8'b10000;
      9'o164: bits <= 8'b11111;
      //F
      9'o170: bits <= 8'b11111;
      9'o171: bits <= 8'b10000;
      9'o172: bits <= 8'b11111;
      9'o173: bits <= 8'b10000;
      9'o174: bits <= 8'b10000;
      //R
      9'o200: bits <= 8'b11111;
      9'o201: bits <= 8'b10001;
      9'o202: bits <= 8'b11111;
      9'o203: bits <= 8'b10110;
      9'o204: bits <= 8'b10011;
      //E
      9'o210: bits <= 8'b11111;
      9'o211: bits <= 8'b10000;
      9'o212: bits <= 8'b11111;
      9'o213: bits <= 8'b10000;
      9'o214: bits <= 8'b11111;
      //S
      9'o220: bits <= 8'b11111;
      9'o221: bits <= 8'b10000;
      9'o222: bits <= 8'b11111;
      9'o223: bits <= 8'b00001;
      9'o224: bits <= 8'b11111;
      //U
      9'o230: bits <= 8'b10001;
      9'o231: bits <= 8'b10001;
      9'o232: bits <= 8'b10001;
      9'o233: bits <= 8'b10001;
      9'o234: bits <= 8'b11111;
      //L
      9'o240: bits <= 8'b10000;
      9'o241: bits <= 8'b10000;
      9'o242: bits <= 8'b10000;
      9'o243: bits <= 8'b10000;
      9'o244: bits <= 8'b11111;
      //L
      9'o250: bits <= 8'b11111;
      9'o251: bits <= 8'b00100;
      9'o252: bits <= 8'b00100;
      9'o253: bits <= 8'b00100;
      9'o254: bits <= 8'b00100;
      //:
      9'o260: bits <= 8'b00000;
      9'o261: bits <= 8'b00100;
      9'o262: bits <= 8'b00000;
      9'o263: bits <= 8'b00100;
      9'o264: bits <= 8'b00000;
      //NULL 23
      9'o270: bits <= 8'b00000;
      9'o271: bits <= 8'b00000;
      9'o272: bits <= 8'b00000;
      9'o273: bits <= 8'b00000;
      9'o274: bits <= 8'b00000;
      //Arrow Right 24
      9'o300: bits <= 8'b00100;
      9'o301: bits <= 8'b00010;
      9'o302: bits <= 8'b11111;
      9'o303: bits <= 8'b00010;
      9'o304: bits <= 8'b00100;
      //N 25
      9'o310: bits <= 8'b10001;
      9'o311: bits <= 8'b11001;
      9'o312: bits <= 8'b10101;
      9'o313: bits <= 8'b10011;
      9'o314: bits <= 8'b10001;
      //O 26
      9'o320: bits <= 8'b11111;
      9'o321: bits <= 8'b10001;
      9'o322: bits <= 8'b10001;
      9'o323: bits <= 8'b10001;
      9'o324: bits <= 8'b11111;
      //D 27
      9'o330: bits <= 8'b11100;
      9'o331: bits <= 8'b10011;
      9'o332: bits <= 8'b10001;
      9'o333: bits <= 8'b10011;
      9'o334: bits <= 8'b11100;
      default: bits <= 0;
    endcase
endmodule