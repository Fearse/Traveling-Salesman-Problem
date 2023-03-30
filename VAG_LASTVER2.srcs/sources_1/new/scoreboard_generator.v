`timescale 1ns / 1ps
module scoreboard_generator(
  input clk,
  input [10:0] vpos,
  input [10:0] hpos,
  input [3:0] switch,
  input [3:0] i,
  input [3:0] j,
  input [7:0] path,
  input [1:0] state,
  output reg [2:0] colors,
  output board_gfx
); 
  reg [5:0] score_digit;
  wire [7:0] score_bits;
  
  always @(posedge clk)
    begin
      case (hpos[9:4])
        9:        
        begin
            case (state)
            0: score_digit=23;
            1: score_digit=i;
            2: score_digit=23;
            3: score_digit=23;
            endcase
          colors[2]<=1;
          colors[1]<=0;
          colors[0]<=0;
        end
        11:
        begin
            case (state)
            0: score_digit=23;
            1: score_digit=24;
            2: score_digit=23;
            3: score_digit=23;
            endcase
          colors[2]<=1;
          colors[1]<=0;
          colors[0]<=0;
        end
        13:
        begin
            case (state)
            0: score_digit=23;
            1: score_digit=j;
            2: score_digit=23;
            3: score_digit=23;
            endcase
          colors[2]<=1;
          colors[1]<=0;
          colors[0]<=0;
        end
        16:
        begin
            case (state)
            0: score_digit=23;
            1: score_digit=23;
            2: score_digit=16;
            3: score_digit=23;
            endcase
          colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        17:
        begin
            case (state)
            0: score_digit=25;
            1: score_digit=23;
            2: score_digit=17;
            3: score_digit=23;
            endcase
            colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        18:
        begin
            case (state)
            0: score_digit=26;
            1: score_digit=23;
            2: score_digit=18;
            3: score_digit=23;
            endcase
            colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        19:
        begin
            case (state)
            0: score_digit=27;
            1: score_digit=23;
            2: score_digit=19;
            3: score_digit=23;
            endcase
          colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        20:
        begin
            case (state)
            0: score_digit=17;
            1: score_digit=23;
            2: score_digit=20;
            3: score_digit=23;
            endcase
            colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        21:
        begin
            case (state)
            0: score_digit=18;
            1: score_digit=23;
            2: score_digit=21;
            3: score_digit=23;
            endcase
            colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        22:
        begin
            case (state)
            0: score_digit=22;
            1: score_digit=23;
            2: score_digit=22;
            3: score_digit=23;
            endcase
            colors[2]<=1;
          colors[1]<=0;
          colors[0]<=1;
        end
        24:
        begin
            case (state)
            0: score_digit=23;
            1: score_digit=23;
            2: score_digit=path[7:4];
            3: score_digit=23;
            endcase
            colors[2]<=0;
          colors[1]<=1;
          colors[0]<=0;
        end
        25:
        begin
            case (state)
            0: score_digit=switch[3:0];
            1: score_digit=switch[3:0];
            2: score_digit=path[3:0];
            3: score_digit=23;
            endcase
            colors[2]<=0;
          colors[1]<=1;
          colors[0]<=0;
        end
        default: score_digit = 23; // no digit
      endcase
    end
  
  digits10_case digits(.clk(clk),.digit(score_digit),.yofs(vpos[3:1]),.bits(score_bits));

  assign board_gfx = score_bits[hpos[3:1] ^ 3'b111];
  
endmodule