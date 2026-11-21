/*
load Spin.hdl,
output-file Spin.out,
output-list  dir in result;

set dir  0, set in   0, eval,   output;
set dir  0, set in   1, eval,   output;
set dir  0, set in   2, eval,   output;
set dir  0, set in   3, eval,   output;
set dir  0, set in   4, eval,   output;
set dir  0, set in   5, eval,   output;




set dir  1, set in   5, eval,   output;
set dir  1, set in   4, eval,   output;
set dir  1, set in   3, eval,   output;
set dir  1, set in   2, eval,   output;
set dir  1, set in   1, eval,   output;
set dir  1, set in   0, eval,   output;
*/

load Spin.hdl,
output-file Spin.out,
output-list time%S1.3.1 dir reset f e d c b a nextState2 nextState1 nextState0;

// dir = 0
set dir  0, set reset 0, tick,   output; 
tock,output;

set dir  0, set reset 0, tick,   output;
tock,output;

set dir  0, set reset 0, tick,   output;
tock,output;

set dir  0, set reset 0, tick,   output;
tock,output;

set dir  0, set reset 0, tick,   output;
tock,output;

set dir  0, set reset 0, tick,   output;
tock,output;

// dir = 1
set dir  1, set reset 0, tick,   output; 
tock,output;

set dir  1, set reset 0, tick,   output;
tock,output;

set dir  1, set reset 0, tick,   output;
tock,output;

set dir  1, set reset 0, tick,   output;
tock,output;

// reset = 1
set dir  1, set reset 1, tick,   output;
tock,output;

set dir  0, set reset 1, tick,   output;
tock,output;