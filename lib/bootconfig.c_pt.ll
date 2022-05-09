; ModuleID = '/llk/IR_all_yes/lib/bootconfig.c_pt.bc'
source_filename = "../lib/bootconfig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xbc_node = type { i16, i16, i16, i16 }

@xbc_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@xbc_node_num = internal unnamed_addr global i32 0, section ".init.data", align 4
@xbc_data_size = internal unnamed_addr global i32 0, section ".init.data", align 4
@xbc_nodes = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/bootconfig.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@brace_index = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bootconfig is already initialized\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Config data is too big\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Config data is empty\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate bootconfig data\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate bootconfig nodes\00", [60 x i8] zeroinitializer }, align 32
@xbc_err_pos = internal unnamed_addr global i32 0, section ".init.data", align 4
@xbc_err_msg = internal unnamed_addr global ptr null, section ".init.data", align 4
@last_parent = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"{}=+;:\0A#\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No delimiter\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong '+' operator\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong ':' operator\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Value is redefined\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid keyword\00", [16 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Too many nodes\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Non printable value\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",;\0A#}\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No value delimiter\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No closing quotes\00", [46 x i8] zeroinitializer }, align 32
@open_brace = internal unnamed_addr global [16 x i32] zeroinitializer, section ".init.data", align 4
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected closing brace\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Exceed max depth of braces\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Brace is not closed\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Empty config\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No closing brace\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Too long key length\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Too many key words\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@__sancov_gen_cov_switch_values.27 = internal global [10 x i64] [i64 8, i64 8, i64 10, i64 35, i64 43, i64 58, i64 59, i64 61, i64 123, i64 125]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 58, i64 61]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 34, i64 35, i64 39]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 45, i64 95]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 171, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 258, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 301, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 302, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 929, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 934, i32 19 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 935, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 942, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 952, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 844, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 848, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 859, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 860, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 697, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 636, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 462, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 564, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 572, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 573, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 585, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 533, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 523, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 781, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 787, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 793, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 807, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [20 x i8] c"../lib/bootconfig.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 815, i32 28 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xbc_get_info(ptr noundef writeonly %node_size, ptr noundef writeonly %data_size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xbc_data, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %node_size, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @xbc_node_num, align 4
  %2 = ptrtoint ptr %node_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %node_size, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %data_size, null
  br i1 %tobool4.not, label %if.end3.return_crit_edge, label %if.then5

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load i32, ptr @xbc_data_size, align 4
  %4 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data_size, align 4
  br label %return

return:                                           ; preds = %if.then5, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xbc_root_node() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xbc_data, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !80

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @xbc_nodes, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xbc_node_index(ptr noundef %node) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xbc_nodes, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %node to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  ret i32 %sub.ptr.div
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xbc_node_get_parent(ptr nocapture noundef readonly %node) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %parent, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %1)
  %cmp = icmp eq i16 %1, 1024
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx = getelementptr %struct.xbc_node, ptr %2, i32 %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx, %cond.false ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xbc_node_get_child(ptr nocapture noundef readonly %node) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %child = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %child to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %child, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx = getelementptr %struct.xbc_node, ptr %2, i32 %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xbc_node_get_next(ptr nocapture noundef readonly %node) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %node to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %node, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx = getelementptr %struct.xbc_node, ptr %2, i32 %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xbc_node_get_data(ptr nocapture noundef readonly %node) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data, align 1
  %2 = and i16 %1, 32767
  %and = zext i16 %2 to i32
  %3 = load i32, ptr @xbc_data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and)
  %cmp.not = icmp ugt i32 %3, %and
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !81

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @xbc_data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %if.end22 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xbc_node_find_subkey(ptr noundef readonly %parent, ptr noundef %key) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %key.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %key.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %key, ptr %key.addr, align 4
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %child.i.i = getelementptr inbounds %struct.xbc_node, ptr %parent, i32 0, i32 1
  %1 = ptrtoint ptr %child.i.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %child.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i.i, label %if.then.while.end_crit_edge, label %xbc_node_get_child.exit.i

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

xbc_node_get_child.exit.i:                        ; preds = %if.then
  %conv.i.i = zext i16 %2 to i32
  %3 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i.i = getelementptr %struct.xbc_node, ptr %3, i32 %conv.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %xbc_node_get_child.exit.i.while.end_crit_edge, label %land.lhs.true.i

xbc_node_get_child.exit.i.while.end_crit_edge:    ; preds = %xbc_node_get_child.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true.i:                                  ; preds = %xbc_node_get_child.exit.i
  %data.i.i = getelementptr %struct.xbc_node, ptr %3, i32 %conv.i.i, i32 3
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.i = icmp slt i16 %5, 0
  br i1 %tobool.i.i, label %if.then.i, label %land.lhs.true.i.land.rhs.preheader_crit_edge

land.lhs.true.i.land.rhs.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

if.then.i:                                        ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i6.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i6.i, label %if.then.i.while.end_crit_edge, label %cond.true.i9.i

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cond.true.i9.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i7.i = zext i16 %7 to i32
  %arrayidx.i8.i = getelementptr %struct.xbc_node, ptr %3, i32 %conv.i7.i
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr @xbc_data, align 4
  %tobool.not.i20 = icmp eq ptr %8, null
  br i1 %tobool.not.i20, label %if.else.while.end_crit_edge, label %if.end.i, !prof !80

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load ptr, ptr @xbc_nodes, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %cond.true.i9.i
  %node.0 = phi ptr [ %arrayidx.i8.i, %cond.true.i9.i ], [ %9, %if.end.i ]
  %tobool2.not41 = icmp eq ptr %node.0, null
  br i1 %tobool2.not41, label %if.end.while.end_crit_edge, label %if.end.land.rhs.preheader_crit_edge

if.end.land.rhs.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.preheader:                               ; preds = %if.end.land.rhs.preheader_crit_edge, %land.lhs.true.i.land.rhs.preheader_crit_edge
  %node.142.ph = phi ptr [ %arrayidx.i.i, %land.lhs.true.i.land.rhs.preheader_crit_edge ], [ %node.0, %if.end.land.rhs.preheader_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %if.end13.land.rhs_crit_edge, %land.rhs.preheader
  %node.142 = phi ptr [ %node.2, %if.end13.land.rhs_crit_edge ], [ %node.142.ph, %land.rhs.preheader ]
  %data.i.i22 = getelementptr inbounds %struct.xbc_node, ptr %node.142, i32 0, i32 3
  %10 = ptrtoint ptr %data.i.i22 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %data.i.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool.i.i23 = icmp sgt i16 %11, -1
  br i1 %tobool.i.i23, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call4 = call fastcc zeroext i1 @xbc_node_match_prefix(ptr noundef nonnull %node.142, ptr noundef nonnull %key.addr) #15
  br i1 %call4, label %if.else7, label %if.then5

if.then5:                                         ; preds = %while.body
  %12 = ptrtoint ptr %node.142 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %node.142, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i24 = icmp eq i16 %13, 0
  br i1 %tobool.not.i24, label %if.then5.while.end_crit_edge, label %cond.true.i

if.then5.while.end_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cond.true.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %13 to i32
  %14 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %14, i32 %conv.i
  br label %if.end13

if.else7:                                         ; preds = %while.body
  %15 = ptrtoint ptr %key.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key.addr, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not = icmp eq i8 %18, 0
  br i1 %cmp.not, label %if.else7.while.end_crit_edge, label %if.then9

if.else7.while.end_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then9:                                         ; preds = %if.else7
  %child.i.i25 = getelementptr inbounds %struct.xbc_node, ptr %node.142, i32 0, i32 1
  %19 = ptrtoint ptr %child.i.i25 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %child.i.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i26 = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i26, label %if.then9.while.end_crit_edge, label %xbc_node_get_child.exit.i30

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

xbc_node_get_child.exit.i30:                      ; preds = %if.then9
  %conv.i.i27 = zext i16 %20 to i32
  %21 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i.i28 = getelementptr %struct.xbc_node, ptr %21, i32 %conv.i.i27
  %tobool.not.i29 = icmp eq ptr %arrayidx.i.i28, null
  br i1 %tobool.not.i29, label %xbc_node_get_child.exit.i30.while.end_crit_edge, label %land.lhs.true.i33

xbc_node_get_child.exit.i30.while.end_crit_edge:  ; preds = %xbc_node_get_child.exit.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true.i33:                                ; preds = %xbc_node_get_child.exit.i30
  %data.i.i31 = getelementptr %struct.xbc_node, ptr %21, i32 %conv.i.i27, i32 3
  %22 = ptrtoint ptr %data.i.i31 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %data.i.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.i32 = icmp slt i16 %23, 0
  br i1 %tobool.i.i32, label %if.then.i35, label %land.lhs.true.i33.if.end13_crit_edge

land.lhs.true.i33.if.end13_crit_edge:             ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then.i35:                                      ; preds = %land.lhs.true.i33
  %24 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx.i.i28, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i6.i34 = icmp eq i16 %25, 0
  br i1 %tobool.not.i6.i34, label %if.then.i35.while.end_crit_edge, label %cond.true.i9.i38

if.then.i35.while.end_crit_edge:                  ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cond.true.i9.i38:                                 ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i7.i36 = zext i16 %25 to i32
  %arrayidx.i8.i37 = getelementptr %struct.xbc_node, ptr %21, i32 %conv.i7.i36
  br label %if.end13

if.end13:                                         ; preds = %cond.true.i9.i38, %land.lhs.true.i33.if.end13_crit_edge, %cond.true.i
  %node.2 = phi ptr [ %arrayidx.i, %cond.true.i ], [ %arrayidx.i.i28, %land.lhs.true.i33.if.end13_crit_edge ], [ %arrayidx.i8.i37, %cond.true.i9.i38 ]
  %tobool2.not = icmp eq ptr %node.2, null
  br i1 %tobool2.not, label %if.end13.while.end_crit_edge, label %if.end13.land.rhs_crit_edge

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.then.i35.while.end_crit_edge, %xbc_node_get_child.exit.i30.while.end_crit_edge, %if.then9.while.end_crit_edge, %if.else7.while.end_crit_edge, %if.then5.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge, %if.else.while.end_crit_edge, %if.then.i.while.end_crit_edge, %xbc_node_get_child.exit.i.while.end_crit_edge, %if.then.while.end_crit_edge
  %node.1.lcssa = phi ptr [ null, %if.end.while.end_crit_edge ], [ null, %xbc_node_get_child.exit.i.while.end_crit_edge ], [ null, %if.then.i.while.end_crit_edge ], [ null, %if.then.while.end_crit_edge ], [ null, %if.else.while.end_crit_edge ], [ null, %if.then9.while.end_crit_edge ], [ null, %if.then.i35.while.end_crit_edge ], [ null, %xbc_node_get_child.exit.i30.while.end_crit_edge ], [ null, %if.then5.while.end_crit_edge ], [ null, %if.end13.while.end_crit_edge ], [ %node.142, %if.else7.while.end_crit_edge ], [ %node.142, %land.rhs.while.end_crit_edge ]
  ret ptr %node.1.lcssa
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xbc_node_match_prefix(ptr nocapture noundef readonly %node, ptr nocapture noundef %prefix) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @xbc_node_get_data(ptr noundef %node) #15
  %call1 = tail call i32 @strlen(ptr noundef %call) #16
  %0 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prefix, align 4
  %call2 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %call, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 %call1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 46, label %if.then4
    i8 0, label %if.end.if.end10_crit_edge
  ]

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %if.then4 ], [ %add.ptr, %if.end.if.end10_crit_edge ]
  %5 = ptrtoint ptr %prefix to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %p.0, ptr %prefix, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xbc_node_find_value(ptr noundef %parent, ptr noundef %key, ptr noundef writeonly %vnode) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @xbc_node_find_subkey(ptr noundef %parent, ptr noundef %key) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.xbc_node, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.i.i = icmp sgt i16 %1, -1
  br i1 %tobool.i.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %child.i = getelementptr inbounds %struct.xbc_node, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %child.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %child.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %xbc_node_get_child.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

