; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_stats.c_pt.bc'
source_filename = "../fs/xfs/xfs_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xstats_entry = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@xfs_stats_format.xstats = internal constant { [23 x %struct.xstats_entry], [40 x i8] } { [23 x %struct.xstats_entry] [%struct.xstats_entry { ptr @.str, i32 4 }, %struct.xstats_entry { ptr @.str.1, i32 8 }, %struct.xstats_entry { ptr @.str.2, i32 15 }, %struct.xstats_entry { ptr @.str.3, i32 19 }, %struct.xstats_entry { ptr @.str.4, i32 23 }, %struct.xstats_entry { ptr @.str.5, i32 26 }, %struct.xstats_entry { ptr @.str.6, i32 33 }, %struct.xstats_entry { ptr @.str.7, i32 38 }, %struct.xstats_entry { ptr @.str.8, i32 48 }, %struct.xstats_entry { ptr @.str.9, i32 50 }, %struct.xstats_entry { ptr @.str.10, i32 52 }, %struct.xstats_entry { ptr @.str.11, i32 56 }, %struct.xstats_entry { ptr @.str.12, i32 59 }, %struct.xstats_entry { ptr @.str.13, i32 67 }, %struct.xstats_entry { ptr @.str.14, i32 76 }, %struct.xstats_entry { ptr @.str.15, i32 91 }, %struct.xstats_entry { ptr @.str.16, i32 106 }, %struct.xstats_entry { ptr @.str.17, i32 121 }, %struct.xstats_entry { ptr @.str.18, i32 136 }, %struct.xstats_entry { ptr @.str.19, i32 151 }, %struct.xstats_entry { ptr @.str.20, i32 166 }, %struct.xstats_entry { ptr @.str.21, i32 181 }, %struct.xstats_entry { ptr @.str.22, i32 190 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extent_alloc\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"abt\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blk_map\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bmbt\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ig\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"push_ail\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xstrat\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attr\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icluster\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vnodes\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abtb2\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abtc2\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bmbt2\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ibt2\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fibt2\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rmapbt\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"refcntbt\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"qm\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xpc %Lu %Lu %Lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"defer_relog %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"debug %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Clearing xfsstats\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fs/xfs\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/xfs/stat\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"/sys/fs/xfs/stats/stats\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/xfs/xqmstat\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/xfs/xqm\00", [21 x i8] zeroinitializer }, align 32
@xfsstats = dso_local global { %struct.xstats, [60 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d\09%d\09%d\09%u\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"xstats\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 31, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 32, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 33, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 34, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 35, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 36, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 37, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 38, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 39, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 40, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 41, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 42, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 43, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 44, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 45, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 46, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 47, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 48, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 49, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 50, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 51, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 52, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 53, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 55, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 61, i32 47 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 65, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 67, i32 47 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 77, i32 44 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 79, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 81, i32 44 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 96, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 139, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 142, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 143, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 147, i32 7 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 149, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant [9 x i8] c"xfsstats\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 8, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [22 x i8] c"../fs/xfs/xfs_stats.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 117, i32 16 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @xfs_stats_format.xstats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @xfsstats, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_stats_format.xstats to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfsstats to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_stats_format(ptr noundef %stats, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stats to i32
  br label %for.body

for.cond17.preheader:                             ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call18122 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call18122, i32 %1)
  %cmp19123 = icmp ult i32 %call18122, %1
  br i1 %cmp19123, label %for.cond17.preheader.do.body_crit_edge, label %for.cond17.preheader.for.end59_crit_edge

for.cond17.preheader.for.end59_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end59

for.cond17.preheader.do.body_crit_edge:           ; preds = %for.cond17.preheader
  br label %do.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.0121 = phi i32 [ 0, %entry ], [ %inc15, %for.end.for.body_crit_edge ]
  %j.0120 = phi i32 [ 0, %entry ], [ %j.1.lcssa, %for.end.for.body_crit_edge ]
  %len.0119 = phi i32 [ 0, %entry ], [ %add13, %for.end.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0119
  %sub = sub i32 4096, %len.0119
  %arrayidx = getelementptr [23 x %struct.xstats_entry], ptr @xfs_stats_format.xstats, i32 0, i32 %i.0121
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.23, ptr noundef %3) #4
  %add = add i32 %call, %len.0119
  %endpoint = getelementptr [23 x %struct.xstats_entry], ptr @xfs_stats_format.xstats, i32 0, i32 %i.0121, i32 1
  %4 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %endpoint, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0120, i32 %5)
  %cmp3114 = icmp slt i32 %j.0120, %5
  br i1 %cmp3114, label %for.body.for.body4_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body4:                                        ; preds = %counter_val.exit.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %j.1116 = phi i32 [ %inc, %counter_val.exit.for.body4_crit_edge ], [ %j.0120, %for.body.for.body4_crit_edge ]
  %len.1115 = phi i32 [ %add9, %counter_val.exit.for.body4_crit_edge ], [ %add, %for.body.for.body4_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %len.1115
  %sub6 = sub i32 4096, %len.1115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %6)
  %cmp7.i = icmp ult i32 %call6.i, %6
  br i1 %cmp7.i, label %for.body4.do.body.i_crit_edge, label %for.body4.counter_val.exit_crit_edge

