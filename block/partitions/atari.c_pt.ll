; ModuleID = '/llk/IR_all_yes/block/partitions/atari.c_pt.bc'
source_filename = "../block/partitions/atari.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rootsector = type <{ [342 x i8], [8 x %struct.partition_info], [12 x i8], i32, [4 x %struct.partition_info], i32, i32, i16 }>
%struct.partition_info = type { i8, [3 x i8], i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" AHDI\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XGM\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" XGM<\00", [26 x i8] zeroinitializer }, align 32
@atari_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" block %ld read failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atari_partition\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"block/partitions/atari.c\00", [39 x i8] zeroinitializer }, align 32
@atari_partition._entry_ptr = internal global ptr @atari_partition._entry, section ".printk_index", align 4
@atari_partition._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\0AFirst sub-partition in extended partition is not valid!\0A\00", [38 x i8] zeroinitializer }, align 32
@atari_partition._entry_ptr.8 = internal global ptr @atari_partition._entry.6, section ".printk_index", align 4
@atari_partition._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0AID of extended partition is not XGM!\0A\00", [57 x i8] zeroinitializer }, align 32
@atari_partition._entry_ptr.11 = internal global ptr @atari_partition._entry.9, section ".printk_index", align 4
@atari_partition._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0AMaximum number of partitions reached!\0A\00", [56 x i8] zeroinitializer }, align 32
@atari_partition._entry_ptr.14 = internal global ptr @atari_partition._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" >\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" ICD<\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GEM\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BGM\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LNX\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SWP\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAW\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 73, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 82, i32 23 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 92, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 97, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 104, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 119, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 127, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 131, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 138, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 154, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 717, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 45, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 29, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 29, i32 50 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 30, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 30, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [28 x i8] c"../block/partitions/atari.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 31, i32 14 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @atari_partition._entry, ptr @atari_partition._entry.12, ptr @atari_partition._entry.6, ptr @atari_partition._entry.9, ptr @atari_partition._entry_ptr, ptr @atari_partition._entry_ptr.11, ptr @atari_partition._entry_ptr.14, ptr @atari_partition._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atari_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atari_partition._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atari_partition._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atari_partition._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atari_partition(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i536 = alloca [44 x i8], align 1
  %tmp.i483 = alloca [44 x i8], align 1
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %sect2 = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #10
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 9
  %5 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical_block_size.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %land.lhs.true.i.cleanup372_crit_edge [
    i32 0, label %land.lhs.true.i.if.end_crit_edge
    i32 512, label %land.lhs.true.i.if.end_crit_edge665
  ]

land.lhs.true.i.if.end_crit_edge665:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i.cleanup372_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge665, %entry.if.end_crit_edge
  %call1 = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup372_crit_edge, label %if.end3

if.end.cleanup372_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %conv = trunc i64 %13 to i32
  %part = getelementptr inbounds %struct.rootsector, ptr %call1, i32 0, i32 4
  %14 = ptrtoint ptr %part to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %part, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %if.end3.land.lhs.true52_crit_edge, label %land.lhs.true

if.end3.land.lhs.true52_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

land.lhs.true:                                    ; preds = %if.end3
  %id = getelementptr inbounds %struct.rootsector, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id, align 1
  %conv11 = zext i8 %18 to i32
  %arrayidx12 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv11
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12, align 1
  %21 = and i8 %20, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp15.not = icmp eq i8 %21, 0
  br i1 %cmp15.not, label %land.lhs.true.land.lhs.true52_crit_edge, label %land.lhs.true17

land.lhs.true.land.lhs.true52_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

land.lhs.true17:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %23 to i32
  %arrayidx23 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv22
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx23, align 1
  %26 = and i8 %25, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp26.not = icmp eq i8 %26, 0
  br i1 %cmp26.not, label %land.lhs.true17.land.lhs.true52_crit_edge, label %land.lhs.true28

land.lhs.true17.land.lhs.true52_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

land.lhs.true28:                                  ; preds = %land.lhs.true17
  %arrayidx32 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %28 to i32
  %arrayidx34 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv33
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx34, align 1
  %31 = and i8 %30, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp37.not = icmp eq i8 %31, 0
  br i1 %cmp37.not, label %land.lhs.true28.land.lhs.true52_crit_edge, label %land.lhs.true39

land.lhs.true28.land.lhs.true52_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

land.lhs.true39:                                  ; preds = %land.lhs.true28
  %st = getelementptr inbounds %struct.rootsector, ptr %call1, i32 0, i32 4, i32 0, i32 2
  %32 = ptrtoint ptr %st to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %st, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp42.not = icmp ugt i32 %33, %conv
  br i1 %cmp42.not, label %land.lhs.true39.land.lhs.true52_crit_edge, label %land.lhs.true44

land.lhs.true39.land.lhs.true52_crit_edge:        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %siz = getelementptr inbounds %struct.rootsector, ptr %call1, i32 0, i32 4, i32 0, i32 3
  %34 = ptrtoint ptr %siz to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %siz, align 1
  %add = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp50.not = icmp ugt i32 %add, %conv
  br i1 %cmp50.not, label %land.lhs.true44.land.lhs.true52_crit_edge, label %land.lhs.true44.if.end221_crit_edge

land.lhs.true44.if.end221_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true44.land.lhs.true52_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true44.land.lhs.true52_crit_edge, %land.lhs.true39.land.lhs.true52_crit_edge, %land.lhs.true28.land.lhs.true52_crit_edge, %land.lhs.true17.land.lhs.true52_crit_edge, %land.lhs.true.land.lhs.true52_crit_edge, %if.end3.land.lhs.true52_crit_edge
  %arrayidx54 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx54, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool58.not = icmp eq i8 %38, 0
  br i1 %tobool58.not, label %land.lhs.true52.land.lhs.true108_crit_edge, label %land.lhs.true59

land.lhs.true52.land.lhs.true108_crit_edge:       ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true108

land.lhs.true59:                                  ; preds = %land.lhs.true52
  %id62 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 1, i32 1
  %39 = ptrtoint ptr %id62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id62, align 1
  %conv64 = zext i8 %40 to i32
  %arrayidx65 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv64
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  %43 = and i8 %42, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp68.not = icmp eq i8 %43, 0
  br i1 %cmp68.not, label %land.lhs.true59.land.lhs.true108_crit_edge, label %land.lhs.true70

land.lhs.true59.land.lhs.true108_crit_edge:       ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true108

land.lhs.true70:                                  ; preds = %land.lhs.true59
  %arrayidx74 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %45 to i32
  %arrayidx76 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv75
  %46 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx76, align 1
  %48 = and i8 %47, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp79.not = icmp eq i8 %48, 0
  br i1 %cmp79.not, label %land.lhs.true70.land.lhs.true108_crit_edge, label %land.lhs.true81

land.lhs.true70.land.lhs.true108_crit_edge:       ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true108

land.lhs.true81:                                  ; preds = %land.lhs.true70
  %arrayidx85 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 1, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %50 to i32
  %arrayidx87 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv86
  %51 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx87, align 1
  %53 = and i8 %52, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp90.not = icmp eq i8 %53, 0
  br i1 %cmp90.not, label %land.lhs.true81.land.lhs.true108_crit_edge, label %land.lhs.true92

land.lhs.true81.land.lhs.true108_crit_edge:       ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true108

land.lhs.true92:                                  ; preds = %land.lhs.true81
  %st95 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 1, i32 2
  %54 = ptrtoint ptr %st95 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %st95, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv)
  %cmp96.not = icmp ugt i32 %55, %conv
  br i1 %cmp96.not, label %land.lhs.true92.land.lhs.true108_crit_edge, label %land.lhs.true98

