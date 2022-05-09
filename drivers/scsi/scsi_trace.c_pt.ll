; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_trace.c_pt.bc'
source_filename = "../drivers/scsi/scsi_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lba=%u txlen=%u\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lba=%u txlen=%u protect=%u\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" unmap=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lba=%llu txlen=%u protect=%u\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regions=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"READ_CAPACITY_16\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GET_LBA_STATUS\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s lba=%llu alloc_len=%u\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VERIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WRITE_SAME\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s_32 lba=%llu txlen=%u protect=%u ei_lbrt=%u\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REPORT_IDENTIFYING_INFORMATION\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REPORT_TARGET_PORT_GROUPS\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPORT_ALIASES\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"REPORT_SUPPORTED_OPERATION_CODES\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPORT_PRIORITY\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPORT_TIMESTAMP\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MANAGEMENT_PROTOCOL_IN\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s alloc_len=%u\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SET_IDENTIFYING_INFORMATION\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SET_TARGET_PORT_GROUPS\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CHANGE_ALIASES\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_PRIORITY\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_TIMESTAMP\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MANAGEMENT_PROTOCOL_OUT\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPORT_ZONES\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s zone=%llu alloc_len=%u options=%u partial=%u\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLOSE_ZONE\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FINISH_ZONE\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OPEN_ZONE\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RESET_WRITE_POINTER\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s zone=%llu all=%u\00", [44 x i8] zeroinitializer }, align 32
@switch.table.scsi_trace_parse_cdb = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.9, ptr @.str.12], [44 x i8] zeroinitializer }, align 32
@switch.table.scsi_trace_parse_cdb.36 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [48 x i8] zeroinitializer }, align 32
@switch.table.scsi_trace_parse_cdb.37 = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.23, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28], [52 x i8] zeroinitializer }, align 32
@switch.table.scsi_trace_parse_cdb.38 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 8, i64 8, i64 10, i64 40, i64 42, i64 47, i64 65, i64 66, i64 127, i64 136, i64 138, i64 143, i64 147, i64 148, i64 149, i64 158, i64 163, i64 164, i64 168, i64 170, i64 175]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 18]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 16, i64 9, i64 10, i64 11, i64 13]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 30, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 45, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 49, i32 23 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 82, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 140, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 155, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 158, i32 9 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 161, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 168, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 102, i32 9 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 105, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 108, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 111, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 122, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 184, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 187, i32 9 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 190, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 193, i32 9 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 196, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 199, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 202, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 205, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 214, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 230, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 233, i32 9 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 236, i32 9 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 239, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 242, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 245, i32 9 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 272, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 283, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 301, i32 9 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 304, i32 9 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 307, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 310, i32 9 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [29 x i8] c"../drivers/scsi/scsi_trace.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 319, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant [34 x i8] c"switch.table.scsi_trace_parse_cdb\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [37 x i8] c"switch.table.scsi_trace_parse_cdb.36\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [37 x i8] c"switch.table.scsi_trace_parse_cdb.37\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [37 x i8] c"switch.table.scsi_trace_parse_cdb.38\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @switch.table.scsi_trace_parse_cdb, ptr @switch.table.scsi_trace_parse_cdb.36, ptr @switch.table.scsi_trace_parse_cdb.37, ptr @switch.table.scsi_trace_parse_cdb.38], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scsi_trace_parse_cdb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scsi_trace_parse_cdb.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scsi_trace_parse_cdb.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scsi_trace_parse_cdb.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_trace_parse_cdb(ptr noundef %p, ptr noundef readonly %cdb, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 8, label %entry.sw.bb_crit_edge
    i8 10, label %entry.sw.bb_crit_edge158
    i8 40, label %entry.sw.bb1_crit_edge
    i8 47, label %entry.sw.bb1_crit_edge159
    i8 42, label %entry.sw.bb1_crit_edge160
    i8 65, label %entry.sw.bb1_crit_edge161
    i8 -88, label %entry.sw.bb3_crit_edge
    i8 -81, label %entry.sw.bb3_crit_edge162
    i8 -86, label %entry.sw.bb3_crit_edge163
    i8 -120, label %entry.sw.bb5_crit_edge
    i8 -113, label %entry.sw.bb5_crit_edge164
    i8 -118, label %entry.sw.bb5_crit_edge165
    i8 -109, label %entry.sw.bb5_crit_edge166
    i8 66, label %sw.bb7
    i8 -98, label %sw.bb9
    i8 127, label %sw.bb11
    i8 -93, label %sw.bb13
    i8 -92, label %sw.bb15
    i8 -107, label %sw.bb17
    i8 -108, label %sw.bb19
  ]

