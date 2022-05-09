; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-debugifc.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pvr2_stream_stats = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Driver hardware description: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Driver state info:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"USB link speed: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FAIL\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GPIO state: dir=0x%x in=0x%x out=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Streaming is %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Bytes streamed=%u URBs: queued=%u idle=%u ready=%u processed=%u failed=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_debugifc_do1cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016pvrusb2: debugifc cmd: \22%.*s\22\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_debugifc_do1cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-debugifc.c\00", [51 x i8] zeroinitializer }, align 32
@pvr2_debugifc_do1cmd._entry_ptr = internal global ptr @pvr2_debugifc_do1cmd._entry, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"deep\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"decoder\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"worker\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usbstats\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpufw\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fetch\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prom\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ram8k\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ram16k\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@pvr2_debugifc_do1cmd._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.12, ptr @.str.13, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016pvrusb2: debugifc failed to recognize cmd: \22%.*s\22\0A\00", [43 x i8] zeroinitializer }, align 32
@pvr2_debugifc_do1cmd._entry_ptr.34 = internal global ptr @pvr2_debugifc_do1cmd._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 10, i64 32]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 120, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 123, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 143, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 144, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 144, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 144, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 151, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 155, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 156, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 156, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 165, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 191, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 192, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 197, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 201, i32 47 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 203, i32 47 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 205, i32 47 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 207, i32 47 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 209, i32 47 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 211, i32 47 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 213, i32 47 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 219, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 224, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 229, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 232, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 235, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 243, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 249, i32 46 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 257, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 259, i32 48 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [48 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 283, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @pvr2_debugifc_do1cmd._entry, ptr @pvr2_debugifc_do1cmd._entry.32, ptr @pvr2_debugifc_do1cmd._entry_ptr, ptr @pvr2_debugifc_do1cmd._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_debugifc_do1cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_debugifc_do1cmd._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_debugifc_print_info(ptr noundef %hdw, ptr noundef %buf, i32 noundef %acnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pvr2_hdw_get_desc(ptr noundef %hdw) #5
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %acnt, ptr noundef nonnull @.str, ptr noundef %call) #5
  %sub = sub i32 %acnt, %call1
  %add.ptr = getelementptr i8, ptr %buf, i32 %call1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.1) #5
  %add3 = add i32 %call2, %call1
  %sub4 = sub i32 %sub, %call2
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %call2
  %call6 = tail call i32 @pvr2_hdw_state_report(ptr noundef %hdw, ptr noundef %add.ptr5, i32 noundef %sub4) #5
  %add7 = add i32 %add3, %call6
  ret i32 %add7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_state_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_debugifc_print_status(ptr noundef %hdw, ptr noundef %buf, i32 noundef %acnt) local_unnamed_addr #0 align 64 {
entry:
  %gpio_dir = alloca i32, align 4
  %gpio_in = alloca i32, align 4
  %gpio_out = alloca i32, align 4
  %stats = alloca %struct.pvr2_stream_stats, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_dir) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_in) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_out) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %stats) #5
  %0 = call ptr @memset(ptr %stats, i32 255, i32 24)
  %call = tail call i32 @pvr2_hdw_is_hsm(ptr noundef %hdw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  %cond1 = select i1 %cmp, ptr @.str.3, ptr %cond
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %acnt, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond1) #5
  %sub = sub i32 %acnt, %call2
  %add.ptr = getelementptr i8, ptr %buf, i32 %call2
  %1 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %gpio_dir, align 4
  %2 = ptrtoint ptr %gpio_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gpio_in, align 4
  %3 = ptrtoint ptr %gpio_out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gpio_out, align 4
  %call3 = call i32 @pvr2_hdw_gpio_get_dir(ptr noundef %hdw, ptr noundef nonnull %gpio_dir) #5
  %call4 = call i32 @pvr2_hdw_gpio_get_out(ptr noundef %hdw, ptr noundef nonnull %gpio_out) #5
  %call5 = call i32 @pvr2_hdw_gpio_get_in(ptr noundef %hdw, ptr noundef nonnull %gpio_in) #5
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_dir, align 4
  %6 = ptrtoint ptr %gpio_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_in, align 4
  %8 = ptrtoint ptr %gpio_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_out, align 4
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  %add7 = add i32 %call6, %call2
  %sub8 = sub i32 %sub, %call6
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %call6
  %call10 = call i32 @pvr2_hdw_get_streaming(ptr noundef %hdw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.9, ptr @.str.8
  %call13 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub8, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond12) #5
  %add14 = add i32 %add7, %call13
  %call17 = call ptr @pvr2_hdw_get_video_stream(ptr noundef %hdw) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 5
  %11 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 4
  %12 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 3
  %13 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 2
  %14 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 1
  %add.ptr16 = getelementptr i8, ptr %add.ptr9, i32 %call13
  %sub15 = sub i32 %sub8, %call13
  call void @pvr2_stream_get_stats(ptr noundef nonnull %call17, ptr noundef nonnull %stats, i32 noundef 0) #5
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stats, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %13, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %11, align 4
  %call19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub15, ptr noundef nonnull @.str.10, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #5
  %add20 = add i32 %call19, %add14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bcnt.0 = phi i32 [ %add20, %if.then ], [ %add14, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %stats) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_out) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_in) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_dir) #5
  ret i32 %bcnt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_is_hsm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_gpio_get_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_gpio_get_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_gpio_get_in(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_streaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_video_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_stream_get_stats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_debugifc_docmd(ptr noundef %hdw, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not306 = icmp eq i32 %count, 0
  br i1 %tobool.not306, label %entry.cleanup_crit_edge, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  br label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %count.addr.0310 = phi i32 [ %sub, %if.end6.for.cond.preheader_crit_edge ], [ %count, %entry.for.cond.preheader_crit_edge ]
  %buf.addr.0307 = phi ptr [ %add.ptr, %if.end6.for.cond.preheader_crit_edge ], [ %buf, %entry.for.cond.preheader_crit_edge ]
  %0 = ptrtoint ptr %buf.addr.0307 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf.addr.0307, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp1465 = icmp eq i8 %1, 10
  br i1 %cmp1465, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  br label %for.inc

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc
  %arrayidx = getelementptr i8, ptr %buf.addr.0307, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %cmp1 = icmp eq i8 %3, 10
  br i1 %cmp1, label %for.end.loopexit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %bcnt.0297466 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %inc = add nuw i32 %bcnt.0297466, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count.addr.0310)
  %exitcond.not = icmp eq i32 %inc, %count.addr.0310
  br i1 %exitcond.not, label %for.body.i.i.i.preheader.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count.addr.0310)
  %cmp.le = icmp ult i32 %inc, %count.addr.0310
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %cmp298.lcssa = phi i1 [ true, %for.cond.preheader.for.end_crit_edge ], [ %cmp.le, %for.end.loopexit ]
  %bcnt.0297.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnt.0297.lcssa)
  %cmp18.not.i.i.i = icmp eq i32 %bcnt.0297.lcssa, 0
  br i1 %cmp18.not.i.i.i, label %for.end.if.end6_crit_edge, label %for.end.for.body.i.i.i.preheader_crit_edge

for.end.for.body.i.i.i.preheader_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.preheader

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.body.i.i.i.preheader.loopexit:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count.addr.0310)
  %cmp.le511 = icmp ult i32 %inc, %count.addr.0310
  br label %for.body.i.i.i.preheader

for.body.i.i.i.preheader:                         ; preds = %for.body.i.i.i.preheader.loopexit, %for.end.for.body.i.i.i.preheader_crit_edge
  %cmp.lcssa376 = phi i1 [ %cmp298.lcssa, %for.end.for.body.i.i.i.preheader_crit_edge ], [ %cmp.le511, %for.body.i.i.i.preheader.loopexit ]
  %bcnt.0.lcssa373 = phi i32 [ %bcnt.0297.lcssa, %for.end.for.body.i.i.i.preheader_crit_edge ], [ %count.addr.0310, %for.body.i.i.i.preheader.loopexit ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %scnt.019.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.preheader ]
  %arrayidx.i.i.i = getelementptr i8, ptr %buf.addr.0307, i32 %scnt.019.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %debugifc_count_whitespace.exit.i.i [
    i8 32, label %for.body.i.i.i.for.inc.i.i.i_crit_edge
    i8 9, label %for.body.i.i.i.for.inc.i.i.i_crit_edge513
    i8 10, label %for.body.i.i.i.for.inc.i.i.i_crit_edge514
  ]

for.body.i.i.i.for.inc.i.i.i_crit_edge514:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge513:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge513, %for.body.i.i.i.for.inc.i.i.i_crit_edge514
  %inc.i.i.i = add nuw i32 %scnt.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %bcnt.0.lcssa373
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.debugifc_isolate_word.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.debugifc_isolate_word.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit.i

debugifc_count_whitespace.exit.i.i:               ; preds = %for.body.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.0307, i32 %scnt.019.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %bcnt.0.lcssa373, i32 %scnt.019.i.i.i)
  %tobool.not.i.i = icmp eq i32 %bcnt.0.lcssa373, %scnt.019.i.i.i
  br i1 %tobool.not.i.i, label %debugifc_count_whitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge, label %if.end.i.i

debugifc_count_whitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge: ; preds = %debugifc_count_whitespace.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit.i

if.end.i.i:                                       ; preds = %debugifc_count_whitespace.exit.i.i
  %sub.i.i = sub i32 %bcnt.0.lcssa373, %scnt.019.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp18.not.i25.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp18.not.i25.i.i, label %if.end.i.i.debugifc_isolate_word.exit.i_crit_edge, label %if.end.i.i.for.body.i28.i.i_crit_edge

if.end.i.i.for.body.i28.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %for.body.i28.i.i

if.end.i.i.debugifc_isolate_word.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit.i

for.body.i28.i.i:                                 ; preds = %for.inc.i31.i.i.for.body.i28.i.i_crit_edge, %if.end.i.i.for.body.i28.i.i_crit_edge
  %scnt.019.i26.i.i = phi i32 [ %inc.i29.i.i, %for.inc.i31.i.i.for.body.i28.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i28.i.i_crit_edge ]
  %arrayidx.i27.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %scnt.019.i26.i.i
  %7 = ptrtoint ptr %arrayidx.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i27.i.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %8, label %for.inc.i31.i.i [
    i8 32, label %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge
    i8 9, label %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge515
    i8 10, label %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge516
  ]

for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge516: ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i.i

for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge515: ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i.i

for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge: ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i.i

for.inc.i31.i.i:                                  ; preds = %for.body.i28.i.i
  %inc.i29.i.i = add nuw i32 %scnt.019.i26.i.i, 1
  %exitcond.not.i30.i.i = icmp eq i32 %inc.i29.i.i, %sub.i.i
  br i1 %exitcond.not.i30.i.i, label %for.inc.i31.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge, label %for.inc.i31.i.i.for.body.i28.i.i_crit_edge

for.inc.i31.i.i.for.body.i28.i.i_crit_edge:       ; preds = %for.inc.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i.i

for.inc.i31.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge: ; preds = %for.inc.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i.i

debugifc_count_nonwhitespace.exit.i.i:            ; preds = %for.inc.i31.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge, %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge, %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge515, %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge516
  %scnt.0.lcssa.i32.i.i = phi i32 [ %scnt.019.i26.i.i, %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge ], [ %scnt.019.i26.i.i, %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge515 ], [ %scnt.019.i26.i.i, %for.body.i28.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge516 ], [ %sub.i.i, %for.inc.i31.i.i.debugifc_count_nonwhitespace.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i.i)
  %tobool2.not.i.i = icmp eq i32 %scnt.0.lcssa.i32.i.i, 0
  br i1 %tobool2.not.i.i, label %debugifc_count_nonwhitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge, label %if.end4.i.i

debugifc_count_nonwhitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit.i

if.end4.i.i:                                      ; preds = %debugifc_count_nonwhitespace.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add5.i.i = add i32 %scnt.0.lcssa.i32.i.i, %scnt.019.i.i.i
  br label %debugifc_isolate_word.exit.i

