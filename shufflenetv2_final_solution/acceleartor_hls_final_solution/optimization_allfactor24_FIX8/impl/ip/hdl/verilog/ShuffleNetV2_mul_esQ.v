
`timescale 1 ns / 1 ps

  module ShuffleNetV2_mul_esQ_DSP48_0(a, b, p);
input [12 - 1 : 0] a; // synthesis attribute keep a "true"
input [10 - 1 : 0] b; // synthesis attribute keep b "true"
output [22 - 1 : 0] p; // synthesis attribute keep p "true"

assign p = $unsigned (a) * $unsigned (b);

endmodule

`timescale 1 ns / 1 ps
module ShuffleNetV2_mul_esQ(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



ShuffleNetV2_mul_esQ_DSP48_0 ShuffleNetV2_mul_esQ_DSP48_0_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