xbc_node_get_child.exit:                          ; preds = %if.end
  %conv.i = zext i16 %3 to i32
  %4 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %4, i32 %conv.i
  %tobool3.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool3.not, label %xbc_node_get_child.exit.if.end6_crit_edge, label %land.lhs.true

xbc_node_get_child.exit.if.end6_crit_edge:        ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %xbc_node_get_child.exit
  %data.i = getelementptr %struct.xbc_node, ptr %4, i32 %conv.i, i32 3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i = icmp slt i16 %6, 0
  br i1 %tobool.i, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %xbc_node_get_child.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool3.not23 = phi i1 [ false, %land.lhs.true.if.end6_crit_edge ], [ true, %xbc_node_get_child.exit.if.end6_crit_edge ], [ true, %if.end.if.end6_crit_edge ]
  %cond.i22 = phi ptr [ %arrayidx.i, %land.lhs.true.if.end6_crit_edge ], [ null, %xbc_node_get_child.exit.if.end6_crit_edge ], [ null, %if.end.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %vnode, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %vnode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond.i22, ptr %vnode, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  br i1 %tobool3.not23, label %if.end9.cleanup_crit_edge, label %cond.true

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %cond.i22) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %call11, %cond.true ], [ @.str.1, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xbc_node_compose_key_after(ptr noundef readnone %root, ptr noundef %node, ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %keys = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %keys) #14
  %tobool.not = icmp eq ptr %node, null
  %cmp = icmp eq ptr %node, %root
  %or.cond = or i1 %tobool.not, %cmp
  %0 = call ptr @memset(ptr %keys, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 3
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i = icmp slt i16 %2, 0
  br i1 %tobool.i, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 2
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %parent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %4)
  %cmp.i = icmp eq i16 %4, 1024
  br i1 %cmp.i, label %if.then1.while.end_crit_edge, label %cond.false.i

if.then1.while.end_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cond.false.i:                                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %4 to i32
  %5 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %5, i32 %conv.i
  br label %if.end3

if.end3:                                          ; preds = %cond.false.i, %if.end.if.end3_crit_edge
  %node.addr.0 = phi ptr [ %node, %if.end.if.end3_crit_edge ], [ %arrayidx.i, %cond.false.i ]
  %tobool4.not74 = icmp eq ptr %node.addr.0, null
  %cmp5.not75 = icmp eq ptr %node.addr.0, %root
  %or.cond6276 = or i1 %tobool4.not74, %cmp5.not75
  br i1 %or.cond6276, label %if.end3.while.end_crit_edge, label %while.body.lr.ph

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %6 = load ptr, ptr @xbc_nodes, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.lr.ph
  %depth.078 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end10.while.body_crit_edge ]
  %node.addr.177 = phi ptr [ %node.addr.0, %while.body.lr.ph ], [ %arrayidx.i67, %if.end10.while.body_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %node.addr.177 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %7 = lshr exact i32 %sub.ptr.sub.i, 3
  %conv = trunc i32 %7 to i16
  %inc = add nuw nsw i32 %depth.078, 1
  %arrayidx = getelementptr [16 x i16], ptr %keys, i32 0, i32 %depth.078
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp7 = icmp eq i32 %inc, 16
  br i1 %cmp7, label %while.body.cleanup_crit_edge, label %if.end10

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %parent.i64 = getelementptr inbounds %struct.xbc_node, ptr %node.addr.177, i32 0, i32 2
  %9 = ptrtoint ptr %parent.i64 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %parent.i64, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %10)
  %cmp.i65 = icmp eq i16 %10, 1024
  %conv.i66 = zext i16 %10 to i32
  %arrayidx.i67 = getelementptr %struct.xbc_node, ptr %6, i32 %conv.i66
  %cond.i69 = select i1 %cmp.i65, ptr null, ptr %arrayidx.i67
  %tobool4.not = icmp eq ptr %cond.i69, null
  %cmp5.not = icmp eq ptr %cond.i69, %root
  %or.cond62 = or i1 %tobool4.not, %cmp5.not
  br i1 %or.cond62, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %if.end3.while.end_crit_edge, %if.then1.while.end_crit_edge
  %depth.0.lcssa = phi i32 [ -1, %if.end3.while.end_crit_edge ], [ -1, %if.then1.while.end_crit_edge ], [ %depth.078, %if.end10.while.end_crit_edge ]
  %tobool4.not.lcssa = phi i1 [ %tobool4.not74, %if.end3.while.end_crit_edge ], [ true, %if.then1.while.end_crit_edge ], [ %tobool4.not, %if.end10.while.end_crit_edge ]
  %tobool13.not = icmp ne ptr %root, null
  %11 = and i1 %tobool13.not, %tobool4.not.lcssa
  br i1 %11, label %while.end.cleanup_crit_edge, label %while.cond16.preheader

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond16.preheader:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %depth.0.lcssa)
  %cmp1781 = icmp sgt i32 %depth.0.lcssa, -1
  br i1 %cmp1781, label %while.cond16.preheader.while.body19_crit_edge, label %while.cond16.preheader.cleanup_crit_edge

while.cond16.preheader.cleanup_crit_edge:         ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond16.preheader.while.body19_crit_edge:    ; preds = %while.cond16.preheader
  br label %while.body19

while.body19:                                     ; preds = %if.end28.while.body19_crit_edge, %while.cond16.preheader.while.body19_crit_edge
  %dec85 = phi i32 [ %dec, %if.end28.while.body19_crit_edge ], [ %depth.0.lcssa, %while.cond16.preheader.while.body19_crit_edge ]
  %total.084 = phi i32 [ %add, %if.end28.while.body19_crit_edge ], [ 0, %while.cond16.preheader.while.body19_crit_edge ]
  %size.addr.083 = phi i32 [ %15, %if.end28.while.body19_crit_edge ], [ %size, %while.cond16.preheader.while.body19_crit_edge ]
  %buf.addr.082 = phi ptr [ %buf.addr.1, %if.end28.while.body19_crit_edge ], [ %buf, %while.cond16.preheader.while.body19_crit_edge ]
  %12 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx20 = getelementptr [16 x i16], ptr %keys, i32 0, i32 %dec85
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx20, align 2
  %conv21 = zext i16 %14 to i32
  %add.ptr = getelementptr %struct.xbc_node, ptr %12, i32 %conv21
  %call22 = tail call ptr @xbc_node_get_data(ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec85)
  %tobool23.not = icmp eq i32 %dec85, 0
  %cond = select i1 %tobool23.not, ptr @.str.1, ptr @.str.3
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.addr.082, i32 noundef %size.addr.083, ptr noundef nonnull @.str.2, ptr noundef %call22, ptr noundef nonnull %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %while.body19.cleanup_crit_edge, label %if.end28

while.body19.cleanup_crit_edge:                   ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %while.body19
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.083, i32 %call24)
  %cmp29 = icmp ult i32 %size.addr.083, %call24
  %buf.addr.1.idx = select i1 %cmp29, i32 0, i32 %call24
  %buf.addr.1 = getelementptr i8, ptr %buf.addr.082, i32 %buf.addr.1.idx
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %size.addr.083, i32 %call24)
  %add = add i32 %call24, %total.084
  %dec = add nsw i32 %dec85, -1
  %cmp17 = icmp sgt i32 %dec85, 0
  br i1 %cmp17, label %if.end28.while.body19_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28.while.body19_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body19

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %while.body19.cleanup_crit_edge, %while.cond16.preheader.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ 0, %while.cond16.preheader.cleanup_crit_edge ], [ %call24, %while.body19.cleanup_crit_edge ], [ %add, %if.end28.cleanup_crit_edge ], [ -34, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xbc_node_find_next_leaf(ptr noundef readonly %root, ptr noundef readonly %node) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xbc_data, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !80

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %node, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %tobool6.not = icmp eq ptr %root, null
  br i1 %tobool6.not, label %if.then7, label %if.then5.land.rhs.preheader_crit_edge

if.then5.land.rhs.preheader_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @xbc_nodes, align 4
  br label %found

if.else:                                          ; preds = %if.end
  %child.i.i = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %child.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %child.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i, label %if.else.if.end11_crit_edge, label %xbc_node_get_child.exit.i

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

xbc_node_get_child.exit.i:                        ; preds = %if.else
  %conv.i.i = zext i16 %3 to i32
  %4 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i.i = getelementptr %struct.xbc_node, ptr %4, i32 %conv.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %xbc_node_get_child.exit.i.if.end11_crit_edge, label %land.lhs.true.i

xbc_node_get_child.exit.i.if.end11_crit_edge:     ; preds = %xbc_node_get_child.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true.i:                                  ; preds = %xbc_node_get_child.exit.i
  %data.i.i = getelementptr %struct.xbc_node, ptr %4, i32 %conv.i.i, i32 3
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.i = icmp slt i16 %6, 0
  br i1 %tobool.i.i, label %if.then.i, label %land.lhs.true.i.land.rhs.preheader_crit_edge

land.lhs.true.i.land.rhs.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

if.then.i:                                        ; preds = %land.lhs.true.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i6.i = icmp eq i16 %8, 0
  %conv.i7.i = zext i16 %8 to i32
  %arrayidx.i8.i = getelementptr %struct.xbc_node, ptr %4, i32 %conv.i7.i
  %tobool9.not = icmp eq ptr %arrayidx.i8.i, null
  %or.cond = select i1 %tobool.not.i6.i, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.then.i.if.end11_crit_edge, label %if.then.i.land.rhs.preheader_crit_edge

if.then.i.land.rhs.preheader_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %if.then.i.if.end11_crit_edge, %xbc_node_get_child.exit.i.if.end11_crit_edge, %if.else.if.end11_crit_edge
  %cmp = icmp eq ptr %node, %root
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end11.while.cond_crit_edge

if.end11.while.cond_crit_edge:                    ; preds = %if.end11
  br label %while.cond

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond:                                       ; preds = %if.end21.while.cond_crit_edge, %if.end11.while.cond_crit_edge
  %node.addr.0 = phi ptr [ %arrayidx.i, %if.end21.while.cond_crit_edge ], [ %node, %if.end11.while.cond_crit_edge ]
  %9 = ptrtoint ptr %node.addr.0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %node.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool15.not = icmp eq i16 %10, 0
  br i1 %tobool15.not, label %while.body, label %xbc_node_get_next.exit

while.body:                                       ; preds = %while.cond
  %parent.i = getelementptr inbounds %struct.xbc_node, ptr %node.addr.0, i32 0, i32 2
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %parent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %12)
  %cmp.i = icmp eq i16 %12, 1024
  br i1 %cmp.i, label %xbc_node_get_parent.exit.thread, label %xbc_node_get_parent.exit