entry.sw.bb5_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb5

entry.sw.bb5_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb5

entry.sw.bb5_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb5

entry.sw.bb3_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb1_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb_crit_edge158:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge158
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i.i.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %7
  %arrayidx.i = getelementptr i8, ptr %cdb, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %arrayidx1.i.i.i = getelementptr i8, ptr %cdb, i32 2
  %10 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %11 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %arrayidx4.i.i.i = getelementptr i8, ptr %cdb, i32 3
  %12 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %13 to i32
  %arrayidx2.i = getelementptr i8, ptr %cdb, i32 4
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %conv.i = zext i8 %15 to i32
  %spec.select.i = select i1 %tobool.not.i, i32 256, i32 %conv.i
  %shl.i.i.masked.i = and i32 %shl.i.i.i, 2031616
  %or.i.i.masked.i = or i32 %shl3.i.i.i, %shl.i.i.masked.i
  %and.i = or i32 %or.i.i.masked.i, %conv5.i.i.i
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str, i32 noundef %and.i, i32 noundef %spec.select.i) #3
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge159, %entry.sw.bb1_crit_edge160, %entry.sw.bb1_crit_edge161
  %len.i.i.i56 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %len.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i.i56, align 8
  %size.i.i.i57 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %size.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i.i57, align 4
  %arrayidx.i58 = getelementptr i8, ptr %cdb, i32 2
  %20 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx.i58, align 1
  %arrayidx2.i59 = getelementptr i8, ptr %cdb, i32 7
  %22 = ptrtoint ptr %arrayidx2.i59 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx2.i59, align 1
  %conv.i60 = zext i16 %23 to i32
  %arrayidx4.i = getelementptr i8, ptr %cdb, i32 1
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.i, align 1
  %26 = lshr i8 %25, 5
  %27 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %conv.i60, i32 noundef %27) #3
  %28 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cdb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %29)
  %cmp.i = icmp eq i8 %29, 65
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.scsi_trace_rw10.exit_crit_edge

sw.bb1.scsi_trace_rw10.exit_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %scsi_trace_rw10.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.i, align 1
  %32 = lshr i8 %31, 3
  %33 = and i8 %32, 1
  %and.i61 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i32 noundef %and.i61) #3
  br label %scsi_trace_rw10.exit

