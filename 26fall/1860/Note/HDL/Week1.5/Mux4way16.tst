load Mux4way16.hdl,
output-file Mux4way16.out,
output-list a b c d sel out;

set a 1, set b 2, set c 3, set d 4;
set sel 0, eval, output;
set sel 1, eval, output;
set sel 2, eval, output;
set sel 3, eval, output;