land.lhs.true92.land.lhs.true108_crit_edge:       ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true108

land.lhs.true98:                                  ; preds = %land.lhs.true92
  %siz104 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 1, i32 3
  %56 = ptrtoint ptr %siz104 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %siz104, align 1
  %add105 = add i32 %57, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %conv)
  %cmp106.not = icmp ugt i32 %add105, %conv
  br i1 %cmp106.not, label %land.lhs.true98.land.lhs.true108_crit_edge, label %land.lhs.true98.if.end221_crit_edge

land.lhs.true98.if.end221_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true98.land.lhs.true108_crit_edge:       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true108

land.lhs.true108:                                 ; preds = %land.lhs.true98.land.lhs.true108_crit_edge, %land.lhs.true92.land.lhs.true108_crit_edge, %land.lhs.true81.land.lhs.true108_crit_edge, %land.lhs.true70.land.lhs.true108_crit_edge, %land.lhs.true59.land.lhs.true108_crit_edge, %land.lhs.true52.land.lhs.true108_crit_edge
  %arrayidx110 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx110, align 1
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool114.not = icmp eq i8 %60, 0
  br i1 %tobool114.not, label %land.lhs.true108.land.lhs.true164_crit_edge, label %land.lhs.true115

land.lhs.true108.land.lhs.true164_crit_edge:      ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true164

land.lhs.true115:                                 ; preds = %land.lhs.true108
  %id118 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 2, i32 1
  %61 = ptrtoint ptr %id118 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %id118, align 1
  %conv120 = zext i8 %62 to i32
  %arrayidx121 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv120
  %63 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx121, align 1
  %65 = and i8 %64, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp124.not = icmp eq i8 %65, 0
  br i1 %cmp124.not, label %land.lhs.true115.land.lhs.true164_crit_edge, label %land.lhs.true126

land.lhs.true115.land.lhs.true164_crit_edge:      ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true164

land.lhs.true126:                                 ; preds = %land.lhs.true115
  %arrayidx130 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 2, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %67 to i32
  %arrayidx132 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv131
  %68 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx132, align 1
  %70 = and i8 %69, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp135.not = icmp eq i8 %70, 0
  br i1 %cmp135.not, label %land.lhs.true126.land.lhs.true164_crit_edge, label %land.lhs.true137

land.lhs.true126.land.lhs.true164_crit_edge:      ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true164

land.lhs.true137:                                 ; preds = %land.lhs.true126
  %arrayidx141 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 2, i32 1, i32 2
  %71 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %72 to i32
  %arrayidx143 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv142
  %73 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx143, align 1
  %75 = and i8 %74, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp146.not = icmp eq i8 %75, 0
  br i1 %cmp146.not, label %land.lhs.true137.land.lhs.true164_crit_edge, label %land.lhs.true148

land.lhs.true137.land.lhs.true164_crit_edge:      ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true164

land.lhs.true148:                                 ; preds = %land.lhs.true137
  %st151 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 2, i32 2
  %76 = ptrtoint ptr %st151 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %st151, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %conv)
  %cmp152.not = icmp ugt i32 %77, %conv
  br i1 %cmp152.not, label %land.lhs.true148.land.lhs.true164_crit_edge, label %land.lhs.true154

land.lhs.true148.land.lhs.true164_crit_edge:      ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true164

land.lhs.true154:                                 ; preds = %land.lhs.true148
  %siz160 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 2, i32 3
  %78 = ptrtoint ptr %siz160 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %siz160, align 1
  %add161 = add i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %add161, i32 %conv)
  %cmp162.not = icmp ugt i32 %add161, %conv
  br i1 %cmp162.not, label %land.lhs.true154.land.lhs.true164_crit_edge, label %land.lhs.true154.if.end221_crit_edge

land.lhs.true154.if.end221_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true154.land.lhs.true164_crit_edge:      ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true164

land.lhs.true164:                                 ; preds = %land.lhs.true154.land.lhs.true164_crit_edge, %land.lhs.true148.land.lhs.true164_crit_edge, %land.lhs.true137.land.lhs.true164_crit_edge, %land.lhs.true126.land.lhs.true164_crit_edge, %land.lhs.true115.land.lhs.true164_crit_edge, %land.lhs.true108.land.lhs.true164_crit_edge
  %arrayidx166 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 3
  %80 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx166, align 1
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool170.not = icmp eq i8 %82, 0
  br i1 %tobool170.not, label %land.lhs.true164.if.then220_crit_edge, label %land.lhs.true171

