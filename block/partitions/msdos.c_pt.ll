; ModuleID = '/llk/IR_all_yes/block/partitions/msdos.c_pt.bc'
source_filename = "../block/partitions/msdos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.89 = type { i8, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.fat_boot_sector = type { [3 x i8], [8 x i8], [2 x i8], i8, i16, i8, [2 x i8], [2 x i8], i8, i16, i16, i16, i32, i32, %union.anon.86 }
%union.anon.86 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i16, [2 x i8], i32, i16, i16, [6 x i16], i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.msdos_partition = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.unixware_disklabel = type { i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], %struct.unixware_vtoc }
%struct.unixware_vtoc = type { i32, i32, [8 x i8], i16, i16, [10 x i32], [16 x %struct.unixware_slice] }
%struct.unixware_slice = type { i16, i16, i32, i32 }
%struct.solaris_x86_vtoc = type { [3 x i32], i32, i32, [8 x i8], i16, i16, [10 x i32], [16 x %struct.solaris_x86_slice], [16 x i32], [128 x i8] }
%struct.solaris_x86_slice = type { i16, i16, i32, i32 }
%struct.bsd_disklabel = type { i32, i16, i16, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, [5 x i32], [5 x i32], i32, i16, i16, i32, i32, [16 x %struct.bsd_partition] }
%struct.bsd_partition = type { i32, i32, i32, i8, i8, i16 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" <\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" >\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[DM]\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[EZD]\00", [26 x i8] zeroinitializer }, align 32
@subtypes = internal constant { [8 x %struct.anon.89], [32 x i8] } { [8 x %struct.anon.89] [%struct.anon.89 { i8 -91, ptr @parse_freebsd }, %struct.anon.89 { i8 -87, ptr @parse_netbsd }, %struct.anon.89 { i8 -90, ptr @parse_openbsd }, %struct.anon.89 { i8 -127, ptr @parse_minix }, %struct.anon.89 { i8 99, ptr @parse_unixware }, %struct.anon.89 { i8 -126, ptr @parse_solaris_x86 }, %struct.anon.89 { i8 -65, ptr @parse_solaris_x86 }, %struct.anon.89 zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%08x-%02x\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsd\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" %s%d: <%s:\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsd\00\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad subpartition - ignored\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" (ignored %d more)\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" >\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"netbsd\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"openbsd\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" %s%d: <minix:\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" %s%d: <unixware:\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" %s%d: <solaris:\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  cannot handle version %d vtoc>\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" [s%d]\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 5, i64 15, i64 130, i64 131, i64 133, i64 142, i64 253]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 8, i64 5, i64 15, i64 130, i64 131, i64 133, i64 142, i64 253]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 8, i64 5, i64 15, i64 130, i64 131, i64 133, i64 142, i64 253]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 8, i64 5, i64 15, i64 130, i64 131, i64 133, i64 142, i64 253]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.25 = internal global [11 x i64] [i64 9, i64 8, i64 240, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 133]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 8, i64 99, i64 129, i64 130, i64 165, i64 166, i64 169, i64 191]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 8, i64 99, i64 129, i64 130, i64 165, i64 166, i64 169, i64 191]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 8, i64 99, i64 129, i64 130, i64 165, i64 166, i64 169, i64 191]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 8, i64 99, i64 129, i64 130, i64 165, i64 166, i64 169, i64 191]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 133]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 133]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 133]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 133]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 15, i64 133]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 632, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 681, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 683, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 691, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 693, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"subtypes\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 570, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 717, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 45, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 113, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 413, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 372, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 387, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 394, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 401, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 405, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 421, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 429, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 551, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 502, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 269, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 275, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [28 x i8] c"../block/partitions/msdos.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 289, i32 30 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @subtypes, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subtypes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msdos_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i323 = alloca [44 x i8], align 1
  %tmp.i = alloca [44 x i8], align 1
  %sect.i = alloca %struct.Sector, align 4
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !53
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

entry.queue_logical_block_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 9
  %5 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 512, i32 %6
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %entry.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 512, %entry.queue_logical_block_size.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %div252 = lshr i32 %retval1.0.i, 9
  %conv = zext i32 %div252 to i64
  %call1 = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %queue_logical_block_size.exit.cleanup156_crit_edge, label %if.end

queue_logical_block_size.exit.cleanup156_crit_edge: ; preds = %queue_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156

if.end:                                           ; preds = %queue_logical_block_size.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect.i) #9
  %7 = ptrtoint ptr %sect.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect.i, align 4, !annotation !53
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %9)
  %cmp.i = icmp eq i8 %9, -55
  br i1 %cmp.i, label %land.lhs.true.i253, label %if.end.aix_magic_present.exit.thread_crit_edge

if.end.aix_magic_present.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

land.lhs.true.i253:                               ; preds = %if.end
  %arrayidx2.i = getelementptr i8, ptr %call1, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %11)
  %cmp4.i = icmp eq i8 %11, -62
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i253.aix_magic_present.exit.thread_crit_edge

land.lhs.true.i253.aix_magic_present.exit.thread_crit_edge: ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i253
  %arrayidx7.i = getelementptr i8, ptr %call1, i32 2
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -44, i8 %13)
  %cmp9.i = icmp eq i8 %13, -44
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.aix_magic_present.exit.thread_crit_edge

land.lhs.true6.i.aix_magic_present.exit.thread_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %arrayidx12.i = getelementptr i8, ptr %call1, i32 3
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %15)
  %cmp14.i = icmp eq i8 %15, -63
  br i1 %cmp14.i, label %for.body.preheader.i, label %land.lhs.true11.i.aix_magic_present.exit.thread_crit_edge

land.lhs.true11.i.aix_magic_present.exit.thread_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i:                             ; preds = %land.lhs.true11.i
  %sys_ind.i = getelementptr i8, ptr %call1, i32 450
  %16 = ptrtoint ptr %sys_ind.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sys_ind.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %for.inc.i [
    i8 -126, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge
    i8 -3, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge394
    i8 -125, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge395
    i8 -114, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge396
    i8 5, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge397
    i8 15, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge398
    i8 -123, label %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge399
  ]

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge399: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge398: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge397: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge396: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge395: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge394: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.body.preheader.i.aix_magic_present.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i:                                        ; preds = %for.body.preheader.i
  %sys_ind.1.i = getelementptr i8, ptr %call1, i32 466
  %19 = ptrtoint ptr %sys_ind.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sys_ind.1.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %20, label %for.inc.1.i [
    i8 -126, label %for.inc.i.aix_magic_present.exit.thread_crit_edge
    i8 -3, label %for.inc.i.aix_magic_present.exit.thread_crit_edge400
    i8 -125, label %for.inc.i.aix_magic_present.exit.thread_crit_edge401
    i8 -114, label %for.inc.i.aix_magic_present.exit.thread_crit_edge402
    i8 5, label %for.inc.i.aix_magic_present.exit.thread_crit_edge403
    i8 15, label %for.inc.i.aix_magic_present.exit.thread_crit_edge404
    i8 -123, label %for.inc.i.aix_magic_present.exit.thread_crit_edge405
  ]

for.inc.i.aix_magic_present.exit.thread_crit_edge405: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i.aix_magic_present.exit.thread_crit_edge404: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i.aix_magic_present.exit.thread_crit_edge403: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i.aix_magic_present.exit.thread_crit_edge402: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i.aix_magic_present.exit.thread_crit_edge401: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i.aix_magic_present.exit.thread_crit_edge400: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.i.aix_magic_present.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i:                                      ; preds = %for.inc.i
  %sys_ind.2.i = getelementptr i8, ptr %call1, i32 482
  %22 = ptrtoint ptr %sys_ind.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sys_ind.2.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %23, label %for.inc.2.i [
    i8 -126, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge
    i8 -3, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge406
    i8 -125, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge407
    i8 -114, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge408
    i8 5, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge409
    i8 15, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge410
    i8 -123, label %for.inc.1.i.aix_magic_present.exit.thread_crit_edge411
  ]

for.inc.1.i.aix_magic_present.exit.thread_crit_edge411: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i.aix_magic_present.exit.thread_crit_edge410: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i.aix_magic_present.exit.thread_crit_edge409: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i.aix_magic_present.exit.thread_crit_edge408: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i.aix_magic_present.exit.thread_crit_edge407: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i.aix_magic_present.exit.thread_crit_edge406: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.1.i.aix_magic_present.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %sys_ind.3.i = getelementptr i8, ptr %call1, i32 498
  %25 = ptrtoint ptr %sys_ind.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sys_ind.3.i, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %26, label %for.inc.3.i [
    i8 -126, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge
    i8 -3, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge412
    i8 -125, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge413
    i8 -114, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge414
    i8 5, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge415
    i8 15, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge416
    i8 -123, label %for.inc.2.i.aix_magic_present.exit.thread_crit_edge417
  ]

for.inc.2.i.aix_magic_present.exit.thread_crit_edge417: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i.aix_magic_present.exit.thread_crit_edge416: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i.aix_magic_present.exit.thread_crit_edge415: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i.aix_magic_present.exit.thread_crit_edge414: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i.aix_magic_present.exit.thread_crit_edge413: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i.aix_magic_present.exit.thread_crit_edge412: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.2.i.aix_magic_present.exit.thread_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call38.i = call ptr @read_part_sector(ptr noundef %state, i64 noundef 7, ptr noundef nonnull %sect.i) #9
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %for.inc.3.i.aix_magic_present.exit.thread_crit_edge, label %if.then40.i

for.inc.3.i.aix_magic_present.exit.thread_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit.thread

if.then40.i:                                      ; preds = %for.inc.3.i
  %28 = ptrtoint ptr %call38.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call38.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %29)
  %cmp43.i = icmp eq i8 %29, 95
  br i1 %cmp43.i, label %land.lhs.true45.i, label %if.then40.i.aix_magic_present.exit_crit_edge

if.then40.i.aix_magic_present.exit_crit_edge:     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit

land.lhs.true45.i:                                ; preds = %if.then40.i
  %arrayidx46.i = getelementptr i8, ptr %call38.i, i32 1
  %30 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx46.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %31)
  %cmp48.i = icmp eq i8 %31, 76
  br i1 %cmp48.i, label %land.lhs.true50.i, label %land.lhs.true45.i.aix_magic_present.exit_crit_edge

land.lhs.true45.i.aix_magic_present.exit_crit_edge: ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit

land.lhs.true50.i:                                ; preds = %land.lhs.true45.i
  %arrayidx51.i = getelementptr i8, ptr %call38.i, i32 2
  %32 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %33)
  %cmp53.i = icmp eq i8 %33, 86
  br i1 %cmp53.i, label %land.lhs.true55.i, label %land.lhs.true50.i.aix_magic_present.exit_crit_edge

land.lhs.true50.i.aix_magic_present.exit_crit_edge: ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aix_magic_present.exit

land.lhs.true55.i:                                ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx56.i = getelementptr i8, ptr %call38.i, i32 3
  %34 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %35)
  %cmp58.i = icmp eq i8 %35, 77
  %spec.select.i254 = zext i1 %cmp58.i to i32
  br label %aix_magic_present.exit

aix_magic_present.exit.thread:                    ; preds = %for.inc.3.i.aix_magic_present.exit.thread_crit_edge, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge412, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge413, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge414, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge415, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge416, %for.inc.2.i.aix_magic_present.exit.thread_crit_edge417, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge406, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge407, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge408, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge409, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge410, %for.inc.1.i.aix_magic_present.exit.thread_crit_edge411, %for.inc.i.aix_magic_present.exit.thread_crit_edge, %for.inc.i.aix_magic_present.exit.thread_crit_edge400, %for.inc.i.aix_magic_present.exit.thread_crit_edge401, %for.inc.i.aix_magic_present.exit.thread_crit_edge402, %for.inc.i.aix_magic_present.exit.thread_crit_edge403, %for.inc.i.aix_magic_present.exit.thread_crit_edge404, %for.inc.i.aix_magic_present.exit.thread_crit_edge405, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge394, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge395, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge396, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge397, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge398, %for.body.preheader.i.aix_magic_present.exit.thread_crit_edge399, %land.lhs.true11.i.aix_magic_present.exit.thread_crit_edge, %land.lhs.true6.i.aix_magic_present.exit.thread_crit_edge, %land.lhs.true.i253.aix_magic_present.exit.thread_crit_edge, %if.end.aix_magic_present.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect.i) #9
  br label %if.end6

aix_magic_present.exit:                           ; preds = %land.lhs.true55.i, %land.lhs.true50.i.aix_magic_present.exit_crit_edge, %land.lhs.true45.i.aix_magic_present.exit_crit_edge, %if.then40.i.aix_magic_present.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %land.lhs.true50.i.aix_magic_present.exit_crit_edge ], [ 0, %land.lhs.true45.i.aix_magic_present.exit_crit_edge ], [ 0, %if.then40.i.aix_magic_present.exit_crit_edge ], [ %spec.select.i254, %land.lhs.true55.i ]
  %36 = ptrtoint ptr %sect.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.0.load.i = load i32, ptr %sect.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %.fca.0.load.i, 0
  call fastcc void @put_dev_sector([1 x i32] %.fca.0.insert.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool3.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool3.not, label %aix_magic_present.exit.if.end6_crit_edge, label %if.then4

aix_magic_present.exit.if.end6_crit_edge:         ; preds = %aix_magic_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %aix_magic_present.exit
  %37 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.0.load = load i32, ptr %sect, align 4
  %38 = inttoptr i32 %.fca.0.load to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.then4._compound_head.exit.i.i_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %41, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then4._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %38, %if.then4._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %42 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@msdos_partition, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %call5 = call i32 @aix_partition(ptr noundef %state) #9
  br label %cleanup156

if.end6:                                          ; preds = %aix_magic_present.exit.if.end6_crit_edge, %aix_magic_present.exit.thread
  %add.ptr = getelementptr i8, ptr %call1, i32 510
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %46)
  %cmp.i255 = icmp eq i8 %46, 85
  br i1 %cmp.i255, label %msdos_magic_present.exit, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

