STIL 1.0 { Design 2005; }
Header {
   Title "  TetraMAX(R)  P-2019.03-i20190305_154542 STIL output";
   Date "Tue Nov 22 16:36:26 2022";
   History {
      Ann {*     Uncollapsed Stuck Fault Summary Report *}
      Ann {* ----------------------------------------------- *}
      Ann {* fault class                     code   #faults *}
      Ann {* ------------------------------  ----  --------- *}
      Ann {* Detected                         DT          1 *}
      Ann {* Possibly detected                PT          0 *}
      Ann {* Undetectable                     UD          0 *}
      Ann {* ATPG untestable                  AU          0 *}
      Ann {* Not detected                     ND          0 *}
      Ann {* ----------------------------------------------- *}
      Ann {* total faults                                 1 *}
      Ann {* test coverage                           100.00% *}
      Ann {* ----------------------------------------------- *}
      Ann {*  *}
      Ann {*            Pattern Summary Report *}
      Ann {* ----------------------------------------------- *}
      Ann {* #internal patterns                           1 *}
      Ann {*     #basic_scan patterns                     1 *}
      Ann {* ----------------------------------------------- *}
      Ann {*  *}
      Ann {* There are no rule fails *}
      Ann {* There are no clocks *}
      Ann {* There are no constraint ports *}
      Ann {* There are no equivalent pins *}
      Ann {* There are no net connections *}
      Ann {* top_module_name = c17 *}
      Ann {* Unified STIL Flow *}
      Ann {* min_n_shifts = 1 *}
      Ann {* serial_flag = 1 *}
   }
}
Signals {
   "x1gat" In; "x2gat" In; "x3gat" In; "x6gat" In; "x7gat" In; "x22gat" Out; "x23gat" Out;
}
SignalGroups {
   "_default_In_Timing_" = '"x1gat" + "x2gat" + "x3gat" + "x6gat" + "x7gat"'; // #signals=5
   "_pi" = '"x1gat" + "x2gat" + "x3gat" + "x6gat" + "x7gat"'; // #signals=5
   "_in" = '"x1gat" + "x2gat" + "x3gat" + "x6gat" + "x7gat"'; // #signals=5
   "_default_Out_Timing_" = '"x22gat" + "x23gat"'; // #signals=2
   "_po" = '"x22gat" + "x23gat"'; // #signals=2
   "_out" = '"x22gat" + "x23gat"'; // #signals=2
}
Timing {
   WaveformTable "_default_WFT_" {
      Period '100ns';
      Waveforms {
         "_default_In_Timing_" { 0 { '0ns' D; } }
         "_default_In_Timing_" { 1 { '0ns' U; } }
         "_default_In_Timing_" { Z { '0ns' Z; } }
         "_default_In_Timing_" { N { '0ns' N; } }
         "_default_Out_Timing_" { X { '0ns' X; } }
         "_default_Out_Timing_" { H { '0ns' X; '40ns' H; } }
         "_default_Out_Timing_" { T { '0ns' X; '40ns' T; } }
         "_default_Out_Timing_" { L { '0ns' X; '40ns' L; } }
      }
   }
}
ScanStructures {
   // Uncomment and modify the following to suit your design
   // ScanChain "chain_name" { ScanIn "chain_input_name"; ScanOut "chain_output_name"; }
}
PatternBurst "_burst_" {
   PatList { "_pattern_" {
   }
}}
PatternExec {
   PatternBurst "_burst_";
}
Procedures {
   "capture" {
      W "_default_WFT_";
      C { "_po"=XX; }
      "forcePI": V { "_pi"=#####; }
      "measurePO": V { "_po"=##; }
   }
   // Uncomment and modify the following to suit your design
   // load_unload {
      // V { } // force clocks off and scan enable pins active
      // Shift { V { _si=#; _so=#; }} // pulse shift clocks
   // }
}
MacroDefs {
}
Pattern "_pattern_" {
   W "_default_WFT_";
   "precondition all Signals": C { "_pi"=00000; "_po"=XX; }
   "pattern 0": Call "capture" { 
      "_pi"=01000; "_po"=HH; }
}

// Patterns reference 2 V statements, generating 2 test cycles