scsi_trace_rw10.exit:                             ; preds = %if.then.i, %sw.bb1.scsi_trace_rw10.exit_crit_edge
  %34 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19) #3
  %add.ptr.i.i62 = getelementptr i8, ptr %p, i32 %34
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge162, %entry.sw.bb3_crit_edge163
  %len.i.i.i63 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %len.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i.i63, align 8
  %size.i.i.i64 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %size.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i.i.i64, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %36, i32 %38) #3
  %add.ptr.i.i65 = getelementptr i8, ptr %p, i32 %39
  %arrayidx.i66 = getelementptr i8, ptr %cdb, i32 2
  %40 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx.i66, align 1
  %arrayidx2.i67 = getelementptr i8, ptr %cdb, i32 6
  %42 = ptrtoint ptr %arrayidx2.i67 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %arrayidx2.i67, align 1
  %arrayidx4.i68 = getelementptr i8, ptr %cdb, i32 1
  %44 = ptrtoint ptr %arrayidx4.i68 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.i68, align 1
  %46 = lshr i8 %45, 5
  %47 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.1, i32 noundef %41, i32 noundef %43, i32 noundef %47) #3
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge164, %entry.sw.bb5_crit_edge165, %entry.sw.bb5_crit_edge166
  %len.i.i.i69 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %len.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i.i.i69, align 8
  %size.i.i.i70 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %size.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i.i.i70, align 4
  %arrayidx.i71 = getelementptr i8, ptr %cdb, i32 2
  %52 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %arrayidx.i71, align 1
  %arrayidx2.i72 = getelementptr i8, ptr %cdb, i32 10
  %54 = ptrtoint ptr %arrayidx2.i72 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %arrayidx2.i72, align 1
  %arrayidx4.i73 = getelementptr i8, ptr %cdb, i32 1
  %56 = ptrtoint ptr %arrayidx4.i73 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4.i73, align 1
  %58 = lshr i8 %57, 5
  %59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %53, i32 noundef %55, i32 noundef %59) #3
  %60 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cdb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -109, i8 %61)
  %cmp.i74 = icmp eq i8 %61, -109
  br i1 %cmp.i74, label %if.then.i76, label %sw.bb5.scsi_trace_rw16.exit_crit_edge

sw.bb5.scsi_trace_rw16.exit_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %scsi_trace_rw16.exit

if.then.i76:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %62 = ptrtoint ptr %arrayidx4.i73 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx4.i73, align 1
  %64 = lshr i8 %63, 3
  %65 = and i8 %64, 1
  %and.i75 = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i32 noundef %and.i75) #3
  br label %scsi_trace_rw16.exit

scsi_trace_rw16.exit:                             ; preds = %if.then.i76, %sw.bb5.scsi_trace_rw16.exit_crit_edge
  %66 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51) #3
  %add.ptr.i.i77 = getelementptr i8, ptr %p, i32 %66
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i78 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %len.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i.i.i78, align 8
  %size.i.i.i79 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %size.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i.i.i79, align 4
  %71 = tail call i32 @llvm.umin.i32(i32 %68, i32 %70) #3
  %add.ptr.i.i80 = getelementptr i8, ptr %p, i32 %71
  %arrayidx.i81 = getelementptr i8, ptr %cdb, i32 7
  %72 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx.i81, align 1
  %conv.i82 = zext i16 %73 to i32
  %sub.i = add nsw i32 %conv.i82, -8
  %div1.i = lshr i32 %sub.i, 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.4, i32 noundef %div1.i) #3
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb9:                                           ; preds = %entry
  %len.i.i.i83 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %len.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i.i83, align 8
  %size.i.i.i84 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %size.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i.i.i84, align 4
  %arrayidx.i85 = getelementptr i8, ptr %cdb, i32 1
  %78 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i85, align 1
  %80 = and i8 %79, 31
  %and.i86 = zext i8 %80 to i32
  %81 = zext i32 %and.i86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and.i86, label %sw.default.i [
    i32 16, label %sw.bb9.sw.epilog.i_crit_edge
    i32 18, label %sw.bb1.i
  ]

sw.bb9.sw.epilog.i_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @trace_seq_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #3
  br label %scsi_trace_service_action_in.exit

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb9.sw.epilog.i_crit_edge
  %cmd.0.i = phi ptr [ @.str.6, %sw.bb1.i ], [ @.str.5, %sw.bb9.sw.epilog.i_crit_edge ]
  %arrayidx2.i87 = getelementptr i8, ptr %cdb, i32 2
  %82 = ptrtoint ptr %arrayidx2.i87 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %arrayidx2.i87, align 1
  %arrayidx4.i88 = getelementptr i8, ptr %cdb, i32 10
  %84 = ptrtoint ptr %arrayidx4.i88 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %arrayidx4.i88, align 1
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.8, ptr noundef nonnull %cmd.0.i, i64 noundef %83, i32 noundef %85) #3
  br label %scsi_trace_service_action_in.exit

