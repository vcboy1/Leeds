load Mux2way16.hdl, 
output-file Mux2way16.out,
output-list a b sel out;

set a 255, set b 65280, set sel 0, eval,output;
set a 255, set b 65280, set sel 1, eval,output;