msdos_magic_present.exit:                         ; preds = %if.end6
  %arrayidx2.i256 = getelementptr i8, ptr %call1, i32 511
  %47 = ptrtoint ptr %arrayidx2.i256 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i256, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %48)
  %cmp4.i257.not = icmp eq i8 %48, -86
  br i1 %cmp4.i257.not, label %if.end11, label %msdos_magic_present.exit.if.then9_crit_edge

msdos_magic_present.exit.if.then9_crit_edge:      ; preds = %msdos_magic_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %msdos_magic_present.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %49 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.0.load218 = load i32, ptr %sect, align 4
  %50 = inttoptr i32 %.fca.0.load218 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i258 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i258)
  %tobool.not.i.i.i259 = icmp eq i32 %and.i.i.i258, 0
  br i1 %tobool.not.i.i.i259, label %if.then9._compound_head.exit.i.i267_crit_edge, label %if.then.i.i.i262, !prof !54

if.then9._compound_head.exit.i.i267_crit_edge:    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i267

if.then.i.i.i262:                                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i260 = add i32 %53, -1
  %.pre.i261 = inttoptr i32 %sub.i.i.i260 to ptr
  br label %_compound_head.exit.i.i267

_compound_head.exit.i.i267:                       ; preds = %if.then.i.i.i262, %if.then9._compound_head.exit.i.i267_crit_edge
  %.pre-phi.i263 = phi ptr [ %50, %if.then9._compound_head.exit.i.i267_crit_edge ], [ %.pre.i261, %if.then.i.i.i262 ]
  %_refcount.i.i.i.i.i.i264 = getelementptr inbounds %struct.page, ptr %.pre-phi.i263, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i265 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i264, i32 noundef 4) #9
  %54 = ptrtoint ptr %_refcount.i.i.i.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_refcount.i.i.i.i.i.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i.i266 = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i.i266, label %if.then.i.i.i.i.i268, label %do.end5.i.i.i.i.i272, !prof !55

if.then.i.i.i.i.i268:                             ; preds = %_compound_head.exit.i.i267
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i263, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i272:                             ; preds = %_compound_head.exit.i.i267
  %call.i.i.i10.i.i.i.i.i269 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i264, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i264, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i264, ptr %_refcount.i.i.i.i.i.i264, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i264) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i270 = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i270)
  %cmp.i.i.i.i.i.i.i.i271 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i270, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@msdos_partition, %if.then.i.i.i.i.i.i274)) #9
          to label %folio_put_testzero.exit.i.i.i275 [label %if.then.i.i.i.i.i.i274], !srcloc !60

if.then.i.i.i.i.i.i274:                           ; preds = %do.end5.i.i.i.i.i272
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i273 = zext i1 %cmp.i.i.i.i.i.i.i.i271 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i263, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i273) #9
  br label %folio_put_testzero.exit.i.i.i275

folio_put_testzero.exit.i.i.i275:                 ; preds = %if.then.i.i.i.i.i.i274, %do.end5.i.i.i.i.i272
  br i1 %cmp.i.i.i.i.i.i.i.i271, label %if.then.i4.i.i276, label %folio_put_testzero.exit.i.i.i275.cleanup156_crit_edge

folio_put_testzero.exit.i.i.i275.cleanup156_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i275
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156

if.then.i4.i.i276:                                ; preds = %folio_put_testzero.exit.i.i.i275
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i263) #9
  br label %cleanup156

if.end11:                                         ; preds = %msdos_magic_present.exit
  %add.ptr12 = getelementptr i8, ptr %call1, i32 446
  %57 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr12, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %58, label %land.lhs.true24 [
    i8 0, label %if.end11.for.inc_crit_edge
    i8 -128, label %if.end11.for.inc_crit_edge418
  ]

if.end11.for.inc_crit_edge418:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true24:                                  ; preds = %if.end11
  %reserved = getelementptr inbounds %struct.fat_boot_sector, ptr %call1, i32 0, i32 4
  %60 = ptrtoint ptr %reserved to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %reserved, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool26.not = icmp eq i16 %61, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.else_crit_edge, label %land.lhs.true27

land.lhs.true24.if.else_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %fats = getelementptr inbounds %struct.fat_boot_sector, ptr %call1, i32 0, i32 5
  %62 = ptrtoint ptr %fats to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fats, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool29.not = icmp eq i8 %63, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.else_crit_edge, label %land.lhs.true30

land.lhs.true27.if.else_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %media = getelementptr inbounds %struct.fat_boot_sector, ptr %call1, i32 0, i32 8
  %64 = ptrtoint ptr %media to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %media, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %65, label %land.lhs.true30.if.else_crit_edge [
    i8 -1, label %land.lhs.true30.if.then33_crit_edge
    i8 -2, label %land.lhs.true30.if.then33_crit_edge419
    i8 -3, label %land.lhs.true30.if.then33_crit_edge420
    i8 -4, label %land.lhs.true30.if.then33_crit_edge421
    i8 -5, label %land.lhs.true30.if.then33_crit_edge422
    i8 -6, label %land.lhs.true30.if.then33_crit_edge423
    i8 -7, label %land.lhs.true30.if.then33_crit_edge424
    i8 -8, label %land.lhs.true30.if.then33_crit_edge425
    i8 -16, label %land.lhs.true30.if.then33_crit_edge426
  ]

land.lhs.true30.if.then33_crit_edge426:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge425:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge424:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge423:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge422:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge421:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge420:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge419:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.then33_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true30.if.else_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true30.if.then33_crit_edge, %land.lhs.true30.if.then33_crit_edge419, %land.lhs.true30.if.then33_crit_edge420, %land.lhs.true30.if.then33_crit_edge421, %land.lhs.true30.if.then33_crit_edge422, %land.lhs.true30.if.then33_crit_edge423, %land.lhs.true30.if.then33_crit_edge424, %land.lhs.true30.if.then33_crit_edge425, %land.lhs.true30.if.then33_crit_edge426
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %67 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pp_buf, align 4
  %call34 = call i32 @strlcat(ptr noundef %68, ptr noundef nonnull @.str, i32 noundef 4096) #9
  %69 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.0.load221 = load i32, ptr %sect, align 4
  %.fca.0.insert222 = insertvalue [1 x i32] poison, i32 %.fca.0.load221, 0
  call fastcc void @put_dev_sector([1 x i32] %.fca.0.insert222)
  br label %cleanup156

if.else:                                          ; preds = %for.inc.2.if.else_crit_edge, %for.inc.1.if.else_crit_edge, %for.inc.if.else_crit_edge, %land.lhs.true30.if.else_crit_edge, %land.lhs.true27.if.else_crit_edge, %land.lhs.true24.if.else_crit_edge
  %70 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.0.load224 = load i32, ptr %sect, align 4
  %71 = inttoptr i32 %.fca.0.load224 to ptr
  %72 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i.i279 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i279)
  %tobool.not.i.i.i280 = icmp eq i32 %and.i.i.i279, 0
  br i1 %tobool.not.i.i.i280, label %if.else._compound_head.exit.i.i288_crit_edge, label %if.then.i.i.i283, !prof !54

if.else._compound_head.exit.i.i288_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i288

if.then.i.i.i283:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i281 = add i32 %74, -1
  %.pre.i282 = inttoptr i32 %sub.i.i.i281 to ptr
  br label %_compound_head.exit.i.i288

_compound_head.exit.i.i288:                       ; preds = %if.then.i.i.i283, %if.else._compound_head.exit.i.i288_crit_edge
  %.pre-phi.i284 = phi ptr [ %71, %if.else._compound_head.exit.i.i288_crit_edge ], [ %.pre.i282, %if.then.i.i.i283 ]
  %_refcount.i.i.i.i.i.i285 = getelementptr inbounds %struct.page, ptr %.pre-phi.i284, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i286 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i285, i32 noundef 4) #9
  %75 = ptrtoint ptr %_refcount.i.i.i.i.i.i285 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_refcount.i.i.i.i.i.i285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i.i.i287 = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i.i.i287, label %if.then.i.i.i.i.i289, label %do.end5.i.i.i.i.i293, !prof !55

if.then.i.i.i.i.i289:                             ; preds = %_compound_head.exit.i.i288
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i284, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i293:                             ; preds = %_compound_head.exit.i.i288
  %call.i.i.i10.i.i.i.i.i290 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i285, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i285, i32 1, i32 3, i32 1) #9
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i285, ptr %_refcount.i.i.i.i.i.i285, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i285) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i291 = extractvalue { i32, i32 } %77, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i291)
  %cmp.i.i.i.i.i.i.i.i292 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i291, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@msdos_partition, %if.then.i.i.i.i.i.i295)) #9
          to label %folio_put_testzero.exit.i.i.i296 [label %if.then.i.i.i.i.i.i295], !srcloc !60

if.then.i.i.i.i.i.i295:                           ; preds = %do.end5.i.i.i.i.i293
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i294 = zext i1 %cmp.i.i.i.i.i.i.i.i292 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i284, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i294) #9
  br label %folio_put_testzero.exit.i.i.i296

folio_put_testzero.exit.i.i.i296:                 ; preds = %if.then.i.i.i.i.i.i295, %do.end5.i.i.i.i.i293
  br i1 %cmp.i.i.i.i.i.i.i.i292, label %if.then.i4.i.i297, label %folio_put_testzero.exit.i.i.i296.cleanup156_crit_edge

folio_put_testzero.exit.i.i.i296.cleanup156_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i296
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156

if.then.i4.i.i297:                                ; preds = %folio_put_testzero.exit.i.i.i296
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i284) #9
  br label %cleanup156

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.end11.for.inc_crit_edge418
  %incdec.ptr = getelementptr i8, ptr %call1, i32 462
  %78 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %incdec.ptr, align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %79, label %for.inc.if.else_crit_edge [
    i8 0, label %for.inc.for.inc.1_crit_edge
    i8 -128, label %for.inc.for.inc.1_crit_edge427
  ]

for.inc.for.inc.1_crit_edge427:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.1:                                        ; preds = %for.inc.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge427
  %incdec.ptr.1 = getelementptr i8, ptr %call1, i32 478
  %81 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr.1, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %82, label %for.inc.1.if.else_crit_edge [
    i8 0, label %for.inc.1.for.inc.2_crit_edge
    i8 -128, label %for.inc.1.for.inc.2_crit_edge428
  ]

for.inc.1.for.inc.2_crit_edge428:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.1.if.else_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.2:                                        ; preds = %for.inc.1.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge428
  %incdec.ptr.2 = getelementptr i8, ptr %call1, i32 494
  %84 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr.2, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %85, label %for.inc.2.if.else_crit_edge [
    i8 0, label %for.inc.2.for.inc.3_crit_edge
    i8 -128, label %for.inc.2.for.inc.3_crit_edge429
  ]

for.inc.2.for.inc.3_crit_edge429:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.2.if.else_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.inc.3:                                        ; preds = %for.inc.2.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge429
  %sys_ind = getelementptr i8, ptr %call1, i32 450
  %87 = ptrtoint ptr %sys_ind to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sys_ind, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %88)
  %cmp44 = icmp eq i8 %88, -18
  br i1 %cmp44, label %for.inc.3.if.then46_crit_edge, label %for.inc49

for.inc.3.if.then46_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.then46:                                        ; preds = %for.inc49.2.if.then46_crit_edge, %for.inc49.1.if.then46_crit_edge, %for.inc49.if.then46_crit_edge, %for.inc.3.if.then46_crit_edge
  %89 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.0.load227 = load i32, ptr %sect, align 4
  %90 = inttoptr i32 %.fca.0.load227 to ptr
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %and.i.i.i299 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i299)
  %tobool.not.i.i.i300 = icmp eq i32 %and.i.i.i299, 0
  br i1 %tobool.not.i.i.i300, label %if.then46._compound_head.exit.i.i308_crit_edge, label %if.then.i.i.i303, !prof !54

if.then46._compound_head.exit.i.i308_crit_edge:   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i308

if.then.i.i.i303:                                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i301 = add i32 %93, -1
  %.pre.i302 = inttoptr i32 %sub.i.i.i301 to ptr
  br label %_compound_head.exit.i.i308

_compound_head.exit.i.i308:                       ; preds = %if.then.i.i.i303, %if.then46._compound_head.exit.i.i308_crit_edge
  %.pre-phi.i304 = phi ptr [ %90, %if.then46._compound_head.exit.i.i308_crit_edge ], [ %.pre.i302, %if.then.i.i.i303 ]
  %_refcount.i.i.i.i.i.i305 = getelementptr inbounds %struct.page, ptr %.pre-phi.i304, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i306 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i305, i32 noundef 4) #9
  %94 = ptrtoint ptr %_refcount.i.i.i.i.i.i305 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %_refcount.i.i.i.i.i.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.i.i.i307 = icmp eq i32 %95, 0
  br i1 %cmp.i.i.i.i.i307, label %if.then.i.i.i.i.i309, label %do.end5.i.i.i.i.i313, !prof !55

if.then.i.i.i.i.i309:                             ; preds = %_compound_head.exit.i.i308
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i304, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i313:                             ; preds = %_compound_head.exit.i.i308
  %call.i.i.i10.i.i.i.i.i310 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i305, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i305, i32 1, i32 3, i32 1) #9
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i305, ptr %_refcount.i.i.i.i.i.i305, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i305) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i311 = extractvalue { i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i311)
  %cmp.i.i.i.i.i.i.i.i312 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i311, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@msdos_partition, %if.then.i.i.i.i.i.i315)) #9
          to label %folio_put_testzero.exit.i.i.i316 [label %if.then.i.i.i.i.i.i315], !srcloc !60

if.then.i.i.i.i.i.i315:                           ; preds = %do.end5.i.i.i.i.i313
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i314 = zext i1 %cmp.i.i.i.i.i.i.i.i312 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i304, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i314) #9
  br label %folio_put_testzero.exit.i.i.i316