scsi_trace_service_action_in.exit:                ; preds = %sw.epilog.i, %sw.default.i
  %86 = tail call i32 @llvm.umin.i32(i32 %75, i32 %77) #3
  %add.ptr.i.i89 = getelementptr i8, ptr %p, i32 %86
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb11:                                          ; preds = %entry
  %arrayidx.i90 = getelementptr i8, ptr %cdb, i32 8
  %87 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %arrayidx.i90, align 1
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %88, label %sw.default.i91 [
    i16 9, label %sw.bb11.sw.bb.i_crit_edge
    i16 10, label %sw.bb11.sw.bb.i_crit_edge167
    i16 11, label %sw.bb11.sw.bb.i_crit_edge168
    i16 13, label %sw.bb11.sw.bb.i_crit_edge169
  ]

sw.bb11.sw.bb.i_crit_edge169:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

sw.bb11.sw.bb.i_crit_edge168:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

sw.bb11.sw.bb.i_crit_edge167:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

sw.bb11.sw.bb.i_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.bb11.sw.bb.i_crit_edge, %sw.bb11.sw.bb.i_crit_edge167, %sw.bb11.sw.bb.i_crit_edge168, %sw.bb11.sw.bb.i_crit_edge169
  %len.i.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i.i.i.i, align 8
  %size.i.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size.i.i.i.i, align 4
  %switch.tableidx = add i16 %88, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %94 = icmp ult i16 %switch.tableidx, 5
  br i1 %94, label %switch.hole_check, label %sw.bb.i.sw.default.i.i_crit_edge

sw.bb.i.sw.default.i.i_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %switch.hole_check.sw.default.i.i_crit_edge, %sw.bb.i.sw.default.i.i_crit_edge
  tail call void @trace_seq_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #3
  br label %scsi_trace_rw32.exit.i

switch.hole_check:                                ; preds = %sw.bb.i
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %95 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %switch.lobit.not = icmp eq i8 %95, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i.i_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %96 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.scsi_trace_parse_cdb, i32 0, i32 %96
  %97 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %97)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %cdb, i32 12
  %98 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %cdb, i32 20
  %100 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %arrayidx7.i.i, align 1
  %arrayidx9.i.i = getelementptr i8, ptr %cdb, i32 28
  %102 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %arrayidx9.i.i, align 1
  %arrayidx11.i.i = getelementptr i8, ptr %cdb, i32 10
  %104 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx11.i.i, align 1
  %106 = lshr i8 %105, 5
  %107 = zext i8 %106 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.13, ptr noundef nonnull %switch.load, i64 noundef %99, i32 noundef %103, i32 noundef %107, i32 noundef %101) #3
  %108 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %arrayidx.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %109)
  %cmp.i.i = icmp eq i16 %109, 13
  br i1 %cmp.i.i, label %if.then.i.i, label %switch.lookup.scsi_trace_rw32.exit.i_crit_edge

switch.lookup.scsi_trace_rw32.exit.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %scsi_trace_rw32.exit.i

if.then.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  %110 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx11.i.i, align 1
  %112 = lshr i8 %111, 3
  %113 = and i8 %112, 1
  %and.i.i = zext i8 %113 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i32 noundef %and.i.i) #3
  br label %scsi_trace_rw32.exit.i

scsi_trace_rw32.exit.i:                           ; preds = %if.then.i.i, %switch.lookup.scsi_trace_rw32.exit.i_crit_edge, %sw.default.i.i
  %114 = tail call i32 @llvm.umin.i32(i32 %91, i32 %93) #3
  br label %scsi_trace_varlen.exit

sw.default.i91:                                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i1.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %115 = ptrtoint ptr %len.i.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len.i.i.i1.i, align 8
  %size.i.i.i2.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %size.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size.i.i.i2.i, align 4
  %119 = tail call i32 @llvm.umin.i32(i32 %116, i32 %118) #3
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 45) #3
  br label %scsi_trace_varlen.exit