land.lhs.true164.if.then220_crit_edge:            ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

land.lhs.true171:                                 ; preds = %land.lhs.true164
  %id174 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 3, i32 1
  %83 = ptrtoint ptr %id174 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %id174, align 1
  %conv176 = zext i8 %84 to i32
  %arrayidx177 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv176
  %85 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx177, align 1
  %87 = and i8 %86, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp180.not = icmp eq i8 %87, 0
  br i1 %cmp180.not, label %land.lhs.true171.if.then220_crit_edge, label %land.lhs.true182

land.lhs.true171.if.then220_crit_edge:            ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

land.lhs.true182:                                 ; preds = %land.lhs.true171
  %arrayidx186 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 3, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %89 to i32
  %arrayidx188 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv187
  %90 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx188, align 1
  %92 = and i8 %91, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp191.not = icmp eq i8 %92, 0
  br i1 %cmp191.not, label %land.lhs.true182.if.then220_crit_edge, label %land.lhs.true193

land.lhs.true182.if.then220_crit_edge:            ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

land.lhs.true193:                                 ; preds = %land.lhs.true182
  %arrayidx197 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 3, i32 1, i32 2
  %93 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %94 to i32
  %arrayidx199 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv198
  %95 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx199, align 1
  %97 = and i8 %96, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp202.not = icmp eq i8 %97, 0
  br i1 %cmp202.not, label %land.lhs.true193.if.then220_crit_edge, label %land.lhs.true204

land.lhs.true193.if.then220_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

land.lhs.true204:                                 ; preds = %land.lhs.true193
  %st207 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 3, i32 2
  %98 = ptrtoint ptr %st207 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %st207, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %conv)
  %cmp208.not = icmp ugt i32 %99, %conv
  br i1 %cmp208.not, label %land.lhs.true204.if.then220_crit_edge, label %land.lhs.true210

land.lhs.true204.if.then220_crit_edge:            ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

land.lhs.true210:                                 ; preds = %land.lhs.true204
  %siz216 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 4, i32 3, i32 3
  %100 = ptrtoint ptr %siz216 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %siz216, align 1
  %add217 = add i32 %101, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %add217, i32 %conv)
  %cmp218.not = icmp ugt i32 %add217, %conv
  br i1 %cmp218.not, label %land.lhs.true210.if.then220_crit_edge, label %land.lhs.true210.if.end221_crit_edge

land.lhs.true210.if.end221_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end221

land.lhs.true210.if.then220_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

if.then220:                                       ; preds = %land.lhs.true210.if.then220_crit_edge, %land.lhs.true204.if.then220_crit_edge, %land.lhs.true193.if.then220_crit_edge, %land.lhs.true182.if.then220_crit_edge, %land.lhs.true171.if.then220_crit_edge, %land.lhs.true164.if.then220_crit_edge
  %102 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %102)
  %.fca.0.load456 = load i32, ptr %sect, align 4
  %103 = inttoptr i32 %.fca.0.load456 to ptr
  %104 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %104, align 4
  %and.i.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then220._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !54

if.then220._compound_head.exit.i.i_crit_edge:     ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %106, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then220._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %103, %if.then220._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  %107 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i.i.i.i.i = icmp eq i32 %108, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !55

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %109 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %109, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@atari_partition, %if.then.i.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup372_crit_edge

folio_put_testzero.exit.i.i.i.cleanup372_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %.pre-phi.i) #10
  br label %cleanup372

if.end221:                                        ; preds = %land.lhs.true210.if.end221_crit_edge, %land.lhs.true154.if.end221_crit_edge, %land.lhs.true98.if.end221_crit_edge, %land.lhs.true44.if.end221_crit_edge
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %110 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pp_buf, align 4
  %call224 = call i32 @strlcat(ptr noundef %111, ptr noundef nonnull @.str, i32 noundef 4096) #10
  %arrayidx226 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 5
  %cmp227593 = icmp ult ptr %part, %arrayidx226
  br i1 %cmp227593, label %land.rhs.lr.ph, label %if.end221.if.then326_crit_edge

if.end221.if.then326_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then326

land.rhs.lr.ph:                                   ; preds = %if.end221
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %pi.0596 = phi ptr [ %part, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %part_fmt.0595 = phi i32 [ 0, %land.rhs.lr.ph ], [ %part_fmt.1.ph, %for.inc.land.rhs_crit_edge ]
  %slot.0594 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc323, %for.inc.land.rhs_crit_edge ]
  %112 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0594, i32 %113)
  %cmp229 = icmp slt i32 %slot.0594, %113
  br i1 %cmp229, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect2) #10
  %114 = ptrtoint ptr %sect2 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect2, align 4, !annotation !53
  %115 = ptrtoint ptr %pi.0596 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %pi.0596, align 4
  %117 = and i8 %116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool234.not = icmp eq i8 %117, 0
  br i1 %tobool234.not, label %for.body.for.inc_crit_edge, label %if.end236

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end236:                                        ; preds = %for.body
  %id237 = getelementptr inbounds %struct.partition_info, ptr %pi.0596, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(3) %id237, ptr noundef nonnull dereferenceable(3) @.str.1, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp239.not = icmp eq i32 %bcmp, 0
  br i1 %cmp239.not, label %if.end246, label %put_partition.exit

put_partition.exit:                               ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  %st242 = getelementptr inbounds %struct.partition_info, ptr %pi.0596, i32 0, i32 2
  %118 = ptrtoint ptr %st242 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %st242, align 4
  %conv243 = zext i32 %119 to i64
  %siz244 = getelementptr inbounds %struct.partition_info, ptr %pi.0596, i32 0, i32 3
  %120 = ptrtoint ptr %siz244 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %siz244, align 4
  %conv245 = zext i32 %121 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #10
  %122 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %123 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %124, i32 %slot.0594
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv243, ptr %arrayidx.i, align 8
  %126 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %126, i32 %slot.0594, i32 1
  %127 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv245, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef %slot.0594) #10
  %128 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %129, ptr noundef nonnull %tmp.i, i32 noundef 4096) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #10
  br label %for.inc

