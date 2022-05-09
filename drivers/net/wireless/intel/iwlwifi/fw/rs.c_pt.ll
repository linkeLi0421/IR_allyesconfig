; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/rs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/rs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_rate_mcs_info = type { [12 x i8], [12 x i8] }

@fw_rate_idx_to_plcp = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A\147n\0D\0F\05\07\09\0B\01\03\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@rate_mcs = internal constant { [17 x %struct.iwl_rate_mcs_info], [104 x i8] } { [17 x %struct.iwl_rate_mcs_info] [%struct.iwl_rate_mcs_info { [12 x i8] c"1\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK DSSS\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"2\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK DSSS\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"5.5\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK CCK\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"11\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK CCK\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"6\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK 1/2\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"9\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK 1/2\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"12\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK 1/2\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"18\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK 3/4\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"24\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"16QAM 1/2\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"36\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"16QAM 3/4\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"48\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 2/3\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"54\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 3/4\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"60\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 5/6\00\00\00" }, %struct.iwl_rate_mcs_info zeroinitializer, %struct.iwl_rate_mcs_info zeroinitializer, %struct.iwl_rate_mcs_info zeroinitializer, %struct.iwl_rate_mcs_info zeroinitializer], [104 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@ant_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown bw\00", [21 x i8] zeroinitializer }, align 32
@pretty_bw = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@iwl_new_rate_from_v1.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/rs.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Legacy | ANT: %s Rate: %s Mbps\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VHT\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HE\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"0x%x: %s | ANT: %s BW: %s MCS: %d NSS: %d %s%s%s%s%s\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SGI \00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NGI \00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STBC \00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDPC \00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCM \00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BF \00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AB\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20Mhz\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40Mhz\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"80Mhz\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"160 Mhz\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"320Mhz\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8388608]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"fw_rate_idx_to_plcp\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 17, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"rate_mcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 33, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 79, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"ant_name\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 49, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 88, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"pretty_bw\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 56, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 161, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 209, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 216, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 218, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 220, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 222, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 234, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 236, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 236, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 237, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 237, i32 44 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 238, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 239, i32 46 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 240, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 50, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 51, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 52, i32 15 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 53, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 57, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 58, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 59, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 60, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [46 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/rs.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 61, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @fw_rate_idx_to_plcp, ptr @rate_mcs, ptr @.str, ptr @ant_name, ptr @.str.1, ptr @pretty_bw, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_rate_idx_to_plcp to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_mcs to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ant_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pretty_bw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @iwl_fw_rate_idx_to_plcp(i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [17 x i8], ptr @fw_rate_idx_to_plcp, i32 0, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @iwl_rate_mcs(i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [17 x %struct.iwl_rate_mcs_info], ptr @rate_mcs, i32 0, i32 %idx
  ret ptr %arrayidx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iwl_rs_pretty_ant(i8 noundef zeroext %ant) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %ant)
  %cmp = icmp ugt i8 %ant, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %ant to i32
  %arrayidx = getelementptr [4 x ptr], ptr @ant_name, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iwl_rs_pretty_bw(i32 noundef %bw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bw)
  %cmp = icmp ugt i32 %bw, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [5 x ptr], ptr @pretty_bw, i32 0, i32 %bw
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str.1, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_new_rate_from_v1(i32 noundef %rate_v1) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate_v1)
  %cmp = icmp eq i32 %rate_v1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %rate_v1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %and2 = and i32 %rate_v1, 7
  %0 = shl i32 %rate_v1, 1
  %shl = and i32 %0, 16
  %or3 = or i32 %and2, %shl
  %or5 = or i32 %or3, 512
  br label %if.end95

if.else:                                          ; preds = %if.end
  %1 = and i32 %rate_v1, 67109888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.else44, label %if.then10

if.then10:                                        ; preds = %if.else
  %and8 = and i32 %rate_v1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or14 = and i32 %rate_v1, 31
  br i1 %tobool9.not, label %if.else41, label %if.then17

if.then17:                                        ; preds = %if.then10
  %and18 = and i32 %rate_v1, 12582912
  %and22 = lshr i32 %rate_v1, 20
  %shr23 = and i32 %and22, 3
  %3 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and18, label %if.then17.if.end31_crit_edge [
    i32 0, label %if.then17.land.lhs.true_crit_edge
    i32 8388608, label %if.then17.land.lhs.true_crit_edge189
  ]

if.then17.land.lhs.true_crit_edge189:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then17.land.lhs.true_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then17.if.end31_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then17.land.lhs.true_crit_edge, %if.then17.land.lhs.true_crit_edge189
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr23)
  %cmp27 = icmp eq i32 %shr23, 3
  br i1 %cmp27, label %if.then28, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %and29 = lshr i32 %rate_v1, 13
  %shr30 = and i32 %and29, 1
  %add = add nuw nsw i32 %shr30, 3
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true.if.end31_crit_edge, %if.then17.if.end31_crit_edge
  %he_gi_ltf.0 = phi i32 [ %add, %if.then28 ], [ %shr23, %land.lhs.true.if.end31_crit_edge ], [ %shr23, %if.then17.if.end31_crit_edge ]
  %shl32 = shl nuw nsw i32 %he_gi_ltf.0, 20
  %or33 = or i32 %shl32, %or14
  %shl34 = shl nuw nsw i32 %and18, 1
  %4 = lshr i32 %rate_v1, 2
  %shl36 = and i32 %4, 67108864
  %and38 = and i32 %rate_v1, 262144
  %or35 = or i32 %and38, %shl34
  %or37 = or i32 %or35, %shl36
  %or39 = or i32 %or37, %or33
  %or40 = or i32 %or39, 1024
  br label %if.end95

if.else41:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  %or42 = or i32 %or14, 768
  br label %if.end95

if.else44:                                        ; preds = %if.else
  %and1.i = and i32 %rate_v1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %5 = lshr exact i32 %and1.i, 7
  %6 = xor i32 %5, 4
  %cond4.i = select i1 %tobool.not.i, i32 12, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cond4.i)
  %cmp18.not.i = icmp eq i32 %6, %cond4.i
  br i1 %cmp18.not.i, label %if.else44.land.rhs_crit_edge, label %for.body.lr.ph.i