debugifc_isolate_word.exit.i:                     ; preds = %if.end4.i.i, %debugifc_count_nonwhitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge, %if.end.i.i.debugifc_isolate_word.exit.i_crit_edge, %debugifc_count_whitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge, %for.inc.i.i.i.debugifc_isolate_word.exit.i_crit_edge
  %wptr.0.i.i = phi ptr [ %add.ptr.i.i, %if.end4.i.i ], [ null, %debugifc_count_nonwhitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ null, %debugifc_count_whitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ null, %if.end.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ null, %for.inc.i.i.i.debugifc_isolate_word.exit.i_crit_edge ]
  %consume_cnt.0.i.i = phi i32 [ %add5.i.i, %if.end4.i.i ], [ %scnt.019.i.i.i, %debugifc_count_nonwhitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ %bcnt.0.lcssa373, %debugifc_count_whitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ %scnt.019.i.i.i, %if.end.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ %bcnt.0.lcssa373, %for.inc.i.i.i.debugifc_isolate_word.exit.i_crit_edge ]
  %wlen.0.i.i = phi i32 [ %scnt.0.lcssa.i32.i.i, %if.end4.i.i ], [ 0, %debugifc_count_nonwhitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ 0, %debugifc_count_whitespace.exit.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ 0, %if.end.i.i.debugifc_isolate_word.exit.i_crit_edge ], [ 0, %for.inc.i.i.i.debugifc_isolate_word.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume_cnt.0.i.i)
  %tobool.not.i = icmp eq i32 %consume_cnt.0.i.i, 0
  br i1 %tobool.not.i, label %debugifc_isolate_word.exit.i.if.end6_crit_edge, label %if.end.i

debugifc_isolate_word.exit.i.if.end6_crit_edge:   ; preds = %debugifc_isolate_word.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.i:                                         ; preds = %debugifc_isolate_word.exit.i
  %sub.i = sub i32 %bcnt.0.lcssa373, %consume_cnt.0.i.i
  %add.ptr.i = getelementptr i8, ptr %buf.addr.0307, i32 %consume_cnt.0.i.i
  %tobool1.not.i = icmp eq ptr %wptr.0.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6_crit_edge, label %do.body.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %10 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.do.end10.i_crit_edge, label %do.end.i

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %wlen.0.i.i, ptr noundef nonnull %wptr.0.i.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body.i.do.end10.i_crit_edge
  %11 = zext i32 %wlen.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %wlen.0.i.i, label %do.end10.i.do.body166.i_crit_edge [
    i32 5, label %debugifc_match_keyword.exit.i
    i32 4, label %debugifc_match_keyword.exit379.i
  ]

do.end10.i.do.body166.i_crit_edge:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body166.i

debugifc_match_keyword.exit.i:                    ; preds = %do.end10.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %wptr.0.i.i, ptr noundef nonnull dereferenceable(5) @.str.14, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool4.not.i.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool4.not.i.not.i, label %if.then13.i, label %debugifc_match_keyword.exit303.i

if.then13.i:                                      ; preds = %debugifc_match_keyword.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp18.not.i.i248.i = icmp eq i32 %sub.i, 0
  br i1 %cmp18.not.i.i248.i, label %if.then13.i.cleanup_crit_edge, label %if.then13.i.for.body.i.i251.i_crit_edge

if.then13.i.for.body.i.i251.i_crit_edge:          ; preds = %if.then13.i
  br label %for.body.i.i251.i

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i251.i:                                ; preds = %for.inc.i.i254.i.for.body.i.i251.i_crit_edge, %if.then13.i.for.body.i.i251.i_crit_edge
  %scnt.019.i.i249.i = phi i32 [ %inc.i.i252.i, %for.inc.i.i254.i.for.body.i.i251.i_crit_edge ], [ 0, %if.then13.i.for.body.i.i251.i_crit_edge ]
  %arrayidx.i.i250.i = getelementptr i8, ptr %add.ptr.i, i32 %scnt.019.i.i249.i
  %12 = ptrtoint ptr %arrayidx.i.i250.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i250.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %13, label %debugifc_count_whitespace.exit.i258.i [
    i8 32, label %for.body.i.i251.i.for.inc.i.i254.i_crit_edge
    i8 9, label %for.body.i.i251.i.for.inc.i.i254.i_crit_edge517
    i8 10, label %for.body.i.i251.i.for.inc.i.i254.i_crit_edge518
  ]

for.body.i.i251.i.for.inc.i.i254.i_crit_edge518:  ; preds = %for.body.i.i251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i254.i

for.body.i.i251.i.for.inc.i.i254.i_crit_edge517:  ; preds = %for.body.i.i251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i254.i

for.body.i.i251.i.for.inc.i.i254.i_crit_edge:     ; preds = %for.body.i.i251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i254.i

for.inc.i.i254.i:                                 ; preds = %for.body.i.i251.i.for.inc.i.i254.i_crit_edge, %for.body.i.i251.i.for.inc.i.i254.i_crit_edge517, %for.body.i.i251.i.for.inc.i.i254.i_crit_edge518
  %inc.i.i252.i = add nuw i32 %scnt.019.i.i249.i, 1
  %exitcond.not.i.i253.i = icmp eq i32 %inc.i.i252.i, %sub.i
  br i1 %exitcond.not.i.i253.i, label %for.inc.i.i254.i.cleanup_crit_edge, label %for.inc.i.i254.i.for.body.i.i251.i_crit_edge

for.inc.i.i254.i.for.body.i.i251.i_crit_edge:     ; preds = %for.inc.i.i254.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i251.i

for.inc.i.i254.i.cleanup_crit_edge:               ; preds = %for.inc.i.i254.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_count_whitespace.exit.i258.i:            ; preds = %for.body.i.i251.i
  %arrayidx.i.i250.i.le = getelementptr i8, ptr %add.ptr.i, i32 %scnt.019.i.i249.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %scnt.019.i.i249.i)
  %tobool.not.i257.i = icmp eq i32 %sub.i, %scnt.019.i.i249.i
  br i1 %tobool.not.i257.i, label %debugifc_count_whitespace.exit.i258.i.cleanup_crit_edge, label %if.end.i261.i

debugifc_count_whitespace.exit.i258.i.cleanup_crit_edge: ; preds = %debugifc_count_whitespace.exit.i258.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i261.i:                                    ; preds = %debugifc_count_whitespace.exit.i258.i
  %sub.i259.i = sub i32 %sub.i, %scnt.019.i.i249.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i259.i)
  %cmp18.not.i25.i260.i = icmp eq i32 %sub.i259.i, 0
  br i1 %cmp18.not.i25.i260.i, label %if.end.i261.i.cleanup_crit_edge, label %if.end.i261.i.for.body.i28.i264.i_crit_edge

if.end.i261.i.for.body.i28.i264.i_crit_edge:      ; preds = %if.end.i261.i
  br label %for.body.i28.i264.i

if.end.i261.i.cleanup_crit_edge:                  ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i28.i264.i:                              ; preds = %for.inc.i31.i267.i.for.body.i28.i264.i_crit_edge, %if.end.i261.i.for.body.i28.i264.i_crit_edge
  %scnt.019.i26.i262.i = phi i32 [ %inc.i29.i265.i, %for.inc.i31.i267.i.for.body.i28.i264.i_crit_edge ], [ 0, %if.end.i261.i.for.body.i28.i264.i_crit_edge ]
  %arrayidx.i27.i263.i = getelementptr i8, ptr %arrayidx.i.i250.i.le, i32 %scnt.019.i26.i262.i
  %15 = ptrtoint ptr %arrayidx.i27.i263.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i27.i263.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %16, label %for.inc.i31.i267.i [
    i8 32, label %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge
    i8 9, label %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge519
    i8 10, label %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge520
  ]

for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge520: ; preds = %for.body.i28.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i270.i

for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge519: ; preds = %for.body.i28.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i270.i

for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge: ; preds = %for.body.i28.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i270.i

for.inc.i31.i267.i:                               ; preds = %for.body.i28.i264.i
  %inc.i29.i265.i = add nuw i32 %scnt.019.i26.i262.i, 1
  %exitcond.not.i30.i266.i = icmp eq i32 %inc.i29.i265.i, %sub.i259.i
  br i1 %exitcond.not.i30.i266.i, label %for.inc.i31.i267.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge, label %for.inc.i31.i267.i.for.body.i28.i264.i_crit_edge

for.inc.i31.i267.i.for.body.i28.i264.i_crit_edge: ; preds = %for.inc.i31.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i264.i

for.inc.i31.i267.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge: ; preds = %for.inc.i31.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i270.i

debugifc_count_nonwhitespace.exit.i270.i:         ; preds = %for.inc.i31.i267.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge, %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge, %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge519, %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge520
  %scnt.0.lcssa.i32.i268.i = phi i32 [ %scnt.019.i26.i262.i, %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge ], [ %scnt.019.i26.i262.i, %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge519 ], [ %scnt.019.i26.i262.i, %for.body.i28.i264.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge520 ], [ %sub.i259.i, %for.inc.i31.i267.i.debugifc_count_nonwhitespace.exit.i270.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i268.i)
  %tobool2.not.i269.i = icmp eq i32 %scnt.0.lcssa.i32.i268.i, 0
  br i1 %tobool2.not.i269.i, label %debugifc_count_nonwhitespace.exit.i270.i.cleanup_crit_edge, label %debugifc_isolate_word.exit276.i

debugifc_count_nonwhitespace.exit.i270.i.cleanup_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i270.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_isolate_word.exit276.i:                  ; preds = %debugifc_count_nonwhitespace.exit.i270.i
  %add5.i271.i = sub i32 0, %scnt.019.i.i249.i
  call void @__sanitizer_cov_trace_cmp4(i32 %scnt.0.lcssa.i32.i268.i, i32 %add5.i271.i)
  %tobool15.not.i = icmp eq i32 %scnt.0.lcssa.i32.i268.i, %add5.i271.i
  %tobool20.not.i = icmp eq ptr %arrayidx.i.i250.i.le, null
  %or.cond.i = or i1 %tobool20.not.i, %tobool15.not.i
  br i1 %or.cond.i, label %debugifc_isolate_word.exit276.i.cleanup_crit_edge, label %if.end22.i

debugifc_isolate_word.exit276.i.cleanup_crit_edge: ; preds = %debugifc_isolate_word.exit276.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22.i:                                       ; preds = %debugifc_isolate_word.exit276.i
  %18 = zext i32 %scnt.0.lcssa.i32.i268.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %scnt.0.lcssa.i32.i268.i, label %if.end22.i.cleanup_crit_edge [
    i32 3, label %debugifc_match_keyword.exit285.i
    i32 4, label %debugifc_match_keyword.exit211
    i32 8, label %debugifc_match_keyword.exit191
    i32 7, label %debugifc_match_keyword.exit181
    i32 6, label %debugifc_match_keyword.exit171
  ]

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit285.i:                 ; preds = %if.end22.i
  %bcmp.i280.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %arrayidx.i.i250.i.le, ptr noundef nonnull dereferenceable(3) @.str.15, i32 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i280.i)
  %tobool4.not.i281.not.i = icmp eq i32 %bcmp.i280.i, 0
  br i1 %tobool4.not.i281.not.i, label %if.then25.i, label %debugifc_match_keyword.exit294.i

if.then25.i:                                      ; preds = %debugifc_match_keyword.exit285.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pvr2_hdw_cpureset_assert(ptr noundef %hdw, i32 noundef 1) #5
  tail call void @pvr2_hdw_cpureset_assert(ptr noundef %hdw, i32 noundef 0) #5
  br label %if.end6

debugifc_match_keyword.exit294.i:                 ; preds = %debugifc_match_keyword.exit285.i
  %bcmp.i289.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %arrayidx.i.i250.i.le, ptr noundef nonnull dereferenceable(3) @.str.16, i32 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i289.i)
  %tobool4.not.i290.not.i = icmp eq i32 %bcmp.i289.i, 0
  br i1 %tobool4.not.i290.not.i, label %if.then28.i, label %debugifc_match_keyword.exit294.i.cleanup_crit_edge

debugifc_match_keyword.exit294.i.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit294.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28.i:                                      ; preds = %debugifc_match_keyword.exit294.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pvr2_hdw_device_reset(ptr noundef %hdw) #5
  br label %cleanup

debugifc_match_keyword.exit211:                   ; preds = %if.end22.i
  %bcmp.i205 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i250.i.le, ptr nonnull @.str.17, i32 %scnt.0.lcssa.i32.i268.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i205)
  %tobool4.not.i206.not = icmp eq i32 %bcmp.i205, 0
  br i1 %tobool4.not.i206.not, label %if.then32.i, label %debugifc_match_keyword.exit201

if.then32.i:                                      ; preds = %debugifc_match_keyword.exit211
  call void @__sanitizer_cov_trace_pc() #7
  %call33.i = tail call i32 @pvr2_hdw_cmd_powerup(ptr noundef %hdw) #5
  br label %pvr2_debugifc_do1cmd.exit