if.end246:                                        ; preds = %if.end236
  %130 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pp_buf, align 4
  %call248 = call i32 @strlcat(ptr noundef %131, ptr noundef nonnull @.str.2, i32 noundef 4096) #10
  %st249 = getelementptr inbounds %struct.partition_info, ptr %pi.0596, i32 0, i32 2
  %132 = ptrtoint ptr %st249 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %st249, align 4
  br label %while.cond

while.cond:                                       ; preds = %put_dev_sector.exit534.while.cond_crit_edge, %if.end246
  %slot.1 = phi i32 [ %slot.0594, %if.end246 ], [ %inc, %put_dev_sector.exit534.while.cond_crit_edge ]
  %partsect.0 = phi i32 [ %133, %if.end246 ], [ %add307, %put_dev_sector.exit534.while.cond_crit_edge ]
  %conv250 = zext i32 %partsect.0 to i64
  %call251 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv250, ptr noundef nonnull %sect2) #10
  %tobool252.not = icmp eq ptr %call251, null
  br i1 %tobool252.not, label %cleanup, label %if.end256

if.end256:                                        ; preds = %while.cond
  %part257 = getelementptr inbounds %struct.rootsector, ptr %call251, i32 0, i32 4
  %134 = ptrtoint ptr %part257 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %part257, align 1
  %136 = and i8 %135, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool262.not = icmp eq i8 %136, 0
  br i1 %tobool262.not, label %do.end266, label %if.end270

do.end266:                                        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  %call268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  %137 = ptrtoint ptr %sect2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.fca.0.load = load i32, ptr %sect2, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call fastcc void @put_dev_sector([1 x i32] %.fca.0.insert)
  br label %while.end

if.end270:                                        ; preds = %if.end256
  %138 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %slot.1)
  %cmp.i485 = icmp sgt i32 %139, %slot.1
  br i1 %cmp.i485, label %if.then.i493, label %if.end270.put_partition.exit494_crit_edge

if.end270.put_partition.exit494_crit_edge:        ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_partition.exit494

if.then.i493:                                     ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #12
  %siz278 = getelementptr inbounds %struct.rootsector, ptr %call251, i32 0, i32 4, i32 0, i32 3
  %140 = ptrtoint ptr %siz278 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %siz278, align 1
  %conv279 = zext i32 %141 to i64
  %st273 = getelementptr inbounds %struct.rootsector, ptr %call251, i32 0, i32 4, i32 0, i32 2
  %142 = ptrtoint ptr %st273 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %st273, align 1
  %add274 = add i32 %143, %partsect.0
  %conv275 = zext i32 %add274 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i483) #10
  %144 = call ptr @memset(ptr %tmp.i483, i32 255, i32 44)
  %145 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %parts.i, align 4
  %arrayidx.i487 = getelementptr %struct.anon.83, ptr %146, i32 %slot.1
  %147 = ptrtoint ptr %arrayidx.i487 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %conv275, ptr %arrayidx.i487, align 8
  %148 = load ptr, ptr %parts.i, align 4
  %size4.i488 = getelementptr %struct.anon.83, ptr %148, i32 %slot.1, i32 1
  %149 = ptrtoint ptr %size4.i488 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %conv279, ptr %size4.i488, align 8
  %call.i490 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i483, i32 noundef 44, ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef %slot.1) #10
  %150 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pp_buf, align 4
  %call7.i492 = call i32 @strlcat(ptr noundef %151, ptr noundef nonnull %tmp.i483, i32 noundef 4096) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i483) #10
  br label %put_partition.exit494

put_partition.exit494:                            ; preds = %if.then.i493, %if.end270.put_partition.exit494_crit_edge
  %arrayidx281 = getelementptr %struct.rootsector, ptr %call251, i32 0, i32 4, i32 1
  %152 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx281, align 1
  %154 = and i8 %153, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool285.not = icmp eq i8 %154, 0
  br i1 %tobool285.not, label %if.then286, label %if.end288

if.then286:                                       ; preds = %put_partition.exit494
  %155 = ptrtoint ptr %sect2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.fca.0.load382 = load i32, ptr %sect2, align 4
  %156 = inttoptr i32 %.fca.0.load382 to ptr
  %157 = getelementptr inbounds %struct.page, ptr %156, i32 0, i32 1
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %157, align 4
  %and.i.i.i495 = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i495)
  %tobool.not.i.i.i496 = icmp eq i32 %and.i.i.i495, 0
  br i1 %tobool.not.i.i.i496, label %if.then286._compound_head.exit.i.i504_crit_edge, label %if.then.i.i.i499, !prof !54

if.then286._compound_head.exit.i.i504_crit_edge:  ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i504

if.then.i.i.i499:                                 ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i497 = add i32 %159, -1
  %.pre.i498 = inttoptr i32 %sub.i.i.i497 to ptr
  br label %_compound_head.exit.i.i504

_compound_head.exit.i.i504:                       ; preds = %if.then.i.i.i499, %if.then286._compound_head.exit.i.i504_crit_edge
  %.pre-phi.i500 = phi ptr [ %156, %if.then286._compound_head.exit.i.i504_crit_edge ], [ %.pre.i498, %if.then.i.i.i499 ]
  %_refcount.i.i.i.i.i.i501 = getelementptr inbounds %struct.page, ptr %.pre-phi.i500, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i502 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i501, i32 noundef 4) #10
  %160 = ptrtoint ptr %_refcount.i.i.i.i.i.i501 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %_refcount.i.i.i.i.i.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp.i.i.i.i.i503 = icmp eq i32 %161, 0
  br i1 %cmp.i.i.i.i.i503, label %if.then.i.i.i.i.i505, label %do.end5.i.i.i.i.i509, !prof !55