for.body4.counter_val.exit_crit_edge:             ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit

for.body4.do.body.i_crit_edge:                    ; preds = %for.body4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body4.do.body.i_crit_edge
  %call9.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call6.i, %for.body4.do.body.i_crit_edge ]
  %val.08.i = phi i32 [ %add2.i, %do.body.i.do.body.i_crit_edge ], [ 0, %for.body4.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %0
  %9 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr i32, ptr %9, i32 %j.1116
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %add2.i = add i32 %11, %val.08.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i = icmp ult i32 %call.i, %6
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.counter_val.exit_crit_edge

do.body.i.counter_val.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

counter_val.exit:                                 ; preds = %do.body.i.counter_val.exit_crit_edge, %for.body4.counter_val.exit_crit_edge
  %val.0.lcssa.i = phi i32 [ 0, %for.body4.counter_val.exit_crit_edge ], [ %add2.i, %do.body.i.counter_val.exit_crit_edge ]
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i) #4
  %add9 = add i32 %call8, %len.1115
  %inc = add nsw i32 %j.1116, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %counter_val.exit.for.end_crit_edge, label %counter_val.exit.for.body4_crit_edge

counter_val.exit.for.body4_crit_edge:             ; preds = %counter_val.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

counter_val.exit.for.end_crit_edge:               ; preds = %counter_val.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %counter_val.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %len.1.lcssa = phi i32 [ %add, %for.body.for.end_crit_edge ], [ %add9, %counter_val.exit.for.end_crit_edge ]
  %j.1.lcssa = phi i32 [ %j.0120, %for.body.for.end_crit_edge ], [ %5, %counter_val.exit.for.end_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %len.1.lcssa
  %sub11 = sub i32 4096, %len.1.lcssa
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.25) #4
  %add13 = add i32 %call12, %len.1.lcssa
  %inc15 = add nuw nsw i32 %i.0121, 1
  %exitcond133.not = icmp eq i32 %inc15, 23
  br i1 %exitcond133.not, label %for.cond17.preheader, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond17.preheader.do.body_crit_edge
  %call18128 = phi i32 [ %call18, %do.body.do.body_crit_edge ], [ %call18122, %for.cond17.preheader.do.body_crit_edge ]
  %xs_xstrat_bytes.0127 = phi i64 [ %add25, %do.body.do.body_crit_edge ], [ 0, %for.cond17.preheader.do.body_crit_edge ]
  %xs_write_bytes.0126 = phi i64 [ %add36, %do.body.do.body_crit_edge ], [ 0, %for.cond17.preheader.do.body_crit_edge ]
  %xs_read_bytes.0125 = phi i64 [ %add47, %do.body.do.body_crit_edge ], [ 0, %for.cond17.preheader.do.body_crit_edge ]
  %defer_relog.0124 = phi i64 [ %add58, %do.body.do.body_crit_edge ], [ 0, %for.cond17.preheader.do.body_crit_edge ]
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18128
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %13, %0
  %14 = inttoptr i32 %add23 to ptr
  %xs_xstrat_bytes24 = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 91
  %15 = ptrtoint ptr %xs_xstrat_bytes24 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %xs_xstrat_bytes24, align 8
  %add25 = add i64 %16, %xs_xstrat_bytes.0127
  %xs_write_bytes35 = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 92
  %17 = ptrtoint ptr %xs_write_bytes35 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %xs_write_bytes35, align 8
  %add36 = add i64 %18, %xs_write_bytes.0126
  %xs_read_bytes46 = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 93
  %19 = ptrtoint ptr %xs_read_bytes46 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %xs_read_bytes46, align 8
  %add47 = add i64 %20, %xs_read_bytes.0125
  %defer_relog57 = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 94
  %21 = ptrtoint ptr %defer_relog57 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %defer_relog57, align 8
  %add58 = add i64 %22, %defer_relog.0124
  %call18 = tail call i32 @cpumask_next(i32 noundef %call18128, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp19 = icmp ult i32 %call18, %1
  br i1 %cmp19, label %do.body.do.body_crit_edge, label %do.body.for.end59_crit_edge

do.body.for.end59_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end59

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end59:                                        ; preds = %do.body.for.end59_crit_edge, %for.cond17.preheader.for.end59_crit_edge
  %defer_relog.0.lcssa = phi i64 [ 0, %for.cond17.preheader.for.end59_crit_edge ], [ %add58, %do.body.for.end59_crit_edge ]
  %xs_read_bytes.0.lcssa = phi i64 [ 0, %for.cond17.preheader.for.end59_crit_edge ], [ %add47, %do.body.for.end59_crit_edge ]
  %xs_write_bytes.0.lcssa = phi i64 [ 0, %for.cond17.preheader.for.end59_crit_edge ], [ %add36, %do.body.for.end59_crit_edge ]
  %xs_xstrat_bytes.0.lcssa = phi i64 [ 0, %for.cond17.preheader.for.end59_crit_edge ], [ %add25, %do.body.for.end59_crit_edge ]
  %add.ptr60 = getelementptr i8, ptr %buf, i32 %add13
  %sub61 = sub i32 4096, %add13
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.26, i64 noundef %xs_xstrat_bytes.0.lcssa, i64 noundef %xs_write_bytes.0.lcssa, i64 noundef %xs_read_bytes.0.lcssa) #4
  %add63 = add i32 %call62, %add13
  %add.ptr64 = getelementptr i8, ptr %buf, i32 %add63
  %sub65 = sub i32 4096, %add63
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.27, i64 noundef %defer_relog.0.lcssa) #4
  %add67 = add i32 %add63, %call66
  %add.ptr68 = getelementptr i8, ptr %buf, i32 %add67
  %sub69 = sub i32 4096, %add67
  %call70 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.28, i32 noundef 1) #4
  %add71 = add i32 %add67, %call70
  ret i32 %add71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_stats_clearall(ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef null, ptr noundef nonnull @.str.29) #4
  %call36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call36, i32 %0)
  %cmp37 = icmp ult i32 %call36, %0
  br i1 %cmp37, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %1 = ptrtoint ptr %stats to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call38 = phi i32 [ %call36, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %2 = tail call i32 @llvm.read_register.i32(metadata !76) #4
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !86
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call38
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %vn_active5 = getelementptr inbounds %struct.__xfsstats, ptr %8, i32 0, i32 59
  %9 = ptrtoint ptr %vn_active5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vn_active5, align 4
  %11 = call ptr @memset(ptr %8, i32 0, i32 792)
  %12 = load i32, ptr %arrayidx, align 4
  %add23 = add i32 %12, %1
  %13 = inttoptr i32 %add23 to ptr
  %vn_active24 = getelementptr inbounds %struct.__xfsstats, ptr %13, i32 0, i32 59
  %14 = ptrtoint ptr %vn_active24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %vn_active24, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !87
  %15 = tail call i32 @llvm.read_register.i32(metadata !76) #4
  %and.i.i.i34 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i34 to ptr
  %preempt_count.i.i35 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i35, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i35, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call38, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %19
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_init_procfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.30, ptr noundef null) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @proc_symlink(ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef nonnull @.str.32) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.33, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @xqmstat_proc_show, ptr noundef null) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.34, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @xqm_proc_show, ptr noundef null) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %call13 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.30, ptr noundef null) #4
  br label %return