debugifc_match_keyword.exit201:                   ; preds = %debugifc_match_keyword.exit211
  %bcmp.i195 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %arrayidx.i.i250.i.le, ptr noundef nonnull dereferenceable(4) @.str.18, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i195)
  %tobool4.not.i196.not = icmp eq i32 %bcmp.i195, 0
  br i1 %tobool4.not.i196.not, label %if.then37.i, label %debugifc_match_keyword.exit201.cleanup_crit_edge

debugifc_match_keyword.exit201.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37.i:                                      ; preds = %debugifc_match_keyword.exit201
  call void @__sanitizer_cov_trace_pc() #7
  %call38.i = tail call i32 @pvr2_hdw_cmd_deep_reset(ptr noundef %hdw) #5
  br label %pvr2_debugifc_do1cmd.exit

debugifc_match_keyword.exit191:                   ; preds = %if.end22.i
  %bcmp.i185 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i250.i.le, ptr nonnull @.str.19, i32 %scnt.0.lcssa.i32.i268.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i185)
  %tobool4.not.i186.not = icmp eq i32 %bcmp.i185, 0
  br i1 %tobool4.not.i186.not, label %if.then42.i, label %debugifc_match_keyword.exit161

if.then42.i:                                      ; preds = %debugifc_match_keyword.exit191
  call void @__sanitizer_cov_trace_pc() #7
  %call43.i = tail call i32 @pvr2_upload_firmware2(ptr noundef %hdw) #5
  br label %pvr2_debugifc_do1cmd.exit

debugifc_match_keyword.exit181:                   ; preds = %if.end22.i
  %bcmp.i175 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i250.i.le, ptr nonnull @.str.20, i32 %scnt.0.lcssa.i32.i268.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i175)
  %tobool4.not.i176.not = icmp eq i32 %bcmp.i175, 0
  br i1 %tobool4.not.i176.not, label %if.then47.i, label %debugifc_match_keyword.exit181.cleanup_crit_edge

debugifc_match_keyword.exit181.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47.i:                                      ; preds = %debugifc_match_keyword.exit181
  call void @__sanitizer_cov_trace_pc() #7
  %call48.i = tail call i32 @pvr2_hdw_cmd_decoder_reset(ptr noundef %hdw) #5
  br label %pvr2_debugifc_do1cmd.exit

debugifc_match_keyword.exit171:                   ; preds = %if.end22.i
  %bcmp.i165 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i250.i.le, ptr nonnull @.str.21, i32 %scnt.0.lcssa.i32.i268.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i165)
  %tobool4.not.i166.not = icmp eq i32 %bcmp.i165, 0
  br i1 %tobool4.not.i166.not, label %if.then52.i, label %debugifc_match_keyword.exit171.cleanup_crit_edge

debugifc_match_keyword.exit171.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit171
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52.i:                                      ; preds = %debugifc_match_keyword.exit171
  call void @__sanitizer_cov_trace_pc() #7
  %call53.i = tail call i32 @pvr2_hdw_untrip(ptr noundef %hdw) #5
  br label %pvr2_debugifc_do1cmd.exit

debugifc_match_keyword.exit161:                   ; preds = %debugifc_match_keyword.exit191
  %bcmp.i155 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i250.i.le, ptr nonnull @.str.22, i32 %scnt.0.lcssa.i32.i268.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i155)
  %tobool4.not.i156.not = icmp eq i32 %bcmp.i155, 0
  br i1 %tobool4.not.i156.not, label %if.then57.i, label %debugifc_match_keyword.exit161.cleanup_crit_edge

debugifc_match_keyword.exit161.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57.i:                                      ; preds = %debugifc_match_keyword.exit161
  call void @__sanitizer_cov_trace_pc() #7
  %call58.i = tail call ptr @pvr2_hdw_get_video_stream(ptr noundef %hdw) #5
  tail call void @pvr2_stream_get_stats(ptr noundef %call58.i, ptr noundef null, i32 noundef 1) #5
  br label %if.end6

debugifc_match_keyword.exit303.i:                 ; preds = %debugifc_match_keyword.exit.i
  %bcmp.i298.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %wptr.0.i.i, ptr noundef nonnull dereferenceable(5) @.str.23, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i298.i)
  %tobool4.not.i299.not.i = icmp eq i32 %bcmp.i298.i, 0
  br i1 %tobool4.not.i299.not.i, label %if.then70.i, label %debugifc_match_keyword.exit303.i.do.body166.i_crit_edge

debugifc_match_keyword.exit303.i.do.body166.i_crit_edge: ; preds = %debugifc_match_keyword.exit303.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body166.i

if.then70.i:                                      ; preds = %debugifc_match_keyword.exit303.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp18.not.i.i304.i = icmp eq i32 %sub.i, 0
  br i1 %cmp18.not.i.i304.i, label %if.then70.i.cleanup_crit_edge, label %if.then70.i.for.body.i.i307.i_crit_edge

if.then70.i.for.body.i.i307.i_crit_edge:          ; preds = %if.then70.i
  br label %for.body.i.i307.i

if.then70.i.cleanup_crit_edge:                    ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i307.i:                                ; preds = %for.inc.i.i310.i.for.body.i.i307.i_crit_edge, %if.then70.i.for.body.i.i307.i_crit_edge
  %scnt.019.i.i305.i = phi i32 [ %inc.i.i308.i, %for.inc.i.i310.i.for.body.i.i307.i_crit_edge ], [ 0, %if.then70.i.for.body.i.i307.i_crit_edge ]
  %arrayidx.i.i306.i = getelementptr i8, ptr %add.ptr.i, i32 %scnt.019.i.i305.i
  %19 = ptrtoint ptr %arrayidx.i.i306.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i306.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %20, label %debugifc_count_whitespace.exit.i314.i [
    i8 32, label %for.body.i.i307.i.for.inc.i.i310.i_crit_edge
    i8 9, label %for.body.i.i307.i.for.inc.i.i310.i_crit_edge521
    i8 10, label %for.body.i.i307.i.for.inc.i.i310.i_crit_edge522
  ]

for.body.i.i307.i.for.inc.i.i310.i_crit_edge522:  ; preds = %for.body.i.i307.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i310.i

for.body.i.i307.i.for.inc.i.i310.i_crit_edge521:  ; preds = %for.body.i.i307.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i310.i

for.body.i.i307.i.for.inc.i.i310.i_crit_edge:     ; preds = %for.body.i.i307.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i310.i

for.inc.i.i310.i:                                 ; preds = %for.body.i.i307.i.for.inc.i.i310.i_crit_edge, %for.body.i.i307.i.for.inc.i.i310.i_crit_edge521, %for.body.i.i307.i.for.inc.i.i310.i_crit_edge522
  %inc.i.i308.i = add nuw i32 %scnt.019.i.i305.i, 1
  %exitcond.not.i.i309.i = icmp eq i32 %inc.i.i308.i, %sub.i
  br i1 %exitcond.not.i.i309.i, label %for.inc.i.i310.i.debugifc_isolate_word.exit332.i_crit_edge, label %for.inc.i.i310.i.for.body.i.i307.i_crit_edge

for.inc.i.i310.i.for.body.i.i307.i_crit_edge:     ; preds = %for.inc.i.i310.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i307.i

for.inc.i.i310.i.debugifc_isolate_word.exit332.i_crit_edge: ; preds = %for.inc.i.i310.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit332.i

debugifc_count_whitespace.exit.i314.i:            ; preds = %for.body.i.i307.i
  %arrayidx.i.i306.i.le = getelementptr i8, ptr %add.ptr.i, i32 %scnt.019.i.i305.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %scnt.019.i.i305.i)
  %tobool.not.i313.i = icmp eq i32 %sub.i, %scnt.019.i.i305.i
  br i1 %tobool.not.i313.i, label %debugifc_count_whitespace.exit.i314.i.debugifc_isolate_word.exit332.i_crit_edge, label %if.end.i317.i

debugifc_count_whitespace.exit.i314.i.debugifc_isolate_word.exit332.i_crit_edge: ; preds = %debugifc_count_whitespace.exit.i314.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit332.i

if.end.i317.i:                                    ; preds = %debugifc_count_whitespace.exit.i314.i
  %sub.i315.i = sub i32 %sub.i, %scnt.019.i.i305.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i315.i)
  %cmp18.not.i25.i316.i = icmp eq i32 %sub.i315.i, 0
  br i1 %cmp18.not.i25.i316.i, label %if.end.i317.i.debugifc_isolate_word.exit332.i_crit_edge, label %if.end.i317.i.for.body.i28.i320.i_crit_edge

if.end.i317.i.for.body.i28.i320.i_crit_edge:      ; preds = %if.end.i317.i
  br label %for.body.i28.i320.i

if.end.i317.i.debugifc_isolate_word.exit332.i_crit_edge: ; preds = %if.end.i317.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit332.i

for.body.i28.i320.i:                              ; preds = %for.inc.i31.i323.i.for.body.i28.i320.i_crit_edge, %if.end.i317.i.for.body.i28.i320.i_crit_edge
  %scnt.019.i26.i318.i = phi i32 [ %inc.i29.i321.i, %for.inc.i31.i323.i.for.body.i28.i320.i_crit_edge ], [ 0, %if.end.i317.i.for.body.i28.i320.i_crit_edge ]
  %arrayidx.i27.i319.i = getelementptr i8, ptr %arrayidx.i.i306.i.le, i32 %scnt.019.i26.i318.i
  %22 = ptrtoint ptr %arrayidx.i27.i319.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i27.i319.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %23, label %for.inc.i31.i323.i [
    i8 32, label %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge
    i8 9, label %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge523
    i8 10, label %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge524
  ]

for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge524: ; preds = %for.body.i28.i320.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i326.i

for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge523: ; preds = %for.body.i28.i320.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i326.i

for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge: ; preds = %for.body.i28.i320.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i326.i

for.inc.i31.i323.i:                               ; preds = %for.body.i28.i320.i
  %inc.i29.i321.i = add nuw i32 %scnt.019.i26.i318.i, 1
  %exitcond.not.i30.i322.i = icmp eq i32 %inc.i29.i321.i, %sub.i315.i
  br i1 %exitcond.not.i30.i322.i, label %for.inc.i31.i323.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge, label %for.inc.i31.i323.i.for.body.i28.i320.i_crit_edge

for.inc.i31.i323.i.for.body.i28.i320.i_crit_edge: ; preds = %for.inc.i31.i323.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i320.i

for.inc.i31.i323.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge: ; preds = %for.inc.i31.i323.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i326.i

debugifc_count_nonwhitespace.exit.i326.i:         ; preds = %for.inc.i31.i323.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge, %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge, %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge523, %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge524
  %scnt.0.lcssa.i32.i324.i = phi i32 [ %scnt.019.i26.i318.i, %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge ], [ %scnt.019.i26.i318.i, %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge523 ], [ %scnt.019.i26.i318.i, %for.body.i28.i320.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge524 ], [ %sub.i315.i, %for.inc.i31.i323.i.debugifc_count_nonwhitespace.exit.i326.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i324.i)
  %tobool2.not.i325.i = icmp eq i32 %scnt.0.lcssa.i32.i324.i, 0
  br i1 %tobool2.not.i325.i, label %debugifc_count_nonwhitespace.exit.i326.i.debugifc_isolate_word.exit332.i_crit_edge, label %if.end4.i328.i

debugifc_count_nonwhitespace.exit.i326.i.debugifc_isolate_word.exit332.i_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i326.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit332.i

if.end4.i328.i:                                   ; preds = %debugifc_count_nonwhitespace.exit.i326.i
  call void @__sanitizer_cov_trace_pc() #7
  %add5.i327.i = add i32 %scnt.0.lcssa.i32.i324.i, %scnt.019.i.i305.i
  br label %debugifc_isolate_word.exit332.i