if.then.i.i.i.i.i505:                             ; preds = %_compound_head.exit.i.i504
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %.pre-phi.i500, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end5.i.i.i.i.i509:                             ; preds = %_compound_head.exit.i.i504
  %call.i.i.i10.i.i.i.i.i506 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i501, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i501, i32 1, i32 3, i32 1) #10
  %162 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i501, ptr %_refcount.i.i.i.i.i.i501, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i501) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i507 = extractvalue { i32, i32 } %162, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i507)
  %cmp.i.i.i.i.i.i.i.i508 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i507, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@atari_partition, %if.then.i.i.i.i.i.i511)) #10
          to label %folio_put_testzero.exit.i.i.i512 [label %if.then.i.i.i.i.i.i511], !srcloc !60

if.then.i.i.i.i.i.i511:                           ; preds = %do.end5.i.i.i.i.i509
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i510 = zext i1 %cmp.i.i.i.i.i.i.i.i508 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i500, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i510) #10
  br label %folio_put_testzero.exit.i.i.i512

folio_put_testzero.exit.i.i.i512:                 ; preds = %if.then.i.i.i.i.i.i511, %do.end5.i.i.i.i.i509
  br i1 %cmp.i.i.i.i.i.i.i.i508, label %if.then.i4.i.i513, label %folio_put_testzero.exit.i.i.i512.while.end_crit_edge

folio_put_testzero.exit.i.i.i512.while.end_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i512
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then.i4.i.i513:                                ; preds = %folio_put_testzero.exit.i.i.i512
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %.pre-phi.i500) #10
  br label %while.end

if.end288:                                        ; preds = %put_partition.exit494
  %id291 = getelementptr %struct.rootsector, ptr %call251, i32 0, i32 4, i32 1, i32 1
  %bcmp482 = call i32 @bcmp(ptr noundef dereferenceable(3) %id291, ptr noundef nonnull dereferenceable(3) @.str.1, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp482)
  %cmp294.not = icmp eq i32 %bcmp482, 0
  br i1 %cmp294.not, label %if.end303, label %do.end299

do.end299:                                        ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #12
  %call301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  %163 = ptrtoint ptr %sect2 to i32
  call void @__asan_load4_noabort(i32 %163)
  %.fca.0.load385 = load i32, ptr %sect2, align 4
  %.fca.0.insert386 = insertvalue [1 x i32] poison, i32 %.fca.0.load385, 0
  call fastcc void @put_dev_sector([1 x i32] %.fca.0.insert386)
  br label %while.end

if.end303:                                        ; preds = %if.end288
  %st306 = getelementptr %struct.rootsector, ptr %call251, i32 0, i32 4, i32 1, i32 2
  %164 = ptrtoint ptr %st306 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %st306, align 1
  %add307 = add i32 %165, %133
  %166 = ptrtoint ptr %sect2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %.fca.0.load388 = load i32, ptr %sect2, align 4
  %167 = inttoptr i32 %.fca.0.load388 to ptr
  %168 = getelementptr inbounds %struct.page, ptr %167, i32 0, i32 1
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %168, align 4
  %and.i.i.i515 = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i515)
  %tobool.not.i.i.i516 = icmp eq i32 %and.i.i.i515, 0
  br i1 %tobool.not.i.i.i516, label %if.end303._compound_head.exit.i.i524_crit_edge, label %if.then.i.i.i519, !prof !54

if.end303._compound_head.exit.i.i524_crit_edge:   ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i524

if.then.i.i.i519:                                 ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i517 = add i32 %170, -1
  %.pre.i518 = inttoptr i32 %sub.i.i.i517 to ptr
  br label %_compound_head.exit.i.i524

_compound_head.exit.i.i524:                       ; preds = %if.then.i.i.i519, %if.end303._compound_head.exit.i.i524_crit_edge
  %.pre-phi.i520 = phi ptr [ %167, %if.end303._compound_head.exit.i.i524_crit_edge ], [ %.pre.i518, %if.then.i.i.i519 ]
  %_refcount.i.i.i.i.i.i521 = getelementptr inbounds %struct.page, ptr %.pre-phi.i520, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i522 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i521, i32 noundef 4) #10
  %171 = ptrtoint ptr %_refcount.i.i.i.i.i.i521 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %_refcount.i.i.i.i.i.i521, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp.i.i.i.i.i523 = icmp eq i32 %172, 0
  br i1 %cmp.i.i.i.i.i523, label %if.then.i.i.i.i.i525, label %do.end5.i.i.i.i.i529, !prof !55

if.then.i.i.i.i.i525:                             ; preds = %_compound_head.exit.i.i524
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %.pre-phi.i520, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end5.i.i.i.i.i529:                             ; preds = %_compound_head.exit.i.i524
  %call.i.i.i10.i.i.i.i.i526 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i521, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i521, i32 1, i32 3, i32 1) #10
  %173 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i521, ptr %_refcount.i.i.i.i.i.i521, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i521) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i527 = extractvalue { i32, i32 } %173, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i527)
  %cmp.i.i.i.i.i.i.i.i528 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i527, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@atari_partition, %if.then.i.i.i.i.i.i531)) #10
          to label %folio_put_testzero.exit.i.i.i532 [label %if.then.i.i.i.i.i.i531], !srcloc !60

if.then.i.i.i.i.i.i531:                           ; preds = %do.end5.i.i.i.i.i529
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i530 = zext i1 %cmp.i.i.i.i.i.i.i.i528 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i520, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i530) #10
  br label %folio_put_testzero.exit.i.i.i532

folio_put_testzero.exit.i.i.i532:                 ; preds = %if.then.i.i.i.i.i.i531, %do.end5.i.i.i.i.i529
  br i1 %cmp.i.i.i.i.i.i.i.i528, label %if.then.i4.i.i533, label %folio_put_testzero.exit.i.i.i532.put_dev_sector.exit534_crit_edge

folio_put_testzero.exit.i.i.i532.put_dev_sector.exit534_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i532
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_dev_sector.exit534

if.then.i4.i.i533:                                ; preds = %folio_put_testzero.exit.i.i.i532
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %.pre-phi.i520) #10
  br label %put_dev_sector.exit534

put_dev_sector.exit534:                           ; preds = %if.then.i4.i.i533, %folio_put_testzero.exit.i.i.i532.put_dev_sector.exit534_crit_edge
  %inc = add i32 %slot.1, 1
  %174 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %limit, align 4
  %cmp310 = icmp eq i32 %inc, %175
  br i1 %cmp310, label %do.end315, label %put_dev_sector.exit534.while.cond_crit_edge

