; ModuleID = '/llk/IR_all_yes/net/ceph/ceph_strings.c_pt.bc'
source_filename = "../net/ceph/ceph_strings.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_entity_type_name\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_entity_type_name\09\09\09\09"
module asm "\09.long\09__crc_ceph_entity_type_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_entity_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_entity_type_name\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_entity_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mon\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"client\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auth\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_entity_type_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_entity_type_name = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_entity_type_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_entity_type_name to i32), ptr @__kstrtab_ceph_entity_type_name, ptr @__kstrtabns_ceph_entity_type_name }, section "___ksymtab+ceph_entity_type_name", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cephx\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secure\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mapext\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"masktrunc\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sparse-read\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"notify\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"notify-ack\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"assert-version\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"list-watchers\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"list-snaps\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_read\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writefull\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"truncate\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delete\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"append\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"settrunc\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"trimtrunc\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmapup\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmapput\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmapget\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rollback\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"watch\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap-get-keys\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap-get-vals\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap-get-header\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap-get-vals-by-keys\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap-set-vals\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap-set-header\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap-clear\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap-rm-keys\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap-cmp\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"copy-from\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"copy-from2\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"copy-get-classic\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"undirty\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isdirty\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"copy-get\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache-flush\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache-evict\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache-try-flush\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmap2omap\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set-alloc-hint\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clonerange\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"assert-src-version\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"src-cmpxattr\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"getxattr\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"getxattrs\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmpxattr\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setxattr\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setxattrs\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resetxattrs\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rmxattr\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pull\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"push\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"balance-reads\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unbalance-reads\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scrub\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scrub-reserve\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scrub-unreserve\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scrub-stop\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scrub-map\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wrlock\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wrunlock\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rdlock\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdunlock\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uplock\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dnlock\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"call\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pgls\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pgls-filter\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pg-hitset-ls\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pg-hitset-get\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unwatch\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reconnect\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"exists\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"autoout\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"new\00", [28 x i8] zeroinitializer }, align 32
@switch.table.ceph_auth_proto_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@switch.table.ceph_con_mode_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.9, ptr @.str.10], [20 x i8] zeroinitializer }, align 32
@switch.table.ceph_osd_watch_op_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.86, ptr @.str.8, ptr @.str.8, ptr @.str.35, ptr @.str.8, ptr @.str.87, ptr @.str.8, ptr @.str.88], [32 x i8] zeroinitializer }, align 32
@switch.table.ceph_osd_state_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.8, ptr @.str.91, ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32]
@__sancov_gen_cov_switch_values.93 = internal global [77 x i64] [i64 75, i64 32, i64 4609, i64 4610, i64 4611, i64 4612, i64 4613, i64 4614, i64 4615, i64 4616, i64 4617, i64 4618, i64 4619, i64 4620, i64 4625, i64 4626, i64 4627, i64 4628, i64 4633, i64 4635, i64 4637, i64 4638, i64 4865, i64 4866, i64 4867, i64 5121, i64 5377, i64 5378, i64 5379, i64 5380, i64 5634, i64 5635, i64 8449, i64 8450, i64 8451, i64 8452, i64 8453, i64 8454, i64 8705, i64 8706, i64 8707, i64 8708, i64 8709, i64 8710, i64 8712, i64 8713, i64 8715, i64 8717, i64 8718, i64 8719, i64 8725, i64 8726, i64 8727, i64 8728, i64 8730, i64 8732, i64 8739, i64 8749, i64 8961, i64 8962, i64 8963, i64 8964, i64 9729, i64 12810, i64 12834, i64 16385, i64 16386, i64 16387, i64 16388, i64 16389, i64 16390, i64 16391, i64 16392, i64 16393, i64 33311, i64 33312, i64 33313]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 11, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 12, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 13, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 14, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 15, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 16, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 27, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 29, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 31, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 41, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 43, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 53, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 64, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 68, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 70, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 80, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 82, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 84, i32 10 }
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private constant [27 x i8] c"../net/ceph/ceph_strings.c\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 86, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant [34 x i8] c"switch.table.ceph_auth_proto_name\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [32 x i8] c"switch.table.ceph_con_mode_name\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [36 x i8] c"switch.table.ceph_osd_watch_op_name\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [33 x i8] c"switch.table.ceph_osd_state_name\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @__ksymtab_ceph_entity_type_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @switch.table.ceph_auth_proto_name, ptr @switch.table.ceph_con_mode_name, ptr @switch.table.ceph_osd_watch_op_name, ptr @switch.table.ceph_osd_state_name], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceph_auth_proto_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceph_con_mode_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceph_osd_watch_op_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceph_osd_state_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_entity_type_name(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 2, label %entry.return_crit_edge
    i32 4, label %sw.bb1
    i32 1, label %sw.bb2
    i32 8, label %sw.bb3
    i32 32, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.5, %sw.default ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_auth_proto_name(i32 noundef %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %proto)
  %0 = icmp ult i32 %proto, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ceph_auth_proto_name, i32 0, i32 %proto
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_con_mode_name(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %0 = icmp ult i32 %mode, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ceph_con_mode_name, i32 0, i32 %mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_osd_op_name(i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %op, label %sw.default [
    i32 4609, label %entry.return_crit_edge
    i32 4610, label %sw.bb1
    i32 4611, label %sw.bb2
    i32 4612, label %sw.bb3
    i32 4613, label %sw.bb4
    i32 4614, label %sw.bb5
    i32 4615, label %sw.bb6
    i32 4616, label %sw.bb7
    i32 4617, label %sw.bb8
    i32 4618, label %sw.bb9
    i32 4619, label %sw.bb10
    i32 8705, label %sw.bb11
    i32 8706, label %sw.bb12
    i32 8707, label %sw.bb13
    i32 8708, label %sw.bb14
    i32 8709, label %sw.bb15
    i32 8710, label %sw.bb16
    i32 8712, label %sw.bb17
    i32 8713, label %sw.bb18
    i32 12810, label %sw.bb19
    i32 8715, label %sw.bb20
    i32 4620, label %sw.bb21
    i32 8717, label %sw.bb22
    i32 8718, label %sw.bb23
    i32 8719, label %sw.bb24
    i32 4625, label %sw.bb25
    i32 4626, label %sw.bb26
    i32 4627, label %sw.bb27
    i32 4628, label %sw.bb28
    i32 8725, label %sw.bb29
    i32 8726, label %sw.bb30
    i32 8727, label %sw.bb31
    i32 8728, label %sw.bb32
    i32 4633, label %sw.bb33
    i32 8730, label %sw.bb34
    i32 8749, label %sw.bb35
    i32 4635, label %sw.bb36
    i32 8732, label %sw.bb37
    i32 4637, label %sw.bb38
    i32 4638, label %sw.bb39
    i32 33311, label %sw.bb40
    i32 33312, label %sw.bb41
    i32 33313, label %sw.bb42
    i32 12834, label %sw.bb43
    i32 8739, label %sw.bb44
    i32 9729, label %sw.bb45
    i32 5634, label %sw.bb46
    i32 5635, label %sw.bb47
    i32 4865, label %sw.bb48
    i32 4866, label %sw.bb49
    i32 4867, label %sw.bb50
    i32 8961, label %sw.bb51
    i32 8962, label %sw.bb52
    i32 8963, label %sw.bb53
    i32 8964, label %sw.bb54
    i32 16385, label %sw.bb55
    i32 16386, label %sw.bb56
    i32 16387, label %sw.bb57
    i32 16388, label %sw.bb58
    i32 16389, label %sw.bb59
    i32 16390, label %sw.bb60
    i32 16391, label %sw.bb61
    i32 16392, label %sw.bb62
    i32 16393, label %sw.bb63
    i32 8449, label %sw.bb64
    i32 8450, label %sw.bb65
    i32 8451, label %sw.bb66
    i32 8452, label %sw.bb67
    i32 8453, label %sw.bb68
    i32 8454, label %sw.bb69
    i32 5121, label %sw.bb70
    i32 5377, label %sw.bb71
    i32 5378, label %sw.bb72
    i32 5379, label %sw.bb73
    i32 5380, label %sw.bb74
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.8, %sw.default ], [ @.str.85, %sw.bb74 ], [ @.str.84, %sw.bb73 ], [ @.str.83, %sw.bb72 ], [ @.str.82, %sw.bb71 ], [ @.str.81, %sw.bb70 ], [ @.str.80, %sw.bb69 ], [ @.str.79, %sw.bb68 ], [ @.str.78, %sw.bb67 ], [ @.str.77, %sw.bb66 ], [ @.str.76, %sw.bb65 ], [ @.str.75, %sw.bb64 ], [ @.str.74, %sw.bb63 ], [ @.str.73, %sw.bb62 ], [ @.str.72, %sw.bb61 ], [ @.str.71, %sw.bb60 ], [ @.str.70, %sw.bb59 ], [ @.str.69, %sw.bb58 ], [ @.str.68, %sw.bb57 ], [ @.str.67, %sw.bb56 ], [ @.str.66, %sw.bb55 ], [ @.str.65, %sw.bb54 ], [ @.str.64, %sw.bb53 ], [ @.str.63, %sw.bb52 ], [ @.str.62, %sw.bb51 ], [ @.str.61, %sw.bb50 ], [ @.str.60, %sw.bb49 ], [ @.str.59, %sw.bb48 ], [ @.str.58, %sw.bb47 ], [ @.str.57, %sw.bb46 ], [ @.str.56, %sw.bb45 ], [ @.str.55, %sw.bb44 ], [ @.str.54, %sw.bb43 ], [ @.str.53, %sw.bb42 ], [ @.str.52, %sw.bb41 ], [ @.str.51, %sw.bb40 ], [ @.str.50, %sw.bb39 ], [ @.str.49, %sw.bb38 ], [ @.str.48, %sw.bb37 ], [ @.str.47, %sw.bb36 ], [ @.str.46, %sw.bb35 ], [ @.str.45, %sw.bb34 ], [ @.str.44, %sw.bb33 ], [ @.str.43, %sw.bb32 ], [ @.str.42, %sw.bb31 ], [ @.str.41, %sw.bb30 ], [ @.str.40, %sw.bb29 ], [ @.str.39, %sw.bb28 ], [ @.str.38, %sw.bb27 ], [ @.str.37, %sw.bb26 ], [ @.str.36, %sw.bb25 ], [ @.str.35, %sw.bb24 ], [ @.str.34, %sw.bb23 ], [ @.str.33, %sw.bb22 ], [ @.str.32, %sw.bb21 ], [ @.str.31, %sw.bb20 ], [ @.str.30, %sw.bb19 ], [ @.str.29, %sw.bb18 ], [ @.str.28, %sw.bb17 ], [ @.str.27, %sw.bb16 ], [ @.str.26, %sw.bb15 ], [ @.str.25, %sw.bb14 ], [ @.str.24, %sw.bb13 ], [ @.str.23, %sw.bb12 ], [ @.str.22, %sw.bb11 ], [ @.str.21, %sw.bb10 ], [ @.str.20, %sw.bb9 ], [ @.str.19, %sw.bb8 ], [ @.str.18, %sw.bb7 ], [ @.str.17, %sw.bb6 ], [ @.str.16, %sw.bb5 ], [ @.str.15, %sw.bb4 ], [ @.str.14, %sw.bb3 ], [ @.str.13, %sw.bb2 ], [ @.str.12, %sw.bb1 ], [ @.str.11, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_osd_watch_op_name(i32 noundef %o) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %o)
  %0 = icmp ult i32 %o, 8
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ceph_osd_watch_op_name, i32 0, i32 %o
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_osd_state_name(i32 noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %s, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ceph_osd_state_name, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/ceph_strings.c", i32 11, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/ceph_strings.c", i32 12, i32 36}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/ceph_strings.c", i32 13, i32 36}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ceph/ceph_strings.c", i32 14, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/ceph_strings.c", i32 15, i32 37}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ceph/ceph_strings.c", i32 16, i32 18}
!12 = !{ptr @__ksymtab_ceph_entity_type_name, !13, !"__ksymtab_ceph_entity_type_name", i1 false, i1 false}
!13 = !{!"../net/ceph/ceph_strings.c", i32 19, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ceph/ceph_strings.c", i32 27, i32 10}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ceph/ceph_strings.c", i32 29, i32 10}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ceph/ceph_strings.c", i32 31, i32 10}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ceph/ceph_strings.c", i32 41, i32 10}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ceph/ceph_strings.c", i32 43, i32 10}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ceph/ceph_strings.c", i32 53, i32 1}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !25, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.22, !25, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.24, !25, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.25, !25, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.26, !25, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.27, !25, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.28, !25, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.29, !25, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.30, !25, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.31, !25, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.32, !25, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.33, !25, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.34, !25, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.35, !25, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.36, !25, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.37, !25, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.38, !25, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.39, !25, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.40, !25, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.41, !25, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.42, !25, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.43, !25, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.44, !25, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.45, !25, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.46, !25, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.47, !25, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.48, !25, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.49, !25, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.50, !25, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.51, !25, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.52, !25, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.53, !25, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.54, !25, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.55, !25, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.56, !25, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.57, !25, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.58, !25, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.59, !25, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.60, !25, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.61, !25, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.62, !25, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.63, !25, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.64, !25, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.65, !25, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.66, !25, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.67, !25, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.68, !25, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.69, !25, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.70, !25, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.71, !25, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.72, !25, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.73, !25, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.74, !25, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.75, !25, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.76, !25, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.77, !25, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.78, !25, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.79, !25, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.80, !25, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.81, !25, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.82, !25, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.83, !25, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.84, !25, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.85, !25, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.86, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/ceph/ceph_strings.c", i32 64, i32 10}
!102 = !{ptr @.str.87, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/ceph/ceph_strings.c", i32 68, i32 10}
!104 = !{ptr @.str.88, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/ceph/ceph_strings.c", i32 70, i32 10}
!106 = !{ptr @.str.89, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/ceph/ceph_strings.c", i32 80, i32 10}
!108 = !{ptr @.str.90, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/ceph/ceph_strings.c", i32 82, i32 10}
!110 = !{ptr @.str.91, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/ceph/ceph_strings.c", i32 84, i32 10}
!112 = !{ptr @.str.92, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/ceph/ceph_strings.c", i32 86, i32 10}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