debugifc_isolate_word.exit332.i:                  ; preds = %if.end4.i328.i, %debugifc_count_nonwhitespace.exit.i326.i.debugifc_isolate_word.exit332.i_crit_edge, %if.end.i317.i.debugifc_isolate_word.exit332.i_crit_edge, %debugifc_count_whitespace.exit.i314.i.debugifc_isolate_word.exit332.i_crit_edge, %for.inc.i.i310.i.debugifc_isolate_word.exit332.i_crit_edge
  %wptr.0.i329.i = phi ptr [ %arrayidx.i.i306.i.le, %if.end4.i328.i ], [ null, %debugifc_count_nonwhitespace.exit.i326.i.debugifc_isolate_word.exit332.i_crit_edge ], [ null, %debugifc_count_whitespace.exit.i314.i.debugifc_isolate_word.exit332.i_crit_edge ], [ null, %if.end.i317.i.debugifc_isolate_word.exit332.i_crit_edge ], [ null, %for.inc.i.i310.i.debugifc_isolate_word.exit332.i_crit_edge ]
  %consume_cnt.0.i330.i = phi i32 [ %add5.i327.i, %if.end4.i328.i ], [ %scnt.019.i.i305.i, %debugifc_count_nonwhitespace.exit.i326.i.debugifc_isolate_word.exit332.i_crit_edge ], [ %sub.i, %debugifc_count_whitespace.exit.i314.i.debugifc_isolate_word.exit332.i_crit_edge ], [ %scnt.019.i.i305.i, %if.end.i317.i.debugifc_isolate_word.exit332.i_crit_edge ], [ %sub.i, %for.inc.i.i310.i.debugifc_isolate_word.exit332.i_crit_edge ]
  %wlen.0.i331.i = phi i32 [ %scnt.0.lcssa.i32.i324.i, %if.end4.i328.i ], [ 0, %debugifc_count_nonwhitespace.exit.i326.i.debugifc_isolate_word.exit332.i_crit_edge ], [ 0, %debugifc_count_whitespace.exit.i314.i.debugifc_isolate_word.exit332.i_crit_edge ], [ 0, %if.end.i317.i.debugifc_isolate_word.exit332.i_crit_edge ], [ 0, %for.inc.i.i310.i.debugifc_isolate_word.exit332.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume_cnt.0.i330.i)
  %tobool72.not.i = icmp eq i32 %consume_cnt.0.i330.i, 0
  br i1 %tobool72.not.i, label %debugifc_isolate_word.exit332.i.cleanup_crit_edge, label %if.end74.i

debugifc_isolate_word.exit332.i.cleanup_crit_edge: ; preds = %debugifc_isolate_word.exit332.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end74.i:                                       ; preds = %debugifc_isolate_word.exit332.i
  %sub75.i = sub i32 %sub.i, %consume_cnt.0.i330.i
  %add.ptr76.i = getelementptr i8, ptr %add.ptr.i, i32 %consume_cnt.0.i330.i
  %tobool77.not.i = icmp eq ptr %wptr.0.i329.i, null
  br i1 %tobool77.not.i, label %if.end74.i.cleanup_crit_edge, label %if.end79.i

if.end74.i.cleanup_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end79.i:                                       ; preds = %if.end74.i
  %25 = zext i32 %wlen.0.i331.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %wlen.0.i331.i, label %if.end79.i.cleanup_crit_edge [
    i32 5, label %debugifc_match_keyword.exit341.i
    i32 4, label %debugifc_match_keyword.exit121
  ]

if.end79.i.cleanup_crit_edge:                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit341.i:                 ; preds = %if.end79.i
  %bcmp.i336.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %wptr.0.i329.i, ptr noundef nonnull dereferenceable(5) @.str.24, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i336.i)
  %tobool4.not.i337.not.i = icmp eq i32 %bcmp.i336.i, 0
  br i1 %tobool4.not.i337.not.i, label %if.then82.i, label %debugifc_match_keyword.exit341.i.cleanup_crit_edge

debugifc_match_keyword.exit341.i.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit341.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then82.i:                                      ; preds = %debugifc_match_keyword.exit341.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %consume_cnt.0.i330.i)
  %cmp18.not.i.i342.i = icmp eq i32 %sub.i, %consume_cnt.0.i330.i
  br i1 %cmp18.not.i.i342.i, label %if.then82.i.if.end104.i_crit_edge, label %if.then82.i.for.body.i.i345.i_crit_edge

if.then82.i.for.body.i.i345.i_crit_edge:          ; preds = %if.then82.i
  br label %for.body.i.i345.i

if.then82.i.if.end104.i_crit_edge:                ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i

for.body.i.i345.i:                                ; preds = %for.inc.i.i348.i.for.body.i.i345.i_crit_edge, %if.then82.i.for.body.i.i345.i_crit_edge
  %scnt.019.i.i343.i = phi i32 [ %inc.i.i346.i, %for.inc.i.i348.i.for.body.i.i345.i_crit_edge ], [ 0, %if.then82.i.for.body.i.i345.i_crit_edge ]
  %arrayidx.i.i344.i = getelementptr i8, ptr %add.ptr76.i, i32 %scnt.019.i.i343.i
  %26 = ptrtoint ptr %arrayidx.i.i344.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i344.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %27, label %debugifc_count_whitespace.exit.i352.i [
    i8 32, label %for.body.i.i345.i.for.inc.i.i348.i_crit_edge
    i8 9, label %for.body.i.i345.i.for.inc.i.i348.i_crit_edge525
    i8 10, label %for.body.i.i345.i.for.inc.i.i348.i_crit_edge526
  ]

for.body.i.i345.i.for.inc.i.i348.i_crit_edge526:  ; preds = %for.body.i.i345.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i348.i

for.body.i.i345.i.for.inc.i.i348.i_crit_edge525:  ; preds = %for.body.i.i345.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i348.i

for.body.i.i345.i.for.inc.i.i348.i_crit_edge:     ; preds = %for.body.i.i345.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i348.i

for.inc.i.i348.i:                                 ; preds = %for.body.i.i345.i.for.inc.i.i348.i_crit_edge, %for.body.i.i345.i.for.inc.i.i348.i_crit_edge525, %for.body.i.i345.i.for.inc.i.i348.i_crit_edge526
  %inc.i.i346.i = add nuw i32 %scnt.019.i.i343.i, 1
  %exitcond.not.i.i347.i = icmp eq i32 %inc.i.i346.i, %sub75.i
  br i1 %exitcond.not.i.i347.i, label %for.inc.i.i348.i.if.end104.i_crit_edge, label %for.inc.i.i348.i.for.body.i.i345.i_crit_edge

for.inc.i.i348.i.for.body.i.i345.i_crit_edge:     ; preds = %for.inc.i.i348.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i345.i

for.inc.i.i348.i.if.end104.i_crit_edge:           ; preds = %for.inc.i.i348.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i

debugifc_count_whitespace.exit.i352.i:            ; preds = %for.body.i.i345.i
  %arrayidx.i.i344.i.le = getelementptr i8, ptr %add.ptr76.i, i32 %scnt.019.i.i343.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75.i, i32 %scnt.019.i.i343.i)
  %tobool.not.i351.i = icmp eq i32 %sub75.i, %scnt.019.i.i343.i
  br i1 %tobool.not.i351.i, label %debugifc_count_whitespace.exit.i352.i.if.end104.i_crit_edge, label %if.end.i355.i

debugifc_count_whitespace.exit.i352.i.if.end104.i_crit_edge: ; preds = %debugifc_count_whitespace.exit.i352.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i

if.end.i355.i:                                    ; preds = %debugifc_count_whitespace.exit.i352.i
  %sub.i353.i = sub i32 %sub75.i, %scnt.019.i.i343.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i353.i)
  %cmp18.not.i25.i354.i = icmp eq i32 %sub.i353.i, 0
  br i1 %cmp18.not.i25.i354.i, label %if.end.i355.i.if.end104.i_crit_edge, label %if.end.i355.i.for.body.i28.i358.i_crit_edge

if.end.i355.i.for.body.i28.i358.i_crit_edge:      ; preds = %if.end.i355.i
  br label %for.body.i28.i358.i

if.end.i355.i.if.end104.i_crit_edge:              ; preds = %if.end.i355.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i

for.body.i28.i358.i:                              ; preds = %for.inc.i31.i361.i.for.body.i28.i358.i_crit_edge, %if.end.i355.i.for.body.i28.i358.i_crit_edge
  %scnt.019.i26.i356.i = phi i32 [ %inc.i29.i359.i, %for.inc.i31.i361.i.for.body.i28.i358.i_crit_edge ], [ 0, %if.end.i355.i.for.body.i28.i358.i_crit_edge ]
  %arrayidx.i27.i357.i = getelementptr i8, ptr %arrayidx.i.i344.i.le, i32 %scnt.019.i26.i356.i
  %29 = ptrtoint ptr %arrayidx.i27.i357.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i27.i357.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %30, label %for.inc.i31.i361.i [
    i8 32, label %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge
    i8 9, label %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge527
    i8 10, label %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge528
  ]

for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge528: ; preds = %for.body.i28.i358.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i364.i

for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge527: ; preds = %for.body.i28.i358.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i364.i

for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge: ; preds = %for.body.i28.i358.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i364.i

for.inc.i31.i361.i:                               ; preds = %for.body.i28.i358.i
  %inc.i29.i359.i = add nuw i32 %scnt.019.i26.i356.i, 1
  %exitcond.not.i30.i360.i = icmp eq i32 %inc.i29.i359.i, %sub.i353.i
  br i1 %exitcond.not.i30.i360.i, label %for.inc.i31.i361.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge, label %for.inc.i31.i361.i.for.body.i28.i358.i_crit_edge

for.inc.i31.i361.i.for.body.i28.i358.i_crit_edge: ; preds = %for.inc.i31.i361.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i358.i

for.inc.i31.i361.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge: ; preds = %for.inc.i31.i361.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i364.i

debugifc_count_nonwhitespace.exit.i364.i:         ; preds = %for.inc.i31.i361.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge, %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge, %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge527, %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge528
  %scnt.0.lcssa.i32.i362.i = phi i32 [ %scnt.019.i26.i356.i, %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge ], [ %scnt.019.i26.i356.i, %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge527 ], [ %scnt.019.i26.i356.i, %for.body.i28.i358.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge528 ], [ %sub.i353.i, %for.inc.i31.i361.i.debugifc_count_nonwhitespace.exit.i364.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i362.i)
  %tobool2.not.i363.i = icmp eq i32 %scnt.0.lcssa.i32.i362.i, 0
  br i1 %tobool2.not.i363.i, label %debugifc_count_nonwhitespace.exit.i364.i.if.end104.i_crit_edge, label %debugifc_isolate_word.exit370.i

debugifc_count_nonwhitespace.exit.i364.i.if.end104.i_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i364.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i

debugifc_isolate_word.exit370.i:                  ; preds = %debugifc_count_nonwhitespace.exit.i364.i
  %add5.i365.i = sub i32 0, %scnt.019.i.i343.i
  call void @__sanitizer_cov_trace_cmp4(i32 %scnt.0.lcssa.i32.i362.i, i32 %add5.i365.i)
  %tobool84.not.i = icmp eq i32 %scnt.0.lcssa.i32.i362.i, %add5.i365.i
  %tobool85.not.i = icmp eq ptr %arrayidx.i.i344.i.le, null
  %or.cond421.i = or i1 %tobool85.not.i, %tobool84.not.i
  br i1 %or.cond421.i, label %debugifc_isolate_word.exit370.i.if.end104.i_crit_edge, label %if.then86.i

debugifc_isolate_word.exit370.i.if.end104.i_crit_edge: ; preds = %debugifc_isolate_word.exit370.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i

if.then86.i:                                      ; preds = %debugifc_isolate_word.exit370.i
  %32 = zext i32 %scnt.0.lcssa.i32.i362.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %scnt.0.lcssa.i32.i362.i, label %if.then86.i.cleanup_crit_edge [
    i32 4, label %debugifc_match_keyword.exit151
    i32 5, label %debugifc_match_keyword.exit141
    i32 6, label %debugifc_match_keyword.exit131
  ]

if.then86.i.cleanup_crit_edge:                    ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit151:                   ; preds = %if.then86.i
  %bcmp.i145 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %arrayidx.i.i344.i.le, ptr noundef nonnull dereferenceable(4) @.str.25, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i145)
  %tobool4.not.i146.not = icmp eq i32 %bcmp.i145, 0
  br i1 %tobool4.not.i146.not, label %debugifc_match_keyword.exit151.if.end104.i.sink.split_crit_edge, label %debugifc_match_keyword.exit151.cleanup_crit_edge

debugifc_match_keyword.exit151.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit151.if.end104.i.sink.split_crit_edge: ; preds = %debugifc_match_keyword.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i.sink.split

debugifc_match_keyword.exit141:                   ; preds = %if.then86.i
  %bcmp.i135 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i344.i.le, ptr nonnull @.str.26, i32 %scnt.0.lcssa.i32.i362.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i135)
  %tobool4.not.i136.not = icmp eq i32 %bcmp.i135, 0
  br i1 %tobool4.not.i136.not, label %debugifc_match_keyword.exit141.if.end104.i.sink.split_crit_edge, label %debugifc_match_keyword.exit141.cleanup_crit_edge

debugifc_match_keyword.exit141.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit141.if.end104.i.sink.split_crit_edge: ; preds = %debugifc_match_keyword.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i.sink.split