folio_put_testzero.exit.i.i.i316:                 ; preds = %if.then.i.i.i.i.i.i315, %do.end5.i.i.i.i.i313
  br i1 %cmp.i.i.i.i.i.i.i.i312, label %if.then.i4.i.i317, label %folio_put_testzero.exit.i.i.i316.cleanup156_crit_edge

folio_put_testzero.exit.i.i.i316.cleanup156_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i316
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156

if.then.i4.i.i317:                                ; preds = %folio_put_testzero.exit.i.i.i316
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i304) #9
  br label %cleanup156

for.inc49:                                        ; preds = %for.inc.3
  %sys_ind.1 = getelementptr i8, ptr %call1, i32 466
  %97 = ptrtoint ptr %sys_ind.1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sys_ind.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %98)
  %cmp44.1 = icmp eq i8 %98, -18
  br i1 %cmp44.1, label %for.inc49.if.then46_crit_edge, label %for.inc49.1

for.inc49.if.then46_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

for.inc49.1:                                      ; preds = %for.inc49
  %sys_ind.2 = getelementptr i8, ptr %call1, i32 482
  %99 = ptrtoint ptr %sys_ind.2 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sys_ind.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %100)
  %cmp44.2 = icmp eq i8 %100, -18
  br i1 %cmp44.2, label %for.inc49.1.if.then46_crit_edge, label %for.inc49.2

for.inc49.1.if.then46_crit_edge:                  ; preds = %for.inc49.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

for.inc49.2:                                      ; preds = %for.inc49.1
  %sys_ind.3 = getelementptr i8, ptr %call1, i32 498
  %101 = ptrtoint ptr %sys_ind.3 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sys_ind.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %102)
  %cmp44.3 = icmp eq i8 %102, -18
  br i1 %cmp44.3, label %for.inc49.2.if.then46_crit_edge, label %for.inc49.3

for.inc49.2.if.then46_crit_edge:                  ; preds = %for.inc49.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

for.inc49.3:                                      ; preds = %for.inc49.2
  %add.ptr54 = getelementptr i8, ptr %call1, i32 440
  %103 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr54, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104) #9
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 3
  %106 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 5, ptr %next, align 4
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %retval1.0.i)
  %cmp69 = icmp ugt i32 %retval1.0.i, 1535
  %conv. = select i1 %cmp69, i64 %conv, i64 2
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body59

for.body59:                                       ; preds = %cleanup.for.body59_crit_edge, %for.inc49.3
  %slot.2375 = phi i32 [ 1, %for.inc49.3 ], [ %inc107, %cleanup.for.body59_crit_edge ]
  %p.2373 = phi ptr [ %add.ptr12, %for.inc49.3 ], [ %incdec.ptr108, %cleanup.for.body59_crit_edge ]
  %start_sect.i = getelementptr inbounds %struct.msdos_partition, ptr %p.2373, i32 0, i32 8
  %107 = ptrtoint ptr %start_sect.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %start_sect.i, align 1
  %109 = call i32 @llvm.bswap.i32(i32 %108) #9
  %conv.i = zext i32 %109 to i64
  %mul = mul nuw nsw i64 %conv.i, %conv
  %nr_sects.i = getelementptr inbounds %struct.msdos_partition, ptr %p.2373, i32 0, i32 9
  %110 = ptrtoint ptr %nr_sects.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %nr_sects.i, align 1
  %112 = call i32 @llvm.bswap.i32(i32 %111) #9
  %conv.i319 = zext i32 %112 to i64
  %mul62 = mul nuw nsw i64 %conv.i319, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul62)
  %tobool63.not = icmp eq i64 %mul62, 0
  br i1 %tobool63.not, label %for.body59.cleanup_crit_edge, label %if.end65

for.body59.cleanup_crit_edge:                     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %for.body59
  %sys_ind.i320 = getelementptr inbounds %struct.msdos_partition, ptr %p.2373, i32 0, i32 4
  %113 = ptrtoint ptr %sys_ind.i320 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %sys_ind.i320, align 1
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %114, label %if.end82 [
    i8 5, label %if.end65.if.then68_crit_edge
    i8 15, label %if.end65.if.then68_crit_edge430
    i8 -123, label %if.end65.if.then68_crit_edge431
  ]

if.end65.if.then68_crit_edge431:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.end65.if.then68_crit_edge430:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.end65.if.then68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.then68:                                        ; preds = %if.end65.if.then68_crit_edge, %if.end65.if.then68_crit_edge430, %if.end65.if.then68_crit_edge431
  %116 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %slot.2375)
  %cmp.i322 = icmp sgt i32 %117, %slot.2375
  br i1 %cmp.i322, label %if.then.i, label %if.then68.put_partition.exit_crit_edge

if.then68.put_partition.exit_crit_edge:           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %118 = call i64 @llvm.umin.i64(i64 %mul62, i64 %conv.)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %119 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %120 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %121, i32 %slot.2375
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %mul, ptr %arrayidx.i, align 8
  %123 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %123, i32 %slot.2375, i32 1
  %124 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %118, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %slot.2375) #9
  %125 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %126, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.then68.put_partition.exit_crit_edge
  %127 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pp_buf.i, align 4
  %call79 = call i32 @strlcat(ptr noundef %128, ptr noundef nonnull @.str.1, i32 noundef 4096) #9
  call fastcc void @parse_extended(ptr noundef %state, i64 noundef %mul, i64 noundef %mul62, i32 noundef %105)
  br label %cleanup.sink.split

if.end82:                                         ; preds = %if.end65
  %129 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %slot.2375)
  %cmp.i325 = icmp sgt i32 %130, %slot.2375
  br i1 %cmp.i325, label %if.then.i333, label %if.end82.put_partition.exit334_crit_edge

if.end82.put_partition.exit334_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit334

if.then.i333:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i323) #9
  %131 = call ptr @memset(ptr %tmp.i323, i32 255, i32 44)
  %132 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %parts.i, align 4
  %arrayidx.i327 = getelementptr %struct.anon.83, ptr %133, i32 %slot.2375
  %134 = ptrtoint ptr %arrayidx.i327 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %mul, ptr %arrayidx.i327, align 8
  %135 = load ptr, ptr %parts.i, align 4
  %size4.i328 = getelementptr %struct.anon.83, ptr %135, i32 %slot.2375, i32 1
  %136 = ptrtoint ptr %size4.i328 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %mul62, ptr %size4.i328, align 8
  %call.i330 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i323, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %slot.2375) #9
  %137 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pp_buf.i, align 4
  %call7.i332 = call i32 @strlcat(ptr noundef %138, ptr noundef nonnull %tmp.i323, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i323) #9
  br label %put_partition.exit334

put_partition.exit334:                            ; preds = %if.then.i333, %if.end82.put_partition.exit334_crit_edge
  %139 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %parts.i, align 4
  %info1.i = getelementptr %struct.anon.83, ptr %140, i32 %slot.2375, i32 4
  %call.i336 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %info1.i, i32 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %105, i32 noundef %slot.2375) #9
  %volname.i = getelementptr %struct.anon.83, ptr %140, i32 %slot.2375, i32 4, i32 1
  %141 = ptrtoint ptr %volname.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %volname.i, align 1
  %142 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %parts.i, align 4
  %has_info.i = getelementptr %struct.anon.83, ptr %143, i32 %slot.2375, i32 3
  %144 = ptrtoint ptr %has_info.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %has_info.i, align 4
  %145 = ptrtoint ptr %sys_ind.i320 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %sys_ind.i320, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %146)
  %cmp85 = icmp eq i8 %146, -3
  br i1 %cmp85, label %if.then87, label %put_partition.exit334.if.end88_crit_edge