put_dev_sector.exit534.while.cond_crit_edge:      ; preds = %put_dev_sector.exit534
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.end315:                                        ; preds = %put_dev_sector.exit534
  call void @__sanitizer_cov_trace_pc() #12
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %while.end

while.end:                                        ; preds = %do.end315, %do.end299, %if.then.i4.i.i513, %folio_put_testzero.exit.i.i.i512.while.end_crit_edge, %do.end266
  %slot.2 = phi i32 [ %slot.1, %do.end299 ], [ %inc, %do.end315 ], [ %slot.1, %do.end266 ], [ %slot.1, %folio_put_testzero.exit.i.i.i512.while.end_crit_edge ], [ %slot.1, %if.then.i4.i.i513 ]
  %176 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pp_buf, align 4
  %call320 = call i32 @strlcat(ptr noundef %177, ptr noundef nonnull @.str.15, i32 noundef 4096) #10
  br label %for.inc

cleanup:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %partsect.0) #14
  %178 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %178)
  %.fca.0.load459 = load i32, ptr %sect, align 4
  %.fca.0.insert460 = insertvalue [1 x i32] poison, i32 %.fca.0.load459, 0
  call fastcc void @put_dev_sector([1 x i32] %.fca.0.insert460)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect2) #10
  br label %cleanup372

for.inc:                                          ; preds = %while.end, %put_partition.exit, %for.body.for.inc_crit_edge
  %slot.3.ph = phi i32 [ %slot.0594, %for.body.for.inc_crit_edge ], [ %slot.2, %while.end ], [ %slot.0594, %put_partition.exit ]
  %part_fmt.1.ph = phi i32 [ %part_fmt.0595, %for.body.for.inc_crit_edge ], [ 1, %while.end ], [ %part_fmt.0595, %put_partition.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect2) #10
  %inc323 = add i32 %slot.3.ph, 1
  %incdec.ptr = getelementptr %struct.partition_info, ptr %pi.0596, i32 1
  %cmp227 = icmp ult ptr %incdec.ptr, %arrayidx226
  br i1 %cmp227, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %slot.0.lcssa = phi i32 [ %slot.0594, %land.rhs.for.end_crit_edge ], [ %inc323, %for.inc.for.end_crit_edge ]
  %part_fmt.0.lcssa = phi i32 [ %part_fmt.0595, %land.rhs.for.end_crit_edge ], [ %part_fmt.1.ph, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %part_fmt.0.lcssa)
  %cmp324.not = icmp eq i32 %part_fmt.0.lcssa, 1
  br i1 %cmp324.not, label %for.end.if.end368_crit_edge, label %for.end.if.then326_crit_edge

for.end.if.then326_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then326

for.end.if.end368_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then326:                                       ; preds = %for.end.if.then326_crit_edge, %if.end221.if.then326_crit_edge
  %slot.0.lcssa620 = phi i32 [ %slot.0.lcssa, %for.end.if.then326_crit_edge ], [ 1, %if.end221.if.then326_crit_edge ]
  %id328 = getelementptr inbounds %struct.rootsector, ptr %call1, i32 0, i32 1, i32 0, i32 1
  %call330 = call fastcc i32 @OK_id(ptr noundef %id328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %if.then326.if.end368_crit_edge, label %if.then332

if.then326.if.end368_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368

if.then332:                                       ; preds = %if.then326
  %icdpart = getelementptr inbounds %struct.rootsector, ptr %call1, i32 0, i32 1
  %179 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pp_buf, align 4
  %call334 = call i32 @strlcat(ptr noundef %180, ptr noundef nonnull @.str.16, i32 noundef 4096) #10
  %limit341 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %arrayidx337 = getelementptr %struct.rootsector, ptr %call1, i32 0, i32 2
  %cmp338601 = icmp ult ptr %icdpart, %arrayidx337
  br i1 %cmp338601, label %land.rhs340.lr.ph, label %if.then332.for.end364_crit_edge

if.then332.for.end364_crit_edge:                  ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end364

land.rhs340.lr.ph:                                ; preds = %if.then332
  %parts.i539 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i542 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %land.rhs340

land.rhs340:                                      ; preds = %for.inc361.land.rhs340_crit_edge, %land.rhs340.lr.ph
  %pi.1604 = phi ptr [ %icdpart, %land.rhs340.lr.ph ], [ %incdec.ptr363, %for.inc361.land.rhs340_crit_edge ]
  %slot.4602 = phi i32 [ %slot.0.lcssa620, %land.rhs340.lr.ph ], [ %inc362, %for.inc361.land.rhs340_crit_edge ]
  %181 = ptrtoint ptr %limit341 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %limit341, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.4602, i32 %182)
  %cmp342 = icmp slt i32 %slot.4602, %182
  br i1 %cmp342, label %for.body345, label %land.rhs340.for.end364_crit_edge

land.rhs340.for.end364_crit_edge:                 ; preds = %land.rhs340
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end364

for.body345:                                      ; preds = %land.rhs340
  %183 = ptrtoint ptr %pi.1604 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %pi.1604, align 4
  %185 = and i8 %184, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool349.not = icmp eq i8 %185, 0
  br i1 %tobool349.not, label %for.body345.for.inc361_crit_edge, label %land.lhs.true350

for.body345.for.inc361_crit_edge:                 ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc361

land.lhs.true350:                                 ; preds = %for.body345
  %id351 = getelementptr inbounds %struct.partition_info, ptr %pi.1604, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(3) %id351, ptr noundef nonnull dereferenceable(3) @.str.20, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i535 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i535, label %land.lhs.true350.put_partition.exit547_crit_edge, label %lor.lhs.false.i

land.lhs.true350.put_partition.exit547_crit_edge: ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_partition.exit547