debugifc_match_keyword.exit131:                   ; preds = %if.then86.i
  %bcmp.i125 = tail call i32 @bcmp(ptr nonnull %arrayidx.i.i344.i.le, ptr nonnull @.str.27, i32 %scnt.0.lcssa.i32.i362.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i125)
  %tobool4.not.i126.not = icmp eq i32 %bcmp.i125, 0
  br i1 %tobool4.not.i126.not, label %debugifc_match_keyword.exit131.if.end104.i.sink.split_crit_edge, label %debugifc_match_keyword.exit131.cleanup_crit_edge

debugifc_match_keyword.exit131.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit131.if.end104.i.sink.split_crit_edge: ; preds = %debugifc_match_keyword.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104.i.sink.split

if.end104.i.sink.split:                           ; preds = %debugifc_match_keyword.exit131.if.end104.i.sink.split_crit_edge, %debugifc_match_keyword.exit141.if.end104.i.sink.split_crit_edge, %debugifc_match_keyword.exit151.if.end104.i.sink.split_crit_edge
  %.sink = phi i32 [ 2, %debugifc_match_keyword.exit151.if.end104.i.sink.split_crit_edge ], [ 0, %debugifc_match_keyword.exit141.if.end104.i.sink.split_crit_edge ], [ 1, %debugifc_match_keyword.exit131.if.end104.i.sink.split_crit_edge ]
  tail call void @pvr2_hdw_cpufw_set_enabled(ptr noundef %hdw, i32 noundef %.sink, i32 noundef 1) #5
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.end104.i.sink.split, %debugifc_isolate_word.exit370.i.if.end104.i_crit_edge, %debugifc_count_nonwhitespace.exit.i364.i.if.end104.i_crit_edge, %if.end.i355.i.if.end104.i_crit_edge, %debugifc_count_whitespace.exit.i352.i.if.end104.i_crit_edge, %for.inc.i.i348.i.if.end104.i_crit_edge, %if.then82.i.if.end104.i_crit_edge
  tail call void @pvr2_hdw_cpufw_set_enabled(ptr noundef %hdw, i32 noundef 0, i32 noundef 1) #5
  br label %if.end6

debugifc_match_keyword.exit121:                   ; preds = %if.end79.i
  %bcmp.i115 = tail call i32 @bcmp(ptr nonnull %wptr.0.i329.i, ptr nonnull @.str.28, i32 %wlen.0.i331.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i115)
  %tobool4.not.i116.not = icmp eq i32 %bcmp.i115, 0
  br i1 %tobool4.not.i116.not, label %if.then108.i, label %debugifc_match_keyword.exit121.cleanup_crit_edge

debugifc_match_keyword.exit121.cleanup_crit_edge: ; preds = %debugifc_match_keyword.exit121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then108.i:                                     ; preds = %debugifc_match_keyword.exit121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pvr2_hdw_cpufw_set_enabled(ptr noundef %hdw, i32 noundef 0, i32 noundef 0) #5
  br label %if.end6

debugifc_match_keyword.exit379.i:                 ; preds = %do.end10.i
  %bcmp.i374.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %wptr.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.29, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i374.i)
  %tobool4.not.i375.not.i = icmp eq i32 %bcmp.i374.i, 0
  br i1 %tobool4.not.i375.not.i, label %if.then113.i, label %debugifc_match_keyword.exit379.i.do.body166.i_crit_edge

debugifc_match_keyword.exit379.i.do.body166.i_crit_edge: ; preds = %debugifc_match_keyword.exit379.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body166.i

if.then113.i:                                     ; preds = %debugifc_match_keyword.exit379.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp18.not.i.i380.i = icmp eq i32 %sub.i, 0
  br i1 %cmp18.not.i.i380.i, label %if.then113.i.cleanup_crit_edge, label %if.then113.i.for.body.i.i383.i_crit_edge

if.then113.i.for.body.i.i383.i_crit_edge:         ; preds = %if.then113.i
  br label %for.body.i.i383.i

if.then113.i.cleanup_crit_edge:                   ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i383.i:                                ; preds = %for.inc.i.i386.i.for.body.i.i383.i_crit_edge, %if.then113.i.for.body.i.i383.i_crit_edge
  %scnt.019.i.i381.i = phi i32 [ %inc.i.i384.i, %for.inc.i.i386.i.for.body.i.i383.i_crit_edge ], [ 0, %if.then113.i.for.body.i.i383.i_crit_edge ]
  %arrayidx.i.i382.i = getelementptr i8, ptr %add.ptr.i, i32 %scnt.019.i.i381.i
  %33 = ptrtoint ptr %arrayidx.i.i382.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i382.i, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %34, label %debugifc_count_whitespace.exit.i390.i [
    i8 32, label %for.body.i.i383.i.for.inc.i.i386.i_crit_edge
    i8 9, label %for.body.i.i383.i.for.inc.i.i386.i_crit_edge529
    i8 10, label %for.body.i.i383.i.for.inc.i.i386.i_crit_edge530
  ]

for.body.i.i383.i.for.inc.i.i386.i_crit_edge530:  ; preds = %for.body.i.i383.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i386.i

for.body.i.i383.i.for.inc.i.i386.i_crit_edge529:  ; preds = %for.body.i.i383.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i386.i

for.body.i.i383.i.for.inc.i.i386.i_crit_edge:     ; preds = %for.body.i.i383.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i386.i

for.inc.i.i386.i:                                 ; preds = %for.body.i.i383.i.for.inc.i.i386.i_crit_edge, %for.body.i.i383.i.for.inc.i.i386.i_crit_edge529, %for.body.i.i383.i.for.inc.i.i386.i_crit_edge530
  %inc.i.i384.i = add nuw i32 %scnt.019.i.i381.i, 1
  %exitcond.not.i.i385.i = icmp eq i32 %inc.i.i384.i, %sub.i
  br i1 %exitcond.not.i.i385.i, label %for.inc.i.i386.i.debugifc_isolate_word.exit408.i_crit_edge, label %for.inc.i.i386.i.for.body.i.i383.i_crit_edge

for.inc.i.i386.i.for.body.i.i383.i_crit_edge:     ; preds = %for.inc.i.i386.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i383.i

for.inc.i.i386.i.debugifc_isolate_word.exit408.i_crit_edge: ; preds = %for.inc.i.i386.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit408.i

debugifc_count_whitespace.exit.i390.i:            ; preds = %for.body.i.i383.i
  %arrayidx.i.i382.i.le = getelementptr i8, ptr %add.ptr.i, i32 %scnt.019.i.i381.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %scnt.019.i.i381.i)
  %tobool.not.i389.i = icmp eq i32 %sub.i, %scnt.019.i.i381.i
  br i1 %tobool.not.i389.i, label %debugifc_count_whitespace.exit.i390.i.debugifc_isolate_word.exit408.i_crit_edge, label %if.end.i393.i

debugifc_count_whitespace.exit.i390.i.debugifc_isolate_word.exit408.i_crit_edge: ; preds = %debugifc_count_whitespace.exit.i390.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit408.i

if.end.i393.i:                                    ; preds = %debugifc_count_whitespace.exit.i390.i
  %sub.i391.i = sub i32 %sub.i, %scnt.019.i.i381.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i391.i)
  %cmp18.not.i25.i392.i = icmp eq i32 %sub.i391.i, 0
  br i1 %cmp18.not.i25.i392.i, label %if.end.i393.i.debugifc_isolate_word.exit408.i_crit_edge, label %if.end.i393.i.for.body.i28.i396.i_crit_edge

if.end.i393.i.for.body.i28.i396.i_crit_edge:      ; preds = %if.end.i393.i
  br label %for.body.i28.i396.i

if.end.i393.i.debugifc_isolate_word.exit408.i_crit_edge: ; preds = %if.end.i393.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit408.i

for.body.i28.i396.i:                              ; preds = %for.inc.i31.i399.i.for.body.i28.i396.i_crit_edge, %if.end.i393.i.for.body.i28.i396.i_crit_edge
  %scnt.019.i26.i394.i = phi i32 [ %inc.i29.i397.i, %for.inc.i31.i399.i.for.body.i28.i396.i_crit_edge ], [ 0, %if.end.i393.i.for.body.i28.i396.i_crit_edge ]
  %arrayidx.i27.i395.i = getelementptr i8, ptr %arrayidx.i.i382.i.le, i32 %scnt.019.i26.i394.i
  %36 = ptrtoint ptr %arrayidx.i27.i395.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i27.i395.i, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %37, label %for.inc.i31.i399.i [
    i8 32, label %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge
    i8 9, label %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge531
    i8 10, label %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge532
  ]

for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge532: ; preds = %for.body.i28.i396.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i402.i

for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge531: ; preds = %for.body.i28.i396.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i402.i

for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge: ; preds = %for.body.i28.i396.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i402.i

for.inc.i31.i399.i:                               ; preds = %for.body.i28.i396.i
  %inc.i29.i397.i = add nuw i32 %scnt.019.i26.i394.i, 1
  %exitcond.not.i30.i398.i = icmp eq i32 %inc.i29.i397.i, %sub.i391.i
  br i1 %exitcond.not.i30.i398.i, label %for.inc.i31.i399.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge, label %for.inc.i31.i399.i.for.body.i28.i396.i_crit_edge

for.inc.i31.i399.i.for.body.i28.i396.i_crit_edge: ; preds = %for.inc.i31.i399.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i396.i

for.inc.i31.i399.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge: ; preds = %for.inc.i31.i399.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i402.i

debugifc_count_nonwhitespace.exit.i402.i:         ; preds = %for.inc.i31.i399.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge, %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge, %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge531, %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge532
  %scnt.0.lcssa.i32.i400.i = phi i32 [ %scnt.019.i26.i394.i, %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge ], [ %scnt.019.i26.i394.i, %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge531 ], [ %scnt.019.i26.i394.i, %for.body.i28.i396.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge532 ], [ %sub.i391.i, %for.inc.i31.i399.i.debugifc_count_nonwhitespace.exit.i402.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i400.i)
  %tobool2.not.i401.i = icmp eq i32 %scnt.0.lcssa.i32.i400.i, 0
  br i1 %tobool2.not.i401.i, label %debugifc_count_nonwhitespace.exit.i402.i.debugifc_isolate_word.exit408.i_crit_edge, label %if.end4.i404.i

debugifc_count_nonwhitespace.exit.i402.i.debugifc_isolate_word.exit408.i_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i402.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit408.i

if.end4.i404.i:                                   ; preds = %debugifc_count_nonwhitespace.exit.i402.i
  call void @__sanitizer_cov_trace_pc() #7
  %add5.i403.i = add i32 %scnt.0.lcssa.i32.i400.i, %scnt.019.i.i381.i
  br label %debugifc_isolate_word.exit408.i

debugifc_isolate_word.exit408.i:                  ; preds = %if.end4.i404.i, %debugifc_count_nonwhitespace.exit.i402.i.debugifc_isolate_word.exit408.i_crit_edge, %if.end.i393.i.debugifc_isolate_word.exit408.i_crit_edge, %debugifc_count_whitespace.exit.i390.i.debugifc_isolate_word.exit408.i_crit_edge, %for.inc.i.i386.i.debugifc_isolate_word.exit408.i_crit_edge
  %wptr.0.i405.i = phi ptr [ %arrayidx.i.i382.i.le, %if.end4.i404.i ], [ null, %debugifc_count_nonwhitespace.exit.i402.i.debugifc_isolate_word.exit408.i_crit_edge ], [ null, %debugifc_count_whitespace.exit.i390.i.debugifc_isolate_word.exit408.i_crit_edge ], [ null, %if.end.i393.i.debugifc_isolate_word.exit408.i_crit_edge ], [ null, %for.inc.i.i386.i.debugifc_isolate_word.exit408.i_crit_edge ]
  %consume_cnt.0.i406.i = phi i32 [ %add5.i403.i, %if.end4.i404.i ], [ %scnt.019.i.i381.i, %debugifc_count_nonwhitespace.exit.i402.i.debugifc_isolate_word.exit408.i_crit_edge ], [ %sub.i, %debugifc_count_whitespace.exit.i390.i.debugifc_isolate_word.exit408.i_crit_edge ], [ %scnt.019.i.i381.i, %if.end.i393.i.debugifc_isolate_word.exit408.i_crit_edge ], [ %sub.i, %for.inc.i.i386.i.debugifc_isolate_word.exit408.i_crit_edge ]
  %wlen.0.i407.i = phi i32 [ %scnt.0.lcssa.i32.i400.i, %if.end4.i404.i ], [ 0, %debugifc_count_nonwhitespace.exit.i402.i.debugifc_isolate_word.exit408.i_crit_edge ], [ 0, %debugifc_count_whitespace.exit.i390.i.debugifc_isolate_word.exit408.i_crit_edge ], [ 0, %if.end.i393.i.debugifc_isolate_word.exit408.i_crit_edge ], [ 0, %for.inc.i.i386.i.debugifc_isolate_word.exit408.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume_cnt.0.i406.i)
  %tobool115.not.i = icmp eq i32 %consume_cnt.0.i406.i, 0
  br i1 %tobool115.not.i, label %debugifc_isolate_word.exit408.i.cleanup_crit_edge, label %if.end117.i