scsi_trace_varlen.exit:                           ; preds = %sw.default.i91, %scsi_trace_rw32.exit.i
  %.pn.i = phi i32 [ %119, %sw.default.i91 ], [ %114, %scsi_trace_rw32.exit.i ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  %retval.0.i = getelementptr i8, ptr %p, i32 %.pn.i
  br label %return

sw.bb13:                                          ; preds = %entry
  %len.i.i.i92 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %120 = ptrtoint ptr %len.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i.i.i92, align 8
  %size.i.i.i93 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %size.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %size.i.i.i93, align 4
  %arrayidx.i94 = getelementptr i8, ptr %cdb, i32 1
  %124 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i94, align 1
  %126 = and i8 %125, 31
  %and.i95 = zext i8 %126 to i32
  %switch.tableidx137 = add nsw i32 %and.i95, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx137)
  %127 = icmp ult i32 %switch.tableidx137, 12
  br i1 %127, label %switch.hole_check138, label %sw.bb13.sw.default.i97_crit_edge

sw.bb13.sw.default.i97_crit_edge:                 ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default.i97

sw.default.i97:                                   ; preds = %switch.hole_check138.sw.default.i97_crit_edge, %sw.bb13.sw.default.i97_crit_edge
  tail call void @trace_seq_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #3
  br label %scsi_trace_maintenance_in.exit

switch.hole_check138:                             ; preds = %sw.bb13
  %switch.maskindex140 = trunc i32 %switch.tableidx137 to i16
  %switch.shifted141 = lshr i16 4065, %switch.maskindex140
  %128 = and i16 %switch.shifted141, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %switch.lobit142.not = icmp eq i16 %128, 0
  br i1 %switch.lobit142.not, label %switch.hole_check138.sw.default.i97_crit_edge, label %switch.lookup139

switch.hole_check138.sw.default.i97_crit_edge:    ; preds = %switch.hole_check138
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default.i97

switch.lookup139:                                 ; preds = %switch.hole_check138
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep143 = getelementptr inbounds [12 x ptr], ptr @switch.table.scsi_trace_parse_cdb.36, i32 0, i32 %switch.tableidx137
  %129 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load4_noabort(i32 %129)
  %switch.load144 = load ptr, ptr %switch.gep143, align 4
  %arrayidx8.i = getelementptr i8, ptr %cdb, i32 6
  %130 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %arrayidx8.i, align 1
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load144, i32 noundef %131) #3
  br label %scsi_trace_maintenance_in.exit

scsi_trace_maintenance_in.exit:                   ; preds = %switch.lookup139, %sw.default.i97
  %132 = tail call i32 @llvm.umin.i32(i32 %121, i32 %123) #3
  %add.ptr.i.i100 = getelementptr i8, ptr %p, i32 %132
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb15:                                          ; preds = %entry
  %len.i.i.i101 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %133 = ptrtoint ptr %len.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i.i.i101, align 8
  %size.i.i.i102 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %135 = ptrtoint ptr %size.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %size.i.i.i102, align 4
  %arrayidx.i103 = getelementptr i8, ptr %cdb, i32 1
  %137 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i103, align 1
  %139 = and i8 %138, 31
  %and.i104 = zext i8 %139 to i32
  %switch.tableidx146 = add nsw i32 %and.i104, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx146)
  %140 = icmp ult i32 %switch.tableidx146, 11
  br i1 %140, label %switch.hole_check147, label %sw.bb15.sw.default.i110_crit_edge

sw.bb15.sw.default.i110_crit_edge:                ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default.i110

sw.default.i110:                                  ; preds = %switch.hole_check147.sw.default.i110_crit_edge, %sw.bb15.sw.default.i110_crit_edge
  tail call void @trace_seq_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #3
  br label %scsi_trace_maintenance_out.exit

switch.hole_check147:                             ; preds = %sw.bb15
  %switch.maskindex149 = trunc i32 %switch.tableidx146 to i16
  %switch.shifted150 = lshr i16 1841, %switch.maskindex149
  %141 = and i16 %switch.shifted150, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %switch.lobit151.not = icmp eq i16 %141, 0
  br i1 %switch.lobit151.not, label %switch.hole_check147.sw.default.i110_crit_edge, label %switch.lookup148