lor.lhs.false.i:                                  ; preds = %land.lhs.true350
  %bcmp15.i = call i32 @bcmp(ptr noundef dereferenceable(3) %id351, ptr noundef nonnull dereferenceable(3) @.str.21, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15.i)
  %cmp2.i = icmp eq i32 %bcmp15.i, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.put_partition.exit547_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.put_partition.exit547_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_partition.exit547

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %bcmp16.i = call i32 @bcmp(ptr noundef dereferenceable(3) %id351, ptr noundef nonnull dereferenceable(3) @.str.22, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16.i)
  %cmp5.i = icmp eq i32 %bcmp16.i, 0
  br i1 %cmp5.i, label %lor.lhs.false3.i.put_partition.exit547_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.put_partition.exit547_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_partition.exit547

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %bcmp17.i = call i32 @bcmp(ptr noundef dereferenceable(3) %id351, ptr noundef nonnull dereferenceable(3) @.str.23, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp17.i)
  %cmp8.i = icmp eq i32 %bcmp17.i, 0
  br i1 %cmp8.i, label %lor.lhs.false6.i.put_partition.exit547_crit_edge, label %OK_id.exit

lor.lhs.false6.i.put_partition.exit547_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_partition.exit547

OK_id.exit:                                       ; preds = %lor.lhs.false6.i
  %bcmp18.i = call i32 @bcmp(ptr noundef dereferenceable(3) %id351, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp18.i)
  %cmp10.i.not = icmp eq i32 %bcmp18.i, 0
  br i1 %cmp10.i.not, label %OK_id.exit.put_partition.exit547_crit_edge, label %OK_id.exit.for.inc361_crit_edge

OK_id.exit.for.inc361_crit_edge:                  ; preds = %OK_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc361

OK_id.exit.put_partition.exit547_crit_edge:       ; preds = %OK_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_partition.exit547

put_partition.exit547:                            ; preds = %OK_id.exit.put_partition.exit547_crit_edge, %lor.lhs.false6.i.put_partition.exit547_crit_edge, %lor.lhs.false3.i.put_partition.exit547_crit_edge, %lor.lhs.false.i.put_partition.exit547_crit_edge, %land.lhs.true350.put_partition.exit547_crit_edge
  %st357 = getelementptr inbounds %struct.partition_info, ptr %pi.1604, i32 0, i32 2
  %186 = ptrtoint ptr %st357 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %st357, align 4
  %conv358 = zext i32 %187 to i64
  %siz359 = getelementptr inbounds %struct.partition_info, ptr %pi.1604, i32 0, i32 3
  %188 = ptrtoint ptr %siz359 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %siz359, align 4
  %conv360 = zext i32 %189 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i536) #10
  %190 = call ptr @memset(ptr %tmp.i536, i32 255, i32 44)
  %191 = ptrtoint ptr %parts.i539 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %parts.i539, align 4
  %arrayidx.i540 = getelementptr %struct.anon.83, ptr %192, i32 %slot.4602
  %193 = ptrtoint ptr %arrayidx.i540 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %conv358, ptr %arrayidx.i540, align 8
  %194 = load ptr, ptr %parts.i539, align 4
  %size4.i541 = getelementptr %struct.anon.83, ptr %194, i32 %slot.4602, i32 1
  %195 = ptrtoint ptr %size4.i541 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %conv360, ptr %size4.i541, align 8
  %call.i543 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i536, i32 noundef 44, ptr noundef nonnull @.str.19, ptr noundef %name.i542, i32 noundef %slot.4602) #10
  %196 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pp_buf, align 4
  %call7.i545 = call i32 @strlcat(ptr noundef %197, ptr noundef nonnull %tmp.i536, i32 noundef 4096) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i536) #10
  br label %for.inc361

for.inc361:                                       ; preds = %put_partition.exit547, %OK_id.exit.for.inc361_crit_edge, %for.body345.for.inc361_crit_edge
  %inc362 = add nsw i32 %slot.4602, 1
  %incdec.ptr363 = getelementptr %struct.partition_info, ptr %pi.1604, i32 1
  %cmp338 = icmp ult ptr %incdec.ptr363, %arrayidx337
  br i1 %cmp338, label %for.inc361.land.rhs340_crit_edge, label %for.inc361.for.end364_crit_edge

for.inc361.for.end364_crit_edge:                  ; preds = %for.inc361
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end364

for.inc361.land.rhs340_crit_edge:                 ; preds = %for.inc361
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs340

for.end364:                                       ; preds = %for.inc361.for.end364_crit_edge, %land.rhs340.for.end364_crit_edge, %if.then332.for.end364_crit_edge
  %198 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pp_buf, align 4
  %call366 = call i32 @strlcat(ptr noundef %199, ptr noundef nonnull @.str.15, i32 noundef 4096) #10
  br label %if.end368

if.end368:                                        ; preds = %for.end364, %if.then326.if.end368_crit_edge, %for.end.if.end368_crit_edge
  %200 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %200)
  %.fca.0.load462 = load i32, ptr %sect, align 4
  %201 = inttoptr i32 %.fca.0.load462 to ptr
  %202 = getelementptr inbounds %struct.page, ptr %201, i32 0, i32 1
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %202, align 4
  %and.i.i.i548 = and i32 %204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i548)
  %tobool.not.i.i.i549 = icmp eq i32 %and.i.i.i548, 0
  br i1 %tobool.not.i.i.i549, label %if.end368._compound_head.exit.i.i557_crit_edge, label %if.then.i.i.i552, !prof !54

if.end368._compound_head.exit.i.i557_crit_edge:   ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i557

if.then.i.i.i552:                                 ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i550 = add i32 %204, -1
  %.pre.i551 = inttoptr i32 %sub.i.i.i550 to ptr
  br label %_compound_head.exit.i.i557

_compound_head.exit.i.i557:                       ; preds = %if.then.i.i.i552, %if.end368._compound_head.exit.i.i557_crit_edge
  %.pre-phi.i553 = phi ptr [ %201, %if.end368._compound_head.exit.i.i557_crit_edge ], [ %.pre.i551, %if.then.i.i.i552 ]
  %_refcount.i.i.i.i.i.i554 = getelementptr inbounds %struct.page, ptr %.pre-phi.i553, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i555 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i554, i32 noundef 4) #10
  %205 = ptrtoint ptr %_refcount.i.i.i.i.i.i554 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %_refcount.i.i.i.i.i.i554, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp.i.i.i.i.i556 = icmp eq i32 %206, 0
  br i1 %cmp.i.i.i.i.i556, label %if.then.i.i.i.i.i558, label %do.end5.i.i.i.i.i562, !prof !55