debugifc_isolate_word.exit408.i.cleanup_crit_edge: ; preds = %debugifc_isolate_word.exit408.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end117.i:                                      ; preds = %debugifc_isolate_word.exit408.i
  %sub118.i = sub i32 %sub.i, %consume_cnt.0.i406.i
  %add.ptr119.i = getelementptr i8, ptr %add.ptr.i, i32 %consume_cnt.0.i406.i
  %tobool120.not.i = icmp ne ptr %wptr.0.i405.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %wlen.0.i407.i)
  %cond = icmp eq i32 %wlen.0.i407.i, 3
  %or.cond260 = select i1 %tobool120.not.i, i1 %cond, i1 false
  br i1 %or.cond260, label %debugifc_match_keyword.exit111, label %if.end117.i.cleanup_crit_edge

if.end117.i.cleanup_crit_edge:                    ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

debugifc_match_keyword.exit111:                   ; preds = %if.end117.i
  %bcmp.i105 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %wptr.0.i405.i, ptr noundef nonnull dereferenceable(3) @.str.30, i32 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i105)
  %tobool4.not.i106.not = icmp eq i32 %bcmp.i105, 0
  br i1 %tobool4.not.i106.not, label %if.end131.i, label %debugifc_match_keyword.exit

debugifc_match_keyword.exit:                      ; preds = %debugifc_match_keyword.exit111
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %wptr.0.i405.i, ptr noundef nonnull dereferenceable(3) @.str.31, i32 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool4.not.i99.not = icmp ne i32 %bcmp.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub118.i)
  %cmp18.not.i.i68 = icmp eq i32 %sub118.i, 0
  %or.cond439 = select i1 %tobool4.not.i99.not, i1 true, i1 %cmp18.not.i.i68
  br i1 %or.cond439, label %debugifc_match_keyword.exit.cleanup_crit_edge, label %debugifc_match_keyword.exit.for.body.i.i71.preheader_crit_edge

debugifc_match_keyword.exit.for.body.i.i71.preheader_crit_edge: ; preds = %debugifc_match_keyword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i71.preheader

debugifc_match_keyword.exit.cleanup_crit_edge:    ; preds = %debugifc_match_keyword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end131.i:                                      ; preds = %debugifc_match_keyword.exit111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub118.i)
  %cmp18.not.i.i68.old = icmp eq i32 %sub118.i, 0
  br i1 %cmp18.not.i.i68.old, label %if.end131.i.cleanup_crit_edge, label %if.end131.i.for.body.i.i71.preheader_crit_edge

if.end131.i.for.body.i.i71.preheader_crit_edge:   ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i71.preheader

if.end131.i.cleanup_crit_edge:                    ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.i71.preheader:                         ; preds = %if.end131.i.for.body.i.i71.preheader_crit_edge, %debugifc_match_keyword.exit.for.body.i.i71.preheader_crit_edge
  br label %for.body.i.i71

for.body.i.i71:                                   ; preds = %for.inc.i.i74.for.body.i.i71_crit_edge, %for.body.i.i71.preheader
  %scnt.019.i.i69 = phi i32 [ %inc.i.i72, %for.inc.i.i74.for.body.i.i71_crit_edge ], [ 0, %for.body.i.i71.preheader ]
  %arrayidx.i.i70 = getelementptr i8, ptr %add.ptr119.i, i32 %scnt.019.i.i69
  %39 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i70, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %40, label %debugifc_count_whitespace.exit.i78 [
    i8 32, label %for.body.i.i71.for.inc.i.i74_crit_edge
    i8 9, label %for.body.i.i71.for.inc.i.i74_crit_edge533
    i8 10, label %for.body.i.i71.for.inc.i.i74_crit_edge534
  ]

for.body.i.i71.for.inc.i.i74_crit_edge534:        ; preds = %for.body.i.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i74

for.body.i.i71.for.inc.i.i74_crit_edge533:        ; preds = %for.body.i.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i74

for.body.i.i71.for.inc.i.i74_crit_edge:           ; preds = %for.body.i.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i74

for.inc.i.i74:                                    ; preds = %for.body.i.i71.for.inc.i.i74_crit_edge, %for.body.i.i71.for.inc.i.i74_crit_edge533, %for.body.i.i71.for.inc.i.i74_crit_edge534
  %inc.i.i72 = add nuw i32 %scnt.019.i.i69, 1
  %exitcond.not.i.i73 = icmp eq i32 %inc.i.i72, %sub118.i
  br i1 %exitcond.not.i.i73, label %for.inc.i.i74.debugifc_isolate_word.exit96_crit_edge, label %for.inc.i.i74.for.body.i.i71_crit_edge

for.inc.i.i74.for.body.i.i71_crit_edge:           ; preds = %for.inc.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i71

for.inc.i.i74.debugifc_isolate_word.exit96_crit_edge: ; preds = %for.inc.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit96

debugifc_count_whitespace.exit.i78:               ; preds = %for.body.i.i71
  %add.ptr.i76 = getelementptr i8, ptr %add.ptr119.i, i32 %scnt.019.i.i69
  call void @__sanitizer_cov_trace_cmp4(i32 %sub118.i, i32 %scnt.019.i.i69)
  %tobool.not.i77 = icmp eq i32 %sub118.i, %scnt.019.i.i69
  br i1 %tobool.not.i77, label %debugifc_count_whitespace.exit.i78.debugifc_isolate_word.exit96_crit_edge, label %if.end.i81

debugifc_count_whitespace.exit.i78.debugifc_isolate_word.exit96_crit_edge: ; preds = %debugifc_count_whitespace.exit.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit96

if.end.i81:                                       ; preds = %debugifc_count_whitespace.exit.i78
  %sub.i79 = sub i32 %sub118.i, %scnt.019.i.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i79)
  %cmp18.not.i25.i80 = icmp eq i32 %sub.i79, 0
  br i1 %cmp18.not.i25.i80, label %if.end.i81.debugifc_isolate_word.exit96_crit_edge, label %if.end.i81.for.body.i28.i84_crit_edge

if.end.i81.for.body.i28.i84_crit_edge:            ; preds = %if.end.i81
  br label %for.body.i28.i84

if.end.i81.debugifc_isolate_word.exit96_crit_edge: ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit96

for.body.i28.i84:                                 ; preds = %for.inc.i31.i87.for.body.i28.i84_crit_edge, %if.end.i81.for.body.i28.i84_crit_edge
  %scnt.019.i26.i82 = phi i32 [ %inc.i29.i85, %for.inc.i31.i87.for.body.i28.i84_crit_edge ], [ 0, %if.end.i81.for.body.i28.i84_crit_edge ]
  %arrayidx.i27.i83 = getelementptr i8, ptr %add.ptr.i76, i32 %scnt.019.i26.i82
  %42 = ptrtoint ptr %arrayidx.i27.i83 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i27.i83, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %43, label %for.inc.i31.i87 [
    i8 32, label %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge
    i8 9, label %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge535
    i8 10, label %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge536
  ]

for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge536: ; preds = %for.body.i28.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i90

for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge535: ; preds = %for.body.i28.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i90

for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge: ; preds = %for.body.i28.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i90

for.inc.i31.i87:                                  ; preds = %for.body.i28.i84
  %inc.i29.i85 = add nuw i32 %scnt.019.i26.i82, 1
  %exitcond.not.i30.i86 = icmp eq i32 %inc.i29.i85, %sub.i79
  br i1 %exitcond.not.i30.i86, label %for.inc.i31.i87.debugifc_count_nonwhitespace.exit.i90_crit_edge, label %for.inc.i31.i87.for.body.i28.i84_crit_edge

for.inc.i31.i87.for.body.i28.i84_crit_edge:       ; preds = %for.inc.i31.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i84

for.inc.i31.i87.debugifc_count_nonwhitespace.exit.i90_crit_edge: ; preds = %for.inc.i31.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i90

debugifc_count_nonwhitespace.exit.i90:            ; preds = %for.inc.i31.i87.debugifc_count_nonwhitespace.exit.i90_crit_edge, %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge, %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge535, %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge536
  %scnt.0.lcssa.i32.i88 = phi i32 [ %scnt.019.i26.i82, %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge ], [ %scnt.019.i26.i82, %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge535 ], [ %scnt.019.i26.i82, %for.body.i28.i84.debugifc_count_nonwhitespace.exit.i90_crit_edge536 ], [ %sub.i79, %for.inc.i31.i87.debugifc_count_nonwhitespace.exit.i90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i88)
  %tobool2.not.i89 = icmp eq i32 %scnt.0.lcssa.i32.i88, 0
  br i1 %tobool2.not.i89, label %debugifc_count_nonwhitespace.exit.i90.debugifc_isolate_word.exit96_crit_edge, label %if.end4.i92

debugifc_count_nonwhitespace.exit.i90.debugifc_isolate_word.exit96_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_isolate_word.exit96

if.end4.i92:                                      ; preds = %debugifc_count_nonwhitespace.exit.i90
  call void @__sanitizer_cov_trace_pc() #7
  %add5.i91 = add i32 %scnt.0.lcssa.i32.i88, %scnt.019.i.i69
  br label %debugifc_isolate_word.exit96

debugifc_isolate_word.exit96:                     ; preds = %if.end4.i92, %debugifc_count_nonwhitespace.exit.i90.debugifc_isolate_word.exit96_crit_edge, %if.end.i81.debugifc_isolate_word.exit96_crit_edge, %debugifc_count_whitespace.exit.i78.debugifc_isolate_word.exit96_crit_edge, %for.inc.i.i74.debugifc_isolate_word.exit96_crit_edge
  %wptr.0.i93 = phi ptr [ %add.ptr.i76, %if.end4.i92 ], [ null, %debugifc_count_nonwhitespace.exit.i90.debugifc_isolate_word.exit96_crit_edge ], [ null, %debugifc_count_whitespace.exit.i78.debugifc_isolate_word.exit96_crit_edge ], [ null, %if.end.i81.debugifc_isolate_word.exit96_crit_edge ], [ null, %for.inc.i.i74.debugifc_isolate_word.exit96_crit_edge ]
  %consume_cnt.0.i94 = phi i32 [ %add5.i91, %if.end4.i92 ], [ %scnt.019.i.i69, %debugifc_count_nonwhitespace.exit.i90.debugifc_isolate_word.exit96_crit_edge ], [ %sub118.i, %debugifc_count_whitespace.exit.i78.debugifc_isolate_word.exit96_crit_edge ], [ %scnt.019.i.i69, %if.end.i81.debugifc_isolate_word.exit96_crit_edge ], [ %sub118.i, %for.inc.i.i74.debugifc_isolate_word.exit96_crit_edge ]
  %wlen.0.i95 = phi i32 [ %scnt.0.lcssa.i32.i88, %if.end4.i92 ], [ 0, %debugifc_count_nonwhitespace.exit.i90.debugifc_isolate_word.exit96_crit_edge ], [ 0, %debugifc_count_whitespace.exit.i78.debugifc_isolate_word.exit96_crit_edge ], [ 0, %if.end.i81.debugifc_isolate_word.exit96_crit_edge ], [ 0, %for.inc.i.i74.debugifc_isolate_word.exit96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume_cnt.0.i94)
  %tobool133.not.i = icmp eq i32 %consume_cnt.0.i94, 0
  br i1 %tobool133.not.i, label %debugifc_isolate_word.exit96.cleanup_crit_edge, label %if.end135.i

debugifc_isolate_word.exit96.cleanup_crit_edge:   ; preds = %debugifc_isolate_word.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end135.i:                                      ; preds = %debugifc_isolate_word.exit96
  %sub136.i = sub i32 %sub118.i, %consume_cnt.0.i94
  %add.ptr137.i = getelementptr i8, ptr %add.ptr119.i, i32 %consume_cnt.0.i94
  %tobool138.not.i = icmp eq ptr %wptr.0.i93, null
  br i1 %tobool138.not.i, label %if.end135.i.cleanup_crit_edge, label %if.end140.i