if.else44.land.rhs_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

for.body.lr.ph.i:                                 ; preds = %if.else44
  %7 = trunc i32 %rate_v1 to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.019.i = phi i32 [ %6, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [17 x i8], ptr @fw_rate_idx_to_plcp, i32 0, i32 %idx.019.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp5.i = icmp eq i8 %9, %7
  br i1 %cmp5.i, label %iwl_legacy_rate_to_fw_idx.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond4.i
  br i1 %exitcond.not.i, label %for.inc.i.land.rhs_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.land.rhs_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

iwl_legacy_rate_to_fw_idx.exit:                   ; preds = %for.body.i
  %sub.i = sub nsw i32 %idx.019.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i)
  %cmp45 = icmp eq i32 %sub.i, 17
  br i1 %cmp45, label %iwl_legacy_rate_to_fw_idx.exit.land.rhs_crit_edge, label %iwl_legacy_rate_to_fw_idx.exit.if.end87_crit_edge

iwl_legacy_rate_to_fw_idx.exit.if.end87_crit_edge: ; preds = %iwl_legacy_rate_to_fw_idx.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

iwl_legacy_rate_to_fw_idx.exit.land.rhs_crit_edge: ; preds = %iwl_legacy_rate_to_fw_idx.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

land.rhs:                                         ; preds = %iwl_legacy_rate_to_fw_idx.exit.land.rhs_crit_edge, %for.inc.i.land.rhs_crit_edge, %if.else44.land.rhs_crit_edge
  %.b177 = load i1, ptr @iwl_new_rate_from_v1.__already_done, align 1
  br i1 %.b177, label %land.rhs.if.then84_crit_edge, label %if.then53, !prof !70

land.rhs.if.then84_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then84

if.then53:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @iwl_new_rate_from_v1.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 161, i32 noundef 9, ptr noundef null) #3
  br label %if.then84

if.then84:                                        ; preds = %if.then53, %land.rhs.if.then84_crit_edge
  %and85 = lshr i32 %rate_v1, 7
  %10 = and i32 %and85, 4
  %11 = xor i32 %10, 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %iwl_legacy_rate_to_fw_idx.exit.if.end87_crit_edge
  %legacy_rate.0 = phi i32 [ %11, %if.then84 ], [ %sub.i, %iwl_legacy_rate_to_fw_idx.exit.if.end87_crit_edge ]
  %or92 = or i32 %legacy_rate.0, 256
  %spec.select = select i1 %tobool.not.i, i32 %or92, i32 %legacy_rate.0
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.else41, %if.end31, %if.then1
  %rate_v2.1 = phi i32 [ %or5, %if.then1 ], [ %or40, %if.end31 ], [ %or42, %if.else41 ], [ %spec.select, %if.end87 ]
  %and96 = lshr i32 %rate_v1, 11
  %12 = and i32 %and96, 65536
  %or107 = and i32 %rate_v1, 710656
  %13 = or i32 %12, %or107
  %or108 = or i32 %13, %rate_v2.1
  %and109 = lshr i32 %rate_v1, 24
  %shr110 = and i32 %and109, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr110)
  %tobool111.not = icmp eq i32 %shr110, 0
  %shl114 = shl nuw nsw i32 %shr110, 11
  %or113 = or i32 %shl114, %or108
  %or115 = or i32 %or113, 33554432
  %rate_v2.3 = select i1 %tobool111.not, i32 %or108, i32 %or115
  %14 = and i32 %rate_v1, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %.not = icmp eq i32 %14, 8192
  %or123 = or i32 %rate_v2.3, 1048576
  %rate_v2.4 = select i1 %.not, i32 %or123, i32 %rate_v2.3
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rate_v2.4, %if.end95 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs_pretty_print_rate(ptr noundef %buf, i32 noundef %bufsz, i32 noundef %rate) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %rate, 14
  %0 = trunc i32 %and to i8
  %conv = and i8 %0, 3
  %and1 = lshr i32 %rate, 11
  %shr2 = and i32 %and1, 7
  %and3 = and i32 %rate, 1792
  %1 = lshr exact i32 %and3, 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %if.else28 [
    i32 1, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge112
    i32 3, label %entry.if.end31_crit_edge
    i32 2, label %if.then23
    i32 4, label %if.then27
  ]

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

