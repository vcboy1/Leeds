load Demux2way.hdl,
output-file Demux2way.out,
output-list in sel a b;
set in 1, set sel 0, eval, output;
set in 1, set sel 1, eval, output;