switch.hole_check147.sw.default.i110_crit_edge:   ; preds = %switch.hole_check147
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default.i110

switch.lookup148:                                 ; preds = %switch.hole_check147
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep152 = getelementptr inbounds [11 x ptr], ptr @switch.table.scsi_trace_parse_cdb.37, i32 0, i32 %switch.tableidx146
  %142 = ptrtoint ptr %switch.gep152 to i32
  call void @__asan_load4_noabort(i32 %142)
  %switch.load153 = load ptr, ptr %switch.gep152, align 4
  %arrayidx6.i = getelementptr i8, ptr %cdb, i32 6
  %143 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %arrayidx6.i, align 1
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load153, i32 noundef %144) #3
  br label %scsi_trace_maintenance_out.exit

scsi_trace_maintenance_out.exit:                  ; preds = %switch.lookup148, %sw.default.i110
  %145 = tail call i32 @llvm.umin.i32(i32 %134, i32 %136) #3
  %add.ptr.i.i113 = getelementptr i8, ptr %p, i32 %145
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb17:                                          ; preds = %entry
  %len.i.i.i114 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %146 = ptrtoint ptr %len.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len.i.i.i114, align 8
  %size.i.i.i115 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %148 = ptrtoint ptr %size.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %size.i.i.i115, align 4
  %arrayidx.i116 = getelementptr i8, ptr %cdb, i32 1
  %150 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.i116, align 1
  %152 = and i8 %151, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cond.i = icmp eq i8 %152, 0
  br i1 %cond.i, label %sw.bb.i117, label %sw.default.i118

sw.bb.i117:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx1.i = getelementptr i8, ptr %cdb, i32 2
  %153 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 8)
  %154 = load i64, ptr %arrayidx1.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %cdb, i32 10
  %155 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %cdb, i32 14
  %157 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx5.i, align 1
  %and7.i = and i8 %158, 63
  %conv9.i = zext i8 %and7.i to i32
  %159 = lshr i8 %158, 7
  %160 = zext i8 %159 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %154, i32 noundef %156, i32 noundef %conv9.i, i32 noundef %160) #3
  br label %scsi_trace_zbc_in.exit

sw.default.i118:                                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @trace_seq_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #3
  br label %scsi_trace_zbc_in.exit

scsi_trace_zbc_in.exit:                           ; preds = %sw.default.i118, %sw.bb.i117
  %161 = tail call i32 @llvm.umin.i32(i32 %147, i32 %149) #3
  %add.ptr.i.i119 = getelementptr i8, ptr %p, i32 %161
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.bb19:                                          ; preds = %entry
  %len.i.i.i120 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %162 = ptrtoint ptr %len.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i.i.i120, align 8
  %size.i.i.i121 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %size.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size.i.i.i121, align 4
  %arrayidx.i122 = getelementptr i8, ptr %cdb, i32 1
  %166 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i122, align 1
  %168 = and i8 %167, 31
  %and.i123 = zext i8 %168 to i32
  %switch.tableidx155 = add nsw i32 %and.i123, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx155)
  %169 = icmp ult i32 %switch.tableidx155, 4
  br i1 %169, label %switch.lookup154, label %sw.default.i127

sw.default.i127:                                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @trace_seq_puts(ptr noundef %p, ptr noundef nonnull @.str.7) #3
  br label %scsi_trace_zbc_out.exit

switch.lookup154:                                 ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep156 = getelementptr inbounds [4 x ptr], ptr @switch.table.scsi_trace_parse_cdb.38, i32 0, i32 %switch.tableidx155
  %170 = ptrtoint ptr %switch.gep156 to i32
  call void @__asan_load4_noabort(i32 %170)
  %switch.load157 = load ptr, ptr %switch.gep156, align 4
  %arrayidx4.i129 = getelementptr i8, ptr %cdb, i32 2
  %171 = ptrtoint ptr %arrayidx4.i129 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %arrayidx4.i129, align 1
  %arrayidx6.i130 = getelementptr i8, ptr %cdb, i32 14
  %173 = ptrtoint ptr %arrayidx6.i130 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx6.i130, align 1
  %175 = and i8 %174, 1
  %and8.i = zext i8 %175 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.35, ptr noundef nonnull %switch.load157, i64 noundef %172, i32 noundef %and8.i) #3
  br label %scsi_trace_zbc_out.exit

