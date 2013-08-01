#!/usr/bin/perl -w

use strict;
system("jack-dssi-host nekobee.so > /tmp/neko.pid 2>/dev/null &");
my $port;
while (!$port) {
sleep 1;
open(FH, "</tmp/neko.pid");
while (<FH>) {
  chomp;
  if (m,osc.udp:[^:]+:(\d+),) {
      $port = $1;
      print("$port\n");
      last;
  }
}
close(FH);
}