if.end135.i.cleanup_crit_edge:                    ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end140.i:                                      ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wlen.0.i95)
  %cmp.i34 = icmp ugt i32 %wlen.0.i95, 1
  br i1 %cmp.i34, label %land.lhs.true.i36, label %if.else.i43

land.lhs.true.i36:                                ; preds = %if.end140.i
  %45 = ptrtoint ptr %wptr.0.i93 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wptr.0.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %46)
  %cmp1.i35 = icmp eq i8 %46, 48
  br i1 %cmp1.i35, label %land.lhs.true3.i38, label %land.lhs.true.i36.land.lhs.true14.i46_crit_edge

land.lhs.true.i36.land.lhs.true14.i46_crit_edge:  ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true14.i46

land.lhs.true3.i38:                               ; preds = %land.lhs.true.i36
  %arrayidx4.i37 = getelementptr i8, ptr %wptr.0.i93, i32 1
  %47 = ptrtoint ptr %arrayidx4.i37 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.i37, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %48, label %land.lhs.true3.i38.land.lhs.true14.i46_crit_edge [
    i8 120, label %land.lhs.true3.i38.if.then.i41_crit_edge
    i8 88, label %land.lhs.true3.i38.if.then.i41_crit_edge537
  ]

land.lhs.true3.i38.if.then.i41_crit_edge537:      ; preds = %land.lhs.true3.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i41

land.lhs.true3.i38.if.then.i41_crit_edge:         ; preds = %land.lhs.true3.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i41

land.lhs.true3.i38.land.lhs.true14.i46_crit_edge: ; preds = %land.lhs.true3.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true14.i46

if.then.i41:                                      ; preds = %land.lhs.true3.i38.if.then.i41_crit_edge, %land.lhs.true3.i38.if.then.i41_crit_edge537
  %sub.i39 = add i32 %wlen.0.i95, -2
  %add.ptr.i40 = getelementptr i8, ptr %wptr.0.i93, i32 2
  br label %if.end20.i50

if.else.i43:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wlen.0.i95)
  %cmp12.not.i42 = icmp eq i32 %wlen.0.i95, 0
  br i1 %cmp12.not.i42, label %if.else.i43.if.end20.i50_crit_edge, label %if.else.i43.land.lhs.true14.i46_crit_edge

if.else.i43.land.lhs.true14.i46_crit_edge:        ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true14.i46

if.else.i43.if.end20.i50_crit_edge:               ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i50

land.lhs.true14.i46:                              ; preds = %if.else.i43.land.lhs.true14.i46_crit_edge, %land.lhs.true3.i38.land.lhs.true14.i46_crit_edge, %land.lhs.true.i36.land.lhs.true14.i46_crit_edge
  %wlen.0.i95402 = phi i32 [ 1, %if.else.i43.land.lhs.true14.i46_crit_edge ], [ %wlen.0.i95, %land.lhs.true3.i38.land.lhs.true14.i46_crit_edge ], [ %wlen.0.i95, %land.lhs.true.i36.land.lhs.true14.i46_crit_edge ]
  %50 = ptrtoint ptr %wptr.0.i93 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wptr.0.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %51)
  %cmp17.i44 = icmp eq i8 %51, 48
  %spec.select.i45 = select i1 %cmp17.i44, i32 8, i32 10
  br label %if.end20.i50

if.end20.i50:                                     ; preds = %land.lhs.true14.i46, %if.else.i43.if.end20.i50_crit_edge, %if.then.i41
  %buf.addr.0.i47 = phi ptr [ %add.ptr.i40, %if.then.i41 ], [ %wptr.0.i93, %if.else.i43.if.end20.i50_crit_edge ], [ %wptr.0.i93, %land.lhs.true14.i46 ]
  %count.addr.0.i48 = phi i32 [ %sub.i39, %if.then.i41 ], [ 0, %if.else.i43.if.end20.i50_crit_edge ], [ %wlen.0.i95402, %land.lhs.true14.i46 ]
  %radix.0.i49 = phi i32 [ 16, %if.then.i41 ], [ 10, %if.else.i43.if.end20.i50_crit_edge ], [ %spec.select.i45, %land.lhs.true14.i46 ]
  br label %while.cond.i55

while.cond.i55:                                   ; preds = %while.body.i64.while.cond.i55_crit_edge, %if.end20.i50
  %buf.addr.1.i51 = phi ptr [ %buf.addr.0.i47, %if.end20.i50 ], [ %incdec.ptr.i57, %while.body.i64.while.cond.i55_crit_edge ]
  %count.addr.1.i52 = phi i32 [ %count.addr.0.i48, %if.end20.i50 ], [ %dec.i56, %while.body.i64.while.cond.i55_crit_edge ]
  %result.0.i53 = phi i32 [ 0, %if.end20.i50 ], [ %add.i63, %while.body.i64.while.cond.i55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.i52)
  %tobool.not.i54 = icmp eq i32 %count.addr.1.i52, 0
  br i1 %tobool.not.i54, label %if.end144.i, label %while.body.i64

while.body.i64:                                   ; preds = %while.cond.i55
  %dec.i56 = add i32 %count.addr.1.i52, -1
  %incdec.ptr.i57 = getelementptr i8, ptr %buf.addr.1.i51, i32 1
  %52 = ptrtoint ptr %buf.addr.1.i51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf.addr.1.i51, align 1
  %call.i58 = tail call i32 @hex_to_bin(i8 noundef zeroext %53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i58)
  %cmp21.i59 = icmp sgt i32 %call.i58, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i58, i32 %radix.0.i49)
  %cmp24.not.i60 = icmp slt i32 %call.i58, %radix.0.i49
  %or.cond.i61 = select i1 %cmp21.i59, i1 %cmp24.not.i60, i1 false
  %mul.i62 = mul i32 %result.0.i53, %radix.0.i49
  %add.i63 = add i32 %call.i58, %mul.i62
  br i1 %or.cond.i61, label %while.body.i64.while.cond.i55_crit_edge, label %while.body.i64.cleanup_crit_edge

while.body.i64.cleanup_crit_edge:                 ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i64.while.cond.i55_crit_edge:          ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i55

if.end144.i:                                      ; preds = %while.cond.i55
  call void @__sanitizer_cov_trace_cmp4(i32 %sub118.i, i32 %consume_cnt.0.i94)
  %cmp18.not.i.i = icmp eq i32 %sub118.i, %consume_cnt.0.i94
  br i1 %cmp18.not.i.i, label %if.end144.i.debugifc_count_whitespace.exit.i_crit_edge, label %if.end144.i.for.body.i.i_crit_edge

if.end144.i.for.body.i.i_crit_edge:               ; preds = %if.end144.i
  br label %for.body.i.i

if.end144.i.debugifc_count_whitespace.exit.i_crit_edge: ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_whitespace.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end144.i.for.body.i.i_crit_edge
  %scnt.019.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end144.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr137.i, i32 %scnt.019.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %55, label %for.body.i.i.debugifc_count_whitespace.exit.i_crit_edge [
    i8 32, label %for.body.i.i.for.inc.i.i_crit_edge
    i8 9, label %for.body.i.i.for.inc.i.i_crit_edge538
    i8 10, label %for.body.i.i.for.inc.i.i_crit_edge539
  ]

for.body.i.i.for.inc.i.i_crit_edge539:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge538:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.body.i.i.debugifc_count_whitespace.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_whitespace.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge538, %for.body.i.i.for.inc.i.i_crit_edge539
  %inc.i.i = add nuw i32 %scnt.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub136.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end153.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.end153.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153.i

debugifc_count_whitespace.exit.i:                 ; preds = %for.body.i.i.debugifc_count_whitespace.exit.i_crit_edge, %if.end144.i.debugifc_count_whitespace.exit.i_crit_edge
  %scnt.0.lcssa.i.i = phi i32 [ 0, %if.end144.i.debugifc_count_whitespace.exit.i_crit_edge ], [ %scnt.019.i.i, %for.body.i.i.debugifc_count_whitespace.exit.i_crit_edge ]
  %add.ptr.i30 = getelementptr i8, ptr %add.ptr137.i, i32 %scnt.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub136.i, i32 %scnt.0.lcssa.i.i)
  %tobool.not.i31 = icmp eq i32 %sub136.i, %scnt.0.lcssa.i.i
  br i1 %tobool.not.i31, label %debugifc_count_whitespace.exit.i.if.end153.i_crit_edge, label %if.end.i33

debugifc_count_whitespace.exit.i.if.end153.i_crit_edge: ; preds = %debugifc_count_whitespace.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153.i

if.end.i33:                                       ; preds = %debugifc_count_whitespace.exit.i
  %sub.i32 = sub i32 %sub136.i, %scnt.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32)
  %cmp18.not.i25.i = icmp eq i32 %sub.i32, 0
  br i1 %cmp18.not.i25.i, label %if.end.i33.if.end153.i_crit_edge, label %if.end.i33.for.body.i28.i_crit_edge

if.end.i33.for.body.i28.i_crit_edge:              ; preds = %if.end.i33
  br label %for.body.i28.i

if.end.i33.if.end153.i_crit_edge:                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153.i

for.body.i28.i:                                   ; preds = %for.inc.i31.i.for.body.i28.i_crit_edge, %if.end.i33.for.body.i28.i_crit_edge
  %scnt.019.i26.i = phi i32 [ %inc.i29.i, %for.inc.i31.i.for.body.i28.i_crit_edge ], [ 0, %if.end.i33.for.body.i28.i_crit_edge ]
  %arrayidx.i27.i = getelementptr i8, ptr %add.ptr.i30, i32 %scnt.019.i26.i
  %57 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i27.i, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %58, label %for.inc.i31.i [
    i8 32, label %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge
    i8 9, label %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge540
    i8 10, label %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge541
  ]

for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge541: ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i

for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge540: ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i

for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge: ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i

for.inc.i31.i:                                    ; preds = %for.body.i28.i
  %inc.i29.i = add nuw i32 %scnt.019.i26.i, 1
  %exitcond.not.i30.i = icmp eq i32 %inc.i29.i, %sub.i32
  br i1 %exitcond.not.i30.i, label %for.inc.i31.i.debugifc_count_nonwhitespace.exit.i_crit_edge, label %for.inc.i31.i.for.body.i28.i_crit_edge

for.inc.i31.i.for.body.i28.i_crit_edge:           ; preds = %for.inc.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i

for.inc.i31.i.debugifc_count_nonwhitespace.exit.i_crit_edge: ; preds = %for.inc.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %debugifc_count_nonwhitespace.exit.i

debugifc_count_nonwhitespace.exit.i:              ; preds = %for.inc.i31.i.debugifc_count_nonwhitespace.exit.i_crit_edge, %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge, %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge540, %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge541
  %scnt.0.lcssa.i32.i = phi i32 [ %scnt.019.i26.i, %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge ], [ %scnt.019.i26.i, %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge540 ], [ %scnt.019.i26.i, %for.body.i28.i.debugifc_count_nonwhitespace.exit.i_crit_edge541 ], [ %sub.i32, %for.inc.i31.i.debugifc_count_nonwhitespace.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scnt.0.lcssa.i32.i)
  %tobool2.not.i = icmp eq i32 %scnt.0.lcssa.i32.i, 0
  %tobool146.not.i = icmp eq ptr %add.ptr.i30, null
  %or.cond = select i1 %tobool2.not.i, i1 true, i1 %tobool146.not.i
  br i1 %or.cond, label %debugifc_count_nonwhitespace.exit.i.if.end153.i_crit_edge, label %if.then147.i

debugifc_count_nonwhitespace.exit.i.if.end153.i_crit_edge: ; preds = %debugifc_count_nonwhitespace.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153.i

if.then147.i:                                     ; preds = %debugifc_count_nonwhitespace.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %scnt.0.lcssa.i32.i)
  %cmp.i = icmp ugt i32 %scnt.0.lcssa.i32.i, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then147.i.land.lhs.true14.i_crit_edge

if.then147.i.land.lhs.true14.i_crit_edge:         ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true14.i

land.lhs.true.i:                                  ; preds = %if.then147.i
  %60 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %61)
  %cmp1.i = icmp eq i8 %61, 48
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.land.lhs.true14.i_crit_edge

land.lhs.true.i.land.lhs.true14.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true14.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %add.ptr.i30, i32 1
  %62 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx4.i, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %63, label %land.lhs.true3.i.land.lhs.true14.i_crit_edge [
    i8 120, label %land.lhs.true3.i.if.then.i_crit_edge
    i8 88, label %land.lhs.true3.i.if.then.i_crit_edge542
  ]

