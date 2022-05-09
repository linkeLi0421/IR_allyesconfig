; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_resource_entry = type { %struct.nfp_resource_entry_mutex, %struct.nfp_resource_entry_region }
%struct.nfp_resource_entry_mutex = type { i32, i32 }
%struct.nfp_resource_entry_region = type { [8 x i8], [5 x i8], i8, i8, i8, i32, i32 }
%struct.nfp_resource = type { [9 x i8], i32, i64, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfp_resource_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp: Warning: waiting for NFP resource %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp_resource_acquire\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_resource_acquire._entry_ptr = internal global ptr @nfp_resource_acquire._entry, section ".printk_index", align 4
@nfp_resource_acquire._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 191, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: Error: resource %s timed out\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nfp_resource_acquire._entry_ptr.8 = internal global ptr @nfp_resource_acquire._entry.5, section ".printk_index", align 4
@nfp_resource_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 246, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: error waiting for resource %s: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_resource_wait\00", [46 x i8] zeroinitializer }, align 32
@nfp_resource_wait._entry_ptr = internal global ptr @nfp_resource_wait._entry, section ".printk_index", align 4
@nfp_resource_wait._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 250, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nfp: timeout waiting for resource %s\0A\00", [58 x i8] zeroinitializer }, align 32
@nfp_resource_wait._entry_ptr.13 = internal global ptr @nfp_resource_wait._entry.11, section ".printk_index", align 4
@nfp_resource_wait._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 255, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp: waiting for NFP resource %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_resource_wait._entry_ptr.17 = internal global ptr @nfp_resource_wait._entry.14, section ".printk_index", align 4
@nfp_resource_wait._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 259, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: wait for resource %s interrupted\0A\00", [57 x i8] zeroinitializer }, align 32
@nfp_resource_wait._entry_ptr.20 = internal global ptr @nfp_resource_wait._entry.18, section ".printk_index", align 4
@nfp_resource_table_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 326, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: Error: failed to reclaim resource table mutex\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_resource_table_init\00", [40 x i8] zeroinitializer }, align 32
@nfp_resource_table_init._entry_ptr = internal global ptr @nfp_resource_table_init._entry, section ".printk_index", align 4
@nfp_resource_table_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nfp: Warning: busted main resource table mutex\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_resource_table_init._entry_ptr.25 = internal global ptr @nfp_resource_table_init._entry.23, section ".printk_index", align 4
@nfp_resource_table_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 339, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nfp: Error: failed to claim resource table mutex\0A\00", [46 x i8] zeroinitializer }, align 32
@nfp_resource_table_init._entry_ptr.28 = internal global ptr @nfp_resource_table_init._entry.26, section ".printk_index", align 4
@nfp_resource_table_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 353, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nfp: Error: failed to reclaim resource %d mutex\0A\00", [47 x i8] zeroinitializer }, align 32
@nfp_resource_table_init._entry_ptr.31 = internal global ptr @nfp_resource_table_init._entry.29, section ".printk_index", align 4
@nfp_resource_table_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: Warning: busted resource %d mutex\0A\00", [56 x i8] zeroinitializer }, align 32
@nfp_resource_table_init._entry_ptr.34 = internal global ptr @nfp_resource_table_init._entry.32, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfp.res\00", [24 x i8] zeroinitializer }, align 32
@nfp_cpp_resource_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 79, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: Grabbing device lock not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_cpp_resource_find\00", [42 x i8] zeroinitializer }, align 32
@nfp_cpp_resource_find._entry_ptr = internal global ptr @nfp_cpp_resource_find._entry, section ".printk_index", align 4
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 187, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 191, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 245, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 250, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 255, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 258, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 326, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 330, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 339, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 351, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 357, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 78, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [61 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 79, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @nfp_cpp_resource_find._entry, ptr @nfp_cpp_resource_find._entry_ptr, ptr @nfp_resource_acquire._entry, ptr @nfp_resource_acquire._entry.5, ptr @nfp_resource_acquire._entry_ptr, ptr @nfp_resource_acquire._entry_ptr.8, ptr @nfp_resource_table_init._entry, ptr @nfp_resource_table_init._entry.23, ptr @nfp_resource_table_init._entry.26, ptr @nfp_resource_table_init._entry.29, ptr @nfp_resource_table_init._entry.32, ptr @nfp_resource_table_init._entry_ptr, ptr @nfp_resource_table_init._entry_ptr.25, ptr @nfp_resource_table_init._entry_ptr.28, ptr @nfp_resource_table_init._entry_ptr.31, ptr @nfp_resource_table_init._entry_ptr.34, ptr @nfp_resource_wait._entry, ptr @nfp_resource_wait._entry.11, ptr @nfp_resource_wait._entry.14, ptr @nfp_resource_wait._entry.18, ptr @nfp_resource_wait._entry_ptr, ptr @nfp_resource_wait._entry_ptr.13, ptr @nfp_resource_wait._entry_ptr.17, ptr @nfp_resource_wait._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_acquire._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_wait._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_wait._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_wait._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_table_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_table_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_table_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_table_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_resource_table_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_resource_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_resource_acquire(ptr noundef %cpp, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %c.i.i.i.i = alloca i8, align 1
  %entry1.i.i = alloca %struct.nfp_resource_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @strncpy(ptr noundef nonnull %call7.i.i, ptr noundef %name, i32 noundef 8)
  %call5 = tail call ptr @nfp_cpp_mutex_alloc(ptr noundef %cpp, i32 noundef 7, i64 noundef 554050781184, i32 noundef 0) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %add = add i32 %0, 1500
  %3 = getelementptr inbounds %struct.nfp_resource_entry_mutex, ptr %entry1.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nfp_resource_entry, ptr %entry1.i.i, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.nfp_resource_entry, ptr %entry1.i.i, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.nfp_resource_entry, ptr %entry1.i.i, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.nfp_resource_entry, ptr %entry1.i.i, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.nfp_resource_entry, ptr %entry1.i.i, i32 0, i32 1, i32 6
  %mutex17.i.i = getelementptr inbounds %struct.nfp_resource, ptr %call7.i.i, i32 0, i32 4
  %cpp_id28.i.i = getelementptr inbounds %struct.nfp_resource, ptr %call7.i.i, i32 0, i32 1
  %addr32.i.i = getelementptr inbounds %struct.nfp_resource, ptr %call7.i.i, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.nfp_resource, ptr %call7.i.i, i32 0, i32 3
  %add1.neg = sub i32 -6000, %1
  br label %for.cond

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

for.cond:                                         ; preds = %if.end24.for.cond_crit_edge, %for.cond.preheader
  %warn_at.0 = phi i32 [ %warn_at.1, %if.end24.for.cond_crit_edge ], [ %add, %for.cond.preheader ]
  %call.i = call i32 @nfp_cpp_mutex_lock(ptr noundef nonnull %call5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.cond.err_free_crit_edge

for.cond.err_free_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end.i:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entry1.i.i) #10
  %9 = call ptr @memset(ptr %entry1.i.i, i32 255, i32 32)
  %call.i.i = call i32 @strcmp(ptr noundef nonnull %call7.i.i, ptr noundef nonnull dereferenceable(8) @.str.35) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call2.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36) #15
  br label %nfp_resource_try_acquire.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %call.i.i.i = call i32 @crc32_be(i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 8) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i.i.i.i) #10
  %12 = ptrtoint ptr %c.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %c.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @crc32_be(i32 noundef %call.i.i.i, ptr noundef nonnull %c.i.i.i.i, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i.i.i.i) #10
  %neg.i.i.i.i = xor i32 %call.i.i.i.i, -1
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end10.i.i
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %for.cond.i.i.nfp_resource_try_acquire.exit.thread_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.nfp_resource_try_acquire.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfp_resource_try_acquire.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.054.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl nuw nsw i32 %i.054.i.i, 5
  %conv.i.i = zext i32 %mul.i.i to i64
  %add.i.i = or i64 %conv.i.i, 554050781184
  %call6.i.i = call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef 117441280, i64 noundef %add.i.i, ptr noundef nonnull %entry1.i.i, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call6.i.i)
  %cmp7.not.i.i = icmp eq i32 %call6.i.i, 32
  br i1 %cmp7.not.i.i, label %if.end10.i.i, label %for.body.i.i.nfp_resource_try_acquire.exit.thread_crit_edge