xbc_node_get_parent.exit:                         ; preds = %while.body
  %conv.i = zext i16 %12 to i32
  %13 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %13, i32 %conv.i
  %cmp19 = icmp eq ptr %arrayidx.i, %root
  br i1 %cmp19, label %xbc_node_get_parent.exit.cleanup_crit_edge, label %if.end21

xbc_node_get_parent.exit.cleanup_crit_edge:       ; preds = %xbc_node_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xbc_node_get_parent.exit.thread:                  ; preds = %while.body
  %cmp19100 = icmp eq ptr %root, null
  br i1 %cmp19100, label %xbc_node_get_parent.exit.thread.cleanup_crit_edge, label %xbc_node_get_parent.exit.thread.do.end_crit_edge

xbc_node_get_parent.exit.thread.do.end_crit_edge: ; preds = %xbc_node_get_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

xbc_node_get_parent.exit.thread.cleanup_crit_edge: ; preds = %xbc_node_get_parent.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %xbc_node_get_parent.exit
  %tobool22.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool22.not, label %if.end21.do.end_crit_edge, label %if.end21.while.cond_crit_edge, !prof !80

if.end21.while.cond_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end21.do.end_crit_edge, %xbc_node_get_parent.exit.thread.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

xbc_node_get_next.exit:                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i80 = zext i16 %10 to i32
  %14 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i81 = getelementptr %struct.xbc_node, ptr %14, i32 %conv.i80
  br label %found

found:                                            ; preds = %xbc_node_get_next.exit, %if.then7
  %node.addr.1 = phi ptr [ %arrayidx.i81, %xbc_node_get_next.exit ], [ %1, %if.then7 ]
  %tobool56.not109 = icmp eq ptr %node.addr.1, null
  br i1 %tobool56.not109, label %found.cleanup_crit_edge, label %found.land.rhs.preheader_crit_edge

found.land.rhs.preheader_crit_edge:               ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.preheader

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.preheader:                               ; preds = %found.land.rhs.preheader_crit_edge, %if.then.i.land.rhs.preheader_crit_edge, %land.lhs.true.i.land.rhs.preheader_crit_edge, %if.then5.land.rhs.preheader_crit_edge
  %node.addr.2110.ph = phi ptr [ %root, %if.then5.land.rhs.preheader_crit_edge ], [ %arrayidx.i.i, %land.lhs.true.i.land.rhs.preheader_crit_edge ], [ %arrayidx.i8.i, %if.then.i.land.rhs.preheader_crit_edge ], [ %node.addr.1, %found.land.rhs.preheader_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %xbc_node_get_child.exit.land.rhs_crit_edge, %land.rhs.preheader
  %node.addr.2110 = phi ptr [ %arrayidx.i91, %xbc_node_get_child.exit.land.rhs_crit_edge ], [ %node.addr.2110.ph, %land.rhs.preheader ]
  %data.i.i.i = getelementptr inbounds %struct.xbc_node, ptr %node.addr.2110, i32 0, i32 3
  %15 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %data.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool.i.i.i = icmp sgt i16 %16, -1
  br i1 %tobool.i.i.i, label %land.rhs.i, label %land.rhs.while.body60_crit_edge

land.rhs.while.body60_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body60

land.rhs.i:                                       ; preds = %land.rhs
  %child.i = getelementptr inbounds %struct.xbc_node, ptr %node.addr.2110, i32 0, i32 1
  %17 = ptrtoint ptr %child.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %child.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i83 = icmp eq i16 %18, 0
  br i1 %tobool.not.i83, label %land.rhs.i.cleanup_crit_edge, label %xbc_node_is_leaf.exit

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xbc_node_is_leaf.exit:                            ; preds = %land.rhs.i
  %conv.i.i84 = zext i16 %18 to i32
  %19 = load ptr, ptr @xbc_nodes, align 4
  %data.i.i85 = getelementptr %struct.xbc_node, ptr %19, i32 %conv.i.i84, i32 3
  %20 = ptrtoint ptr %data.i.i85 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %data.i.i85, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i.i86 = icmp slt i16 %21, 0
  br i1 %tobool.i.i86, label %xbc_node_is_leaf.exit.cleanup_crit_edge, label %xbc_node_is_leaf.exit.while.body60_crit_edge

xbc_node_is_leaf.exit.while.body60_crit_edge:     ; preds = %xbc_node_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body60

xbc_node_is_leaf.exit.cleanup_crit_edge:          ; preds = %xbc_node_is_leaf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body60:                                     ; preds = %xbc_node_is_leaf.exit.while.body60_crit_edge, %land.rhs.while.body60_crit_edge
  %child.i88 = getelementptr inbounds %struct.xbc_node, ptr %node.addr.2110, i32 0, i32 1
  %22 = ptrtoint ptr %child.i88 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %child.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i89 = icmp eq i16 %23, 0
  br i1 %tobool.not.i89, label %while.body60.cleanup_crit_edge, label %xbc_node_get_child.exit

while.body60.cleanup_crit_edge:                   ; preds = %while.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xbc_node_get_child.exit:                          ; preds = %while.body60
  %conv.i90 = zext i16 %23 to i32
  %24 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i91 = getelementptr %struct.xbc_node, ptr %24, i32 %conv.i90
  %tobool56.not = icmp eq ptr %arrayidx.i91, null
  br i1 %tobool56.not, label %xbc_node_get_child.exit.cleanup_crit_edge, label %xbc_node_get_child.exit.land.rhs_crit_edge

xbc_node_get_child.exit.land.rhs_crit_edge:       ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

xbc_node_get_child.exit.cleanup_crit_edge:        ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %xbc_node_get_child.exit.cleanup_crit_edge, %while.body60.cleanup_crit_edge, %xbc_node_is_leaf.exit.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %found.cleanup_crit_edge, %do.end, %xbc_node_get_parent.exit.thread.cleanup_crit_edge, %xbc_node_get_parent.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %xbc_node_get_parent.exit.thread.cleanup_crit_edge ], [ null, %found.cleanup_crit_edge ], [ null, %while.body60.cleanup_crit_edge ], [ null, %xbc_node_get_child.exit.cleanup_crit_edge ], [ %node.addr.2110, %xbc_node_is_leaf.exit.cleanup_crit_edge ], [ %node.addr.2110, %land.rhs.i.cleanup_crit_edge ], [ null, %xbc_node_get_parent.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xbc_node_find_next_key_value(ptr noundef %root, ptr noundef %leaf) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %leaf, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !80

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leaf, align 4
  %call = tail call ptr @xbc_node_find_next_leaf(ptr noundef %root, ptr noundef %1) #15
  %2 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %leaf, align 4
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.end23.return_crit_edge, label %if.end26

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end26:                                         ; preds = %if.end23
  %child = getelementptr inbounds %struct.xbc_node, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %child to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %child, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool27.not = icmp eq i16 %4, 0
  br i1 %tobool27.not, label %if.end26.return_crit_edge, label %xbc_node_get_child.exit

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

xbc_node_get_child.exit:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %4 to i32
  %5 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %5, i32 %conv.i
  %call30 = tail call ptr @xbc_node_get_data(ptr noundef %arrayidx.i) #15
  br label %return

return:                                           ; preds = %xbc_node_get_child.exit, %if.end26.return_crit_edge, %if.end23.return_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call30, %xbc_node_get_child.exit ], [ null, %if.end23.return_crit_edge ], [ @.str.1, %if.end26.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @xbc_exit() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xbc_data, align 4
  %1 = load i32, ptr @xbc_data_size, align 4
  tail call void @memblock_free(ptr noundef %0, i32 noundef %1) #14
  store ptr null, ptr @xbc_data, align 4
  store i32 0, ptr @xbc_data_size, align 4
  store i32 0, ptr @xbc_node_num, align 4
  %2 = load ptr, ptr @xbc_nodes, align 4
  tail call void @memblock_free(ptr noundef %2, i32 noundef 8192) #14
  store ptr null, ptr @xbc_nodes, align 4
  store i32 0, ptr @brace_index, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xbc_init(ptr nocapture noundef readonly %data, i32 noundef %size, ptr noundef writeonly %emsg, ptr noundef writeonly %epos) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %epos, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %epos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @xbc_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %emsg, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %emsg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.4, ptr %emsg, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp7 = icmp eq i32 %size, 0
  %3 = add i32 %size, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %3)
  %4 = icmp ult i32 %3, -32767
  br i1 %4, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  %tobool9.not = icmp eq ptr %emsg, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.then10

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %cmp7, ptr @.str.6, ptr @.str.5
  %5 = ptrtoint ptr %emsg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %emsg, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %add = add nuw nsw i32 %size, 1
  %call.i.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %add, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  store ptr %call.i.i, ptr @xbc_data, align 4
  %tobool14.not = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %tobool16.not = icmp eq ptr %emsg, null
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %if.then17

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %emsg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.7, ptr %emsg, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %7 = call ptr @memcpy(ptr %call.i.i, ptr %data, i32 %size)
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %size
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  store i32 %add, ptr @xbc_data_size, align 4
  %call.i.i62 = tail call ptr @memblock_alloc_try_nid(i32 noundef 8192, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #14
  store ptr %call.i.i62, ptr @xbc_nodes, align 4
  %tobool22.not = icmp eq ptr %call.i.i62, null
  br i1 %tobool22.not, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end19
  %tobool24.not = icmp eq ptr %emsg, null
  br i1 %tobool24.not, label %if.then23.if.end26_crit_edge, label %if.then25

if.then23.if.end26_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %emsg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.8, ptr %emsg, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then23.if.end26_crit_edge
  tail call void @xbc_exit() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %10 = call ptr @memset(ptr %call.i.i62, i32 0, i32 8192)
  %call28 = tail call fastcc i32 @xbc_parse_tree() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call fastcc i32 @xbc_verify_tree() #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end27.if.end32_crit_edge ], [ %call31, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp33 = icmp slt i32 %ret.0, 0
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end32
  br i1 %tobool.not, label %if.then34.if.end37_crit_edge, label %if.then36

if.then34.if.end37_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load i32, ptr @xbc_err_pos, align 4
  %12 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %epos, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then34.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %emsg, null
  br i1 %tobool38.not, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @xbc_err_msg, align 4
  %14 = ptrtoint ptr %emsg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %emsg, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  tail call void @xbc_exit() #15
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %15 = load i32, ptr @xbc_node_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end40, %if.end26, %if.then17, %if.then15.cleanup_crit_edge, %if.then10, %if.then8.cleanup_crit_edge, %if.then4, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end26 ], [ -16, %if.then4 ], [ -16, %if.then2.cleanup_crit_edge ], [ -34, %if.then10 ], [ -34, %if.then8.cleanup_crit_edge ], [ -12, %if.then17 ], [ -12, %if.then15.cleanup_crit_edge ], [ %ret.0, %if.end40 ], [ %15, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_parse_tree() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #14
  store ptr null, ptr @last_parent, align 4
  %0 = load ptr, ptr @xbc_data, align 4
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %p, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %call = tail call ptr @strpbrk(ptr noundef %3, ptr noundef nonnull @.str.9)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %do.body
  %call1 = tail call ptr @skip_spaces(ptr noundef %3) #14
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.then.do.end_crit_edge, label %if.then.do.end.sink.split_crit_edge

if.then.do.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.sink.split

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end5:                                          ; preds = %do.body
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call, align 1
  %conv6 = zext i8 %7 to i32
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  store i8 0, ptr %call, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %7, label %if.end5.do.cond_crit_edge [
    i8 58, label %if.end5.sw.bb_crit_edge
    i8 43, label %if.end5.sw.bb_crit_edge80
    i8 61, label %if.end5.sw.bb16_crit_edge
    i8 123, label %sw.bb18
    i8 35, label %sw.bb20
    i8 59, label %if.end5.sw.bb22_crit_edge
    i8 10, label %if.end5.sw.bb22_crit_edge81
    i8 125, label %sw.bb24
  ]

if.end5.sw.bb22_crit_edge81:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end5.sw.bb22_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end5.sw.bb16_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.end5.sw.bb_crit_edge80:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end5.do.cond_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge80
  %incdec.ptr7 = getelementptr i8, ptr %call, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %10)
  %cmp9.not = icmp eq i8 %10, 61
  br i1 %cmp9.not, label %sw.bb.sw.bb16_crit_edge, label %do.cond.thread