put_partition.exit334.if.end88_crit_edge:         ; preds = %put_partition.exit334
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then87:                                        ; preds = %put_partition.exit334
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %parts.i, align 4
  %flags = getelementptr %struct.anon.83, ptr %148, i32 %slot.2375, i32 2
  %149 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %flags, align 8
  %150 = ptrtoint ptr %sys_ind.i320 to i32
  call void @__asan_load1_noabort(i32 %150)
  %.pr = load i8, ptr %sys_ind.i320, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %put_partition.exit334.if.end88_crit_edge
  %151 = phi i8 [ %.pr, %if.then87 ], [ %146, %put_partition.exit334.if.end88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %151)
  %cmp91 = icmp eq i8 %151, 84
  br i1 %cmp91, label %if.then93, label %if.end88.if.end96_crit_edge

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pp_buf.i, align 4
  %call95 = call i32 @strlcat(ptr noundef %153, ptr noundef nonnull @.str.3, i32 noundef 4096) #9
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end88.if.end96_crit_edge
  %154 = ptrtoint ptr %sys_ind.i320 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sys_ind.i320, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %155)
  %cmp99 = icmp eq i8 %155, 85
  br i1 %cmp99, label %if.end96.cleanup.sink.split_crit_edge, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end96.cleanup.sink.split_crit_edge:            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end96.cleanup.sink.split_crit_edge, %put_partition.exit
  %.str.4.sink = phi ptr [ @.str.2, %put_partition.exit ], [ @.str.4, %if.end96.cleanup.sink.split_crit_edge ]
  %156 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pp_buf.i, align 4
  %call103 = call i32 @strlcat(ptr noundef %157, ptr noundef nonnull %.str.4.sink, i32 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end96.cleanup_crit_edge, %for.body59.cleanup_crit_edge
  %inc107 = add nuw nsw i32 %slot.2375, 1
  %incdec.ptr108 = getelementptr %struct.msdos_partition, ptr %p.2373, i32 1
  %exitcond.not = icmp eq i32 %inc107, 5
  br i1 %exitcond.not, label %for.end109, label %cleanup.for.body59_crit_edge

cleanup.for.body59_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59

for.end109:                                       ; preds = %cleanup
  %158 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pp_buf.i, align 4
  %call111 = call i32 @strlcat(ptr noundef %159, ptr noundef nonnull @.str, i32 noundef 4096) #9
  %nr_sects.i337 = getelementptr i8, ptr %call1, i32 458
  %160 = ptrtoint ptr %nr_sects.i337 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %nr_sects.i337, align 1
  %162 = call i32 @llvm.bswap.i32(i32 %161) #9
  %conv.i338 = zext i32 %162 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool120.not = icmp eq i32 %161, 0
  br i1 %tobool120.not, label %for.end109.cleanup147_crit_edge, label %land.rhs.preheader

for.end109.cleanup147_crit_edge:                  ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147

land.rhs.preheader:                               ; preds = %for.end109
  %sys_ind117 = getelementptr i8, ptr %call1, i32 450
  %163 = ptrtoint ptr %sys_ind117 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sys_ind117, align 1
  %165 = zext i8 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %164, label %land.rhs.preheader.cleanup147_crit_edge [
    i8 -91, label %land.rhs.preheader.if.end140_crit_edge
    i8 -87, label %if.end140.fold.split
    i8 -90, label %if.end140.fold.split389
    i8 -127, label %if.end140.fold.split390
    i8 99, label %if.end140.fold.split391
    i8 -126, label %if.end140.fold.split392
    i8 -65, label %if.end140.fold.split393
  ]

land.rhs.preheader.if.end140_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

land.rhs.preheader.cleanup147_crit_edge:          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147

if.end140.fold.split:                             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140.fold.split389:                          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140.fold.split390:                          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140.fold.split391:                          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140.fold.split392:                          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140.fold.split393:                          ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140:                                        ; preds = %if.end140.fold.split393, %if.end140.fold.split392, %if.end140.fold.split391, %if.end140.fold.split390, %if.end140.fold.split389, %if.end140.fold.split, %land.rhs.preheader.if.end140_crit_edge
  %n118.0379.lcssa = phi i32 [ 0, %land.rhs.preheader.if.end140_crit_edge ], [ 1, %if.end140.fold.split ], [ 2, %if.end140.fold.split389 ], [ 3, %if.end140.fold.split390 ], [ 4, %if.end140.fold.split391 ], [ 5, %if.end140.fold.split392 ], [ 6, %if.end140.fold.split393 ]
  %parse.le = getelementptr [8 x %struct.anon.89], ptr @subtypes, i32 0, i32 %n118.0379.lcssa, i32 1
  %166 = ptrtoint ptr %parse.le to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %parse.le, align 4
  %start_sect.i339 = getelementptr i8, ptr %call1, i32 454
  %168 = ptrtoint ptr %start_sect.i339 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %start_sect.i339, align 1
  %170 = call i32 @llvm.bswap.i32(i32 %169) #9
  %conv.i340 = zext i32 %170 to i64
  %mul144 = mul nuw nsw i64 %conv.i340, %conv
  %mul146 = mul nuw nsw i64 %conv.i338, %conv
  call void %167(ptr noundef %state, i64 noundef %mul144, i64 noundef %mul146, i32 noundef 1) #9
  br label %cleanup147

cleanup147:                                       ; preds = %if.end140, %land.rhs.preheader.cleanup147_crit_edge, %for.end109.cleanup147_crit_edge
  %nr_sects.i337.1 = getelementptr i8, ptr %call1, i32 474
  %171 = ptrtoint ptr %nr_sects.i337.1 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %nr_sects.i337.1, align 1
  %173 = call i32 @llvm.bswap.i32(i32 %172) #9
  %conv.i338.1 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool120.not.1 = icmp eq i32 %172, 0
  br i1 %tobool120.not.1, label %cleanup147.cleanup147.1_crit_edge, label %land.rhs.preheader.1

cleanup147.cleanup147.1_crit_edge:                ; preds = %cleanup147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147.1

land.rhs.preheader.1:                             ; preds = %cleanup147
  %sys_ind117.1 = getelementptr i8, ptr %call1, i32 466
  %174 = ptrtoint ptr %sys_ind117.1 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %sys_ind117.1, align 1
  %176 = zext i8 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %175, label %land.rhs.preheader.1.cleanup147.1_crit_edge [
    i8 -91, label %land.rhs.preheader.1.if.end140.1_crit_edge
    i8 -87, label %if.end140.fold.split.1
    i8 -90, label %if.end140.fold.split389.1
    i8 -127, label %if.end140.fold.split390.1
    i8 99, label %if.end140.fold.split391.1
    i8 -126, label %if.end140.fold.split392.1
    i8 -65, label %if.end140.fold.split393.1
  ]

land.rhs.preheader.1.if.end140.1_crit_edge:       ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

land.rhs.preheader.1.cleanup147.1_crit_edge:      ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147.1

if.end140.fold.split393.1:                        ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.end140.fold.split392.1:                        ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.end140.fold.split391.1:                        ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.end140.fold.split390.1:                        ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.end140.fold.split389.1:                        ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.end140.fold.split.1:                           ; preds = %land.rhs.preheader.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.1

if.end140.1:                                      ; preds = %if.end140.fold.split.1, %if.end140.fold.split389.1, %if.end140.fold.split390.1, %if.end140.fold.split391.1, %if.end140.fold.split392.1, %if.end140.fold.split393.1, %land.rhs.preheader.1.if.end140.1_crit_edge
  %n118.0379.lcssa.1 = phi i32 [ 0, %land.rhs.preheader.1.if.end140.1_crit_edge ], [ 1, %if.end140.fold.split.1 ], [ 2, %if.end140.fold.split389.1 ], [ 3, %if.end140.fold.split390.1 ], [ 4, %if.end140.fold.split391.1 ], [ 5, %if.end140.fold.split392.1 ], [ 6, %if.end140.fold.split393.1 ]
  %parse.le.1 = getelementptr [8 x %struct.anon.89], ptr @subtypes, i32 0, i32 %n118.0379.lcssa.1, i32 1
  %177 = ptrtoint ptr %parse.le.1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %parse.le.1, align 4
  %start_sect.i339.1 = getelementptr i8, ptr %call1, i32 470
  %179 = ptrtoint ptr %start_sect.i339.1 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %start_sect.i339.1, align 1
  %181 = call i32 @llvm.bswap.i32(i32 %180) #9
  %conv.i340.1 = zext i32 %181 to i64
  %mul144.1 = mul nuw nsw i64 %conv.i340.1, %conv
  %mul146.1 = mul nuw nsw i64 %conv.i338.1, %conv
  call void %178(ptr noundef %state, i64 noundef %mul144.1, i64 noundef %mul146.1, i32 noundef 2) #9
  br label %cleanup147.1

cleanup147.1:                                     ; preds = %if.end140.1, %land.rhs.preheader.1.cleanup147.1_crit_edge, %cleanup147.cleanup147.1_crit_edge
  %nr_sects.i337.2 = getelementptr i8, ptr %call1, i32 490
  %182 = ptrtoint ptr %nr_sects.i337.2 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %nr_sects.i337.2, align 1
  %184 = call i32 @llvm.bswap.i32(i32 %183) #9
  %conv.i338.2 = zext i32 %184 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool120.not.2 = icmp eq i32 %183, 0
  br i1 %tobool120.not.2, label %cleanup147.1.cleanup147.2_crit_edge, label %land.rhs.preheader.2

cleanup147.1.cleanup147.2_crit_edge:              ; preds = %cleanup147.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147.2

land.rhs.preheader.2:                             ; preds = %cleanup147.1
  %sys_ind117.2 = getelementptr i8, ptr %call1, i32 482
  %185 = ptrtoint ptr %sys_ind117.2 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %sys_ind117.2, align 1
  %187 = zext i8 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %186, label %land.rhs.preheader.2.cleanup147.2_crit_edge [
    i8 -91, label %land.rhs.preheader.2.if.end140.2_crit_edge
    i8 -87, label %if.end140.fold.split.2
    i8 -90, label %if.end140.fold.split389.2
    i8 -127, label %if.end140.fold.split390.2
    i8 99, label %if.end140.fold.split391.2
    i8 -126, label %if.end140.fold.split392.2
    i8 -65, label %if.end140.fold.split393.2
  ]

land.rhs.preheader.2.if.end140.2_crit_edge:       ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

land.rhs.preheader.2.cleanup147.2_crit_edge:      ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147.2

if.end140.fold.split393.2:                        ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

if.end140.fold.split392.2:                        ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

if.end140.fold.split391.2:                        ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

if.end140.fold.split390.2:                        ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

if.end140.fold.split389.2:                        ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

if.end140.fold.split.2:                           ; preds = %land.rhs.preheader.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.2

if.end140.2:                                      ; preds = %if.end140.fold.split.2, %if.end140.fold.split389.2, %if.end140.fold.split390.2, %if.end140.fold.split391.2, %if.end140.fold.split392.2, %if.end140.fold.split393.2, %land.rhs.preheader.2.if.end140.2_crit_edge
  %n118.0379.lcssa.2 = phi i32 [ 0, %land.rhs.preheader.2.if.end140.2_crit_edge ], [ 1, %if.end140.fold.split.2 ], [ 2, %if.end140.fold.split389.2 ], [ 3, %if.end140.fold.split390.2 ], [ 4, %if.end140.fold.split391.2 ], [ 5, %if.end140.fold.split392.2 ], [ 6, %if.end140.fold.split393.2 ]
  %parse.le.2 = getelementptr [8 x %struct.anon.89], ptr @subtypes, i32 0, i32 %n118.0379.lcssa.2, i32 1
  %188 = ptrtoint ptr %parse.le.2 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %parse.le.2, align 4
  %start_sect.i339.2 = getelementptr i8, ptr %call1, i32 486
  %190 = ptrtoint ptr %start_sect.i339.2 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %start_sect.i339.2, align 1
  %192 = call i32 @llvm.bswap.i32(i32 %191) #9
  %conv.i340.2 = zext i32 %192 to i64
  %mul144.2 = mul nuw nsw i64 %conv.i340.2, %conv
  %mul146.2 = mul nuw nsw i64 %conv.i338.2, %conv
  call void %189(ptr noundef %state, i64 noundef %mul144.2, i64 noundef %mul146.2, i32 noundef 3) #9
  br label %cleanup147.2

cleanup147.2:                                     ; preds = %if.end140.2, %land.rhs.preheader.2.cleanup147.2_crit_edge, %cleanup147.1.cleanup147.2_crit_edge
  %nr_sects.i337.3 = getelementptr i8, ptr %call1, i32 506
  %193 = ptrtoint ptr %nr_sects.i337.3 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %nr_sects.i337.3, align 1
  %195 = call i32 @llvm.bswap.i32(i32 %194) #9
  %conv.i338.3 = zext i32 %195 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool120.not.3 = icmp eq i32 %194, 0
  br i1 %tobool120.not.3, label %cleanup147.2.cleanup147.3_crit_edge, label %land.rhs.preheader.3

cleanup147.2.cleanup147.3_crit_edge:              ; preds = %cleanup147.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147.3

land.rhs.preheader.3:                             ; preds = %cleanup147.2
  %sys_ind117.3 = getelementptr i8, ptr %call1, i32 498
  %196 = ptrtoint ptr %sys_ind117.3 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %sys_ind117.3, align 1
  %198 = zext i8 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %197, label %land.rhs.preheader.3.cleanup147.3_crit_edge [
    i8 -91, label %land.rhs.preheader.3.if.end140.3_crit_edge
    i8 -87, label %if.end140.fold.split.3
    i8 -90, label %if.end140.fold.split389.3
    i8 -127, label %if.end140.fold.split390.3
    i8 99, label %if.end140.fold.split391.3
    i8 -126, label %if.end140.fold.split392.3
    i8 -65, label %if.end140.fold.split393.3
  ]

land.rhs.preheader.3.if.end140.3_crit_edge:       ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

land.rhs.preheader.3.cleanup147.3_crit_edge:      ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147.3

if.end140.fold.split393.3:                        ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

if.end140.fold.split392.3:                        ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

if.end140.fold.split391.3:                        ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

if.end140.fold.split390.3:                        ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

if.end140.fold.split389.3:                        ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

if.end140.fold.split.3:                           ; preds = %land.rhs.preheader.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140.3

if.end140.3:                                      ; preds = %if.end140.fold.split.3, %if.end140.fold.split389.3, %if.end140.fold.split390.3, %if.end140.fold.split391.3, %if.end140.fold.split392.3, %if.end140.fold.split393.3, %land.rhs.preheader.3.if.end140.3_crit_edge
  %n118.0379.lcssa.3 = phi i32 [ 0, %land.rhs.preheader.3.if.end140.3_crit_edge ], [ 1, %if.end140.fold.split.3 ], [ 2, %if.end140.fold.split389.3 ], [ 3, %if.end140.fold.split390.3 ], [ 4, %if.end140.fold.split391.3 ], [ 5, %if.end140.fold.split392.3 ], [ 6, %if.end140.fold.split393.3 ]
  %parse.le.3 = getelementptr [8 x %struct.anon.89], ptr @subtypes, i32 0, i32 %n118.0379.lcssa.3, i32 1
  %199 = ptrtoint ptr %parse.le.3 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %parse.le.3, align 4
  %start_sect.i339.3 = getelementptr i8, ptr %call1, i32 502
  %201 = ptrtoint ptr %start_sect.i339.3 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %start_sect.i339.3, align 1
  %203 = call i32 @llvm.bswap.i32(i32 %202) #9
  %conv.i340.3 = zext i32 %203 to i64
  %mul144.3 = mul nuw nsw i64 %conv.i340.3, %conv
  %mul146.3 = mul nuw nsw i64 %conv.i338.3, %conv
  call void %200(ptr noundef %state, i64 noundef %mul144.3, i64 noundef %mul146.3, i32 noundef 4) #9
  br label %cleanup147.3

cleanup147.3:                                     ; preds = %if.end140.3, %land.rhs.preheader.3.cleanup147.3_crit_edge, %cleanup147.2.cleanup147.3_crit_edge
  %204 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %204)
  %.fca.0.load230 = load i32, ptr %sect, align 4
  %205 = inttoptr i32 %.fca.0.load230 to ptr
  %206 = getelementptr inbounds %struct.page, ptr %205, i32 0, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %206, align 4
  %and.i.i.i343 = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i343)
  %tobool.not.i.i.i344 = icmp eq i32 %and.i.i.i343, 0
  br i1 %tobool.not.i.i.i344, label %cleanup147.3._compound_head.exit.i.i352_crit_edge, label %if.then.i.i.i347, !prof !54

cleanup147.3._compound_head.exit.i.i352_crit_edge: ; preds = %cleanup147.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i352

if.then.i.i.i347:                                 ; preds = %cleanup147.3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i345 = add i32 %208, -1
  %.pre.i346 = inttoptr i32 %sub.i.i.i345 to ptr
  br label %_compound_head.exit.i.i352

_compound_head.exit.i.i352:                       ; preds = %if.then.i.i.i347, %cleanup147.3._compound_head.exit.i.i352_crit_edge
  %.pre-phi.i348 = phi ptr [ %205, %cleanup147.3._compound_head.exit.i.i352_crit_edge ], [ %.pre.i346, %if.then.i.i.i347 ]
  %_refcount.i.i.i.i.i.i349 = getelementptr inbounds %struct.page, ptr %.pre-phi.i348, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i350 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i349, i32 noundef 4) #9
  %209 = ptrtoint ptr %_refcount.i.i.i.i.i.i349 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %_refcount.i.i.i.i.i.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp.i.i.i.i.i351 = icmp eq i32 %210, 0
  br i1 %cmp.i.i.i.i.i351, label %if.then.i.i.i.i.i353, label %do.end5.i.i.i.i.i357, !prof !55

if.then.i.i.i.i.i353:                             ; preds = %_compound_head.exit.i.i352
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i348, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i357:                             ; preds = %_compound_head.exit.i.i352
  %call.i.i.i10.i.i.i.i.i354 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i349, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i349, i32 1, i32 3, i32 1) #9
  %211 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i349, ptr %_refcount.i.i.i.i.i.i349, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i349) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i355 = extractvalue { i32, i32 } %211, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i355)
  %cmp.i.i.i.i.i.i.i.i356 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i355, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@msdos_partition, %if.then.i.i.i.i.i.i359)) #9
          to label %folio_put_testzero.exit.i.i.i360 [label %if.then.i.i.i.i.i.i359], !srcloc !60

if.then.i.i.i.i.i.i359:                           ; preds = %do.end5.i.i.i.i.i357
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i358 = zext i1 %cmp.i.i.i.i.i.i.i.i356 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i348, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i358) #9
  br label %folio_put_testzero.exit.i.i.i360

folio_put_testzero.exit.i.i.i360:                 ; preds = %if.then.i.i.i.i.i.i359, %do.end5.i.i.i.i.i357
  br i1 %cmp.i.i.i.i.i.i.i.i356, label %if.then.i4.i.i361, label %folio_put_testzero.exit.i.i.i360.cleanup156_crit_edge

folio_put_testzero.exit.i.i.i360.cleanup156_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i360
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156

if.then.i4.i.i361:                                ; preds = %folio_put_testzero.exit.i.i.i360
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i348) #9
  br label %cleanup156

