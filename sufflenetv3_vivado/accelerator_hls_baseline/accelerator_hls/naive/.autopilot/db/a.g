#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ziyan/ziyan/ece527/shufflenetv2_master/sufflenetv3_vivado/accelerator_hls/naive/.autopilot/db/a.g.bc ${1+"$@"}