sw.bb.sw.bb16_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

do.cond.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %7)
  %cmp12 = icmp eq i8 %7, 43
  %cond = select i1 %cmp12, ptr @.str.11, ptr @.str.12
  br label %do.end.sink.split

sw.bb16:                                          ; preds = %sw.bb.sw.bb16_crit_edge, %if.end5.sw.bb16_crit_edge
  %q.0 = phi ptr [ %incdec.ptr, %if.end5.sw.bb16_crit_edge ], [ %incdec.ptr7, %sw.bb.sw.bb16_crit_edge ]
  %call17 = call fastcc i32 @xbc_parse_kv(ptr noundef nonnull %p, ptr noundef %q.0, i32 noundef %conv6) #15
  br label %do.cond

sw.bb18:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = call fastcc i32 @xbc_open_brace(ptr noundef nonnull %p, ptr noundef %incdec.ptr) #15
  br label %do.cond

sw.bb20:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call fastcc ptr @skip_comment(ptr noundef %incdec.ptr)
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb20, %if.end5.sw.bb22_crit_edge, %if.end5.sw.bb22_crit_edge81
  %q.1 = phi ptr [ %incdec.ptr, %if.end5.sw.bb22_crit_edge ], [ %incdec.ptr, %if.end5.sw.bb22_crit_edge81 ], [ %call21, %sw.bb20 ]
  %call23 = call fastcc i32 @xbc_parse_key(ptr noundef nonnull %p, ptr noundef %q.1) #15
  br label %do.cond

sw.bb24:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = call fastcc i32 @xbc_close_brace(ptr noundef nonnull %p, ptr noundef %incdec.ptr) #15
  br label %do.cond

do.cond:                                          ; preds = %sw.bb24, %sw.bb22, %sw.bb18, %sw.bb16, %if.end5.do.cond_crit_edge
  %ret.1 = phi i32 [ 0, %if.end5.do.cond_crit_edge ], [ %call25, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ]
  %tobool26.not = icmp eq i32 %ret.1, 0
  br i1 %tobool26.not, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end.sink.split:                                ; preds = %do.cond.thread, %if.then.do.end.sink.split_crit_edge
  %cond.sink = phi ptr [ %cond, %do.cond.thread ], [ @.str.10, %if.then.do.end.sink.split_crit_edge ]
  %call.lcssa56.sink = phi ptr [ %call, %do.cond.thread ], [ %call1, %if.then.do.end.sink.split_crit_edge ]
  store ptr %cond.sink, ptr @xbc_err_msg, align 4
  %11 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i39 = ptrtoint ptr %call.lcssa56.sink to i32
  %sub.ptr.rhs.cast.i40 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i41 = sub i32 %sub.ptr.lhs.cast.i39, %sub.ptr.rhs.cast.i40
  store i32 %sub.ptr.sub.i41, ptr @xbc_err_pos, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %do.cond.do.end_crit_edge, %if.then.do.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.then.do.end_crit_edge ], [ -22, %do.end.sink.split ], [ %ret.1, %do.cond.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #14
  ret i32 %ret.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_verify_tree() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @brace_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx = getelementptr [16 x i32], ptr @open_brace, i32 0, i32 %0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.xbc_node, ptr %1, i32 %3
  %call = tail call ptr @xbc_node_get_data(ptr noundef %arrayidx1) #15
  store ptr @.str.22, ptr @xbc_err_msg, align 4
  %4 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %5 = load i32, ptr @xbc_node_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6113 = icmp sgt i32 %5, 0
  br i1 %cmp6113, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = load ptr, ptr @xbc_nodes, align 4
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @.str.23, ptr @xbc_err_msg, align 4
  br label %cleanup.sink.split

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.xbc_node, ptr %6, i32 %i.0114
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx7, align 1
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp8 = icmp slt i32 %5, %conv
  br i1 %cmp8, label %if.then10, label %for.cond

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call ptr @xbc_node_get_data(ptr noundef %arrayidx7) #15
  store ptr @.str.24, ptr @xbc_err_msg, align 4
  %9 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i84 = ptrtoint ptr %call11 to i32
  %sub.ptr.rhs.cast.i85 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i86 = sub i32 %sub.ptr.lhs.cast.i84, %sub.ptr.rhs.cast.i85
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = load ptr, ptr @xbc_nodes, align 4
  %tobool15.not128 = icmp eq ptr %10, null
  br i1 %tobool15.not128, label %for.end.cleanup_crit_edge, label %while.body.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %for.end
  %call16147 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %10) #15
  %call17148 = tail call i32 @strlen(ptr noundef %call16147) #16
  %add18149 = add i32 %call17148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add18149)
  %cmp19150 = icmp sgt i32 %add18149, 256
  br i1 %cmp19150, label %while.body.preheader.if.then21_crit_edge, label %while.body.preheader.if.end24_crit_edge

while.body.preheader.if.end24_crit_edge:          ; preds = %while.body.preheader
  br label %if.end24

while.body.preheader.if.then21_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %while.cond.backedge.if.then21_crit_edge, %while.body.preheader.if.then21_crit_edge
  %n.0131.lcssa = phi ptr [ %10, %while.body.preheader.if.then21_crit_edge ], [ %n.0.be, %while.cond.backedge.if.then21_crit_edge ]
  %call22 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %n.0131.lcssa) #15
  store ptr @.str.25, ptr @xbc_err_msg, align 4
  %11 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i87 = ptrtoint ptr %call22 to i32
  %sub.ptr.rhs.cast.i88 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i89 = sub i32 %sub.ptr.lhs.cast.i87, %sub.ptr.rhs.cast.i88
  br label %cleanup.sink.split

if.end24:                                         ; preds = %while.cond.backedge.if.end24_crit_edge, %while.body.preheader.if.end24_crit_edge
  %add18154 = phi i32 [ %add18, %while.cond.backedge.if.end24_crit_edge ], [ %add18149, %while.body.preheader.if.end24_crit_edge ]
  %depth.0129153 = phi i32 [ %depth.0.be, %while.cond.backedge.if.end24_crit_edge ], [ 1, %while.body.preheader.if.end24_crit_edge ]
  %len.0130152 = phi i32 [ %len.0.be, %while.cond.backedge.if.end24_crit_edge ], [ 0, %while.body.preheader.if.end24_crit_edge ]
  %n.0131151 = phi ptr [ %n.0.be, %while.cond.backedge.if.end24_crit_edge ], [ %10, %while.body.preheader.if.end24_crit_edge ]
  %child.i = getelementptr inbounds %struct.xbc_node, ptr %n.0131151, i32 0, i32 1
  %12 = ptrtoint ptr %child.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %child.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.end24.if.end37_crit_edge, label %xbc_node_get_child.exit

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

xbc_node_get_child.exit:                          ; preds = %if.end24
  %conv.i = zext i16 %13 to i32
  %14 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %14, i32 %conv.i
  %tobool26.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool26.not, label %xbc_node_get_child.exit.if.end37_crit_edge, label %land.lhs.true

xbc_node_get_child.exit.if.end37_crit_edge:       ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true:                                    ; preds = %xbc_node_get_child.exit
  %data.i.i = getelementptr %struct.xbc_node, ptr %14, i32 %conv.i, i32 3
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %tobool.i.i = icmp sgt i16 %16, -1
  br i1 %tobool.i.i, label %if.then29, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then29:                                        ; preds = %land.lhs.true
  %inc30 = add i32 %depth.0129153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc30)
  %cmp31 = icmp sgt i32 %inc30, 16
  br i1 %cmp31, label %if.then33, label %if.then29.while.cond.backedge_crit_edge

if.then29.while.cond.backedge_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %arrayidx.i) #15
  store ptr @.str.26, ptr @xbc_err_msg, align 4
  %17 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i90 = ptrtoint ptr %call34 to i32
  %sub.ptr.rhs.cast.i91 = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i92 = sub i32 %sub.ptr.lhs.cast.i90, %sub.ptr.rhs.cast.i91
  br label %cleanup.sink.split

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %xbc_node_get_child.exit.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  %18 = ptrtoint ptr %n.0131151 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %n.0131151, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i93 = icmp eq i16 %19, 0
  br i1 %tobool.not.i93, label %if.end37.while.body41.preheader_crit_edge, label %xbc_node_get_next.exit

if.end37.while.body41.preheader_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body41.preheader