cleanup156:                                       ; preds = %if.then.i4.i.i361, %folio_put_testzero.exit.i.i.i360.cleanup156_crit_edge, %if.then.i4.i.i317, %folio_put_testzero.exit.i.i.i316.cleanup156_crit_edge, %if.then.i4.i.i297, %folio_put_testzero.exit.i.i.i296.cleanup156_crit_edge, %if.then33, %if.then.i4.i.i276, %folio_put_testzero.exit.i.i.i275.cleanup156_crit_edge, %put_dev_sector.exit, %queue_logical_block_size.exit.cleanup156_crit_edge
  %retval.0 = phi i32 [ %call5, %put_dev_sector.exit ], [ 1, %if.then33 ], [ -1, %queue_logical_block_size.exit.cleanup156_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i275.cleanup156_crit_edge ], [ 0, %if.then.i4.i.i276 ], [ 0, %folio_put_testzero.exit.i.i.i296.cleanup156_crit_edge ], [ 0, %if.then.i4.i.i297 ], [ 0, %folio_put_testzero.exit.i.i.i316.cleanup156_crit_edge ], [ 0, %if.then.i4.i.i317 ], [ 1, %folio_put_testzero.exit.i.i.i360.cleanup156_crit_edge ], [ 1, %if.then.i4.i.i361 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_dev_sector([1 x i32] %p.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %p.coerce.fca.0.extract = extractvalue [1 x i32] %p.coerce, 0
  %0 = inttoptr i32 %p.coerce.fca.0.extract to ptr
  %1 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !54

entry._compound_head.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %3, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %entry._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %0, %entry._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !55

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_dev_sector, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %.pre-phi) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aix_partition(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_extended(ptr noundef %state, i64 noundef %first_sector, i64 noundef %first_size, i32 noundef %disksig) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !53
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %queue = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.queue_logical_block_size.exit_crit_edge, label %land.lhs.true.i

entry.queue_logical_block_size.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_logical_block_size.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 9
  %5 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  %.op = lshr i32 %6, 9
  %phi.bo = select i1 %tobool2.not.i, i32 1, i32 %.op
  br label %queue_logical_block_size.exit

queue_logical_block_size.exit:                    ; preds = %land.lhs.true.i, %entry.queue_logical_block_size.exit_crit_edge
  %retval1.0.i = phi i32 [ 1, %entry.queue_logical_block_size.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i ]
  %conv = zext i32 %retval1.0.i to i64
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 3
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %add39 = add i64 %first_size, %first_sector
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %put_dev_sector.exit.if.end_crit_edge, %queue_logical_block_size.exit
  %inc205 = phi i32 [ 1, %queue_logical_block_size.exit ], [ %inc, %put_dev_sector.exit.if.end_crit_edge ]
  %this_size.0204 = phi i64 [ %first_size, %queue_logical_block_size.exit ], [ %mul86, %put_dev_sector.exit.if.end_crit_edge ]
  %this_sector.0203 = phi i64 [ %first_sector, %queue_logical_block_size.exit ], [ %add84, %put_dev_sector.exit.if.end_crit_edge ]
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next, align 4
  %9 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp2 = icmp eq i32 %8, %10
  br i1 %cmp2, label %if.end.cleanup88_crit_edge, label %if.end5

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %this_sector.0203, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.cleanup88_crit_edge, label %if.end8

if.end5.cleanup88_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.end8:                                          ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %call6, i32 510
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %12)
  %cmp.i = icmp eq i8 %12, 85
  br i1 %cmp.i, label %msdos_magic_present.exit, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

msdos_magic_present.exit:                         ; preds = %if.end8
  %arrayidx2.i = getelementptr i8, ptr %call6, i32 511
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %14)
  %cmp4.i.not = icmp eq i8 %14, -86
  br i1 %cmp4.i.not, label %if.end12, label %msdos_magic_present.exit.done_crit_edge

msdos_magic_present.exit.done_crit_edge:          ; preds = %msdos_magic_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end12:                                         ; preds = %msdos_magic_present.exit
  %add.ptr13 = getelementptr i8, ptr %call6, i32 446
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12
  %i.0198 = phi i32 [ 0, %if.end12 ], [ %inc62, %for.inc.for.body_crit_edge ]
  %loopct.1197 = phi i32 [ %inc205, %if.end12 ], [ %loopct.2.ph, %for.inc.for.body_crit_edge ]
  %p.0195 = phi ptr [ %add.ptr13, %if.end12 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %nr_sects.i = getelementptr inbounds %struct.msdos_partition, ptr %p.0195, i32 0, i32 9
  %15 = ptrtoint ptr %nr_sects.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %nr_sects.i, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16) #9
  %conv.i = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %sys_ind.i = getelementptr inbounds %struct.msdos_partition, ptr %p.0195, i32 0, i32 4
  %18 = ptrtoint ptr %sys_ind.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sys_ind.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %19, label %if.end22 [
    i8 5, label %lor.lhs.false.for.inc_crit_edge
    i8 15, label %lor.lhs.false.for.inc_crit_edge218
    i8 -123, label %lor.lhs.false.for.inc_crit_edge219
  ]

lor.lhs.false.for.inc_crit_edge219:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.for.inc_crit_edge218:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22:                                         ; preds = %lor.lhs.false
  %start_sect.i = getelementptr inbounds %struct.msdos_partition, ptr %p.0195, i32 0, i32 8
  %21 = ptrtoint ptr %start_sect.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %start_sect.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  %conv.i145 = zext i32 %23 to i64
  %mul = mul nuw nsw i64 %conv.i145, %conv
  %mul25 = mul nuw nsw i64 %conv.i, %conv
  %add = add i64 %mul, %this_sector.0203
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0198)
  %cmp26 = icmp ugt i32 %i.0198, 1
  br i1 %cmp26, label %if.then28, label %if.end22.if.end44_crit_edge

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then28:                                        ; preds = %if.end22
  %add29 = add nuw nsw i64 %mul, %mul25
  call void @__sanitizer_cov_trace_cmp8(i64 %add29, i64 %this_size.0204)
  %cmp30 = icmp ugt i64 %add29, %this_size.0204
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %first_sector)
  %cmp34 = icmp ult i64 %add, %first_sector
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp34
  %add38 = add i64 %add, %mul25
  call void @__sanitizer_cov_trace_cmp8(i64 %add38, i64 %add39)
  %cmp40 = icmp ugt i64 %add38, %add39
  %or.cond206 = select i1 %or.cond, i1 true, i1 %cmp40
  br i1 %or.cond206, label %if.then28.for.inc_crit_edge, label %if.then28.if.end44_crit_edge

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end44:                                         ; preds = %if.then28.if.end44_crit_edge, %if.end22.if.end44_crit_edge
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next, align 4
  %26 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.i148 = icmp sgt i32 %27, %25
  br i1 %cmp.i148, label %if.then.i, label %if.end44.put_partition.exit_crit_edge

if.end44.put_partition.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %28 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %29 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %30, i32 %25
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add, ptr %arrayidx.i, align 8
  %32 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %32, i32 %25, i32 1
  %33 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %mul25, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef %25) #9
  %34 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %35, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.end44.put_partition.exit_crit_edge
  %36 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next, align 4
  %38 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parts.i, align 4
  %info1.i = getelementptr %struct.anon.83, ptr %39, i32 %37, i32 4
  %call.i150 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %info1.i, i32 noundef 37, ptr noundef nonnull @.str.7, i32 noundef %disksig, i32 noundef %37) #9
  %volname.i = getelementptr %struct.anon.83, ptr %39, i32 %37, i32 4, i32 1
  %40 = ptrtoint ptr %volname.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %volname.i, align 1
  %41 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parts.i, align 4
  %has_info.i = getelementptr %struct.anon.83, ptr %42, i32 %37, i32 3
  %43 = ptrtoint ptr %has_info.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %has_info.i, align 4
  %44 = ptrtoint ptr %sys_ind.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sys_ind.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %45)
  %cmp48 = icmp eq i8 %45, -3
  br i1 %cmp48, label %if.then50, label %put_partition.exit.if.end52_crit_edge

put_partition.exit.if.end52_crit_edge:            ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then50:                                        ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parts.i, align 4
  %48 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %next, align 4
  %flags = getelementptr %struct.anon.83, ptr %47, i32 %49, i32 2
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %flags, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %put_partition.exit.if.end52_crit_edge
  %51 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %next, align 4
  %inc54 = add i32 %52, 1
  store i32 %inc54, ptr %next, align 4
  %53 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54, i32 %54)
  %cmp56 = icmp eq i32 %inc54, %54
  br i1 %cmp56, label %if.end52.done_crit_edge, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end52.done_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc:                                          ; preds = %if.end52.for.inc_crit_edge, %if.then28.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge218, %lor.lhs.false.for.inc_crit_edge219, %for.body.for.inc_crit_edge
  %loopct.2.ph = phi i32 [ 0, %if.end52.for.inc_crit_edge ], [ %loopct.1197, %if.then28.for.inc_crit_edge ], [ %loopct.1197, %for.body.for.inc_crit_edge ], [ %loopct.1197, %lor.lhs.false.for.inc_crit_edge ], [ %loopct.1197, %lor.lhs.false.for.inc_crit_edge218 ], [ %loopct.1197, %lor.lhs.false.for.inc_crit_edge219 ]
  %inc62 = add nuw nsw i32 %i.0198, 1
  %incdec.ptr = getelementptr %struct.msdos_partition, ptr %p.0195, i32 1
  %exitcond.not = icmp eq i32 %inc62, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %nr_sects.i151 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -3, i32 9
  %55 = ptrtoint ptr %nr_sects.i151 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %nr_sects.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool69.not = icmp eq i32 %56, 0
  br i1 %tobool69.not, label %for.end.for.inc74_crit_edge, label %land.lhs.true

for.end.for.inc74_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74

land.lhs.true:                                    ; preds = %for.end
  %add.ptr63 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -3
  %sys_ind.i153 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -3, i32 4
  %57 = ptrtoint ptr %sys_ind.i153 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sys_ind.i153, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %58, label %land.lhs.true.for.inc74_crit_edge [
    i8 5, label %land.lhs.true.if.end81_crit_edge
    i8 15, label %land.lhs.true.if.end81_crit_edge220
    i8 -123, label %land.lhs.true.if.end81_crit_edge221
  ]

land.lhs.true.if.end81_crit_edge221:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.if.end81_crit_edge220:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.for.inc74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74

for.inc74:                                        ; preds = %land.lhs.true.for.inc74_crit_edge, %for.end.for.inc74_crit_edge
  %nr_sects.i151.1 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -2, i32 9
  %60 = ptrtoint ptr %nr_sects.i151.1 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %nr_sects.i151.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool69.not.1 = icmp eq i32 %61, 0
  br i1 %tobool69.not.1, label %for.inc74.for.inc74.1_crit_edge, label %land.lhs.true.1

for.inc74.for.inc74.1_crit_edge:                  ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74.1

land.lhs.true.1:                                  ; preds = %for.inc74
  %incdec.ptr76 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -2
  %sys_ind.i153.1 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -2, i32 4
  %62 = ptrtoint ptr %sys_ind.i153.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sys_ind.i153.1, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %63, label %land.lhs.true.1.for.inc74.1_crit_edge [
    i8 5, label %land.lhs.true.1.if.end81_crit_edge
    i8 15, label %land.lhs.true.1.if.end81_crit_edge222
    i8 -123, label %land.lhs.true.1.if.end81_crit_edge223
  ]

land.lhs.true.1.if.end81_crit_edge223:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.1.if.end81_crit_edge222:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.1.if.end81_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.1.for.inc74.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74.1

for.inc74.1:                                      ; preds = %land.lhs.true.1.for.inc74.1_crit_edge, %for.inc74.for.inc74.1_crit_edge
  %nr_sects.i151.2 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -1, i32 9
  %65 = ptrtoint ptr %nr_sects.i151.2 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %nr_sects.i151.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool69.not.2 = icmp eq i32 %66, 0
  br i1 %tobool69.not.2, label %for.inc74.1.for.inc74.2_crit_edge, label %land.lhs.true.2

for.inc74.1.for.inc74.2_crit_edge:                ; preds = %for.inc74.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74.2

land.lhs.true.2:                                  ; preds = %for.inc74.1
  %incdec.ptr76.1 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -1
  %sys_ind.i153.2 = getelementptr %struct.msdos_partition, ptr %p.0195, i32 -1, i32 4
  %67 = ptrtoint ptr %sys_ind.i153.2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sys_ind.i153.2, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %68, label %land.lhs.true.2.for.inc74.2_crit_edge [
    i8 5, label %land.lhs.true.2.if.end81_crit_edge
    i8 15, label %land.lhs.true.2.if.end81_crit_edge224
    i8 -123, label %land.lhs.true.2.if.end81_crit_edge225
  ]

land.lhs.true.2.if.end81_crit_edge225:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.2.if.end81_crit_edge224:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.2.if.end81_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.2.for.inc74.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74.2

for.inc74.2:                                      ; preds = %land.lhs.true.2.for.inc74.2_crit_edge, %for.inc74.1.for.inc74.2_crit_edge
  %nr_sects.i151.3 = getelementptr inbounds %struct.msdos_partition, ptr %p.0195, i32 0, i32 9
  %70 = ptrtoint ptr %nr_sects.i151.3 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %nr_sects.i151.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool69.not.3 = icmp eq i32 %71, 0
  br i1 %tobool69.not.3, label %for.inc74.2.done_crit_edge, label %land.lhs.true.3

for.inc74.2.done_crit_edge:                       ; preds = %for.inc74.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true.3:                                  ; preds = %for.inc74.2
  %sys_ind.i153.3 = getelementptr inbounds %struct.msdos_partition, ptr %p.0195, i32 0, i32 4
  %72 = ptrtoint ptr %sys_ind.i153.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sys_ind.i153.3, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %73, label %land.lhs.true.3.done_crit_edge [
    i8 5, label %land.lhs.true.3.if.end81_crit_edge
    i8 15, label %land.lhs.true.3.if.end81_crit_edge226
    i8 -123, label %land.lhs.true.3.if.end81_crit_edge227
  ]

