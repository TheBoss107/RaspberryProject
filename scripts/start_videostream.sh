#!/bin/bash

#Command for starting videostream
raspivid -o - -t 0 -w 800 -h 600 -fps 30 |cvlc -v stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8554}' :demux=h264