xbc_node_get_next.exit:                           ; preds = %if.end37
  %conv.i94 = zext i16 %19 to i32
  %20 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i95 = getelementptr %struct.xbc_node, ptr %20, i32 %conv.i94
  %tobool40.not115 = icmp eq ptr %arrayidx.i95, null
  br i1 %tobool40.not115, label %xbc_node_get_next.exit.while.body41.preheader_crit_edge, label %xbc_node_get_next.exit.while.cond.backedge_crit_edge

xbc_node_get_next.exit.while.cond.backedge_crit_edge: ; preds = %xbc_node_get_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

xbc_node_get_next.exit.while.body41.preheader_crit_edge: ; preds = %xbc_node_get_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body41.preheader

while.body41.preheader:                           ; preds = %xbc_node_get_next.exit.while.body41.preheader_crit_edge, %if.end37.while.body41.preheader_crit_edge
  br label %while.body41

while.body41:                                     ; preds = %xbc_node_get_next.exit106.while.body41_crit_edge, %while.body41.preheader
  %n.1118 = phi ptr [ %arrayidx.i99, %xbc_node_get_next.exit106.while.body41_crit_edge ], [ %n.0131151, %while.body41.preheader ]
  %len.1117 = phi i32 [ %sub49, %xbc_node_get_next.exit106.while.body41_crit_edge ], [ %len.0130152, %while.body41.preheader ]
  %depth.1116 = phi i32 [ %dec, %xbc_node_get_next.exit106.while.body41_crit_edge ], [ %depth.0129153, %while.body41.preheader ]
  %parent.i = getelementptr inbounds %struct.xbc_node, ptr %n.1118, i32 0, i32 2
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %parent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %22)
  %cmp.i = icmp eq i16 %22, 1024
  br i1 %cmp.i, label %while.body41.cleanup_crit_edge, label %xbc_node_get_parent.exit

while.body41.cleanup_crit_edge:                   ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xbc_node_get_parent.exit:                         ; preds = %while.body41
  %conv.i98 = zext i16 %22 to i32
  %23 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i99 = getelementptr %struct.xbc_node, ptr %23, i32 %conv.i98
  %tobool43.not = icmp eq ptr %arrayidx.i99, null
  br i1 %tobool43.not, label %xbc_node_get_parent.exit.cleanup_crit_edge, label %if.end45

xbc_node_get_parent.exit.cleanup_crit_edge:       ; preds = %xbc_node_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %xbc_node_get_parent.exit
  %call46 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %arrayidx.i99) #15
  %call47 = tail call i32 @strlen(ptr noundef %call46) #16
  %add48.neg = xor i32 %call47, -1
  %sub49 = add i32 %len.1117, %add48.neg
  %dec = add i32 %depth.1116, -1
  %24 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx.i99, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i101 = icmp eq i16 %25, 0
  br i1 %tobool.not.i101, label %if.end45.xbc_node_get_next.exit106_crit_edge, label %cond.true.i104

if.end45.xbc_node_get_next.exit106_crit_edge:     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_node_get_next.exit106

cond.true.i104:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i102 = zext i16 %25 to i32
  %26 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i103 = getelementptr %struct.xbc_node, ptr %26, i32 %conv.i102
  br label %xbc_node_get_next.exit106

xbc_node_get_next.exit106:                        ; preds = %cond.true.i104, %if.end45.xbc_node_get_next.exit106_crit_edge
  %cond.i105 = phi ptr [ %arrayidx.i103, %cond.true.i104 ], [ null, %if.end45.xbc_node_get_next.exit106_crit_edge ]
  %tobool40.not = icmp eq ptr %cond.i105, null
  br i1 %tobool40.not, label %xbc_node_get_next.exit106.while.body41_crit_edge, label %xbc_node_get_next.exit106.while.cond.backedge_crit_edge

xbc_node_get_next.exit106.while.cond.backedge_crit_edge: ; preds = %xbc_node_get_next.exit106
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

xbc_node_get_next.exit106.while.body41_crit_edge: ; preds = %xbc_node_get_next.exit106
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body41

while.cond.backedge:                              ; preds = %xbc_node_get_next.exit106.while.cond.backedge_crit_edge, %xbc_node_get_next.exit.while.cond.backedge_crit_edge, %if.then29.while.cond.backedge_crit_edge
  %depth.0.be = phi i32 [ %inc30, %if.then29.while.cond.backedge_crit_edge ], [ %depth.0129153, %xbc_node_get_next.exit.while.cond.backedge_crit_edge ], [ %dec, %xbc_node_get_next.exit106.while.cond.backedge_crit_edge ]
  %len.0.be = phi i32 [ %add18154, %if.then29.while.cond.backedge_crit_edge ], [ %len.0130152, %xbc_node_get_next.exit.while.cond.backedge_crit_edge ], [ %sub49, %xbc_node_get_next.exit106.while.cond.backedge_crit_edge ]
  %n.0.be = phi ptr [ %arrayidx.i, %if.then29.while.cond.backedge_crit_edge ], [ %arrayidx.i95, %xbc_node_get_next.exit.while.cond.backedge_crit_edge ], [ %cond.i105, %xbc_node_get_next.exit106.while.cond.backedge_crit_edge ]
  %call16 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %n.0.be) #15
  %call17 = tail call i32 @strlen(ptr noundef %call16) #16
  %add = add i32 %len.0.be, 1
  %add18 = add i32 %add, %call17
  %cmp19 = icmp sgt i32 %add18, 256
  br i1 %cmp19, label %while.cond.backedge.if.then21_crit_edge, label %while.cond.backedge.if.end24_crit_edge

while.cond.backedge.if.end24_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

while.cond.backedge.if.then21_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