land.lhs.true.3.if.end81_crit_edge227:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.3.if.end81_crit_edge226:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.3.if.end81_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true.3.done_crit_edge:                   ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end81:                                         ; preds = %land.lhs.true.3.if.end81_crit_edge, %land.lhs.true.3.if.end81_crit_edge226, %land.lhs.true.3.if.end81_crit_edge227, %land.lhs.true.2.if.end81_crit_edge, %land.lhs.true.2.if.end81_crit_edge224, %land.lhs.true.2.if.end81_crit_edge225, %land.lhs.true.1.if.end81_crit_edge, %land.lhs.true.1.if.end81_crit_edge222, %land.lhs.true.1.if.end81_crit_edge223, %land.lhs.true.if.end81_crit_edge, %land.lhs.true.if.end81_crit_edge220, %land.lhs.true.if.end81_crit_edge221
  %p.1200.lcssa = phi ptr [ %add.ptr63, %land.lhs.true.if.end81_crit_edge ], [ %add.ptr63, %land.lhs.true.if.end81_crit_edge220 ], [ %add.ptr63, %land.lhs.true.if.end81_crit_edge221 ], [ %incdec.ptr76, %land.lhs.true.1.if.end81_crit_edge ], [ %incdec.ptr76, %land.lhs.true.1.if.end81_crit_edge222 ], [ %incdec.ptr76, %land.lhs.true.1.if.end81_crit_edge223 ], [ %incdec.ptr76.1, %land.lhs.true.2.if.end81_crit_edge ], [ %incdec.ptr76.1, %land.lhs.true.2.if.end81_crit_edge224 ], [ %incdec.ptr76.1, %land.lhs.true.2.if.end81_crit_edge225 ], [ %p.0195, %land.lhs.true.3.if.end81_crit_edge ], [ %p.0195, %land.lhs.true.3.if.end81_crit_edge226 ], [ %p.0195, %land.lhs.true.3.if.end81_crit_edge227 ]
  %start_sect.i158 = getelementptr inbounds %struct.msdos_partition, ptr %p.1200.lcssa, i32 0, i32 8
  %75 = ptrtoint ptr %start_sect.i158 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %start_sect.i158, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  %conv.i159 = zext i32 %77 to i64
  %mul83 = mul nuw nsw i64 %conv.i159, %conv
  %add84 = add i64 %mul83, %first_sector
  %nr_sects.i160 = getelementptr inbounds %struct.msdos_partition, ptr %p.1200.lcssa, i32 0, i32 9
  %78 = ptrtoint ptr %nr_sects.i160 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %nr_sects.i160, align 1
  %80 = call i32 @llvm.bswap.i32(i32 %79) #9
  %conv.i161 = zext i32 %80 to i64
  %mul86 = mul nuw nsw i64 %conv.i161, %conv
  %81 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %81)
  %.fca.0.load = load i32, ptr %sect, align 4
  %82 = inttoptr i32 %.fca.0.load to ptr
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %and.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end81._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.end81._compound_head.exit.i.i_crit_edge:       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %85, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end81._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %82, %if.end81._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %86 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.i.i.i = icmp eq i32 %87, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_extended, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %inc = add i32 %loopct.2.ph, 1
  %cmp = icmp sgt i32 %inc, 100
  br i1 %cmp, label %put_dev_sector.exit.cleanup88_crit_edge, label %put_dev_sector.exit.if.end_crit_edge

put_dev_sector.exit.if.end_crit_edge:             ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

put_dev_sector.exit.cleanup88_crit_edge:          ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

done:                                             ; preds = %land.lhs.true.3.done_crit_edge, %for.inc74.2.done_crit_edge, %if.end52.done_crit_edge, %msdos_magic_present.exit.done_crit_edge, %if.end8.done_crit_edge
  %89 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.0.load115 = load i32, ptr %sect, align 4
  %90 = inttoptr i32 %.fca.0.load115 to ptr
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %and.i.i.i162 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i162)
  %tobool.not.i.i.i163 = icmp eq i32 %and.i.i.i162, 0
  br i1 %tobool.not.i.i.i163, label %done._compound_head.exit.i.i171_crit_edge, label %if.then.i.i.i166, !prof !54

done._compound_head.exit.i.i171_crit_edge:        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i171

if.then.i.i.i166:                                 ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i164 = add i32 %93, -1
  %.pre.i165 = inttoptr i32 %sub.i.i.i164 to ptr
  br label %_compound_head.exit.i.i171

_compound_head.exit.i.i171:                       ; preds = %if.then.i.i.i166, %done._compound_head.exit.i.i171_crit_edge
  %.pre-phi.i167 = phi ptr [ %90, %done._compound_head.exit.i.i171_crit_edge ], [ %.pre.i165, %if.then.i.i.i166 ]
  %_refcount.i.i.i.i.i.i168 = getelementptr inbounds %struct.page, ptr %.pre-phi.i167, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i169 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i168, i32 noundef 4) #9
  %94 = ptrtoint ptr %_refcount.i.i.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %_refcount.i.i.i.i.i.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.i.i.i170 = icmp eq i32 %95, 0
  br i1 %cmp.i.i.i.i.i170, label %if.then.i.i.i.i.i172, label %do.end5.i.i.i.i.i176, !prof !55

if.then.i.i.i.i.i172:                             ; preds = %_compound_head.exit.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i167, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i176:                             ; preds = %_compound_head.exit.i.i171
  %call.i.i.i10.i.i.i.i.i173 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i168, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i168, i32 1, i32 3, i32 1) #9
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i168, ptr %_refcount.i.i.i.i.i.i168, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i168) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i174 = extractvalue { i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i174)
  %cmp.i.i.i.i.i.i.i.i175 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i174, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_extended, %if.then.i.i.i.i.i.i178)) #9
          to label %folio_put_testzero.exit.i.i.i179 [label %if.then.i.i.i.i.i.i178], !srcloc !60

if.then.i.i.i.i.i.i178:                           ; preds = %do.end5.i.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i177 = zext i1 %cmp.i.i.i.i.i.i.i.i175 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i167, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i177) #9
  br label %folio_put_testzero.exit.i.i.i179

folio_put_testzero.exit.i.i.i179:                 ; preds = %if.then.i.i.i.i.i.i178, %do.end5.i.i.i.i.i176
  br i1 %cmp.i.i.i.i.i.i.i.i175, label %if.then.i4.i.i180, label %folio_put_testzero.exit.i.i.i179.cleanup88_crit_edge

folio_put_testzero.exit.i.i.i179.cleanup88_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.then.i4.i.i180:                                ; preds = %folio_put_testzero.exit.i.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i167) #9
  br label %cleanup88

cleanup88:                                        ; preds = %if.then.i4.i.i180, %folio_put_testzero.exit.i.i.i179.cleanup88_crit_edge, %put_dev_sector.exit.cleanup88_crit_edge, %if.end5.cleanup88_crit_edge, %if.end.cleanup88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_freebsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @parse_bsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin, ptr noundef nonnull @.str.8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_netbsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @parse_bsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin, ptr noundef nonnull @.str.14)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_openbsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @parse_bsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin, ptr noundef nonnull @.str.15)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_minix(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp = alloca [53 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !53
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %offset, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %call, i32 510
  %1 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %2)
  %cmp.i = icmp eq i8 %2, 85
  br i1 %cmp.i, label %msdos_magic_present.exit, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

msdos_magic_present.exit:                         ; preds = %if.end
  %arrayidx2.i = getelementptr i8, ptr %call, i32 511
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %4)
  %cmp4.i.not = icmp eq i8 %4, -86
  br i1 %cmp4.i.not, label %land.lhs.true, label %msdos_magic_present.exit.if.end28_crit_edge

msdos_magic_present.exit.if.end28_crit_edge:      ; preds = %msdos_magic_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %msdos_magic_present.exit
  %sys_ind = getelementptr i8, ptr %call, i32 450
  %5 = ptrtoint ptr %sys_ind to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sys_ind, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %6)
  %cmp = icmp eq i8 %6, -127
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then5:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %tmp) #9
  %7 = call ptr @memset(ptr %tmp, i32 255, i32 53)
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 53, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %origin)
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %8 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pp_buf, align 4
  %call9 = call i32 @strlcat(ptr noundef %9, ptr noundef nonnull %tmp, i32 noundef 4096) #9
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 3
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next, align 4
  %12 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp12 = icmp eq i32 %11, %13
  br i1 %cmp12, label %if.then5.for.end_crit_edge, label %if.end15

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15:                                         ; preds = %if.then5
  %sys_ind16 = getelementptr i8, ptr %call, i32 450
  %14 = ptrtoint ptr %sys_ind16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sys_ind16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %15)
  %cmp18 = icmp eq i8 %15, -127
  br i1 %cmp18, label %if.then20, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then20:                                        ; preds = %if.end15
  %inc = add i32 %11, 1
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i47 = icmp sgt i32 %13, %11
  br i1 %cmp.i47, label %if.then.i, label %if.then20.for.inc_crit_edge

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %nr_sects.i = getelementptr i8, ptr %call, i32 458
  %17 = ptrtoint ptr %nr_sects.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %nr_sects.i, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18) #9
  %conv.i46 = zext i32 %19 to i64
  %start_sect.i = getelementptr i8, ptr %call, i32 454
  %20 = ptrtoint ptr %start_sect.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %start_sect.i, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  %conv.i = zext i32 %22 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %23 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %24 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %25, i32 %11
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  %27 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %27, i32 %11, i32 1
  %28 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv.i46, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %11) #9
  %29 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %30, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then20.for.inc_crit_edge, %if.end15.for.inc_crit_edge
  %31 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %next, align 4
  %33 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp12.1 = icmp eq i32 %32, %34
  br i1 %cmp12.1, label %for.inc.for.end_crit_edge, label %if.end15.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.1:                                       ; preds = %for.inc
  %sys_ind16.1 = getelementptr i8, ptr %call, i32 466
  %35 = ptrtoint ptr %sys_ind16.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sys_ind16.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %36)
  %cmp18.1 = icmp eq i8 %36, -127
  br i1 %cmp18.1, label %if.then20.1, label %if.end15.1.for.inc.1_crit_edge

if.end15.1.for.inc.1_crit_edge:                   ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then20.1:                                      ; preds = %if.end15.1
  %inc.1 = add i32 %32, 1
  %37 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc.1, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp.i47.1 = icmp sgt i32 %34, %32
  br i1 %cmp.i47.1, label %if.then.i.1, label %if.then20.1.for.inc.1_crit_edge

if.then20.1.for.inc.1_crit_edge:                  ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.i.1:                                      ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #11
  %nr_sects.i.1 = getelementptr i8, ptr %call, i32 474
  %38 = ptrtoint ptr %nr_sects.i.1 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %nr_sects.i.1, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39) #9
  %conv.i46.1 = zext i32 %40 to i64
  %start_sect.i.1 = getelementptr i8, ptr %call, i32 470
  %41 = ptrtoint ptr %start_sect.i.1 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %start_sect.i.1, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #9
  %conv.i.1 = zext i32 %43 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %44 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %45 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parts.i, align 4
  %arrayidx.i.1 = getelementptr %struct.anon.83, ptr %46, i32 %32
  %47 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv.i.1, ptr %arrayidx.i.1, align 8
  %48 = load ptr, ptr %parts.i, align 4
  %size4.i.1 = getelementptr %struct.anon.83, ptr %48, i32 %32, i32 1
  %49 = ptrtoint ptr %size4.i.1 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i46.1, ptr %size4.i.1, align 8
  %call.i.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %32) #9
  %50 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pp_buf, align 4
  %call7.i.1 = call i32 @strlcat(ptr noundef %51, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.i.1, %if.then20.1.for.inc.1_crit_edge, %if.end15.1.for.inc.1_crit_edge
  %52 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %next, align 4
  %54 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp12.2 = icmp eq i32 %53, %55
  br i1 %cmp12.2, label %for.inc.1.for.end_crit_edge, label %if.end15.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.2:                                       ; preds = %for.inc.1
  %sys_ind16.2 = getelementptr i8, ptr %call, i32 482
  %56 = ptrtoint ptr %sys_ind16.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sys_ind16.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %57)
  %cmp18.2 = icmp eq i8 %57, -127
  br i1 %cmp18.2, label %if.then20.2, label %if.end15.2.for.inc.2_crit_edge

if.end15.2.for.inc.2_crit_edge:                   ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then20.2:                                      ; preds = %if.end15.2
  %inc.2 = add i32 %53, 1
  %58 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %inc.2, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp.i47.2 = icmp sgt i32 %55, %53
  br i1 %cmp.i47.2, label %if.then.i.2, label %if.then20.2.for.inc.2_crit_edge

if.then20.2.for.inc.2_crit_edge:                  ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.i.2:                                      ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #11
  %nr_sects.i.2 = getelementptr i8, ptr %call, i32 490
  %59 = ptrtoint ptr %nr_sects.i.2 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %nr_sects.i.2, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60) #9
  %conv.i46.2 = zext i32 %61 to i64
  %start_sect.i.2 = getelementptr i8, ptr %call, i32 486
  %62 = ptrtoint ptr %start_sect.i.2 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %start_sect.i.2, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #9
  %conv.i.2 = zext i32 %64 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %65 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %66 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parts.i, align 4
  %arrayidx.i.2 = getelementptr %struct.anon.83, ptr %67, i32 %53
  %68 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv.i.2, ptr %arrayidx.i.2, align 8
  %69 = load ptr, ptr %parts.i, align 4
  %size4.i.2 = getelementptr %struct.anon.83, ptr %69, i32 %53, i32 1
  %70 = ptrtoint ptr %size4.i.2 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv.i46.2, ptr %size4.i.2, align 8
  %call.i.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %53) #9
  %71 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pp_buf, align 4
  %call7.i.2 = call i32 @strlcat(ptr noundef %72, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.i.2, %if.then20.2.for.inc.2_crit_edge, %if.end15.2.for.inc.2_crit_edge
  %73 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %next, align 4
  %75 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp12.3 = icmp eq i32 %74, %76
  br i1 %cmp12.3, label %for.inc.2.for.end_crit_edge, label %if.end15.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.3:                                       ; preds = %for.inc.2
  %sys_ind16.3 = getelementptr i8, ptr %call, i32 498
  %77 = ptrtoint ptr %sys_ind16.3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sys_ind16.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %78)
  %cmp18.3 = icmp eq i8 %78, -127
  br i1 %cmp18.3, label %if.then20.3, label %if.end15.3.for.end_crit_edge

if.end15.3.for.end_crit_edge:                     ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then20.3:                                      ; preds = %if.end15.3
  %inc.3 = add i32 %74, 1
  %79 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %inc.3, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %74)
  %cmp.i47.3 = icmp sgt i32 %76, %74
  br i1 %cmp.i47.3, label %if.then.i.3, label %if.then20.3.for.end_crit_edge