scsi_trace_zbc_out.exit:                          ; preds = %switch.lookup154, %sw.default.i127
  %176 = tail call i32 @llvm.umin.i32(i32 %163, i32 %165) #3
  %add.ptr.i.i132 = getelementptr i8, ptr %p, i32 %176
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i133 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %177 = ptrtoint ptr %len.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len.i.i.i133, align 8
  %size.i.i.i134 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %179 = ptrtoint ptr %size.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %size.i.i.i134, align 4
  %181 = tail call i32 @llvm.umin.i32(i32 %178, i32 %180) #3
  %add.ptr.i.i135 = getelementptr i8, ptr %p, i32 %181
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 45) #3
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  br label %return

return:                                           ; preds = %sw.default, %scsi_trace_zbc_out.exit, %scsi_trace_zbc_in.exit, %scsi_trace_maintenance_out.exit, %scsi_trace_maintenance_in.exit, %scsi_trace_varlen.exit, %scsi_trace_service_action_in.exit, %sw.bb7, %scsi_trace_rw16.exit, %sw.bb3, %scsi_trace_rw10.exit, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i135, %sw.default ], [ %add.ptr.i.i132, %scsi_trace_zbc_out.exit ], [ %add.ptr.i.i119, %scsi_trace_zbc_in.exit ], [ %add.ptr.i.i113, %scsi_trace_maintenance_out.exit ], [ %add.ptr.i.i100, %scsi_trace_maintenance_in.exit ], [ %retval.0.i, %scsi_trace_varlen.exit ], [ %add.ptr.i.i89, %scsi_trace_service_action_in.exit ], [ %add.ptr.i.i80, %sw.bb7 ], [ %add.ptr.i.i77, %scsi_trace_rw16.exit ], [ %add.ptr.i.i65, %sw.bb3 ], [ %add.ptr.i.i62, %scsi_trace_rw10.exit ], [ %add.ptr.i.i, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_trace.c", i32 30, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_trace.c", i32 45, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_trace.c", i32 49, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_trace.c", i32 82, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_trace.c", i32 140, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/scsi_trace.c", i32 155, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/scsi_trace.c", i32 158, i32 9}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/scsi_trace.c", i32 161, i32 21}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/scsi_trace.c", i32 168, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/scsi_trace.c", i32 102, i32 9}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/scsi_trace.c", i32 105, i32 9}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/scsi_trace.c", i32 108, i32 9}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/scsi_trace.c", i32 111, i32 9}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/scsi_trace.c", i32 122, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/scsi_trace.c", i32 184, i32 9}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/scsi_trace.c", i32 187, i32 9}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/scsi_trace.c", i32 190, i32 9}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/scsi_trace.c", i32 193, i32 9}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/scsi_trace.c", i32 196, i32 9}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/scsi_trace.c", i32 199, i32 9}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/scsi_trace.c", i32 202, i32 9}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/scsi_trace.c", i32 205, i32 9}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/scsi_trace.c", i32 214, i32 22}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/scsi_trace.c", i32 230, i32 9}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/scsi_trace.c", i32 233, i32 9}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/scsi_trace.c", i32 236, i32 9}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/scsi_trace.c", i32 239, i32 9}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/scsi_trace.c", i32 242, i32 9}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/scsi_trace.c", i32 245, i32 9}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/scsi_trace.c", i32 272, i32 9}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/scsi_trace.c", i32 283, i32 22}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/scsi_trace.c", i32 301, i32 9}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/scsi_trace.c", i32 304, i32 9}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/scsi_trace.c", i32 307, i32 9}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/scsi_trace.c", i32 310, i32 9}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/scsi_trace.c", i32 319, i32 22}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