for.body.i.i.nfp_resource_try_acquire.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfp_resource_try_acquire.exit.thread

if.end10.i.i:                                     ; preds = %for.body.i.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %neg.i.i.i.i)
  %cmp12.not.i.i = icmp eq i32 %14, %neg.i.i.i.i
  br i1 %cmp12.not.i.i, label %if.end4.i, label %for.cond.i.i

nfp_resource_try_acquire.exit.thread:             ; preds = %for.body.i.i.nfp_resource_try_acquire.exit.thread_crit_edge, %for.cond.i.i.nfp_resource_try_acquire.exit.thread_crit_edge, %do.end.i.i
  %retval.2.i.ph.i = phi i32 [ -95, %do.end.i.i ], [ -2, %for.cond.i.i.nfp_resource_try_acquire.exit.thread_crit_edge ], [ -5, %for.body.i.i.nfp_resource_try_acquire.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry1.i.i) #10
  %call11.i62 = call i32 @nfp_cpp_mutex_unlock(ptr noundef nonnull %call5) #10
  br label %err_free

if.end4.i:                                        ; preds = %if.end10.i.i
  %call16.i.i = call ptr @nfp_cpp_mutex_alloc(ptr noundef %cpp, i32 noundef 7, i64 noundef %add.i.i, i32 noundef %neg.i.i.i.i) #10
  %15 = ptrtoint ptr %mutex17.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16.i.i, ptr %mutex17.i.i, align 8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %6, align 1
  %18 = and i8 %17, 127
  %and.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 24
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 2
  %conv20.i.i = zext i8 %20 to i32
  %shl22.i.i = shl nuw nsw i32 %conv20.i.i, 16
  %or.i.i = or i32 %shl.i.i, %shl22.i.i
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %4, align 1
  %conv24.i.i = zext i8 %22 to i32
  %shl26.i.i = shl nuw nsw i32 %conv24.i.i, 8
  %or27.i.i = or i32 %or.i.i, %shl26.i.i
  %23 = ptrtoint ptr %cpp_id28.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or27.i.i, ptr %cpp_id28.i.i, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %conv30.i.i = zext i32 %25 to i64
  %shl31.i.i = shl nuw nsw i64 %conv30.i.i, 8
  %26 = ptrtoint ptr %addr32.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl31.i.i, ptr %addr32.i.i, align 8
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %8, align 4
  %conv34.i.i = zext i32 %28 to i64
  %shl35.i.i = shl nuw nsw i64 %conv34.i.i, 8
  %29 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shl35.i.i, ptr %size.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry1.i.i) #10
  %call5.i = call i32 @nfp_cpp_mutex_trylock(ptr noundef %call16.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %nfp_resource_try_acquire.exit.thread56, label %nfp_resource_try_acquire.exit

nfp_resource_try_acquire.exit.thread56:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i58 = call i32 @nfp_cpp_mutex_unlock(ptr noundef nonnull %call5) #10
  call void @nfp_cpp_mutex_free(ptr noundef nonnull %call5) #10
  br label %cleanup

nfp_resource_try_acquire.exit:                    ; preds = %if.end4.i
  %30 = ptrtoint ptr %mutex17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mutex17.i.i, align 8
  call void @nfp_cpp_mutex_free(ptr noundef %31) #10
  %call11.i = call i32 @nfp_cpp_mutex_unlock(ptr noundef nonnull %call5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call5.i)
  %cond = icmp eq i32 %call5.i, -16
  br i1 %cond, label %if.end15, label %nfp_resource_try_acquire.exit.err_free_crit_edge

nfp_resource_try_acquire.exit.err_free_crit_edge: ; preds = %nfp_resource_try_acquire.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end15:                                         ; preds = %nfp_resource_try_acquire.exit
  %call16 = call i32 @msleep_interruptible(i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.err_free_crit_edge

if.end15.err_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end19:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %32, %warn_at.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp20 = icmp sgt i32 %sub, -1
  br i1 %cmp20, label %if.then21, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add22 = add i32 %33, 500
  %call23 = call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent = getelementptr inbounds %struct.device, ptr %call23, i32 0, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef %name) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %warn_at.1 = phi i32 [ %add22, %if.then21 ], [ %warn_at.0, %if.end19.if.end24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub25 = add i32 %add1.neg, %36
  %cmp26 = icmp sgt i32 %sub25, -1
  br i1 %cmp26, label %do.end30, label %if.end24.for.cond_crit_edge

if.end24.for.cond_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent32 = getelementptr inbounds %struct.device, ptr %call31, i32 0, i32 1
  %37 = ptrtoint ptr %parent32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent32, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef %name) #15
  br label %err_free

err_free:                                         ; preds = %do.end30, %if.end15.err_free_crit_edge, %nfp_resource_try_acquire.exit.err_free_crit_edge, %nfp_resource_try_acquire.exit.thread, %for.cond.err_free_crit_edge
  %err.0 = phi i32 [ -16, %do.end30 ], [ %retval.2.i.ph.i, %nfp_resource_try_acquire.exit.thread ], [ -22, %for.cond.err_free_crit_edge ], [ -512, %if.end15.err_free_crit_edge ], [ %call5.i, %nfp_resource_try_acquire.exit.err_free_crit_edge ]
  call void @nfp_cpp_mutex_free(ptr noundef nonnull %call5) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %39 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %nfp_resource_try_acquire.exit.thread56, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %39, %err_free ], [ %call7.i.i, %nfp_resource_try_acquire.exit.thread56 ], [ inttoptr (i32 -12 to ptr), %if.then7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_mutex_alloc(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_mutex_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_resource_release(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nfp_resource, ptr %res, i32 0, i32 4
  %0 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mutex, align 8
  %call = tail call i32 @nfp_cpp_mutex_unlock(ptr noundef %1) #10
  %2 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mutex, align 8
  tail call void @nfp_cpp_mutex_free(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %res) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_resource_wait(ptr noundef %cpp, ptr noundef %name, i32 noundef %secs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1500
  %1 = load volatile i32, ptr @jiffies, align 128
  %mul.neg = mul i32 %secs, -100
  %add1.neg = sub i32 %mul.neg, %1
  br label %while.cond

while.cond:                                       ; preds = %if.end26.while.cond_crit_edge, %entry
  %warn_at.0 = phi i32 [ %add, %entry ], [ %warn_at.1, %if.end26.while.cond_crit_edge ]
  %call = tail call ptr @nfp_resource_acquire(ptr noundef %cpp, ptr noundef %name)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %mutex.i = getelementptr inbounds %struct.nfp_resource, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mutex.i, align 8
  %call.i = tail call i32 @nfp_cpp_mutex_unlock(ptr noundef %3) #10
  %4 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mutex.i, align 8
  tail call void @nfp_cpp_mutex_free(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %while.cond
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call to i32
  %call5 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %6) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add1.neg, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent15 = getelementptr inbounds %struct.device, ptr %call14, i32 0, i32 1
  %10 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef %name) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub17 = sub i32 %12, %warn_at.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub17)
  %cmp18 = icmp sgt i32 %sub17, -1
  br i1 %cmp18, label %if.then19, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add20 = add i32 %13, 500
  %call24 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent25 = getelementptr inbounds %struct.device, ptr %call24, i32 0, i32 1
  %14 = ptrtoint ptr %parent25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent25, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef %name) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end16.if.end26_crit_edge
  %warn_at.1 = phi i32 [ %add20, %if.then19 ], [ %warn_at.0, %if.end16.if.end26_crit_edge ]
  %call27 = tail call i32 @msleep_interruptible(i32 noundef 10) #10
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.end26.while.cond_crit_edge, label %do.end31

if.end26.while.cond_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent33 = getelementptr inbounds %struct.device, ptr %call32, i32 0, i32 1
  %16 = ptrtoint ptr %parent33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef %name) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end13, %do.end, %if.then
  %retval.0 = phi i32 [ %6, %do.end ], [ -110, %do.end13 ], [ -512, %do.end31 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_resource_cpp_id(ptr nocapture noundef readonly %res) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpp_id = getelementptr inbounds %struct.nfp_resource, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpp_id, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_resource_name(ptr noundef readnone returned %res) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %res
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @nfp_resource_address(ptr nocapture noundef readonly %res) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.nfp_resource, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %addr, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @nfp_resource_size(ptr nocapture noundef readonly %res) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nfp_resource, ptr %res, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size, align 8
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_resource_table_init(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfp_cpp_mutex_reclaim(ptr noundef %cpp, i32 noundef 7, i64 noundef 554050781184) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #15
  br label %cleanup42

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %do.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent7 = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 1
  %2 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent7, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.24) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end.if.end8_crit_edge
  %call9 = tail call ptr @nfp_cpp_mutex_alloc(ptr noundef %cpp, i32 noundef 7, i64 noundef 554050781184, i32 noundef 0) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup42_crit_edge, label %if.end12

if.end8.cleanup42_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup42

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @nfp_cpp_mutex_lock(ptr noundef nonnull %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.for.body_crit_edge, label %do.end18

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent20 = getelementptr inbounds %struct.device, ptr %call19, i32 0, i32 1
  %4 = ptrtoint ptr %parent20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27) #15
  tail call void @nfp_cpp_mutex_free(ptr noundef nonnull %call9) #10
  br label %cleanup42

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end12.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.067, 5
  %conv = zext i32 %mul to i64
  %add = or i64 %conv, 554050781184
  %call23 = tail call i32 @nfp_cpp_mutex_reclaim(ptr noundef %cpp, i32 noundef 7, i64 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %cleanup, label %if.end32

if.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool33.not = icmp eq i32 %call23, 0
  br i1 %tobool33.not, label %if.end32.for.inc_crit_edge, label %do.end37

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent39 = getelementptr inbounds %struct.device, ptr %call38, i32 0, i32 1
  %6 = ptrtoint ptr %parent39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent39, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %i.067) #15
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #10
  %parent31 = getelementptr inbounds %struct.device, ptr %call30, i32 0, i32 1
  %8 = ptrtoint ptr %parent31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %i.067) #15
  br label %err_unlock