return:                                           ; preds = %out, %if.end8.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %out ], [ -12, %entry.return_crit_edge ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xqmstat_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %0)
  %cmp7.i = icmp ult i32 %call6.i, %0
  br i1 %cmp7.i, label %do.body.lr.ph.i, label %entry.counter_val.exit_crit_edge

entry.counter_val.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %1 = load ptr, ptr @xfsstats, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call9.i = phi i32 [ %call6.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %val.08.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add2.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr i32, ptr %5, i32 181
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %add2.i = add i32 %7, %val.08.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.counter_val.exit_crit_edge

do.body.i.counter_val.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

counter_val.exit:                                 ; preds = %do.body.i.counter_val.exit_crit_edge, %entry.counter_val.exit_crit_edge
  %val.0.lcssa.i = phi i32 [ 0, %entry.counter_val.exit_crit_edge ], [ %add2.i, %do.body.i.counter_val.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.1, i32 %8)
  %cmp7.i.1 = icmp ult i32 %call6.i.1, %8
  br i1 %cmp7.i.1, label %do.body.lr.ph.i.1, label %counter_val.exit.counter_val.exit.1_crit_edge

counter_val.exit.counter_val.exit.1_crit_edge:    ; preds = %counter_val.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.1

do.body.lr.ph.i.1:                                ; preds = %counter_val.exit
  %9 = load ptr, ptr @xfsstats, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %do.body.i.1.do.body.i.1_crit_edge, %do.body.lr.ph.i.1
  %call9.i.1 = phi i32 [ %call6.i.1, %do.body.lr.ph.i.1 ], [ %call.i.1, %do.body.i.1.do.body.i.1_crit_edge ]
  %val.08.i.1 = phi i32 [ 0, %do.body.lr.ph.i.1 ], [ %add2.i.1, %do.body.i.1.do.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i.1
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.1, align 4
  %add.i.1 = add i32 %12, %10
  %13 = inttoptr i32 %add.i.1 to ptr
  %add.ptr.i.1 = getelementptr i32, ptr %13, i32 182
  %14 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.1, align 4
  %add2.i.1 = add i32 %15, %val.08.i.1
  %call.i.1 = tail call i32 @cpumask_next(i32 noundef %call9.i.1, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i.1 = icmp ult i32 %call.i.1, %8
  br i1 %cmp.i.1, label %do.body.i.1.do.body.i.1_crit_edge, label %do.body.i.1.counter_val.exit.1_crit_edge

do.body.i.1.counter_val.exit.1_crit_edge:         ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.1

do.body.i.1.do.body.i.1_crit_edge:                ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.1

counter_val.exit.1:                               ; preds = %do.body.i.1.counter_val.exit.1_crit_edge, %counter_val.exit.counter_val.exit.1_crit_edge
  %val.0.lcssa.i.1 = phi i32 [ 0, %counter_val.exit.counter_val.exit.1_crit_edge ], [ %add2.i.1, %do.body.i.1.counter_val.exit.1_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i.1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.2, i32 %16)
  %cmp7.i.2 = icmp ult i32 %call6.i.2, %16
  br i1 %cmp7.i.2, label %do.body.lr.ph.i.2, label %counter_val.exit.1.counter_val.exit.2_crit_edge

counter_val.exit.1.counter_val.exit.2_crit_edge:  ; preds = %counter_val.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.2

do.body.lr.ph.i.2:                                ; preds = %counter_val.exit.1
  %17 = load ptr, ptr @xfsstats, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %do.body.i.2

do.body.i.2:                                      ; preds = %do.body.i.2.do.body.i.2_crit_edge, %do.body.lr.ph.i.2
  %call9.i.2 = phi i32 [ %call6.i.2, %do.body.lr.ph.i.2 ], [ %call.i.2, %do.body.i.2.do.body.i.2_crit_edge ]
  %val.08.i.2 = phi i32 [ 0, %do.body.lr.ph.i.2 ], [ %add2.i.2, %do.body.i.2.do.body.i.2_crit_edge ]
  %arrayidx.i.2 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i.2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.2, align 4
  %add.i.2 = add i32 %20, %18
  %21 = inttoptr i32 %add.i.2 to ptr
  %add.ptr.i.2 = getelementptr i32, ptr %21, i32 183
  %22 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.2, align 4
  %add2.i.2 = add i32 %23, %val.08.i.2
  %call.i.2 = tail call i32 @cpumask_next(i32 noundef %call9.i.2, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i.2 = icmp ult i32 %call.i.2, %16
  br i1 %cmp.i.2, label %do.body.i.2.do.body.i.2_crit_edge, label %do.body.i.2.counter_val.exit.2_crit_edge

do.body.i.2.counter_val.exit.2_crit_edge:         ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.2

do.body.i.2.do.body.i.2_crit_edge:                ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.2

counter_val.exit.2:                               ; preds = %do.body.i.2.counter_val.exit.2_crit_edge, %counter_val.exit.1.counter_val.exit.2_crit_edge
  %val.0.lcssa.i.2 = phi i32 [ 0, %counter_val.exit.1.counter_val.exit.2_crit_edge ], [ %add2.i.2, %do.body.i.2.counter_val.exit.2_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i.2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.3, i32 %24)
  %cmp7.i.3 = icmp ult i32 %call6.i.3, %24
  br i1 %cmp7.i.3, label %do.body.lr.ph.i.3, label %counter_val.exit.2.counter_val.exit.3_crit_edge

counter_val.exit.2.counter_val.exit.3_crit_edge:  ; preds = %counter_val.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.3

do.body.lr.ph.i.3:                                ; preds = %counter_val.exit.2
  %25 = load ptr, ptr @xfsstats, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %do.body.i.3

do.body.i.3:                                      ; preds = %do.body.i.3.do.body.i.3_crit_edge, %do.body.lr.ph.i.3
  %call9.i.3 = phi i32 [ %call6.i.3, %do.body.lr.ph.i.3 ], [ %call.i.3, %do.body.i.3.do.body.i.3_crit_edge ]
  %val.08.i.3 = phi i32 [ 0, %do.body.lr.ph.i.3 ], [ %add2.i.3, %do.body.i.3.do.body.i.3_crit_edge ]
  %arrayidx.i.3 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i.3
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.3, align 4
  %add.i.3 = add i32 %28, %26
  %29 = inttoptr i32 %add.i.3 to ptr
  %add.ptr.i.3 = getelementptr i32, ptr %29, i32 184
  %30 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.3, align 4
  %add2.i.3 = add i32 %31, %val.08.i.3
  %call.i.3 = tail call i32 @cpumask_next(i32 noundef %call9.i.3, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i.3 = icmp ult i32 %call.i.3, %24
  br i1 %cmp.i.3, label %do.body.i.3.do.body.i.3_crit_edge, label %do.body.i.3.counter_val.exit.3_crit_edge

do.body.i.3.counter_val.exit.3_crit_edge:         ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.3

do.body.i.3.do.body.i.3_crit_edge:                ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.3

counter_val.exit.3:                               ; preds = %do.body.i.3.counter_val.exit.3_crit_edge, %counter_val.exit.2.counter_val.exit.3_crit_edge
  %val.0.lcssa.i.3 = phi i32 [ 0, %counter_val.exit.2.counter_val.exit.3_crit_edge ], [ %add2.i.3, %do.body.i.3.counter_val.exit.3_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i.3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.4, i32 %32)
  %cmp7.i.4 = icmp ult i32 %call6.i.4, %32
  br i1 %cmp7.i.4, label %do.body.lr.ph.i.4, label %counter_val.exit.3.counter_val.exit.4_crit_edge

counter_val.exit.3.counter_val.exit.4_crit_edge:  ; preds = %counter_val.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.4

do.body.lr.ph.i.4:                                ; preds = %counter_val.exit.3
  %33 = load ptr, ptr @xfsstats, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %do.body.i.4

do.body.i.4:                                      ; preds = %do.body.i.4.do.body.i.4_crit_edge, %do.body.lr.ph.i.4
  %call9.i.4 = phi i32 [ %call6.i.4, %do.body.lr.ph.i.4 ], [ %call.i.4, %do.body.i.4.do.body.i.4_crit_edge ]
  %val.08.i.4 = phi i32 [ 0, %do.body.lr.ph.i.4 ], [ %add2.i.4, %do.body.i.4.do.body.i.4_crit_edge ]
  %arrayidx.i.4 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i.4
  %35 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.4, align 4
  %add.i.4 = add i32 %36, %34
  %37 = inttoptr i32 %add.i.4 to ptr
  %add.ptr.i.4 = getelementptr i32, ptr %37, i32 185
  %38 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.4, align 4
  %add2.i.4 = add i32 %39, %val.08.i.4
  %call.i.4 = tail call i32 @cpumask_next(i32 noundef %call9.i.4, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i.4 = icmp ult i32 %call.i.4, %32
  br i1 %cmp.i.4, label %do.body.i.4.do.body.i.4_crit_edge, label %do.body.i.4.counter_val.exit.4_crit_edge

do.body.i.4.counter_val.exit.4_crit_edge:         ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.4

do.body.i.4.do.body.i.4_crit_edge:                ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.4

counter_val.exit.4:                               ; preds = %do.body.i.4.counter_val.exit.4_crit_edge, %counter_val.exit.3.counter_val.exit.4_crit_edge
  %val.0.lcssa.i.4 = phi i32 [ 0, %counter_val.exit.3.counter_val.exit.4_crit_edge ], [ %add2.i.4, %do.body.i.4.counter_val.exit.4_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i.4) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.5, i32 %40)
  %cmp7.i.5 = icmp ult i32 %call6.i.5, %40
  br i1 %cmp7.i.5, label %do.body.lr.ph.i.5, label %counter_val.exit.4.counter_val.exit.5_crit_edge

counter_val.exit.4.counter_val.exit.5_crit_edge:  ; preds = %counter_val.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.5

do.body.lr.ph.i.5:                                ; preds = %counter_val.exit.4
  %41 = load ptr, ptr @xfsstats, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %do.body.i.5

do.body.i.5:                                      ; preds = %do.body.i.5.do.body.i.5_crit_edge, %do.body.lr.ph.i.5
  %call9.i.5 = phi i32 [ %call6.i.5, %do.body.lr.ph.i.5 ], [ %call.i.5, %do.body.i.5.do.body.i.5_crit_edge ]
  %val.08.i.5 = phi i32 [ 0, %do.body.lr.ph.i.5 ], [ %add2.i.5, %do.body.i.5.do.body.i.5_crit_edge ]
  %arrayidx.i.5 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i.5
  %43 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.5, align 4
  %add.i.5 = add i32 %44, %42
  %45 = inttoptr i32 %add.i.5 to ptr
  %add.ptr.i.5 = getelementptr i32, ptr %45, i32 186
  %46 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.5, align 4
  %add2.i.5 = add i32 %47, %val.08.i.5
  %call.i.5 = tail call i32 @cpumask_next(i32 noundef %call9.i.5, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i.5 = icmp ult i32 %call.i.5, %40
  br i1 %cmp.i.5, label %do.body.i.5.do.body.i.5_crit_edge, label %do.body.i.5.counter_val.exit.5_crit_edge

do.body.i.5.counter_val.exit.5_crit_edge:         ; preds = %do.body.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit.5

do.body.i.5.do.body.i.5_crit_edge:                ; preds = %do.body.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.5

counter_val.exit.5:                               ; preds = %do.body.i.5.counter_val.exit.5_crit_edge, %counter_val.exit.4.counter_val.exit.5_crit_edge
  %val.0.lcssa.i.5 = phi i32 [ 0, %counter_val.exit.4.counter_val.exit.5_crit_edge ], [ %add2.i.5, %do.body.i.5.counter_val.exit.5_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %val.0.lcssa.i.5) #4
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xqm_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %0)
  %cmp7.i = icmp ult i32 %call6.i, %0
  br i1 %cmp7.i, label %do.body.lr.ph.i, label %entry.counter_val.exit15_crit_edge

entry.counter_val.exit15_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit15

do.body.lr.ph.i:                                  ; preds = %entry
  %1 = load ptr, ptr @xfsstats, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call9.i = phi i32 [ %call6.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %val.08.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add2.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %add.ptr.i = getelementptr i32, ptr %5, i32 187
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %add2.i = add i32 %7, %val.08.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.do.body.i13_crit_edge

do.body.i.do.body.i13_crit_edge:                  ; preds = %do.body.i
  br label %do.body.i13

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i13:                                      ; preds = %do.body.i13.do.body.i13_crit_edge, %do.body.i.do.body.i13_crit_edge
  %call9.i5 = phi i32 [ %call.i11, %do.body.i13.do.body.i13_crit_edge ], [ %call6.i, %do.body.i.do.body.i13_crit_edge ]
  %val.08.i6 = phi i32 [ %add2.i10, %do.body.i13.do.body.i13_crit_edge ], [ 0, %do.body.i.do.body.i13_crit_edge ]
  %arrayidx.i7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i5
  %8 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i7, align 4
  %add.i8 = add i32 %9, %2
  %10 = inttoptr i32 %add.i8 to ptr
  %add.ptr.i9 = getelementptr i32, ptr %10, i32 188
  %11 = ptrtoint ptr %add.ptr.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i9, align 4
  %add2.i10 = add i32 %12, %val.08.i6
  %call.i11 = tail call i32 @cpumask_next(i32 noundef %call9.i5, ptr noundef nonnull @__cpu_possible_mask) #7
  %cmp.i12 = icmp ult i32 %call.i11, %0
  br i1 %cmp.i12, label %do.body.i13.do.body.i13_crit_edge, label %do.body.i13.counter_val.exit15_crit_edge

do.body.i13.counter_val.exit15_crit_edge:         ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %counter_val.exit15

do.body.i13.do.body.i13_crit_edge:                ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i13

counter_val.exit15:                               ; preds = %do.body.i13.counter_val.exit15_crit_edge, %entry.counter_val.exit15_crit_edge
  %val.0.lcssa.i17 = phi i32 [ 0, %entry.counter_val.exit15_crit_edge ], [ %add2.i, %do.body.i13.counter_val.exit15_crit_edge ]
  %val.0.lcssa.i14 = phi i32 [ 0, %entry.counter_val.exit15_crit_edge ], [ %add2.i10, %do.body.i13.counter_val.exit15_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %val.0.lcssa.i17, i32 noundef 0, i32 noundef %val.0.lcssa.i14) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_cleanup_procfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.30, ptr noundef null) #4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_stats.c", i32 32, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_stats.c", i32 33, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_stats.c", i32 34, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_stats.c", i32 35, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_stats.c", i32 36, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_stats.c", i32 37, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_stats.c", i32 38, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_stats.c", i32 39, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_stats.c", i32 40, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_stats.c", i32 41, i32 5}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_stats.c", i32 42, i32 5}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_stats.c", i32 43, i32 5}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_stats.c", i32 44, i32 5}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_stats.c", i32 45, i32 5}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_stats.c", i32 46, i32 5}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_stats.c", i32 47, i32 5}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_stats.c", i32 48, i32 5}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_stats.c", i32 49, i32 5}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_stats.c", i32 50, i32 5}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_stats.c", i32 51, i32 5}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_stats.c", i32 52, i32 5}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_stats.c", i32 53, i32 5}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_stats.c", i32 55, i32 5}
!46 = !{ptr @xfs_stats_format.xstats, !47, !"xstats", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_stats.c", i32 31, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_stats.c", i32 61, i32 47}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_stats.c", i32 65, i32 48}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_stats.c", i32 67, i32 47}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_stats.c", i32 77, i32 44}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_stats.c", i32 79, i32 44}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_stats.c", i32 81, i32 44}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_stats.c", i32 96, i32 19}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_stats.c", i32 139, i32 18}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_stats.c", i32 142, i32 20}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_stats.c", i32 143, i32 6}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_stats.c", i32 147, i32 7}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_stats.c", i32 149, i32 7}
!72 = !{ptr @xfsstats, !73, !"xfsstats", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_stats.c", i32 8, i32 15}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_stats.c", i32 117, i32 16}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2155495150}
!87 = !{i64 2155497203}