if.then20.3.for.end_crit_edge:                    ; preds = %if.then20.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.i.3:                                      ; preds = %if.then20.3
  call void @__sanitizer_cov_trace_pc() #11
  %nr_sects.i.3 = getelementptr i8, ptr %call, i32 506
  %80 = ptrtoint ptr %nr_sects.i.3 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %nr_sects.i.3, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %81) #9
  %conv.i46.3 = zext i32 %82 to i64
  %start_sect.i.3 = getelementptr i8, ptr %call, i32 502
  %83 = ptrtoint ptr %start_sect.i.3 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %start_sect.i.3, align 1
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  %conv.i.3 = zext i32 %85 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %86 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %87 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %parts.i, align 4
  %arrayidx.i.3 = getelementptr %struct.anon.83, ptr %88, i32 %74
  %89 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv.i.3, ptr %arrayidx.i.3, align 8
  %90 = load ptr, ptr %parts.i, align 4
  %size4.i.3 = getelementptr %struct.anon.83, ptr %90, i32 %74, i32 1
  %91 = ptrtoint ptr %size4.i.3 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv.i46.3, ptr %size4.i.3, align 8
  %call.i.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %74) #9
  %92 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pp_buf, align 4
  %call7.i.3 = call i32 @strlcat(ptr noundef %93, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.end

for.end:                                          ; preds = %if.then.i.3, %if.then20.3.for.end_crit_edge, %if.end15.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then5.for.end_crit_edge
  %94 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pp_buf, align 4
  %call27 = call i32 @strlcat(ptr noundef %95, ptr noundef nonnull @.str.13, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %tmp) #9
  br label %if.end28

if.end28:                                         ; preds = %for.end, %land.lhs.true.if.end28_crit_edge, %msdos_magic_present.exit.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %96 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %96)
  %.fca.0.load = load i32, ptr %sect, align 4
  %97 = inttoptr i32 %.fca.0.load to ptr
  %98 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %98, align 4
  %and.i.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end28._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.end28._compound_head.exit.i.i_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %100, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end28._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %97, %if.end28._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %101 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i.i.i.i.i = icmp eq i32 %102, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %103 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %103, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_minix, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_unixware(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp = alloca [56 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !53
  %add = add i64 %offset, 29
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %add, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_magic = getelementptr inbounds %struct.unixware_disklabel, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %d_magic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 224419530, i32 %2)
  %cmp.not = icmp eq i32 %2, 224419530
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %vtoc = getelementptr inbounds %struct.unixware_disklabel, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %vtoc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -287437472, i32 %4)
  %cmp1.not = icmp eq i32 %4, -287437472
  br i1 %cmp1.not, label %while.body.lr.ph, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %5 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.0.load = load i32, ptr %sect, align 4
  %6 = inttoptr i32 %.fca.0.load to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then2._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.then2._compound_head.exit.i.i_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %9, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then2._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %6, %if.then2._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %12 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_unixware, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tmp) #9
  %13 = call ptr @memset(ptr %tmp, i32 255, i32 56)
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 56, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %origin)
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %14 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pp_buf, align 4
  %call7 = call i32 @strlcat(ptr noundef %15, ptr noundef nonnull %tmp, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tmp) #9
  %v_slice = getelementptr inbounds %struct.unixware_disklabel, ptr %call, i32 0, i32 19, i32 6
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 3
  %sub.ptr.rhs.cast = ptrtoint ptr %v_slice to i32
  %arrayidx = getelementptr %struct.unixware_disklabel, ptr %call, i32 0, i32 19, i32 6, i32 1
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %p.069 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %incdec.ptr, %if.end22.while.body_crit_edge ]
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next, align 4
  %18 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp13 = icmp eq i32 %17, %19
  br i1 %cmp13, label %while.body.while.end_crit_edge, label %if.end15

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end15:                                         ; preds = %while.body
  %20 = ptrtoint ptr %p.069 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %p.069, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp16.not = icmp eq i16 %21, 0
  br i1 %cmp16.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  %inc = add i32 %17, 1
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.i = icmp sgt i32 %19, %17
  br i1 %cmp.i, label %if.then.i, label %if.then18.if.end22_crit_edge

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %nr_sects = getelementptr inbounds %struct.unixware_slice, ptr %p.069, i32 0, i32 3
  %23 = ptrtoint ptr %nr_sects to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_sects, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %conv21 = zext i32 %25 to i64
  %start_sect = getelementptr inbounds %struct.unixware_slice, ptr %p.069, i32 0, i32 2
  %26 = ptrtoint ptr %start_sect to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %start_sect, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %conv20 = zext i32 %28 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %29 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %30 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %31, i32 %17
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv20, ptr %arrayidx.i, align 8
  %33 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %33, i32 %17, i32 1
  %34 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv21, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %17) #9
  %35 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %36, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then18.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %incdec.ptr = getelementptr %struct.unixware_slice, ptr %p.069, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp12 = icmp slt i32 %sub.ptr.sub, 192
  br i1 %cmp12, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %while.body.while.end_crit_edge
  %37 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.0.load37 = load i32, ptr %sect, align 4
  %38 = inttoptr i32 %.fca.0.load37 to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i46 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i46)
  %tobool.not.i.i.i47 = icmp eq i32 %and.i.i.i46, 0
  br i1 %tobool.not.i.i.i47, label %while.end._compound_head.exit.i.i55_crit_edge, label %if.then.i.i.i50, !prof !54

while.end._compound_head.exit.i.i55_crit_edge:    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i55

if.then.i.i.i50:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i48 = add i32 %41, -1
  %.pre.i49 = inttoptr i32 %sub.i.i.i48 to ptr
  br label %_compound_head.exit.i.i55

_compound_head.exit.i.i55:                        ; preds = %if.then.i.i.i50, %while.end._compound_head.exit.i.i55_crit_edge
  %.pre-phi.i51 = phi ptr [ %38, %while.end._compound_head.exit.i.i55_crit_edge ], [ %.pre.i49, %if.then.i.i.i50 ]
  %_refcount.i.i.i.i.i.i52 = getelementptr inbounds %struct.page, ptr %.pre-phi.i51, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i52, i32 noundef 4) #9
  %42 = ptrtoint ptr %_refcount.i.i.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i.i54 = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i.i54, label %if.then.i.i.i.i.i56, label %do.end5.i.i.i.i.i60, !prof !55

if.then.i.i.i.i.i56:                              ; preds = %_compound_head.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i51, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i60:                              ; preds = %_compound_head.exit.i.i55
  %call.i.i.i10.i.i.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i52, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i52, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i52, ptr %_refcount.i.i.i.i.i.i52, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i52) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i58, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_unixware, %if.then.i.i.i.i.i.i62)) #9
          to label %folio_put_testzero.exit.i.i.i63 [label %if.then.i.i.i.i.i.i62], !srcloc !60

if.then.i.i.i.i.i.i62:                            ; preds = %do.end5.i.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i61 = zext i1 %cmp.i.i.i.i.i.i.i.i59 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i61) #9
  br label %folio_put_testzero.exit.i.i.i63

folio_put_testzero.exit.i.i.i63:                  ; preds = %if.then.i.i.i.i.i.i62, %do.end5.i.i.i.i.i60
  br i1 %cmp.i.i.i.i.i.i.i.i59, label %if.then.i4.i.i64, label %folio_put_testzero.exit.i.i.i63.put_dev_sector.exit65_crit_edge

folio_put_testzero.exit.i.i.i63.put_dev_sector.exit65_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit65

if.then.i4.i.i64:                                 ; preds = %folio_put_testzero.exit.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i51) #9
  br label %put_dev_sector.exit65

put_dev_sector.exit65:                            ; preds = %if.then.i4.i.i64, %folio_put_testzero.exit.i.i.i63.put_dev_sector.exit65_crit_edge
  %45 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pp_buf, align 4
  %call25 = call i32 @strlcat(ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %put_dev_sector.exit65, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_solaris_x86(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin) #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp = alloca [55 x i8], align 1
  %tmp9 = alloca [64 x i8], align 1
  %tmp26 = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !53
  %add = add i64 %offset, 1
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %add, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end:                                           ; preds = %entry
  %v_sanity = getelementptr inbounds %struct.solaris_x86_vtoc, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %v_sanity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v_sanity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -287437472, i32 %2)
  %cmp.not = icmp eq i32 %2, -287437472
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %sect, align 4
  %4 = inttoptr i32 %.fca.0.load to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then1._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.then1._compound_head.exit.i.i_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %7, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then1._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %4, %if.then1._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %10 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_solaris_x86, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup46_crit_edge

folio_put_testzero.exit.i.i.i.cleanup46_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup46

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 55, ptr nonnull %tmp) #9
  %11 = call ptr @memset(ptr %tmp, i32 255, i32 55)
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 55, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %origin)
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_buf, align 4
  %call6 = call i32 @strlcat(ptr noundef %13, ptr noundef nonnull %tmp, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 55, ptr nonnull %tmp) #9
  %v_version = getelementptr inbounds %struct.solaris_x86_vtoc, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %v_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %15)
  %cmp7.not = icmp eq i32 %15, 16777216
  br i1 %cmp7.not, label %if.end17, label %if.then8

if.then8:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp9) #9
  %16 = call ptr @memset(ptr %tmp9, i32 255, i32 64)
  %17 = ptrtoint ptr %v_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v_version, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp9, i32 noundef 64, ptr noundef nonnull @.str.19, i32 noundef %19)
  %20 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pp_buf, align 4
  %call15 = call i32 @strlcat(ptr noundef %21, ptr noundef nonnull %tmp9, i32 noundef 4096) #9
  %22 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %22)
  %.fca.0.load63 = load i32, ptr %sect, align 4
  %23 = inttoptr i32 %.fca.0.load63 to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i78 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i78)
  %tobool.not.i.i.i79 = icmp eq i32 %and.i.i.i78, 0
  br i1 %tobool.not.i.i.i79, label %if.then8._compound_head.exit.i.i87_crit_edge, label %if.then.i.i.i82, !prof !54

if.then8._compound_head.exit.i.i87_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i87

if.then.i.i.i82:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i80 = add i32 %26, -1
  %.pre.i81 = inttoptr i32 %sub.i.i.i80 to ptr
  br label %_compound_head.exit.i.i87

_compound_head.exit.i.i87:                        ; preds = %if.then.i.i.i82, %if.then8._compound_head.exit.i.i87_crit_edge
  %.pre-phi.i83 = phi ptr [ %23, %if.then8._compound_head.exit.i.i87_crit_edge ], [ %.pre.i81, %if.then.i.i.i82 ]
  %_refcount.i.i.i.i.i.i84 = getelementptr inbounds %struct.page, ptr %.pre-phi.i83, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i85 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i84, i32 noundef 4) #9
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i.i86 = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i.i86, label %if.then.i.i.i.i.i88, label %do.end5.i.i.i.i.i92, !prof !55

if.then.i.i.i.i.i88:                              ; preds = %_compound_head.exit.i.i87
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i83, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i92:                              ; preds = %_compound_head.exit.i.i87
  %call.i.i.i10.i.i.i.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i84, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i84, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i84, ptr %_refcount.i.i.i.i.i.i84, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i84) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i90 = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i90)
  %cmp.i.i.i.i.i.i.i.i91 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i90, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_solaris_x86, %if.then.i.i.i.i.i.i94)) #9
          to label %folio_put_testzero.exit.i.i.i95 [label %if.then.i.i.i.i.i.i94], !srcloc !60

if.then.i.i.i.i.i.i94:                            ; preds = %do.end5.i.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i93 = zext i1 %cmp.i.i.i.i.i.i.i.i91 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i83, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i93) #9
  br label %folio_put_testzero.exit.i.i.i95

folio_put_testzero.exit.i.i.i95:                  ; preds = %if.then.i.i.i.i.i.i94, %do.end5.i.i.i.i.i92
  br i1 %cmp.i.i.i.i.i.i.i.i91, label %if.then.i4.i.i96, label %folio_put_testzero.exit.i.i.i95.put_dev_sector.exit97_crit_edge

folio_put_testzero.exit.i.i.i95.put_dev_sector.exit97_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit97

if.then.i4.i.i96:                                 ; preds = %folio_put_testzero.exit.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i83) #9
  br label %put_dev_sector.exit97

put_dev_sector.exit97:                            ; preds = %if.then.i4.i.i96, %folio_put_testzero.exit.i.i.i95.put_dev_sector.exit97_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp9) #9
  br label %cleanup46

if.end17:                                         ; preds = %if.end2
  %v_nparts = getelementptr inbounds %struct.solaris_x86_vtoc, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %v_nparts to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %v_nparts, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %32)
  %cmp18 = icmp ugt i16 %32, 8
  %conv20 = select i1 %cmp18, i32 16, i32 8
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 3
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %if.end17
  %i.0118 = phi i32 [ 0, %if.end17 ], [ %inc42, %cleanup.land.rhs_crit_edge ]
  %33 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %next, align 4
  %35 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp24 = icmp slt i32 %34, %36
  br i1 %cmp24, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %tmp26) #9
  %s_size = getelementptr %struct.solaris_x86_vtoc, ptr %call, i32 0, i32 7, i32 %i.0118, i32 3
  %37 = call ptr @memset(ptr %tmp26, i32 255, i32 15)
  %38 = ptrtoint ptr %s_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp27 = icmp eq i32 %39, 0
  br i1 %cmp27, label %for.body.cleanup_crit_edge, label %if.end30

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %for.body
  %call32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp26, i32 noundef 15, ptr noundef nonnull @.str.20, i32 noundef %i.0118)
  %40 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_buf, align 4
  %call35 = call i32 @strlcat(ptr noundef %41, ptr noundef nonnull %tmp26, i32 noundef 4096) #9
  %42 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %next, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %next, align 4
  %44 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.i = icmp sgt i32 %45, %43
  br i1 %cmp.i, label %if.then.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %s_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_size, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %conv40 = zext i32 %48 to i64
  %s_start = getelementptr %struct.solaris_x86_vtoc, ptr %call, i32 0, i32 7, i32 %i.0118, i32 2
  %49 = ptrtoint ptr %s_start to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_start, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %conv37 = zext i32 %51 to i64
  %add38 = add i64 %conv37, %offset
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %52 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %53 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %54, i32 %43
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add38, ptr %arrayidx.i, align 8
  %56 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %56, i32 %43, i32 1
  %57 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv40, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %43) #9
  %58 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %59, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %tmp26) #9
  %inc42 = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc42, %conv20
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %60 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.0.load66 = load i32, ptr %sect, align 4
  %61 = inttoptr i32 %.fca.0.load66 to ptr
  %62 = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and.i.i.i98 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98)
  %tobool.not.i.i.i99 = icmp eq i32 %and.i.i.i98, 0
  br i1 %tobool.not.i.i.i99, label %for.end._compound_head.exit.i.i107_crit_edge, label %if.then.i.i.i102, !prof !54