if.then.i.i.i.i.i558:                             ; preds = %_compound_head.exit.i.i557
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %.pre-phi.i553, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end5.i.i.i.i.i562:                             ; preds = %_compound_head.exit.i.i557
  %call.i.i.i10.i.i.i.i.i559 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i554, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i554, i32 1, i32 3, i32 1) #10
  %207 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i554, ptr %_refcount.i.i.i.i.i.i554, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i554) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i.i560 = extractvalue { i32, i32 } %207, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i560)
  %cmp.i.i.i.i.i.i.i.i561 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i560, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@atari_partition, %if.then.i.i.i.i.i.i564)) #10
          to label %folio_put_testzero.exit.i.i.i565 [label %if.then.i.i.i.i.i.i564], !srcloc !60

if.then.i.i.i.i.i.i564:                           ; preds = %do.end5.i.i.i.i.i562
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i563 = zext i1 %cmp.i.i.i.i.i.i.i.i561 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i553, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i563) #10
  br label %folio_put_testzero.exit.i.i.i565

folio_put_testzero.exit.i.i.i565:                 ; preds = %if.then.i.i.i.i.i.i564, %do.end5.i.i.i.i.i562
  br i1 %cmp.i.i.i.i.i.i.i.i561, label %if.then.i4.i.i566, label %folio_put_testzero.exit.i.i.i565.put_dev_sector.exit567_crit_edge

folio_put_testzero.exit.i.i.i565.put_dev_sector.exit567_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i565
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_dev_sector.exit567

if.then.i4.i.i566:                                ; preds = %folio_put_testzero.exit.i.i.i565
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %.pre-phi.i553) #10
  br label %put_dev_sector.exit567

put_dev_sector.exit567:                           ; preds = %if.then.i4.i.i566, %folio_put_testzero.exit.i.i.i565.put_dev_sector.exit567_crit_edge
  %208 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pp_buf, align 4
  %call371 = call i32 @strlcat(ptr noundef %209, ptr noundef nonnull @.str.17, i32 noundef 4096) #10
  br label %cleanup372

cleanup372:                                       ; preds = %put_dev_sector.exit567, %cleanup, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup372_crit_edge, %if.end.cleanup372_crit_edge, %land.lhs.true.i.cleanup372_crit_edge
  %retval.2 = phi i32 [ -1, %cleanup ], [ 1, %put_dev_sector.exit567 ], [ -1, %if.end.cleanup372_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup372_crit_edge ], [ 0, %if.then.i4.i.i ], [ 0, %land.lhs.true.i.cleanup372_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #10
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_dev_sector([1 x i32] %p.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %3, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %entry._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %0, %entry._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !55

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_dev_sector, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !60

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %.pre-phi) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @OK_id(ptr nocapture noundef readonly %s) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %s, ptr noundef nonnull dereferenceable(3) @.str.20, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %bcmp15 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %s, ptr noundef nonnull dereferenceable(3) @.str.21, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15)
  %cmp2 = icmp eq i32 %bcmp15, 0
  br i1 %cmp2, label %lor.lhs.false.lor.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %bcmp16 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %s, ptr noundef nonnull dereferenceable(3) @.str.22, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16)
  %cmp5 = icmp eq i32 %bcmp16, 0
  br i1 %cmp5, label %lor.lhs.false3.lor.end_crit_edge, label %lor.lhs.false6

lor.lhs.false3.lor.end_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %bcmp17 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %s, ptr noundef nonnull dereferenceable(3) @.str.23, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp17)
  %cmp8 = icmp eq i32 %bcmp17, 0
  br i1 %cmp8, label %lor.lhs.false6.lor.end_crit_edge, label %lor.rhs

lor.lhs.false6.lor.end_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  %bcmp18 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %s, ptr noundef nonnull dereferenceable(3) @.str.24, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp18)
  %cmp10 = icmp eq i32 %bcmp18, 0
  %phi.cast = zext i1 %cmp10 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6.lor.end_crit_edge, %lor.lhs.false3.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %0 = phi i32 [ 1, %lor.lhs.false6.lor.end_crit_edge ], [ 1, %lor.lhs.false3.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/atari.c", i32 73, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/atari.c", i32 82, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/atari.c", i32 92, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/atari.c", i32 97, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @atari_partition._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @atari_partition._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/partitions/atari.c", i32 104, i32 5}
!14 = !{ptr @atari_partition._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @atari_partition._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../block/partitions/atari.c", i32 119, i32 5}
!18 = !{ptr @atari_partition._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @atari_partition._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/partitions/atari.c", i32 127, i32 5}
!22 = !{ptr @atari_partition._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @atari_partition._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/partitions/atari.c", i32 131, i32 26}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/partitions/atari.c", i32 138, i32 27}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../block/partitions/atari.c", i32 154, i32 25}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/mm.h", i32 717, i32 2}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/partitions/check.h", i32 45, i32 30}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/partitions/atari.c", i32 29, i32 21}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/partitions/atari.c", i32 29, i32 50}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../block/partitions/atari.c", i32 30, i32 14}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/partitions/atari.c", i32 30, i32 43}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../block/partitions/atari.c", i32 31, i32 14}
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
!56 = !{i64 2153157332, i64 2153157815, i64 2153157369, i64 2153157425, i64 2153157459, i64 2153157483, i64 2153157524, i64 2153157545, i64 2153157573, i64 2153157607}
!57 = !{i64 2148799812}
!58 = !{i64 2148714521, i64 2148714553, i64 2148714582, i64 2148714616, i64 2148714647, i64 2148714670}
!59 = !{i64 2148800041}
!60 = !{i64 2148312013, i64 2148312018, i64 2148312031, i64 2148312075, i64 2148312109, i64 2148312130}