cleanup.sink.split:                               ; preds = %if.then33, %if.then21, %if.then10, %if.then3, %if.then
  %sub.ptr.sub.i92.sink = phi i32 [ %sub.ptr.sub.i92, %if.then33 ], [ %sub.ptr.sub.i89, %if.then21 ], [ %sub.ptr.sub.i86, %if.then10 ], [ 0, %if.then3 ], [ %sub.ptr.sub.i, %if.then ]
  %retval.0.ph = phi i32 [ -22, %if.then33 ], [ -22, %if.then21 ], [ -22, %if.then10 ], [ -2, %if.then3 ], [ -22, %if.then ]
  store i32 %sub.ptr.sub.i92.sink, ptr @xbc_err_pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %xbc_node_get_parent.exit.cleanup_crit_edge, %while.body41.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %xbc_node_get_parent.exit.cleanup_crit_edge ], [ 0, %while.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_parse_kv(ptr nocapture noundef %k, ptr noundef %v, i32 noundef %op) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %v.addr = alloca ptr, align 4
  %next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %v.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %v, ptr %v.addr, align 4
  %1 = load ptr, ptr @last_parent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #14
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %next, align 4, !annotation !82
  %3 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %k, align 4
  %call = tail call fastcc i32 @__xbc_parse_keys(ptr noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__xbc_parse_value(ptr noundef nonnull %v.addr, ptr noundef nonnull %next) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr @last_parent, align 4
  %child.i = getelementptr inbounds %struct.xbc_node, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %child.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %child.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.end3.if.end19_crit_edge, label %xbc_node_get_child.exit

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

xbc_node_get_child.exit:                          ; preds = %if.end3
  %conv.i = zext i16 %7 to i32
  %8 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %8, i32 %conv.i
  %tobool5.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not, label %xbc_node_get_child.exit.if.end19_crit_edge, label %land.lhs.true

xbc_node_get_child.exit.if.end19_crit_edge:       ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %xbc_node_get_child.exit
  %data.i = getelementptr %struct.xbc_node, ptr %8, i32 %conv.i, i32 3
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i = icmp slt i16 %10, 0
  br i1 %tobool.i, label %if.then7, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then7:                                         ; preds = %land.lhs.true
  %11 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %op, label %if.end17 [
    i32 61, label %if.then9
    i32 58, label %if.then13
  ]

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %v.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v.addr, align 4
  store ptr @.str.13, ptr @xbc_err_msg, align 4
  %14 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store i32 %sub.ptr.sub.i, ptr @xbc_err_pos, align 4
  br label %cleanup

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx.i, align 1
  %17 = ptrtoint ptr %v.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v.addr, align 4
  %call15 = tail call fastcc i32 @xbc_init_node(ptr noundef nonnull %arrayidx.i, ptr noundef %18, i32 noundef 32768) #15
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %16, ptr %arrayidx.i, align 1
  br label %array

if.end17:                                         ; preds = %if.then7
  %child3.i = getelementptr %struct.xbc_node, ptr %8, i32 %conv.i, i32 1
  %20 = ptrtoint ptr %child3.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %child3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not4.i = icmp eq i16 %21, 0
  br i1 %tobool.not4.i, label %if.end17.xbc_last_child.exit_crit_edge, label %xbc_node_get_child.exit.lr.ph.i

if.end17.xbc_last_child.exit_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_last_child.exit

xbc_node_get_child.exit.lr.ph.i:                  ; preds = %if.end17
  %22 = load ptr, ptr @xbc_nodes, align 4
  br label %xbc_node_get_child.exit.i

xbc_node_get_child.exit.i:                        ; preds = %xbc_node_get_child.exit.i.xbc_node_get_child.exit.i_crit_edge, %xbc_node_get_child.exit.lr.ph.i
  %23 = phi i16 [ %21, %xbc_node_get_child.exit.lr.ph.i ], [ %25, %xbc_node_get_child.exit.i.xbc_node_get_child.exit.i_crit_edge ]
  %conv.i.i = zext i16 %23 to i32
  %child.i57 = getelementptr %struct.xbc_node, ptr %22, i32 %conv.i.i, i32 1
  %24 = ptrtoint ptr %child.i57 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %child.i57, align 1
  %tobool.not.i58 = icmp eq i16 %25, 0
  br i1 %tobool.not.i58, label %while.end.loopexit.i, label %xbc_node_get_child.exit.i.xbc_node_get_child.exit.i_crit_edge

xbc_node_get_child.exit.i.xbc_node_get_child.exit.i_crit_edge: ; preds = %xbc_node_get_child.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_node_get_child.exit.i

while.end.loopexit.i:                             ; preds = %xbc_node_get_child.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.xbc_node, ptr %22, i32 %conv.i.i
  br label %xbc_last_child.exit

xbc_last_child.exit:                              ; preds = %while.end.loopexit.i, %if.end17.xbc_last_child.exit_crit_edge
  %node.addr.0.lcssa.i = phi ptr [ %arrayidx.i, %if.end17.xbc_last_child.exit_crit_edge ], [ %arrayidx.i.i, %while.end.loopexit.i ]
  store ptr %node.addr.0.lcssa.i, ptr @last_parent, align 4
  br label %if.end19

if.end19:                                         ; preds = %xbc_last_child.exit, %land.lhs.true.if.end19_crit_edge, %xbc_node_get_child.exit.if.end19_crit_edge, %if.end3.if.end19_crit_edge
  %26 = ptrtoint ptr %v.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v.addr, align 4
  %call.i = tail call fastcc ptr @__xbc_add_sibling(ptr noundef %27, i32 noundef 32768, i1 noundef zeroext true) #17
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.array_crit_edge

if.end19.array_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %array

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

array:                                            ; preds = %if.end19.array_crit_edge, %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call1)
  %cmp24 = icmp eq i32 %call1, 44
  br i1 %cmp24, label %if.then25, label %array.if.end30_crit_edge

array.if.end30_crit_edge:                         ; preds = %array
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25:                                        ; preds = %array
  %call26 = call fastcc i32 @xbc_parse_array(ptr noundef nonnull %next) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then25.cleanup_crit_edge, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %array.if.end30_crit_edge
  %c.0 = phi i32 [ %call26, %if.then25.if.end30_crit_edge ], [ %call1, %array.if.end30_crit_edge ]
  store ptr %1, ptr @last_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %c.0)
  %cmp31 = icmp eq i32 %c.0, 125
  br i1 %cmp31, label %if.then32, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  %28 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 -1
  %call33 = tail call fastcc i32 @__xbc_close_brace(ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.cleanup_crit_edge, label %if.then32.if.end37_crit_edge

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  %30 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next, align 4
  %32 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %k, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then32.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ 0, %if.end37 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ %call26, %if.then25.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_open_brace(ptr nocapture noundef %k, ptr noundef %n) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %k, align 4
  %call = tail call fastcc i32 @__xbc_parse_keys(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %n, ptr %k, align 4
  %3 = load ptr, ptr @last_parent, align 4
  %4 = load ptr, ptr @xbc_nodes, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %5 = load i32, ptr @brace_index, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr @brace_index, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @open_brace, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.div.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 15
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %n, i32 -1
  store ptr @.str.21, ptr @xbc_err_msg, align 4
  %7 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i2.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i3.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i4.i = sub i32 %sub.ptr.lhs.cast.i2.i, %sub.ptr.rhs.cast.i3.i
  store i32 %sub.ptr.sub.i4.i, ptr @xbc_err_pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @skip_comment(ptr noundef readonly %p) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strchr(ptr noundef %p, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @strlen(ptr noundef %p) #16
  %add.ptr = getelementptr i8, ptr %p, i32 %call1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi ptr [ %incdec.ptr, %if.else ], [ %add.ptr, %if.then ]
  ret ptr %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_parse_key(ptr nocapture noundef %k, ptr noundef %n) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @last_parent, align 4
  %1 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %k, align 4
  %call = tail call ptr @strim(ptr noundef %2) #14
  %3 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %k, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @__xbc_parse_keys(ptr noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %0, ptr @last_parent, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %6 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %n, ptr %k, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_close_brace(ptr nocapture noundef %k, ptr noundef %n) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @xbc_parse_key(ptr noundef %k, ptr noundef %n) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %n, i32 -1
  %call1 = tail call fastcc i32 @__xbc_close_brace(ptr noundef %add.ptr) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xbc_parse_keys(ptr noundef %k) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strim(ptr noundef %k) #14
  %call112 = tail call ptr @strchr(ptr noundef %call, i32 noundef 46)
  %tobool.not13 = icmp eq ptr %call112, null
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond:                                       ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %call115, i32 1
  %call1 = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef 46)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %call115 = phi ptr [ %call1, %while.cond.while.body_crit_edge ], [ %call112, %entry.while.body_crit_edge ]
  %k.addr.014 = phi ptr [ %incdec.ptr, %while.cond.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %call115 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call115, align 1
  %call2 = tail call fastcc i32 @__xbc_add_key(ptr noundef %k.addr.014) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.cond, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %k.addr.0.lcssa = phi ptr [ %call, %entry.while.end_crit_edge ], [ %incdec.ptr, %while.cond.while.end_crit_edge ]
  %call4 = tail call fastcc i32 @__xbc_add_key(ptr noundef %k.addr.0.lcssa) #15
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %while.end ], [ %call2, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xbc_parse_value(ptr nocapture noundef %__v, ptr nocapture noundef writeonly %__n) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %__v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__v, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2.sink = phi ptr [ %call2, %while.body ], [ %1, %entry ]
  %call3 = tail call ptr @skip_spaces(ptr noundef %call2.sink) #14
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call3, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %3, label %while.cond.if.end_crit_edge [
    i8 35, label %while.body
    i8 34, label %while.cond.if.then_crit_edge
    i8 39, label %while.cond.if.then_crit_edge212
  ]

while.cond.if.then_crit_edge212:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc ptr @skip_comment(ptr noundef %call3)
  br label %while.cond

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge212
  %conv10 = zext i8 %3 to i32
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %incdec.ptr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end_crit_edge
  %6 = phi i8 [ %.pr, %if.then ], [ %3, %while.cond.if.end_crit_edge ]
  %v.1 = phi ptr [ %incdec.ptr, %if.then ], [ %call3, %while.cond.if.end_crit_edge ]
  %quotes.0 = phi i32 [ %conv10, %if.then ], [ 0, %while.cond.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not136 = icmp eq i8 %6, 0
  br i1 %tobool.not136, label %if.end.while.end57_crit_edge, label %while.body14.lr.ph

if.end.while.end57_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end57

while.body14.lr.ph:                               ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %v.1, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quotes.0)
  %tobool30.not = icmp eq i32 %quotes.0, 0
  br label %while.body14

while.body14:                                     ; preds = %while.cond11.backedge.while.body14_crit_edge, %while.body14.lr.ph
  %7 = phi i8 [ %6, %while.body14.lr.ph ], [ %14, %while.cond11.backedge.while.body14_crit_edge ]
  %incdec.ptr12138 = phi ptr [ %v.1, %while.body14.lr.ph ], [ %incdec.ptr12, %while.cond11.backedge.while.body14_crit_edge ]
  %p.0137 = phi ptr [ %add.ptr, %while.body14.lr.ph ], [ %incdec.ptr12138, %while.cond11.backedge.while.body14_crit_edge ]
  %conv13139 = zext i8 %7 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv13139
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, -73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %if.then27, label %if.end29

if.then27:                                        ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @.str.16, ptr @xbc_err_msg, align 4
  %12 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr12138 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store i32 %sub.ptr.sub.i, ptr @xbc_err_pos, align 4
  br label %cleanup

if.end29:                                         ; preds = %while.body14
  br i1 %tobool30.not, label %if.end50, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp4(i32 %quotes.0, i32 %conv13139)
  %cmp32.not = icmp eq i32 %quotes.0, %conv13139
  br i1 %cmp32.not, label %if.end35, label %if.then31.while.cond11.backedge_crit_edge

if.then31.while.cond11.backedge_crit_edge:        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond11.backedge

while.cond11.backedge:                            ; preds = %if.end50.while.cond11.backedge_crit_edge, %if.then31.while.cond11.backedge_crit_edge
  %incdec.ptr12 = getelementptr i8, ptr %incdec.ptr12138, i32 1
  %13 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr12, align 1
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %while.cond11.backedge.while.end57_crit_edge, label %while.cond11.backedge.while.body14_crit_edge

while.cond11.backedge.while.body14_crit_edge:     ; preds = %while.cond11.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body14

while.cond11.backedge.while.end57_crit_edge:      ; preds = %while.cond11.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end57

if.end35:                                         ; preds = %if.then31
  %incdec.ptr36 = getelementptr i8, ptr %p.0137, i32 2
  %15 = ptrtoint ptr %incdec.ptr12138 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %incdec.ptr12138, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end35
  %p.addr.0.i = phi ptr [ %incdec.ptr36, %if.end35 ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %16 = ptrtoint ptr %p.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p.addr.0.i, align 1
  %conv.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %17)
  %cmp4.not.i = icmp eq i8 %17, 10
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp4.not.i
  %incdec.ptr.i = getelementptr i8, ptr %p.addr.0.i, i32 1
  br i1 %or.cond.i, label %skip_spaces_until_newline.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

skip_spaces_until_newline.exit:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool39.not = icmp eq i8 %17, 0
  br i1 %tobool39.not, label %skip_spaces_until_newline.exit.if.end66_crit_edge, label %land.lhs.true40

skip_spaces_until_newline.exit.if.end66_crit_edge: ; preds = %skip_spaces_until_newline.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

land.lhs.true40:                                  ; preds = %skip_spaces_until_newline.exit
  %conv.i.le = zext i8 %17 to i32
  %memchr101 = tail call ptr @memchr(ptr noundef nonnull @.str.17, i32 %conv.i.le, i32 6) #16
  %tobool42.not = icmp eq ptr %memchr101, null
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true40.if.end61_crit_edge

land.lhs.true40.if.end61_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @.str.18, ptr @xbc_err_msg, align 4
  %21 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i102 = ptrtoint ptr %p.addr.0.i to i32
  %sub.ptr.rhs.cast.i103 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i104 = sub i32 %sub.ptr.lhs.cast.i102, %sub.ptr.rhs.cast.i103
  store i32 %sub.ptr.sub.i104, ptr @xbc_err_pos, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end29
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.17, i32 %conv13139, i32 6) #16
  %tobool52.not = icmp eq ptr %memchr, null
  br i1 %tobool52.not, label %if.end50.while.cond11.backedge_crit_edge, label %if.then53

if.end50.while.cond11.backedge_crit_edge:         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond11.backedge

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr54 = getelementptr i8, ptr %p.0137, i32 2
  %22 = ptrtoint ptr %incdec.ptr12138 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %incdec.ptr12138, align 1
  %call55 = tail call ptr @strim(ptr noundef %v.1) #14
  br label %if.end61

while.end57:                                      ; preds = %while.cond11.backedge.while.end57_crit_edge, %if.end.while.end57_crit_edge
  %incdec.ptr12.lcssa = phi ptr [ %v.1, %if.end.while.end57_crit_edge ], [ %incdec.ptr12, %while.cond11.backedge.while.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quotes.0)
  %tobool58.not = icmp eq i32 %quotes.0, 0
  br i1 %tobool58.not, label %while.end57.if.end66_crit_edge, label %if.then59

while.end57.if.end66_crit_edge:                   ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then59:                                        ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @.str.19, ptr @xbc_err_msg, align 4
  %23 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i105 = ptrtoint ptr %incdec.ptr12.lcssa to i32
  %sub.ptr.rhs.cast.i106 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i107 = sub i32 %sub.ptr.lhs.cast.i105, %sub.ptr.rhs.cast.i106
  store i32 %sub.ptr.sub.i107, ptr @xbc_err_pos, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.then53, %land.lhs.true40.if.end61_crit_edge
  %p.1.ph = phi ptr [ %incdec.ptr54, %if.then53 ], [ %incdec.ptr.i, %land.lhs.true40.if.end61_crit_edge ]
  %v.2.ph = phi ptr [ %call55, %if.then53 ], [ %v.1, %land.lhs.true40.if.end61_crit_edge ]
  %c.0.ph = phi i32 [ %conv13139, %if.then53 ], [ %conv.i.le, %land.lhs.true40.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %c.0.ph)
  %cmp62 = icmp eq i32 %c.0.ph, 35
  br i1 %cmp62, label %if.then64, label %if.end61.if.end66_crit_edge

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = tail call fastcc ptr @skip_comment(ptr noundef %p.1.ph)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61.if.end66_crit_edge, %while.end57.if.end66_crit_edge, %skip_spaces_until_newline.exit.if.end66_crit_edge
  %v.2114120 = phi ptr [ %v.2.ph, %if.then64 ], [ %v.2.ph, %if.end61.if.end66_crit_edge ], [ %v.1, %while.end57.if.end66_crit_edge ], [ %v.1, %skip_spaces_until_newline.exit.if.end66_crit_edge ]
  %p.2 = phi ptr [ %call65, %if.then64 ], [ %p.1.ph, %if.end61.if.end66_crit_edge ], [ %incdec.ptr12.lcssa, %while.end57.if.end66_crit_edge ], [ %p.addr.0.i, %skip_spaces_until_newline.exit.if.end66_crit_edge ]
  %c.1 = phi i32 [ 10, %if.then64 ], [ %c.0.ph, %if.end61.if.end66_crit_edge ], [ 0, %while.end57.if.end66_crit_edge ], [ 0, %skip_spaces_until_newline.exit.if.end66_crit_edge ]
  %24 = ptrtoint ptr %__n to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %p.2, ptr %__n, align 4
  %25 = ptrtoint ptr %__v to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %v.2114120, ptr %__v, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then59, %if.then43, %if.then27
  %retval.0 = phi i32 [ -22, %if.then59 ], [ %c.1, %if.end66 ], [ -22, %if.then43 ], [ -22, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_init_node(ptr nocapture noundef writeonly %node, ptr noundef %data, i32 noundef %flag) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %sub.ptr.sub)
  %cmp = icmp ugt i32 %sub.ptr.sub, 32766
  br i1 %cmp, label %do.end, label %if.end21, !prof !80

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %sub.ptr.sub, %flag
  %conv23 = trunc i32 %or to i16
  %data24 = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 3
  %1 = ptrtoint ptr %data24 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %conv23, ptr %data24, align 1
  %child = getelementptr inbounds %struct.xbc_node, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %child to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %child, align 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 0, ptr %node, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xbc_parse_array(ptr nocapture noundef %__v) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #14
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %next, align 4, !annotation !82
  %1 = load ptr, ptr @last_parent, align 4
  %child = getelementptr inbounds %struct.xbc_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %child to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %child, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.do.body.preheader_crit_edge, label %xbc_node_get_child.exit

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.preheader

xbc_node_get_child.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %3 to i32
  %4 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %4, i32 %conv.i
  store ptr %arrayidx.i, ptr @last_parent, align 4
  br label %do.body.preheader

do.body.preheader:                                ; preds = %xbc_node_get_child.exit, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %do.body.preheader
  %call1 = call fastcc i32 @__xbc_parse_value(ptr noundef %__v, ptr noundef nonnull %next) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %do.body
  %5 = ptrtoint ptr %__v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__v, align 4
  %call.i.i = tail call fastcc ptr @__xbc_add_sibling(ptr noundef %6, i32 noundef 32768, i1 noundef zeroext false) #17
  %tobool.not.i18 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i18, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  store ptr %call.i.i, ptr @last_parent, align 4
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next, align 4
  %9 = ptrtoint ptr %__v to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %__v, align 4
  %cmp8 = icmp eq i32 %call1, 44
  br i1 %cmp8, label %if.end7.do.body_crit_edge, label %do.end

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %child9 = getelementptr inbounds %struct.xbc_node, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %child9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %child9, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -12, %if.end3.cleanup_crit_edge ], [ %call1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #14
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__xbc_close_brace(ptr noundef %p) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @brace_index, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @brace_index, align 4
  %1 = load ptr, ptr @last_parent, align 4
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false1

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false1:                                   ; preds = %entry
  %arrayidx = getelementptr [16 x i32], ptr @open_brace, i32 0, i32 %dec
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr @xbc_nodes, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.ptr.div.i)
  %cmp2.not = icmp eq i32 %3, %sub.ptr.div.i
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false1.if.then_crit_edge

lor.lhs.false1.if.then_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false1.if.then_crit_edge, %entry.if.then_crit_edge
  store ptr @.str.20, ptr @xbc_err_msg, align 4
  %5 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i10 = ptrtoint ptr %p to i32
  %sub.ptr.rhs.cast.i11 = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i12 = sub i32 %sub.ptr.lhs.cast.i10, %sub.ptr.rhs.cast.i11
  store i32 %sub.ptr.sub.i12, ptr @xbc_err_pos, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %if.end.if.end8_crit_edge, label %if.else

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %0, -2
  %arrayidx6 = getelementptr [16 x i32], ptr @open_brace, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr %struct.xbc_node, ptr %4, i32 %7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end.if.end8_crit_edge
  %storemerge = phi ptr [ %arrayidx7, %if.else ], [ null, %if.end.if.end8_crit_edge ]
  store ptr %storemerge, ptr @last_parent, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xbc_add_key(ptr noundef %k) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc zeroext i1 @xbc_valid_keyword(ptr noundef %k) #15
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @.str.14, ptr @xbc_err_msg, align 4
  %0 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %k to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store i32 %sub.ptr.sub.i, ptr @xbc_err_pos, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @xbc_node_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.add_node_crit_edge, label %if.end4, !prof !80

if.end.add_node_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_node

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr @last_parent, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr @xbc_nodes, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %child.i = getelementptr inbounds %struct.xbc_node, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %child.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %child.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %if.else.if.end15_crit_edge, label %xbc_node_get_child.exit

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

xbc_node_get_child.exit:                          ; preds = %if.else
  %conv.i = zext i16 %5 to i32
  %6 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %6, i32 %conv.i
  %tobool9.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool9.not, label %xbc_node_get_child.exit.if.end15_crit_edge, label %land.lhs.true

xbc_node_get_child.exit.if.end15_crit_edge:       ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %xbc_node_get_child.exit
  %data.i = getelementptr %struct.xbc_node, ptr %6, i32 %conv.i, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.i = icmp slt i16 %8, 0
  br i1 %tobool.i, label %if.then11, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i34 = icmp eq i16 %10, 0
  br i1 %tobool.not.i34, label %if.then11.if.end15_crit_edge, label %cond.true.i37

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

cond.true.i37:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i35 = zext i16 %10 to i32
  %11 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i36 = getelementptr %struct.xbc_node, ptr %11, i32 %conv.i35
  br label %if.end15

if.end15:                                         ; preds = %cond.true.i37, %if.then11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %xbc_node_get_child.exit.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then6
  %child.0.sink = phi ptr [ %3, %if.then6 ], [ %arrayidx.i, %land.lhs.true.if.end15_crit_edge ], [ null, %xbc_node_get_child.exit.if.end15_crit_edge ], [ %arrayidx.i36, %cond.true.i37 ], [ null, %if.then11.if.end15_crit_edge ], [ null, %if.else.if.end15_crit_edge ]
  %call14 = tail call fastcc ptr @find_match_node(ptr noundef %child.0.sink, ptr noundef %k) #15
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end15.add_node_crit_edge, label %if.then17

if.end15.add_node_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_node

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call14, ptr @last_parent, align 4
  br label %cleanup

add_node:                                         ; preds = %if.end15.add_node_crit_edge, %if.end.add_node_crit_edge
  %call.i.i = tail call fastcc ptr @__xbc_add_sibling(ptr noundef %k, i32 noundef 0, i1 noundef zeroext false) #17
  %tobool.not.i39 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i39, label %add_node.cleanup_crit_edge, label %xbc_add_child.exit

add_node.cleanup_crit_edge:                       ; preds = %add_node
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xbc_add_child.exit:                               ; preds = %add_node
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call.i.i, ptr @last_parent, align 4
  br label %cleanup

cleanup:                                          ; preds = %xbc_add_child.exit, %add_node.cleanup_crit_edge, %if.then17, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %xbc_add_child.exit ], [ 0, %if.then17 ], [ -12, %add_node.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xbc_valid_keyword(ptr nocapture noundef readonly %key) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.cond:                                       ; preds = %while.body, %entry.while.cond_crit_edge
  %2 = phi i8 [ %.pr, %while.body ], [ %1, %entry.while.cond_crit_edge ]
  %key.addr.0 = phi ptr [ %incdec.ptr, %while.body ], [ %key, %entry.while.cond_crit_edge ]
  %conv2 = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %.fr23 = freeze i8 %4
  %5 = and i8 %.fr23, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5.not.not = icmp eq i8 %5, 0
  br i1 %cmp5.not.not, label %switch.early.test, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

switch.early.test:                                ; preds = %while.cond
  %6 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %2, label %switch.early.test.return_crit_edge [
    i8 95, label %switch.early.test.while.body_crit_edge
    i8 45, label %switch.early.test.while.body_crit_edge26
    i8 0, label %return.loopexit
  ]

switch.early.test.while.body_crit_edge26:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

switch.early.test.while.body_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

switch.early.test.return_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.body:                                       ; preds = %switch.early.test.while.body_crit_edge, %switch.early.test.while.body_crit_edge26, %while.cond.while.body_crit_edge
  %incdec.ptr = getelementptr i8, ptr %key.addr.0, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %incdec.ptr, align 1
  br label %while.cond

return.loopexit:                                  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %return.loopexit, %switch.early.test.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %return.loopexit ], [ false, %switch.early.test.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_match_node(ptr noundef readonly %node, ptr nocapture noundef readonly %k) unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not7 = icmp eq ptr %node, null
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %xbc_node_get_next.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %node.addr.08 = phi ptr [ %arrayidx.i, %xbc_node_get_next.exit.while.body_crit_edge ], [ %node, %entry.while.body_crit_edge ]
  %call = tail call ptr @xbc_node_get_data(ptr noundef nonnull %node.addr.08) #15
  %call1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef %k) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %0 = ptrtoint ptr %node.addr.08 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %node.addr.08, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.end.while.end_crit_edge, label %xbc_node_get_next.exit

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

xbc_node_get_next.exit:                           ; preds = %if.end
  %conv.i = zext i16 %1 to i32
  %2 = load ptr, ptr @xbc_nodes, align 4
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %2, i32 %conv.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %xbc_node_get_next.exit.while.end_crit_edge, label %xbc_node_get_next.exit.while.body_crit_edge

xbc_node_get_next.exit.while.body_crit_edge:      ; preds = %xbc_node_get_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

xbc_node_get_next.exit.while.end_crit_edge:       ; preds = %xbc_node_get_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %xbc_node_get_next.exit.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %node.addr.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ null, %if.end.while.end_crit_edge ], [ %node.addr.08, %while.body.while.end_crit_edge ], [ null, %xbc_node_get_next.exit.while.end_crit_edge ]
  ret ptr %node.addr.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__xbc_add_sibling(ptr noundef %data, i32 noundef %flag, i1 noundef zeroext %head) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc ptr @xbc_add_node(ptr noundef %data, i32 noundef %flag) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else24, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @last_parent, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %parent = getelementptr inbounds %struct.xbc_node, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 1024, ptr %parent, align 1
  %2 = load ptr, ptr @xbc_nodes, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not3.i = icmp eq i16 %4, 0
  br i1 %tobool.not3.i, label %if.then2.xbc_last_sibling.exit_crit_edge, label %if.then2.xbc_node_get_next.exit.i_crit_edge