land.lhs.true3.i.if.then.i_crit_edge542:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true3.i.if.then.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true3.i.land.lhs.true14.i_crit_edge:     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true14.i

if.then.i:                                        ; preds = %land.lhs.true3.i.if.then.i_crit_edge, %land.lhs.true3.i.if.then.i_crit_edge542
  %sub.i26 = add i32 %scnt.0.lcssa.i32.i, -2
  %add.ptr.i27 = getelementptr i8, ptr %add.ptr.i30, i32 2
  br label %if.end20.i

land.lhs.true14.i:                                ; preds = %land.lhs.true3.i.land.lhs.true14.i_crit_edge, %land.lhs.true.i.land.lhs.true14.i_crit_edge, %if.then147.i.land.lhs.true14.i_crit_edge
  %65 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %66)
  %cmp17.i = icmp eq i8 %66, 48
  %spec.select.i = select i1 %cmp17.i, i32 8, i32 10
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true14.i, %if.then.i
  %buf.addr.0.i = phi ptr [ %add.ptr.i27, %if.then.i ], [ %add.ptr.i30, %land.lhs.true14.i ]
  %count.addr.0.i = phi i32 [ %sub.i26, %if.then.i ], [ %scnt.0.lcssa.i32.i, %land.lhs.true14.i ]
  %radix.0.i = phi i32 [ 16, %if.then.i ], [ %spec.select.i, %land.lhs.true14.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end20.i
  %buf.addr.1.i = phi ptr [ %buf.addr.0.i, %if.end20.i ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %count.addr.1.i = phi i32 [ %count.addr.0.i, %if.end20.i ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %result.0.i = phi i32 [ 0, %if.end20.i ], [ %add.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.i)
  %tobool.not.i28 = icmp eq i32 %count.addr.1.i, 0
  br i1 %tobool.not.i28, label %while.cond.i.if.end153.i_crit_edge, label %while.body.i

while.cond.i.if.end153.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i32 %count.addr.1.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.1.i, i32 1
  %67 = ptrtoint ptr %buf.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %buf.addr.1.i, align 1
  %call.i = tail call i32 @hex_to_bin(i8 noundef zeroext %68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp21.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %radix.0.i)
  %cmp24.not.i = icmp slt i32 %call.i, %radix.0.i
  %or.cond.i29 = select i1 %cmp21.i, i1 %cmp24.not.i, i1 false
  %mul.i = mul i32 %result.0.i, %radix.0.i
  %add.i = add i32 %call.i, %mul.i
  br i1 %or.cond.i29, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

if.end153.i:                                      ; preds = %while.cond.i.if.end153.i_crit_edge, %debugifc_count_nonwhitespace.exit.i.if.end153.i_crit_edge, %if.end.i33.if.end153.i_crit_edge, %debugifc_count_whitespace.exit.i.if.end153.i_crit_edge, %for.inc.i.i.if.end153.i_crit_edge
  %msk.i.1 = phi i32 [ -1, %debugifc_count_nonwhitespace.exit.i.if.end153.i_crit_edge ], [ -1, %debugifc_count_whitespace.exit.i.if.end153.i_crit_edge ], [ -1, %if.end.i33.if.end153.i_crit_edge ], [ %result.0.i53, %while.cond.i.if.end153.i_crit_edge ], [ -1, %for.inc.i.i.if.end153.i_crit_edge ]
  %val.i.1 = phi i32 [ %result.0.i53, %debugifc_count_nonwhitespace.exit.i.if.end153.i_crit_edge ], [ %result.0.i53, %debugifc_count_whitespace.exit.i.if.end153.i_crit_edge ], [ %result.0.i53, %if.end.i33.if.end153.i_crit_edge ], [ %result.0.i, %while.cond.i.if.end153.i_crit_edge ], [ %result.0.i53, %for.inc.i.i.if.end153.i_crit_edge ]
  br i1 %tobool4.not.i106.not, label %if.then155.i, label %if.else157.i

if.then155.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #7
  %call156.i = tail call i32 @pvr2_hdw_gpio_chg_dir(ptr noundef %hdw, i32 noundef %msk.i.1, i32 noundef %val.i.1) #5
  br label %pvr2_debugifc_do1cmd.exit

if.else157.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #7
  %call158.i = tail call i32 @pvr2_hdw_gpio_chg_out(ptr noundef %hdw, i32 noundef %msk.i.1, i32 noundef %val.i.1) #5
  br label %pvr2_debugifc_do1cmd.exit

do.body166.i:                                     ; preds = %debugifc_match_keyword.exit379.i.do.body166.i_crit_edge, %debugifc_match_keyword.exit303.i.do.body166.i_crit_edge, %do.end10.i.do.body166.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %69 = load i32, ptr @pvrusb2_debug, align 4
  %and167.i = and i32 %69, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %do.body166.i.cleanup_crit_edge, label %do.end172.i

do.body166.i.cleanup_crit_edge:                   ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end172.i:                                      ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #7
  %call174.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %wlen.0.i.i, ptr noundef nonnull %wptr.0.i.i) #8
  br label %cleanup

pvr2_debugifc_do1cmd.exit:                        ; preds = %if.else157.i, %if.then155.i, %if.then52.i, %if.then47.i, %if.then42.i, %if.then37.i, %if.then32.i
  %retval.1.i = phi i32 [ %call33.i, %if.then32.i ], [ %call38.i, %if.then37.i ], [ %call43.i, %if.then42.i ], [ %call48.i, %if.then47.i ], [ %call53.i, %if.then52.i ], [ %call156.i, %if.then155.i ], [ %call158.i, %if.else157.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp3 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp3, label %pvr2_debugifc_do1cmd.exit.cleanup_crit_edge, label %pvr2_debugifc_do1cmd.exit.if.end6_crit_edge

pvr2_debugifc_do1cmd.exit.if.end6_crit_edge:      ; preds = %pvr2_debugifc_do1cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

pvr2_debugifc_do1cmd.exit.cleanup_crit_edge:      ; preds = %pvr2_debugifc_do1cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %pvr2_debugifc_do1cmd.exit.if.end6_crit_edge, %if.then108.i, %if.end104.i, %if.then57.i, %if.then25.i, %if.end.i.if.end6_crit_edge, %debugifc_isolate_word.exit.i.if.end6_crit_edge, %for.end.if.end6_crit_edge
  %bcnt.0.lcssa371390 = phi i32 [ %bcnt.0.lcssa373, %if.end.i.if.end6_crit_edge ], [ %bcnt.0.lcssa373, %debugifc_isolate_word.exit.i.if.end6_crit_edge ], [ %bcnt.0.lcssa373, %if.then108.i ], [ %bcnt.0.lcssa373, %if.end104.i ], [ %bcnt.0.lcssa373, %if.then57.i ], [ %bcnt.0.lcssa373, %if.then25.i ], [ %bcnt.0.lcssa373, %pvr2_debugifc_do1cmd.exit.if.end6_crit_edge ], [ 0, %for.end.if.end6_crit_edge ]
  %cmp.lcssa374389 = phi i1 [ %cmp.lcssa376, %if.end.i.if.end6_crit_edge ], [ %cmp.lcssa376, %debugifc_isolate_word.exit.i.if.end6_crit_edge ], [ %cmp.lcssa376, %if.then108.i ], [ %cmp.lcssa376, %if.end104.i ], [ %cmp.lcssa376, %if.then57.i ], [ %cmp.lcssa376, %if.then25.i ], [ %cmp.lcssa376, %pvr2_debugifc_do1cmd.exit.if.end6_crit_edge ], [ %cmp298.lcssa, %for.end.if.end6_crit_edge ]
  %inc10 = zext i1 %cmp.lcssa374389 to i32
  %spec.select = add i32 %bcnt.0.lcssa371390, %inc10
  %add.ptr = getelementptr i8, ptr %buf.addr.0307, i32 %spec.select
  %sub = sub i32 %count.addr.0310, %spec.select
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end6.for.cond.preheader_crit_edge

if.end6.for.cond.preheader_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %pvr2_debugifc_do1cmd.exit.cleanup_crit_edge, %do.end172.i, %do.body166.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %while.body.i64.cleanup_crit_edge, %if.end135.i.cleanup_crit_edge, %debugifc_isolate_word.exit96.cleanup_crit_edge, %if.end131.i.cleanup_crit_edge, %debugifc_match_keyword.exit.cleanup_crit_edge, %if.end117.i.cleanup_crit_edge, %debugifc_isolate_word.exit408.i.cleanup_crit_edge, %if.then113.i.cleanup_crit_edge, %debugifc_match_keyword.exit121.cleanup_crit_edge, %debugifc_match_keyword.exit131.cleanup_crit_edge, %debugifc_match_keyword.exit141.cleanup_crit_edge, %debugifc_match_keyword.exit151.cleanup_crit_edge, %if.then86.i.cleanup_crit_edge, %debugifc_match_keyword.exit341.i.cleanup_crit_edge, %if.end79.i.cleanup_crit_edge, %if.end74.i.cleanup_crit_edge, %debugifc_isolate_word.exit332.i.cleanup_crit_edge, %if.then70.i.cleanup_crit_edge, %debugifc_match_keyword.exit161.cleanup_crit_edge, %debugifc_match_keyword.exit171.cleanup_crit_edge, %debugifc_match_keyword.exit181.cleanup_crit_edge, %debugifc_match_keyword.exit201.cleanup_crit_edge, %if.then28.i, %debugifc_match_keyword.exit294.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %debugifc_isolate_word.exit276.i.cleanup_crit_edge, %debugifc_count_nonwhitespace.exit.i270.i.cleanup_crit_edge, %if.end.i261.i.cleanup_crit_edge, %debugifc_count_whitespace.exit.i258.i.cleanup_crit_edge, %for.inc.i.i254.i.cleanup_crit_edge, %if.then13.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then28.i ], [ -22, %do.end172.i ], [ -22, %do.body166.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit294.i.cleanup_crit_edge ], [ -22, %for.inc.i.i254.i.cleanup_crit_edge ], [ -22, %while.body.i.cleanup_crit_edge ], [ -22, %while.body.i64.cleanup_crit_edge ], [ -22, %if.end131.i.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit341.i.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit141.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit151.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit171.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit181.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit201.cleanup_crit_edge ], [ -22, %if.end79.i.cleanup_crit_edge ], [ -22, %if.then86.i.cleanup_crit_edge ], [ -22, %if.end22.i.cleanup_crit_edge ], [ -22, %if.then113.i.cleanup_crit_edge ], [ -22, %if.end135.i.cleanup_crit_edge ], [ -22, %debugifc_isolate_word.exit96.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit.cleanup_crit_edge ], [ -22, %if.end117.i.cleanup_crit_edge ], [ -22, %debugifc_isolate_word.exit408.i.cleanup_crit_edge ], [ -22, %if.then70.i.cleanup_crit_edge ], [ -22, %if.then13.i.cleanup_crit_edge ], [ -22, %if.end.i261.i.cleanup_crit_edge ], [ -22, %debugifc_count_whitespace.exit.i258.i.cleanup_crit_edge ], [ -22, %debugifc_count_nonwhitespace.exit.i270.i.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit121.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit131.cleanup_crit_edge ], [ -22, %if.end74.i.cleanup_crit_edge ], [ -22, %debugifc_isolate_word.exit332.i.cleanup_crit_edge ], [ -22, %debugifc_match_keyword.exit161.cleanup_crit_edge ], [ -22, %debugifc_isolate_word.exit276.i.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %retval.1.i, %pvr2_debugifc_do1cmd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_cpureset_assert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_device_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_cmd_powerup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_cmd_deep_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_upload_firmware2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_cmd_decoder_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_untrip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_cpufw_set_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_gpio_chg_dir(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_gpio_chg_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 120, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 123, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 143, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 144, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 144, i32 32}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 144, i32 41}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 151, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 155, i32 28}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 156, i32 35}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 156, i32 42}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 165, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 191, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pvr2_debugifc_do1cmd._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @pvr2_debugifc_do1cmd._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 192, i32 39}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 197, i32 40}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 201, i32 47}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 203, i32 47}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 205, i32 47}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 207, i32 47}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 209, i32 47}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 211, i32 47}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 213, i32 47}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 219, i32 46}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 224, i32 40}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 229, i32 11}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 232, i32 11}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 235, i32 11}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 243, i32 47}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 249, i32 46}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 257, i32 40}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 259, i32 48}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-debugifc.c", i32 283, i32 2}
!66 = !{ptr @pvr2_debugifc_do1cmd._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pvr2_debugifc_do1cmd._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