for.end._compound_head.exit.i.i107_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i107

if.then.i.i.i102:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i100 = add i32 %64, -1
  %.pre.i101 = inttoptr i32 %sub.i.i.i100 to ptr
  br label %_compound_head.exit.i.i107

_compound_head.exit.i.i107:                       ; preds = %if.then.i.i.i102, %for.end._compound_head.exit.i.i107_crit_edge
  %.pre-phi.i103 = phi ptr [ %61, %for.end._compound_head.exit.i.i107_crit_edge ], [ %.pre.i101, %if.then.i.i.i102 ]
  %_refcount.i.i.i.i.i.i104 = getelementptr inbounds %struct.page, ptr %.pre-phi.i103, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i105 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i104, i32 noundef 4) #9
  %65 = ptrtoint ptr %_refcount.i.i.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %_refcount.i.i.i.i.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.i.i.i.i106 = icmp eq i32 %66, 0
  br i1 %cmp.i.i.i.i.i106, label %if.then.i.i.i.i.i108, label %do.end5.i.i.i.i.i112, !prof !55

if.then.i.i.i.i.i108:                             ; preds = %_compound_head.exit.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i103, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i112:                             ; preds = %_compound_head.exit.i.i107
  %call.i.i.i10.i.i.i.i.i109 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i104, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i104, i32 1, i32 3, i32 1) #9
  %67 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i104, ptr %_refcount.i.i.i.i.i.i104, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i104) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i110 = extractvalue { i32, i32 } %67, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i110)
  %cmp.i.i.i.i.i.i.i.i111 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i110, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_solaris_x86, %if.then.i.i.i.i.i.i114)) #9
          to label %folio_put_testzero.exit.i.i.i115 [label %if.then.i.i.i.i.i.i114], !srcloc !60

if.then.i.i.i.i.i.i114:                           ; preds = %do.end5.i.i.i.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i113 = zext i1 %cmp.i.i.i.i.i.i.i.i111 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i103, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i113) #9
  br label %folio_put_testzero.exit.i.i.i115

folio_put_testzero.exit.i.i.i115:                 ; preds = %if.then.i.i.i.i.i.i114, %do.end5.i.i.i.i.i112
  br i1 %cmp.i.i.i.i.i.i.i.i111, label %if.then.i4.i.i116, label %folio_put_testzero.exit.i.i.i115.put_dev_sector.exit117_crit_edge

folio_put_testzero.exit.i.i.i115.put_dev_sector.exit117_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit117

if.then.i4.i.i116:                                ; preds = %folio_put_testzero.exit.i.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i103) #9
  br label %put_dev_sector.exit117

put_dev_sector.exit117:                           ; preds = %if.then.i4.i.i116, %folio_put_testzero.exit.i.i.i115.put_dev_sector.exit117_crit_edge
  %68 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pp_buf, align 4
  %call45 = call i32 @strlcat(ptr noundef %69, ptr noundef nonnull @.str.13, i32 noundef 4096) #9
  br label %cleanup46

cleanup46:                                        ; preds = %put_dev_sector.exit117, %put_dev_sector.exit97, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_bsd(ptr noundef %state, i64 noundef %offset, i64 noundef %size, i32 noundef %origin, ptr noundef %flavour) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %tmp = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #9
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 64)
  %add = add i64 %offset, 1
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %add, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup74

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1464161922, i32 %3)
  %cmp.not = icmp eq i32 %3, 1464161922
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.0.load = load i32, ptr %sect, align 4
  %5 = inttoptr i32 %.fca.0.load to ptr
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then1._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.then1._compound_head.exit.i.i_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %8, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then1._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %5, %if.then1._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_bsd, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup74_crit_edge

folio_put_testzero.exit.i.i.i.cleanup74_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup74

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup74

if.end2:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %origin, ptr noundef %flavour)
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_buf, align 4
  %call6 = call i32 @strlcat(ptr noundef %13, ptr noundef nonnull %tmp, i32 noundef 4096) #9
  %d_npartitions = getelementptr inbounds %struct.bsd_disklabel, ptr %call, i32 0, i32 25
  %14 = ptrtoint ptr %d_npartitions to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %d_npartitions, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = call i16 @llvm.umin.i16(i16 %16, i16 16)
  %spec.select = zext i16 %17 to i32
  %d_partitions = getelementptr inbounds %struct.bsd_disklabel, ptr %call, i32 0, i32 28
  %next = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 3
  %sub.ptr.rhs.cast = ptrtoint ptr %d_partitions to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp1626.not = icmp eq i16 %17, 0
  br i1 %cmp1626.not, label %if.end2.for.end_crit_edge, label %for.body.lr.ph

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end2
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %p_offset33 = getelementptr %struct.bsd_disklabel, ptr %call, i32 0, i32 28, i32 2, i32 1
  %add48 = add i64 %size, %offset
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.027 = phi ptr [ %d_partitions, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %next, align 4
  %20 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp18 = icmp eq i32 %19, %21
  br i1 %cmp18, label %for.body.for.end_crit_edge, label %if.end21

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end21:                                         ; preds = %for.body
  %p_fstype = getelementptr inbounds %struct.bsd_partition, ptr %p.027, i32 0, i32 3
  %22 = ptrtoint ptr %p_fstype to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p_fstype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp23 = icmp eq i8 %23, 0
  br i1 %cmp23, label %if.end21.for.inc_crit_edge, label %if.end26

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %p_offset = getelementptr inbounds %struct.bsd_partition, ptr %p.027, i32 0, i32 1
  %24 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_offset, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %conv27 = zext i32 %26 to i64
  %27 = ptrtoint ptr %p.027 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p.027, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %conv28 = zext i32 %29 to i64
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %flavour, ptr noundef nonnull dereferenceable(4) @.str.10, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp30 = icmp eq i32 %bcmp, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %p_offset33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p_offset33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp34 = icmp eq i32 %31, 0
  %add37 = select i1 %cmp34, i64 %offset, i64 0
  %spec.select1 = add i64 %add37, %conv27
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true, %if.end26.if.end38_crit_edge
  %bsd_start.0 = phi i64 [ %conv27, %if.end26.if.end38_crit_edge ], [ %spec.select1, %land.lhs.true ]
  call void @__sanitizer_cov_trace_cmp8(i64 %bsd_start.0, i64 %offset)
  %cmp39 = icmp eq i64 %bsd_start.0, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %conv28, i64 %size)
  %cmp42 = icmp eq i64 %conv28, %size
  %or.cond = select i1 %cmp39, i1 %cmp42, i1 false
  br i1 %or.cond, label %if.end38.for.inc_crit_edge, label %if.end45

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp8(i64 %bsd_start.0, i64 %offset)
  %cmp46 = icmp ult i64 %bsd_start.0, %offset
  %add49 = add i64 %bsd_start.0, %conv28
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %add49)
  %cmp50 = icmp ult i64 %add48, %add49
  %or.cond29 = select i1 %cmp46, i1 true, i1 %cmp50
  br i1 %or.cond29, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pp_buf, align 4
  %call54 = call i32 @strlcat(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef 4096) #9
  br label %for.inc

if.end55:                                         ; preds = %if.end45
  %inc = add i32 %19, 1
  %34 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp.i = icmp sgt i32 %21, %19
  br i1 %cmp.i, label %if.then.i, label %if.end55.for.inc_crit_edge

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %35 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %36 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %37, i32 %19
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %bsd_start.0, ptr %arrayidx.i, align 8
  %39 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %39, i32 %19, i32 1
  %40 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv28, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %19) #9
  %41 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %42, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end55.for.inc_crit_edge, %if.then52, %if.end38.for.inc_crit_edge, %if.end21.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.bsd_partition, ptr %p.027, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %cmp16 = icmp slt i32 %sub.ptr.div, %spec.select
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end2.for.end_crit_edge
  %43 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.0.load99 = load i32, ptr %sect, align 4
  %44 = inttoptr i32 %.fca.0.load99 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i2 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i2)
  %tobool.not.i.i.i3 = icmp eq i32 %and.i.i.i2, 0
  br i1 %tobool.not.i.i.i3, label %for.end._compound_head.exit.i.i11_crit_edge, label %if.then.i.i.i6, !prof !54

for.end._compound_head.exit.i.i11_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i11

if.then.i.i.i6:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i4 = add i32 %47, -1
  %.pre.i5 = inttoptr i32 %sub.i.i.i4 to ptr
  br label %_compound_head.exit.i.i11

_compound_head.exit.i.i11:                        ; preds = %if.then.i.i.i6, %for.end._compound_head.exit.i.i11_crit_edge
  %.pre-phi.i7 = phi ptr [ %44, %for.end._compound_head.exit.i.i11_crit_edge ], [ %.pre.i5, %if.then.i.i.i6 ]
  %_refcount.i.i.i.i.i.i8 = getelementptr inbounds %struct.page, ptr %.pre-phi.i7, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i8, i32 noundef 4) #9
  %48 = ptrtoint ptr %_refcount.i.i.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %_refcount.i.i.i.i.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i.i10 = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i.i10, label %if.then.i.i.i.i.i12, label %do.end5.i.i.i.i.i16, !prof !55

if.then.i.i.i.i.i12:                              ; preds = %_compound_head.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i7, ptr noundef nonnull @.str.5) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end5.i.i.i.i.i16:                              ; preds = %_compound_head.exit.i.i11
  %call.i.i.i10.i.i.i.i.i13 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i8, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i8, i32 1, i32 3, i32 1) #9
  %50 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i8, ptr %_refcount.i.i.i.i.i.i8, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i8) #9, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i14 = extractvalue { i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i14)
  %cmp.i.i.i.i.i.i.i.i15 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i14, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@parse_bsd, %if.then.i.i.i.i.i.i18)) #9
          to label %folio_put_testzero.exit.i.i.i19 [label %if.then.i.i.i.i.i.i18], !srcloc !60

if.then.i.i.i.i.i.i18:                            ; preds = %do.end5.i.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i17 = zext i1 %cmp.i.i.i.i.i.i.i.i15 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i7, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i17) #9
  br label %folio_put_testzero.exit.i.i.i19

folio_put_testzero.exit.i.i.i19:                  ; preds = %if.then.i.i.i.i.i.i18, %do.end5.i.i.i.i.i16
  br i1 %cmp.i.i.i.i.i.i.i.i15, label %if.then.i4.i.i20, label %folio_put_testzero.exit.i.i.i19.put_dev_sector.exit21_crit_edge

folio_put_testzero.exit.i.i.i19.put_dev_sector.exit21_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit21

if.then.i4.i.i20:                                 ; preds = %folio_put_testzero.exit.i.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i7) #9
  br label %put_dev_sector.exit21

put_dev_sector.exit21:                            ; preds = %if.then.i4.i.i20, %folio_put_testzero.exit.i.i.i19.put_dev_sector.exit21_crit_edge
  %51 = ptrtoint ptr %d_npartitions to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %d_npartitions, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %17)
  %cmp61 = icmp ugt i16 %53, %17
  br i1 %cmp61, label %if.then63, label %put_dev_sector.exit21.if.end71_crit_edge

put_dev_sector.exit21.if.end71_crit_edge:         ; preds = %put_dev_sector.exit21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then63:                                        ; preds = %put_dev_sector.exit21
  call void @__sanitizer_cov_trace_pc() #11
  %conv60 = zext i16 %53 to i32
  %sub = sub nsw i32 %conv60, %spec.select
  %call67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef nonnull @.str.12, i32 noundef %sub)
  %54 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pp_buf, align 4
  %call70 = call i32 @strlcat(ptr noundef %55, ptr noundef nonnull %tmp, i32 noundef 4096) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then63, %put_dev_sector.exit21.if.end71_crit_edge
  %56 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pp_buf, align 4
  %call73 = call i32 @strlcat(ptr noundef %57, ptr noundef nonnull @.str.13, i32 noundef 4096) #9
  br label %cleanup74

cleanup74:                                        ; preds = %if.end71, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/msdos.c", i32 632, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/msdos.c", i32 681, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/msdos.c", i32 683, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/msdos.c", i32 691, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/partitions/msdos.c", i32 693, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/mm.h", i32 717, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/partitions/check.h", i32 45, i32 30}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/partitions/msdos.c", i32 113, i32 43}
!16 = !{ptr @subtypes, !17, !"subtypes", i1 false, i1 false}
!17 = !{!"../block/partitions/msdos.c", i32 570, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../block/partitions/msdos.c", i32 413, i32 41}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/partitions/msdos.c", i32 372, i32 29}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../block/partitions/msdos.c", i32 387, i32 23}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/partitions/msdos.c", i32 394, i32 27}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/partitions/msdos.c", i32 401, i32 30}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../block/partitions/msdos.c", i32 405, i32 25}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/partitions/msdos.c", i32 421, i32 41}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/partitions/msdos.c", i32 429, i32 41}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/partitions/msdos.c", i32 551, i32 30}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/partitions/msdos.c", i32 502, i32 30}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../block/partitions/msdos.c", i32 269, i32 30}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/partitions/msdos.c", i32 275, i32 30}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../block/partitions/msdos.c", i32 289, i32 30}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2153184866, i64 2153185349, i64 2153184903, i64 2153184959, i64 2153184993, i64 2153185017, i64 2153185058, i64 2153185079, i64 2153185107, i64 2153185141}
!57 = !{i64 2148844390}
!58 = !{i64 2148759099, i64 2148759131, i64 2148759160, i64 2148759194, i64 2148759225, i64 2148759248}
!59 = !{i64 2148844619}
!60 = !{i64 2148356591, i64 2148356596, i64 2148356609, i64 2148356653, i64 2148356687, i64 2148356708}