if.then2.xbc_node_get_next.exit.i_crit_edge:      ; preds = %if.then2
  br label %xbc_node_get_next.exit.i

if.then2.xbc_last_sibling.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_last_sibling.exit

xbc_node_get_next.exit.i:                         ; preds = %xbc_node_get_next.exit.i.xbc_node_get_next.exit.i_crit_edge, %if.then2.xbc_node_get_next.exit.i_crit_edge
  %5 = phi i16 [ %7, %xbc_node_get_next.exit.i.xbc_node_get_next.exit.i_crit_edge ], [ %4, %if.then2.xbc_node_get_next.exit.i_crit_edge ]
  %conv.i.i = zext i16 %5 to i32
  %arrayidx.i.i = getelementptr %struct.xbc_node, ptr %2, i32 %conv.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %arrayidx.i.i, align 1
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %xbc_node_get_next.exit.i.xbc_last_sibling.exit_crit_edge, label %xbc_node_get_next.exit.i.xbc_node_get_next.exit.i_crit_edge

xbc_node_get_next.exit.i.xbc_node_get_next.exit.i_crit_edge: ; preds = %xbc_node_get_next.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_node_get_next.exit.i

xbc_node_get_next.exit.i.xbc_last_sibling.exit_crit_edge: ; preds = %xbc_node_get_next.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_last_sibling.exit