for.inc:                                          ; preds = %do.end37, %if.end32.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.err_unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.err_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unlock

err_unlock:                                       ; preds = %for.inc.err_unlock_crit_edge, %cleanup
  %err.0 = phi i32 [ %call23, %cleanup ], [ 0, %for.inc.err_unlock_crit_edge ]
  %call41 = tail call i32 @nfp_cpp_mutex_unlock(ptr noundef nonnull %call9) #10
  tail call void @nfp_cpp_mutex_free(ptr noundef nonnull %call9) #10
  br label %cleanup42

cleanup42:                                        ; preds = %err_unlock, %do.end18, %if.end8.cleanup42_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end18 ], [ %err.0, %err_unlock ], [ -12, %if.end8.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_mutex_reclaim(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 187, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_resource_acquire._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_resource_acquire._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 191, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfp_resource_acquire._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfp_resource_acquire._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 245, i32 4}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nfp_resource_wait._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfp_resource_wait._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 250, i32 4}
!20 = !{ptr @nfp_resource_wait._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_resource_wait._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 255, i32 4}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfp_resource_wait._entry.14, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfp_resource_wait._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 258, i32 4}
!29 = !{ptr @nfp_resource_wait._entry.18, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfp_resource_wait._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 326, i32 3}
!33 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nfp_resource_table_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nfp_resource_table_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 330, i32 3}
!38 = !{ptr @nfp_resource_table_init._entry.23, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfp_resource_table_init._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 339, i32 3}
!42 = !{ptr @nfp_resource_table_init._entry.26, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfp_resource_table_init._entry_ptr.28, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 351, i32 4}
!46 = !{ptr @nfp_resource_table_init._entry.29, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_resource_table_init._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 357, i32 4}
!50 = !{ptr @nfp_resource_table_init._entry.32, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfp_resource_table_init._entry_ptr.34, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 78, i32 25}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_resource.c", i32 79, i32 3}
!56 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nfp_cpp_resource_find._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @nfp_cpp_resource_find._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