entry.if.then_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  %and7 = and i32 %rate, 7
  %add = add nuw nsw i32 %and7, 4
  %cond = select i1 %cmp, i32 %and7, i32 %add
  %conv.i = zext i8 %conv to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @ant_name, i32 0, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx.i108 = getelementptr [17 x %struct.iwl_rate_mcs_info], ptr @rate_mcs, i32 0, i32 %cond
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.3, ptr noundef %4, ptr noundef %arrayidx.i108) #3
  br label %cleanup

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.else28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then27, %if.then23, %entry.if.end31_crit_edge
  %type.0 = phi ptr [ @.str.6, %if.then23 ], [ @.str.7, %if.then27 ], [ @.str.8, %if.else28 ], [ @.str.5, %entry.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and3)
  %cmp32 = icmp eq i32 %and3, 512
  %and35 = lshr i32 %rate, 1
  %shr36 = and i32 %and35, 8
  %and37 = and i32 %rate, 7
  %or = or i32 %shr36, %and37
  %and39 = and i32 %rate, 15
  %cond41 = select i1 %cmp32, i32 %or, i32 %and39
  %5 = lshr i32 %rate, 4
  %6 = and i32 %5, 1
  %conv46 = add nuw nsw i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and3)
  %cmp47 = icmp eq i32 %and3, 1024
  %and53 = and i32 %rate, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %phi.cmp = icmp eq i32 %and53, 0
  %7 = or i1 %cmp47, %phi.cmp
  %cond55 = select i1 %7, ptr @.str.11, ptr @.str.10
  %conv.i109 = zext i8 %conv to i32
  %arrayidx.i110 = getelementptr [4 x ptr], ptr @ant_name, i32 0, i32 %conv.i109
  %8 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr2)
  %cmp.i = icmp ugt i32 %shr2, 4
  br i1 %cmp.i, label %if.end31.iwl_rs_pretty_bw.exit_crit_edge, label %if.end.i

if.end31.iwl_rs_pretty_bw.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %iwl_rs_pretty_bw.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i111 = getelementptr [5 x ptr], ptr @pretty_bw, i32 0, i32 %shr2
  %10 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i111, align 4
  br label %iwl_rs_pretty_bw.exit

iwl_rs_pretty_bw.exit:                            ; preds = %if.end.i, %if.end31.iwl_rs_pretty_bw.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ @.str.1, %if.end31.iwl_rs_pretty_bw.exit_crit_edge ]
  %and63 = and i32 %rate, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.13, ptr @.str.12
  %and66 = and i32 %rate, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond68 = select i1 %tobool67.not, ptr @.str.13, ptr @.str.14
  %and69 = and i32 %rate, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %cond71 = select i1 %tobool70.not, ptr @.str.13, ptr @.str.15
  %and72 = and i32 %rate, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %cond74 = select i1 %tobool73.not, ptr @.str.13, ptr @.str.16
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.9, i32 noundef %rate, ptr noundef nonnull %type.0, ptr noundef %9, ptr noundef %retval.0.i, i32 noundef %cond41, i32 noundef %conv46, ptr noundef nonnull %cond55, ptr noundef nonnull %cond65, ptr noundef nonnull %cond68, ptr noundef nonnull %cond71, ptr noundef nonnull %cond74) #3
  br label %cleanup

cleanup:                                          ; preds = %iwl_rs_pretty_bw.exit, %if.then
  %retval.0 = phi i32 [ %call17, %if.then ], [ %call75, %iwl_rs_pretty_bw.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_he_is_sgi(i32 noundef %rate_n_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 79, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 88, i32 10}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 161, i32 7}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 209, i32 32}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 211, i32 34}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 216, i32 10}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 218, i32 10}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 220, i32 10}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 222, i32 10}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 234, i32 5}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 236, i32 13}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 236, i32 22}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 237, i32 34}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 237, i32 44}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 238, i32 34}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 239, i32 46}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 240, i32 32}
!35 = !{ptr @fw_rate_idx_to_plcp, !36, !"fw_rate_idx_to_plcp", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 17, i32 17}
!37 = !{ptr @rate_mcs, !38, !"rate_mcs", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 33, i32 39}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 50, i32 15}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 51, i32 15}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 52, i32 15}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 53, i32 15}
!47 = !{ptr @ant_name, !48, !"ant_name", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 49, i32 27}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 57, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 58, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 59, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 60, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 61, i32 2}
!59 = !{ptr @pretty_bw, !60, !"pretty_bw", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/rs.c", i32 56, i32 27}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