xbc_last_sibling.exit:                            ; preds = %xbc_node_get_next.exit.i.xbc_last_sibling.exit_crit_edge, %if.then2.xbc_last_sibling.exit_crit_edge
  %node.addr.0.lcssa.i = phi ptr [ %2, %if.then2.xbc_last_sibling.exit_crit_edge ], [ %arrayidx.i.i, %xbc_node_get_next.exit.i.xbc_last_sibling.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %8 = lshr exact i32 %sub.ptr.sub.i, 3
  %conv = trunc i32 %8 to i16
  %9 = ptrtoint ptr %node.addr.0.lcssa.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv, ptr %node.addr.0.lcssa.i, align 1
  br label %if.end26

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr @xbc_nodes, align 4
  %sub.ptr.lhs.cast.i37 = ptrtoint ptr %0 to i32
  %sub.ptr.rhs.cast.i38 = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i39 = sub i32 %sub.ptr.lhs.cast.i37, %sub.ptr.rhs.cast.i38
  %11 = lshr exact i32 %sub.ptr.sub.i39, 3
  %conv6 = trunc i32 %11 to i16
  %parent7 = getelementptr inbounds %struct.xbc_node, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %parent7 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %conv6, ptr %parent7, align 1
  %child = getelementptr inbounds %struct.xbc_node, ptr %0, i32 0, i32 1
  %13 = ptrtoint ptr %child to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %child, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  %brmerge = or i1 %tobool8.not, %head
  br i1 %brmerge, label %if.then11, label %xbc_node_get_child.exit

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %call, align 1
  %sub.ptr.lhs.cast.i41 = ptrtoint ptr %call to i32
  %sub.ptr.sub.i43 = sub i32 %sub.ptr.lhs.cast.i41, %sub.ptr.rhs.cast.i38
  %16 = lshr exact i32 %sub.ptr.sub.i43, 3
  %conv15 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %child to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %conv15, ptr %child, align 1
  br label %if.end26

xbc_node_get_child.exit:                          ; preds = %if.else
  %conv.i = zext i16 %14 to i32
  %arrayidx.i = getelementptr %struct.xbc_node, ptr %10, i32 %conv.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not3.i46 = icmp eq i16 %19, 0
  br i1 %tobool.not3.i46, label %xbc_node_get_child.exit.xbc_last_sibling.exit53_crit_edge, label %xbc_node_get_child.exit.xbc_node_get_next.exit.i51_crit_edge

xbc_node_get_child.exit.xbc_node_get_next.exit.i51_crit_edge: ; preds = %xbc_node_get_child.exit
  br label %xbc_node_get_next.exit.i51

xbc_node_get_child.exit.xbc_last_sibling.exit53_crit_edge: ; preds = %xbc_node_get_child.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_last_sibling.exit53

xbc_node_get_next.exit.i51:                       ; preds = %xbc_node_get_next.exit.i51.xbc_node_get_next.exit.i51_crit_edge, %xbc_node_get_child.exit.xbc_node_get_next.exit.i51_crit_edge
  %20 = phi i16 [ %22, %xbc_node_get_next.exit.i51.xbc_node_get_next.exit.i51_crit_edge ], [ %19, %xbc_node_get_child.exit.xbc_node_get_next.exit.i51_crit_edge ]
  %conv.i.i48 = zext i16 %20 to i32
  %arrayidx.i.i49 = getelementptr %struct.xbc_node, ptr %10, i32 %conv.i.i48
  %21 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx.i.i49, align 1
  %tobool.not.i50 = icmp eq i16 %22, 0
  br i1 %tobool.not.i50, label %xbc_node_get_next.exit.i51.xbc_last_sibling.exit53_crit_edge, label %xbc_node_get_next.exit.i51.xbc_node_get_next.exit.i51_crit_edge

xbc_node_get_next.exit.i51.xbc_node_get_next.exit.i51_crit_edge: ; preds = %xbc_node_get_next.exit.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_node_get_next.exit.i51

xbc_node_get_next.exit.i51.xbc_last_sibling.exit53_crit_edge: ; preds = %xbc_node_get_next.exit.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %xbc_last_sibling.exit53

xbc_last_sibling.exit53:                          ; preds = %xbc_node_get_next.exit.i51.xbc_last_sibling.exit53_crit_edge, %xbc_node_get_child.exit.xbc_last_sibling.exit53_crit_edge
  %node.addr.0.lcssa.i52 = phi ptr [ %arrayidx.i, %xbc_node_get_child.exit.xbc_last_sibling.exit53_crit_edge ], [ %arrayidx.i.i49, %xbc_node_get_next.exit.i51.xbc_last_sibling.exit53_crit_edge ]
  %sub.ptr.lhs.cast.i54 = ptrtoint ptr %call to i32
  %sub.ptr.sub.i56 = sub i32 %sub.ptr.lhs.cast.i54, %sub.ptr.rhs.cast.i38
  %23 = lshr exact i32 %sub.ptr.sub.i56, 3
  %conv21 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %node.addr.0.lcssa.i52 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv21, ptr %node.addr.0.lcssa.i52, align 1
  br label %if.end26

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @.str.15, ptr @xbc_err_msg, align 4
  %25 = load ptr, ptr @xbc_data, align 4
  %sub.ptr.lhs.cast.i58 = ptrtoint ptr %data to i32
  %sub.ptr.rhs.cast.i59 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i60 = sub i32 %sub.ptr.lhs.cast.i58, %sub.ptr.rhs.cast.i59
  store i32 %sub.ptr.sub.i60, ptr @xbc_err_pos, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %xbc_last_sibling.exit53, %if.then11, %xbc_last_sibling.exit
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xbc_add_node(ptr noundef %data, i32 noundef %flag) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @xbc_node_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %0)
  %cmp = icmp eq i32 %0, 1024
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @xbc_nodes, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @xbc_node_num, align 4
  %arrayidx = getelementptr %struct.xbc_node, ptr %1, i32 %0
  %call = tail call fastcc i32 @xbc_init_node(ptr noundef %arrayidx, ptr noundef %data, i32 noundef %flag) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %.arrayidx = select i1 %cmp1, ptr null, ptr %arrayidx
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %.arrayidx, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/bootconfig.c", i32 171, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/bootconfig.c", i32 258, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/bootconfig.c", i32 301, i32 29}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/bootconfig.c", i32 302, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/bootconfig.c", i32 929, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/bootconfig.c", i32 934, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/bootconfig.c", i32 935, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/bootconfig.c", i32 942, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/bootconfig.c", i32 952, i32 12}
!18 = !{ptr @xbc_nodes, !19, !"xbc_nodes", i1 false, i1 false}
!19 = !{!"../lib/bootconfig.c", i32 35, i32 25}
!20 = !{ptr @xbc_node_num, !21, !"xbc_node_num", i1 false, i1 false}
!21 = !{!"../lib/bootconfig.c", i32 36, i32 12}
!22 = !{ptr @xbc_data, !23, !"xbc_data", i1 false, i1 false}
!23 = !{!"../lib/bootconfig.c", i32 37, i32 14}
!24 = !{ptr @xbc_data_size, !25, !"xbc_data_size", i1 false, i1 false}
!25 = !{!"../lib/bootconfig.c", i32 38, i32 15}
!26 = !{ptr @xbc_err_msg, !27, !"xbc_err_msg", i1 false, i1 false}
!27 = !{!"../lib/bootconfig.c", i32 40, i32 20}
!28 = !{ptr @xbc_err_pos, !29, !"xbc_err_pos", i1 false, i1 false}
!29 = !{!"../lib/bootconfig.c", i32 41, i32 12}
!30 = !{ptr @brace_index, !31, !"brace_index", i1 false, i1 false}
!31 = !{!"../lib/bootconfig.c", i32 43, i32 12}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/bootconfig.c", i32 844, i32 18}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/bootconfig.c", i32 848, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/bootconfig.c", i32 859, i32 7}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/bootconfig.c", i32 860, i32 7}
!40 = !{ptr @last_parent, !41, !"last_parent", i1 false, i1 false}
!41 = !{!"../lib/bootconfig.c", i32 39, i32 25}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/bootconfig.c", i32 697, i32 27}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/bootconfig.c", i32 636, i32 26}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/bootconfig.c", i32 462, i32 19}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/bootconfig.c", i32 564, i32 27}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/bootconfig.c", i32 572, i32 21}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/bootconfig.c", i32 573, i32 28}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/bootconfig.c", i32 585, i32 26}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/bootconfig.c", i32 533, i32 26}
!58 = !{ptr @open_brace, !59, !"open_brace", i1 false, i1 false}
!59 = !{!"../lib/bootconfig.c", i32 42, i32 12}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/bootconfig.c", i32 523, i32 26}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/bootconfig.c", i32 781, i32 26}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/bootconfig.c", i32 787, i32 19}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/bootconfig.c", i32 793, i32 27}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/bootconfig.c", i32 807, i32 27}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/bootconfig.c", i32 815, i32 28}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!"auto-init"}
