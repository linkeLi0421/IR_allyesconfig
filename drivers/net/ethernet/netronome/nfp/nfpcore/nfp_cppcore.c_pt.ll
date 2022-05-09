; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfp_cpp = type { %struct.device, ptr, i32, i16, [6 x i8], ptr, %struct.list_head, %struct.rwlock_t, %struct.wait_queue_head, [16 x i32], i32, %struct.mutex, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nfp_cpp_area_cache = type { %struct.list_head, i32, i64, i32, ptr }
%struct.nfp_cpp_area = type { ptr, %struct.kref, %struct.atomic_t, %struct.mutex, i64, i32, %struct.nfp_cpp_resource, ptr }
%struct.nfp_cpp_resource = type { %struct.list_head, ptr, i32, i64, i64 }
%struct.nfp_cpp_operations = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nfp_cpp_explicit = type { ptr, %struct.nfp_cpp_explicit_command }
%struct.nfp_cpp_explicit_command = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c\00", [39 x i8] zeroinitializer }, align 32
@nfp_cpp_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Dangling area: %d:%d:%d:0x%0llx-0x%0llx%s%s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfp_cpp_free\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_cpp_free._entry_ptr = internal global ptr @nfp_cpp_free._entry, section ".printk_index", align 4
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(reserved)\00", [21 x i8] zeroinitializer }, align 32
@nfp_cpp_area_alloc_with_name.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&area->mutex\00", [19 x i8] zeroinitializer }, align 32
@nfp_cpp_area_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 406, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: Warning: freeing busy area\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_cpp_area_free\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_cpp_area_free._entry_ptr = internal global ptr @nfp_cpp_area_free._entry, section ".printk_index", align 4
@nfp_cpp_from_operations.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cpp->resource_lock\00", [44 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cpp->waitq\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&nfp_cpp_resource_lock_key\00", [37 x i8] zeroinitializer }, align 32
@nfp_cpp_resource_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nfp_cpp_from_operations.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cpp->area_cache_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpp\00", [28 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 1217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFP interface initialization failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_cpp_from_operations\00", [40 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations._entry_ptr = internal global ptr @nfp_cpp_from_operations._entry, section ".printk_index", align 4
@nfp_cpp_from_operations._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 1224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFP model detection failed\0A\00", [36 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations._entry_ptr.23 = internal global ptr @nfp_cpp_from_operations._entry.21, section ".printk_index", align 4
@nfp_cpp_from_operations._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str, i32 1235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't read CPP mapping from device\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations._entry_ptr.26 = internal global ptr @nfp_cpp_from_operations._entry.24, section ".printk_index", align 4
@nfp_cpp_from_operations._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str, i32 1247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't calculate MU locality bit offset\0A\00", [56 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations._entry_ptr.29 = internal global ptr @nfp_cpp_from_operations._entry.27, section ".printk_index", align 4
@nfp_cpp_from_operations._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str, i32 1252, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Model: 0x%08x, SN: %pM, Ifc: 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_cpp_from_operations._entry_ptr.33 = internal global ptr @nfp_cpp_from_operations._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__nfp_cpp_area_acquire._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 432, ptr @.str.11, ptr @.str.4 }, align 1
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: Warning: area wait failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__nfp_cpp_area_acquire\00", [41 x i8] zeroinitializer }, align 32
@__nfp_cpp_area_acquire._entry_ptr = internal global ptr @__nfp_cpp_area_acquire._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 176, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 184, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 300, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 320, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 406, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1193, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1194, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1195, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"nfp_cpp_resource_lock_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1143, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1198, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1199, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1216, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1224, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1234, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1247, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1251, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [60 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 432, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__nfp_cpp_area_acquire._entry, ptr @__nfp_cpp_area_acquire._entry_ptr, ptr @nfp_cpp_area_free._entry, ptr @nfp_cpp_area_free._entry_ptr, ptr @nfp_cpp_free._entry, ptr @nfp_cpp_free._entry_ptr, ptr @nfp_cpp_from_operations._entry, ptr @nfp_cpp_from_operations._entry.21, ptr @nfp_cpp_from_operations._entry.24, ptr @nfp_cpp_from_operations._entry.27, ptr @nfp_cpp_from_operations._entry.30, ptr @nfp_cpp_from_operations._entry_ptr, ptr @nfp_cpp_from_operations._entry_ptr.23, ptr @nfp_cpp_from_operations._entry_ptr.26, ptr @nfp_cpp_from_operations._entry_ptr.29, ptr @nfp_cpp_from_operations._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nfp_cpp_area_alloc_with_name.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nfp_cpp_from_operations.__key, ptr @.str.12, ptr @nfp_cpp_from_operations.__key.13, ptr @.str.14, ptr @.str.15, ptr @nfp_cpp_resource_lock_key, ptr @nfp_cpp_from_operations.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_area_alloc_with_name.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_area_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_resource_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_from_operations._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_cpp_free(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %area_cache_list = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12
  %0 = ptrtoint ptr %area_cache_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area_cache_list, align 4
  %cmp.not137 = icmp eq ptr %1, %area_cache_list
  br i1 %cmp.not137, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %nfp_cpp_area_free.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cache.0138 = phi ptr [ %ctmp.0140, %nfp_cpp_area_free.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %cache.0138 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ctmp.0140 = load ptr, ptr %cache.0138, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cache.0138) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cache.0138, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %cache.0138 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache.0138, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %cache.0138 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %cache.0138, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cache.0138, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %id = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.0138, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %area = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.0138, i32 0, i32 4
  %13 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %area, align 4
  tail call void @nfp_cpp_area_release(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %area9 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.0138, i32 0, i32 4
  %15 = ptrtoint ptr %area9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %area9, align 4
  %refcount.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %16, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.nfp_cpp_area_free.exit_crit_edge, label %do.end.i

if.end.nfp_cpp_area_free.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_free.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_free.exit

nfp_cpp_area_free.exit:                           ; preds = %do.end.i, %if.end.nfp_cpp_area_free.exit_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef %16) #12
  tail call void @kfree(ptr noundef %cache.0138) #12
  %cmp.not = icmp eq ptr %ctmp.0140, %area_cache_list
  br i1 %cmp.not, label %nfp_cpp_area_free.exit.for.end_crit_edge, label %nfp_cpp_area_free.exit.for.body_crit_edge

nfp_cpp_area_free.exit.for.body_crit_edge:        ; preds = %nfp_cpp_area_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

nfp_cpp_area_free.exit.for.end_crit_edge:         ; preds = %nfp_cpp_area_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %nfp_cpp_area_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %resource_list = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 6
  %23 = ptrtoint ptr %resource_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %resource_list, align 4
  %cmp.i.not = icmp eq ptr %24, %resource_list
  br i1 %cmp.i.not, label %for.end.if.end32_crit_edge, label %do.end, !prof !73

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %for.end.if.end32_crit_edge
  %25 = ptrtoint ptr %resource_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource_list, align 4
  %cmp52.not142 = icmp eq ptr %26, %resource_list
  br i1 %cmp52.not142, label %if.end32.for.end88_crit_edge, label %for.body55.lr.ph

if.end32.for.end88_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.body55.lr.ph:                                 ; preds = %if.end32
  %parent = getelementptr inbounds %struct.device, ptr %cpp, i32 0, i32 1
  br label %for.body55

for.body55:                                       ; preds = %__release_cpp_area.exit.for.body55_crit_edge, %for.body55.lr.ph
  %res.0143 = phi ptr [ %26, %for.body55.lr.ph ], [ %rtmp.0145, %__release_cpp_area.exit.for.body55_crit_edge ]
  %27 = ptrtoint ptr %res.0143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %rtmp.0145 = load ptr, ptr %res.0143, align 8
  %add.ptr59 = getelementptr i8, ptr %res.0143, i32 -120
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  %cpp_id = getelementptr inbounds %struct.nfp_cpp_resource, ptr %res.0143, i32 0, i32 2
  %30 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpp_id, align 4
  %shr.i = lshr i32 %31, 24
  %conv.i130 = and i32 %shr.i, 31
  %shr.i131 = lshr i32 %31, 8
  %conv66 = and i32 %shr.i131, 255
  %shr.i133 = lshr i32 %31, 16
  %conv69 = and i32 %shr.i133, 255
  %start = getelementptr inbounds %struct.nfp_cpp_resource, ptr %res.0143, i32 0, i32 3
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start, align 8
  %end = getelementptr inbounds %struct.nfp_cpp_resource, ptr %res.0143, i32 0, i32 4
  %34 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %end, align 8
  %name = getelementptr inbounds %struct.nfp_cpp_resource, ptr %res.0143, i32 0, i32 1
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 8
  %tobool70.not = icmp eq ptr %37, null
  %cond = select i1 %tobool70.not, ptr @.str.6, ptr @.str.5
  %spec.select = select i1 %tobool70.not, ptr @.str.6, ptr %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %conv.i130, i32 noundef %conv66, i32 noundef %conv69, i64 noundef %33, i64 noundef %35, ptr noundef nonnull %cond, ptr noundef nonnull %spec.select) #15
  %38 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr59, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %op, align 8
  %area_release = getelementptr inbounds %struct.nfp_cpp_operations, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %area_release to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %area_release, align 4
  %tobool76.not = icmp eq ptr %43, null
  br i1 %tobool76.not, label %for.body55.if.end81_crit_edge, label %if.then77

for.body55.if.end81_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then77:                                        ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %43(ptr noundef %add.ptr59) #12
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %for.body55.if.end81_crit_edge
  %44 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr59, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %op.i, align 8
  %area_cleanup.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %area_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %area_cleanup.i, align 4
  %tobool.not.i135 = icmp eq ptr %49, null
  br i1 %tobool.not.i135, label %if.end81.if.end.i_crit_edge, label %if.then.i

if.end81.if.end.i_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %49(ptr noundef %add.ptr59) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end81.if.end.i_crit_edge
  %resource_lock.i = getelementptr inbounds %struct.nfp_cpp, ptr %45, i32 0, i32 7
  tail call void @_raw_write_lock(ptr noundef %resource_lock.i) #12
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %res.0143) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.__release_cpp_area.exit_crit_edge

if.end.i.__release_cpp_area.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__release_cpp_area.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr i8, ptr %res.0143, i32 4
  %50 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i.i, align 4
  %52 = ptrtoint ptr %res.0143 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %res.0143, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %__release_cpp_area.exit

__release_cpp_area.exit:                          ; preds = %if.end.i.i.i.i, %if.end.i.__release_cpp_area.exit_crit_edge
  %56 = ptrtoint ptr %res.0143 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %res.0143, ptr %res.0143, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %res.0143, i32 4
  %57 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %res.0143, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %resource_lock.i) #12
  tail call void @kfree(ptr noundef %add.ptr59) #12
  %cmp52.not = icmp eq ptr %rtmp.0145, %resource_list
  br i1 %cmp52.not, label %__release_cpp_area.exit.for.end88_crit_edge, label %__release_cpp_area.exit.for.body55_crit_edge

__release_cpp_area.exit.for.body55_crit_edge:     ; preds = %__release_cpp_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body55

__release_cpp_area.exit.for.end88_crit_edge:      ; preds = %__release_cpp_area.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end88

for.end88:                                        ; preds = %__release_cpp_area.exit.for.end88_crit_edge, %if.end32.for.end88_crit_edge
  %op89 = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 5
  %58 = ptrtoint ptr %op89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %op89, align 8
  %free = getelementptr inbounds %struct.nfp_cpp_operations, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %free, align 4
  %tobool90.not = icmp eq ptr %61, null
  br i1 %tobool90.not, label %for.end88.if.end94_crit_edge, label %if.then91

for.end88.if.end94_crit_edge:                     ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then91:                                        ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %61(ptr noundef %cpp) #12
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %for.end88.if.end94_crit_edge
  tail call void @device_unregister(ptr noundef %cpp) #12
  tail call void @kfree(ptr noundef %cpp) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_cpp_area_release(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %refcount = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !75
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 8
  %area_release = getelementptr inbounds %struct.nfp_cpp_operations, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %area_release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area_release, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then1

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %6(ptr noundef %area) #12
  %7 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %area, align 8
  %waitq = getelementptr inbounds %struct.nfp_cpp, ptr %8, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  tail call fastcc void @nfp_cpp_area_put(ptr noundef %area)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_cpp_area_free(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #12
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area, align 8
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef %area)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_cpp_model(ptr nocapture noundef readonly %cpp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 2
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @nfp_cpp_interface(ptr nocapture noundef readonly %cpp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 3
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %interface, align 8
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nfp_cpp_serial(ptr noundef %cpp, ptr nocapture noundef writeonly %serial) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %serial1 = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 4
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %serial1, ptr %serial, align 4
  ret i32 6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_cpp_mu_locality_lsb(ptr nocapture noundef readonly %cpp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mu_locality_lsb = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 10
  %0 = ptrtoint ptr %mu_locality_lsb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mu_locality_lsb, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_area_alloc_with_name(ptr noundef %cpp, i32 noundef %dest, ptr noundef readonly %name, i64 noundef %address, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %dest.addr = alloca i32, align 4
  %tmp64 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp64) #12
  %1 = ptrtoint ptr %tmp64 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %address, ptr %tmp64, align 8
  %imb_cat_table = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 9
  %call = call i32 @nfp_target_cpp(i32 noundef %dest, i64 noundef %address, ptr noundef nonnull %dest.addr, ptr noundef nonnull %tmp64, ptr noundef %imb_cat_table) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tmp64 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tmp64, align 8
  %tobool.not = icmp eq ptr %name, null
  %spec.store.select = select i1 %tobool.not, ptr @.str.7, ptr %name
  %call3 = call i32 @strlen(ptr noundef %spec.store.select) #16
  %add = add i32 %call3, 1
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 5
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add4 = add i32 %7, 160
  %add5 = add i32 %add4, %add
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add5, i32 noundef 3520) #17
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup39_crit_edge, label %if.end9

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cpp, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 160
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %12
  %resource = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 6
  %name14 = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr13, ptr %name14, align 128
  %14 = call ptr @memcpy(ptr %add.ptr13, ptr %spec.store.select, i32 %add)
  %15 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dest.addr, align 4
  %cpp_id = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cpp_id, align 4
  %start = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %3, ptr %start, align 8
  %conv = zext i32 %size to i64
  %add21 = add nsw i64 %conv, -1
  %sub = add i64 %add21, %3
  %end = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub, ptr %end, align 16
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resource, ptr %resource, align 8
  %prev.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resource, ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  %22 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %refcount, align 8
  %kref = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %23 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %kref, align 4
  %mutex = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @nfp_cpp_area_alloc_with_name.__key) #12
  %24 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op, align 8
  %area_init = getelementptr inbounds %struct.nfp_cpp_operations, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %area_init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %area_init, align 4
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.end9.if.end35_crit_edge, label %if.then26

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then26:                                        ; preds = %if.end9
  %28 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dest.addr, align 4
  %call30 = call i32 %27(ptr noundef nonnull %call9.i.i, i32 noundef %29, i64 noundef %3, i32 noundef %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.then26.if.end35_crit_edge

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup39

if.end35:                                         ; preds = %if.then26.if.end35_crit_edge, %if.end9.if.end35_crit_edge
  %resource_lock = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 7
  call void @_raw_write_lock(ptr noundef %resource_lock) #12
  %resource_list = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 6
  %30 = ptrtoint ptr %resource_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %pos.021.i = load ptr, ptr %resource_list, align 4
  %cmp.i.not22.i = icmp eq ptr %pos.021.i, %resource_list
  br i1 %cmp.i.not22.i, label %if.end35.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end35.for.end.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end35
  %31 = ptrtoint ptr %cpp_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpp_id, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.023.i = phi ptr [ %pos.021.i, %for.body.lr.ph.i ], [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ]
  %cpp_id.i = getelementptr inbounds %struct.nfp_cpp_resource, ptr %pos.023.i, i32 0, i32 2
  %33 = ptrtoint ptr %cpp_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpp_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp.i = icmp ugt i32 %34, %32
  br i1 %cmp.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp5.i = icmp eq i32 %34, %32
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %start.i = getelementptr inbounds %struct.nfp_cpp_resource, ptr %pos.023.i, i32 0, i32 3
  %35 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start.i, align 8
  %37 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp7.i = icmp ugt i64 %36, %38
  br i1 %cmp7.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %pos.023.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %pos.0.i = load ptr, ptr %pos.023.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %resource_list
  br i1 %cmp.i.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end35.for.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %resource_list, %if.end35.for.end.i_crit_edge ], [ %resource_list, %for.inc.i.for.end.i_crit_edge ], [ %pos.023.i, %for.body.i.for.end.i_crit_edge ], [ %pos.023.i, %land.lhs.true.i.for.end.i_crit_edge ]
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %resource, ptr noundef %41, ptr noundef %pos.0.lcssa.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i77, label %for.end.i.__resource_add.exit_crit_edge

for.end.i.__resource_add.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__resource_add.exit

if.end.i.i.i77:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %resource, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pos.0.lcssa.i, ptr %resource, align 8
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %resource, ptr %41, align 4
  br label %__resource_add.exit

__resource_add.exit:                              ; preds = %if.end.i.i.i77, %for.end.i.__resource_add.exit_crit_edge
  call void @_raw_write_unlock(ptr noundef %resource_lock) #12
  %offset = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %3, ptr %offset, align 8
  %size38 = getelementptr inbounds %struct.nfp_cpp_area, ptr %call9.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %size38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %size, ptr %size38, align 16
  br label %cleanup39

cleanup39:                                        ; preds = %__resource_add.exit, %if.then33, %if.end.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.1 = phi ptr [ %call9.i.i, %__resource_add.exit ], [ null, %entry.cleanup39_crit_edge ], [ null, %if.end.cleanup39_crit_edge ], [ null, %if.then33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp64) #12
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_target_cpp(i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_area_alloc(ptr noundef %cpp, i32 noundef %dest, i64 noundef %address, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_alloc_with_name(ptr noundef %cpp, i32 noundef %dest, ptr noundef null, i64 noundef %address, i32 noundef %size)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_area_alloc_acquire(ptr noundef %cpp, ptr noundef %name, i32 noundef %dest, i64 noundef %address, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_alloc_with_name(ptr noundef %cpp, i32 noundef %dest, ptr noundef %name, i64 noundef %address, i32 noundef %size)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfp_cpp_area_acquire(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %call, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then3.nfp_cpp_area_free.exit_crit_edge, label %do.end.i

if.then3.nfp_cpp_area_free.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_free.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_free.exit

nfp_cpp_area_free.exit:                           ; preds = %do.end.i, %if.then3.nfp_cpp_area_free.exit_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_cpp_area_free.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %nfp_cpp_area_free.exit ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_acquire(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %refcount.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !78
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %entry.__nfp_cpp_area_acquire.exit_crit_edge, label %if.end.i

entry.__nfp_cpp_area_acquire.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nfp_cpp_area_acquire.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op.i, align 8
  %area_acquire.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %area_acquire.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area_acquire.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i.__nfp_cpp_area_acquire.exit_crit_edge, label %if.end2.i

if.end.i.__nfp_cpp_area_acquire.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nfp_cpp_area_acquire.exit

if.end2.i:                                        ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 428) #12
  %7 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %area, align 8
  %op.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %op.i.i, align 8
  %area_acquire.i.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %area_acquire.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %area_acquire.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %area) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, -11
  br i1 %cmp.i.not.i, label %if.then7.i, label %if.end2.i.if.end23.i_crit_edge

if.end2.i.if.end23.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then7.i:                                       ; preds = %if.end2.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %13 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %area, align 8
  %waitq72.i = getelementptr inbounds %struct.nfp_cpp, ptr %15, i32 0, i32 8
  %call1073.i = call i32 @prepare_to_wait_event(ptr noundef %waitq72.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %16 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area, align 8
  %op.i4974.i = getelementptr inbounds %struct.nfp_cpp, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %op.i4974.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op.i4974.i, align 8
  %area_acquire.i5075.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %area_acquire.i5075.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %area_acquire.i5075.i, align 4
  %call.i5176.i = call i32 %21(ptr noundef %area) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i5176.i)
  %cmp.i52.not77.i = icmp eq i32 %call.i5176.i, -11
  br i1 %cmp.i52.not77.i, label %if.then7.i.if.end13.i_crit_edge, label %if.then7.i.if.end19.thread64.i_crit_edge

if.then7.i.if.end19.thread64.i_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.thread64.i

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %cleanup.i.if.end13.i_crit_edge, %if.then7.i.if.end13.i_crit_edge
  %call1078.i = phi i32 [ %call10.i, %cleanup.i.if.end13.i_crit_edge ], [ %call1073.i, %if.then7.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1078.i)
  %tobool14.not.i = icmp eq i32 %call1078.i, 0
  br i1 %tobool14.not.i, label %cleanup.i, label %if.end23.thread.i

cleanup.i:                                        ; preds = %if.end13.i
  call void @schedule() #12
  %22 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %area, align 8
  %waitq.i = getelementptr inbounds %struct.nfp_cpp, ptr %23, i32 0, i32 8
  %call10.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %24 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %area, align 8
  %op.i49.i = getelementptr inbounds %struct.nfp_cpp, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %op.i49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %op.i49.i, align 8
  %area_acquire.i50.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %area_acquire.i50.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %area_acquire.i50.i, align 4
  %call.i51.i = call i32 %29(ptr noundef %area) #12
  %cmp.i52.not.i = icmp eq i32 %call.i51.i, -11
  br i1 %cmp.i52.not.i, label %cleanup.i.if.end13.i_crit_edge, label %cleanup.i.if.end19.thread64.i_crit_edge

cleanup.i.if.end19.thread64.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.thread64.i

cleanup.i.if.end13.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end19.thread64.i:                              ; preds = %cleanup.i.if.end19.thread64.i_crit_edge, %if.then7.i.if.end19.thread64.i_crit_edge
  %call.i51.lcssa.i = phi i32 [ %call.i5176.i, %if.then7.i.if.end19.thread64.i_crit_edge ], [ %call.i51.i, %cleanup.i.if.end19.thread64.i_crit_edge ]
  %30 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %area, align 8
  %waitq18.i = getelementptr inbounds %struct.nfp_cpp, ptr %31, i32 0, i32 8
  call void @finish_wait(ptr noundef %waitq18.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %if.end23.i

if.end23.thread.i:                                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %do.end28.i

if.end23.i:                                       ; preds = %if.end19.thread64.i, %if.end2.i.if.end23.i_crit_edge
  %err.0.i = phi i32 [ %call.i51.lcssa.i, %if.end19.thread64.i ], [ %call.i.i, %if.end2.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool24.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool24.not.i, label %if.end32.i, label %if.end23.i.do.end28.i_crit_edge

if.end23.i.do.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.end23.i.do.end28.i_crit_edge, %if.end23.thread.i
  %err.069.i = phi i32 [ %call1078.i, %if.end23.thread.i ], [ %err.0.i, %if.end23.i.do.end28.i_crit_edge ]
  %32 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %area, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.34, i32 noundef %err.069.i) #15
  %call.i.i48.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !80
  br label %__nfp_cpp_area_acquire.exit

if.end32.i:                                       ; preds = %if.end23.i
  %kref.i.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #12
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #12, !srcloc !81
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !82

if.end32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end32.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.__nfp_cpp_area_acquire.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.__nfp_cpp_area_acquire.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nfp_cpp_area_acquire.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end32.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %__nfp_cpp_area_acquire.exit

__nfp_cpp_area_acquire.exit:                      ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.__nfp_cpp_area_acquire.exit_crit_edge, %do.end28.i, %if.end.i.__nfp_cpp_area_acquire.exit_crit_edge, %entry.__nfp_cpp_area_acquire.exit_crit_edge
  %retval.0.i = phi i32 [ %err.069.i, %do.end28.i ], [ 0, %entry.__nfp_cpp_area_acquire.exit_crit_edge ], [ 0, %if.end.i.__nfp_cpp_area_acquire.exit_crit_edge ], [ 0, %if.else.i.i.i.i.i.i.__nfp_cpp_area_acquire.exit_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_device(ptr noundef readnone returned %cpp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %cpp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_cpp_area_put(ptr noundef %area) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 8
  %op.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op.i.i, align 8
  %area_cleanup.i.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %area_cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area_cleanup.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %6(ptr noundef %area) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %resource_lock.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 7
  tail call void @_raw_write_lock(ptr noundef %resource_lock.i.i) #12
  %resource.i.i = getelementptr %struct.nfp_cpp_area, ptr %area, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %resource.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.__release_cpp_area.exit.i_crit_edge

if.end.i.i.__release_cpp_area.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__release_cpp_area.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr %struct.nfp_cpp_area, ptr %area, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__release_cpp_area.exit.i

__release_cpp_area.exit.i:                        ; preds = %if.end.i.i.i.i.i, %if.end.i.i.__release_cpp_area.exit.i_crit_edge
  %13 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resource.i.i, ptr %resource.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr %struct.nfp_cpp_area, ptr %area, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resource.i.i, ptr %prev.i3.i.i.i.i, align 4
  tail call void @_raw_write_unlock(ptr noundef %resource_lock.i.i) #12
  tail call void @kfree(ptr noundef %area) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %__release_cpp_area.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_acquire_nonblocking(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %refcount = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 8
  %area_acquire = getelementptr inbounds %struct.nfp_cpp_operations, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %area_acquire to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area_acquire, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then1

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then1:                                         ; preds = %if.then
  %call5 = tail call i32 %6(ptr noundef %area) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.then1.if.end11_crit_edge

if.then1.if.end11_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

cleanup:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !80
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %return

if.end11:                                         ; preds = %if.then1.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %kref.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !82

if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end11
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %cleanup
  %retval.1 = phi i32 [ %call5, %cleanup ], [ 0, %if.else.i.i.i.i.i.return_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_cpp_area_release_free(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nfp_cpp_area_release(ptr noundef %area)
  %refcount.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %area, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.nfp_cpp_area_free.exit_crit_edge, label %do.end.i

entry.nfp_cpp_area_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_free.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_free.exit

nfp_cpp_area_free.exit:                           ; preds = %do.end.i, %entry.nfp_cpp_area_free.exit_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef %area) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_read(ptr noundef %area, i32 noundef %offset, ptr noundef %kernel_vaddr, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %area_read = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %area_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area_read, align 4
  %call = tail call i32 %5(ptr noundef %area, ptr noundef %kernel_vaddr, i32 noundef %offset, i32 noundef %length) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_write(ptr noundef %area, i32 noundef %offset, ptr noundef %kernel_vaddr, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %area_write = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %area_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area_write, align 4
  %call = tail call i32 %5(ptr noundef %area, ptr noundef %kernel_vaddr, i32 noundef %offset, i32 noundef %length) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_cpp_area_size(ptr nocapture noundef readonly %cpp_area) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nfp_cpp_area, ptr %cpp_area, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_area_name(ptr nocapture noundef readonly %cpp_area) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.nfp_cpp_area, ptr %cpp_area, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_area_priv(ptr noundef readnone %cpp_area) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nfp_cpp_area, ptr %cpp_area, i32 1
  ret ptr %arrayidx
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_area_cpp(ptr nocapture noundef readonly %cpp_area) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cpp_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp_area, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_area_resource(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %area_resource = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %area_resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area_resource, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr %5(ptr noundef %area) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_phys(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %area_phys = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %area_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area_phys, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %area) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addr.0 = phi i32 [ %call, %if.then ], [ -1, %entry.if.end_crit_edge ]
  ret i32 %addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_area_iomem(ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %area, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %area_iomem = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %area_iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area_iomem, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr %5(ptr noundef %area) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iomem.0 = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %iomem.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_readl(ptr noundef %area, i32 noundef %offset, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op.i, align 8
  %area_read.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %area_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area_read.i, align 4
  %call.i = call i32 %6(ptr noundef %area, ptr noundef nonnull %tmp, i32 noundef %offset, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #12
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_writel(ptr noundef %area, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %value) #12
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %tmp, align 4
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op.i, align 8
  %area_write.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %area_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area_write.i, align 4
  %call.i = call i32 %7(ptr noundef %area, ptr noundef nonnull %tmp, i32 noundef %offset, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  %cond5 = select i1 %cmp, i32 0, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret i32 %cond5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_readq(ptr noundef %area, i32 noundef %offset, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #12
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp, align 8
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op.i, align 8
  %area_read.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %area_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area_read.i, align 4
  %call.i = call i32 %6(ptr noundef %area, ptr noundef nonnull %tmp, i32 noundef %offset, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tmp, align 8
  %9 = call i64 @llvm.bswap.i64(i64 %8) #12
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_writeq(ptr noundef %area, i32 noundef %offset, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #12
  %0 = tail call i64 @llvm.bswap.i64(i64 %value) #12
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %tmp, align 8
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op.i, align 8
  %area_write.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %area_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area_write.i, align 4
  %call.i = call i32 %7(ptr noundef %area, ptr noundef nonnull %tmp, i32 noundef %offset, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  %cond5 = select i1 %cmp, i32 0, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #12
  ret i32 %cond5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_fill(ptr noundef %area, i32 noundef %offset, i32 noundef %value, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %value) #12
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %tmp, align 4
  %2 = or i32 %length, %offset
  %3 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp15.not = icmp eq i32 %length, 0
  br i1 %cmp15.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %add6, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.016, %offset
  %5 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %area, align 8
  %op.i = getelementptr inbounds %struct.nfp_cpp, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %op.i, align 8
  %area_write.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %area_write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area_write.i, align 4
  %call.i = call i32 %10(ptr noundef %area, ptr noundef nonnull %tmp, i32 noundef %add, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add6 = add i32 %i.016, 4
  %cmp = icmp ult i32 %add6, %length
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ], [ %add6, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_area_cache_add(ptr noundef %cpp, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @nfp_cpp_area_alloc_with_name(ptr noundef %cpp, i32 noundef 117448704, ptr noundef null, i64 noundef 0, i32 noundef %size) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #18
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %call.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #12
  %1 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then3.nfp_cpp_area_free.exit_crit_edge, label %do.end.i

if.then3.nfp_cpp_area_free.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_free.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_free.exit

nfp_cpp_area_free.exit:                           ; preds = %do.end.i, %if.then3.nfp_cpp_area_free.exit_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef nonnull %call.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %id, align 8
  %addr = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %addr, align 8
  %size5 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %size5, align 8
  %area6 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %area6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %area6, align 4
  %area_cache_mutex = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %area_cache_mutex, i32 noundef 0) #12
  %area_cache_list = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %12, ptr noundef %area_cache_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add_tail.exit_crit_edge

if.end4.list_add_tail.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %area_cache_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end4.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %area_cache_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %nfp_cpp_area_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %nfp_cpp_area_free.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef %destination, i64 noundef %address, ptr noundef %kernel_vaddr, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %area_cache_list.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12
  %area_cache_mutex.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %__nfp_cpp_read.exit.for.cond_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %add14, %__nfp_cpp_read.exit.for.cond_crit_edge ]
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.1, %__nfp_cpp_read.exit.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %length)
  %cmp = icmp ult i32 %offset.0, %length
  br i1 %cmp, label %for.body, label %for.cond.cleanup17_crit_edge

for.cond.cleanup17_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  %conv = zext i32 %offset.0 to i64
  %add = add i64 %conv, %address
  %sub = sub i32 %length, %offset.0
  %add2 = add i64 %add, 2097152
  %and = and i64 %add2, 4292870144
  %sub3 = sub i64 %and, %add
  %conv4 = trunc i64 %sub3 to i32
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv4)
  %add.ptr = getelementptr i8, ptr %kernel_vaddr, i32 %offset.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #12
  %1 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset.i, align 4
  %call.i = call fastcc ptr @area_cache_get(ptr noundef %cpp, i32 noundef %destination, i64 noundef %add, ptr noundef nonnull %offset.i, i32 noundef %0) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %area1.i = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %area1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area1.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %for.body
  %call.i.i = tail call ptr @nfp_cpp_area_alloc_with_name(ptr noundef %cpp, i32 noundef %destination, ptr noundef null, i64 noundef %add, i32 noundef %0) #12
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %__nfp_cpp_read.exit.thread, label %if.end.i

__nfp_cpp_read.exit.thread:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #12
  br label %cleanup17

if.end.i:                                         ; preds = %if.else.i
  %call5.i = tail call i32 @nfp_cpp_area_acquire(ptr noundef nonnull %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then7.i.nfp_cpp_area_free.exit.i_crit_edge, label %do.end.i.i

if.then7.i.nfp_cpp_area_free.exit.i_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_free.exit.i

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_free.exit.i

nfp_cpp_area_free.exit.i:                         ; preds = %do.end.i.i, %if.then7.i.nfp_cpp_area_free.exit.i_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef nonnull %call.i.i) #12
  br label %__nfp_cpp_read.exit

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %if.then.i
  %area.0.i = phi ptr [ %3, %if.then.i ], [ %call.i.i, %if.end.i.if.end9.i_crit_edge ]
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %12 = ptrtoint ptr %area.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %area.0.i, align 8
  %op.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op.i.i, align 8
  %area_read.i.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %area_read.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area_read.i.i, align 4
  %call.i33.i = tail call i32 %17(ptr noundef %area.0.i, ptr noundef %add.ptr, i32 noundef %11, i32 noundef %0) #12
  br i1 %tobool.not.i, label %if.else13.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end9.i
  %call.i.i.i35.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #12
  br i1 %call.i.i.i35.i, label %if.end.i.i.i.i, label %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %24 = ptrtoint ptr %area_cache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %area_cache_list.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %area_cache_list.i.i, ptr noundef %25) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.area_cache_put.exit.i_crit_edge

__list_del_entry.exit.i.i.i.area_cache_put.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %area_cache_put.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %prev1.i.i2.i.i.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %area_cache_list.i.i, ptr %prev3.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %area_cache_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call.i, ptr %area_cache_list.i.i, align 4
  br label %area_cache_put.exit.i

area_cache_put.exit.i:                            ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.area_cache_put.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %area_cache_mutex.i.i) #12
  br label %__nfp_cpp_read.exit

if.else13.i:                                      ; preds = %if.end9.i
  tail call void @nfp_cpp_area_release(ptr noundef %area.0.i) #12
  %refcount.i.i.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %area.0.i, i32 0, i32 2
  %call.i.i.i.i36.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i, label %if.else13.i.nfp_cpp_area_release_free.exit.i_crit_edge, label %do.end.i.i.i

if.else13.i.nfp_cpp_area_release_free.exit.i_crit_edge: ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_release_free.exit.i

do.end.i.i.i:                                     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %area.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %area.0.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_release_free.exit.i

nfp_cpp_area_release_free.exit.i:                 ; preds = %do.end.i.i.i, %if.else13.i.nfp_cpp_area_release_free.exit.i_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef %area.0.i) #12
  br label %__nfp_cpp_read.exit

__nfp_cpp_read.exit:                              ; preds = %nfp_cpp_area_release_free.exit.i, %area_cache_put.exit.i, %nfp_cpp_area_free.exit.i
  %retval.0.i = phi i32 [ %call5.i, %nfp_cpp_area_free.exit.i ], [ %call.i33.i, %nfp_cpp_area_release_free.exit.i ], [ %call.i33.i, %area_cache_put.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %0)
  %cmp11.not = icmp eq i32 %retval.0.i, %0
  %add14 = add i32 %0, %offset.0
  %spec.select = select i1 %cmp11.not, i32 %retval.0, i32 %add14
  %retval.1 = select i1 %cmp9, i32 %retval.0.i, i32 %spec.select
  %not.cmp9 = xor i1 %cmp9, true
  %cond20 = and i1 %cmp11.not, %not.cmp9
  br i1 %cond20, label %__nfp_cpp_read.exit.for.cond_crit_edge, label %__nfp_cpp_read.exit.cleanup17_crit_edge

__nfp_cpp_read.exit.cleanup17_crit_edge:          ; preds = %__nfp_cpp_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

__nfp_cpp_read.exit.for.cond_crit_edge:           ; preds = %__nfp_cpp_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup17:                                        ; preds = %__nfp_cpp_read.exit.cleanup17_crit_edge, %__nfp_cpp_read.exit.thread, %for.cond.cleanup17_crit_edge
  %retval.2 = phi i32 [ -12, %__nfp_cpp_read.exit.thread ], [ %length, %for.cond.cleanup17_crit_edge ], [ %retval.1, %__nfp_cpp_read.exit.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_write(ptr noundef %cpp, i32 noundef %destination, i64 noundef %address, ptr noundef %kernel_vaddr, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %area_cache_list.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12
  %area_cache_mutex.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %__nfp_cpp_write.exit.for.cond_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %add14, %__nfp_cpp_write.exit.for.cond_crit_edge ]
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.1, %__nfp_cpp_write.exit.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %length)
  %cmp = icmp ult i32 %offset.0, %length
  br i1 %cmp, label %for.body, label %for.cond.cleanup17_crit_edge

for.cond.cleanup17_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  %conv = zext i32 %offset.0 to i64
  %add = add i64 %conv, %address
  %sub = sub i32 %length, %offset.0
  %add2 = add i64 %add, 2097152
  %and = and i64 %add2, 4292870144
  %sub3 = sub i64 %and, %add
  %conv4 = trunc i64 %sub3 to i32
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv4)
  %add.ptr = getelementptr i8, ptr %kernel_vaddr, i32 %offset.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #12
  %1 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset.i, align 4
  %call.i = call fastcc ptr @area_cache_get(ptr noundef %cpp, i32 noundef %destination, i64 noundef %add, ptr noundef nonnull %offset.i, i32 noundef %0) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %area1.i = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %area1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area1.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %for.body
  %call.i.i = tail call ptr @nfp_cpp_area_alloc_with_name(ptr noundef %cpp, i32 noundef %destination, ptr noundef null, i64 noundef %add, i32 noundef %0) #12
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %__nfp_cpp_write.exit.thread, label %if.end.i

__nfp_cpp_write.exit.thread:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #12
  br label %cleanup17

if.end.i:                                         ; preds = %if.else.i
  %call5.i = tail call i32 @nfp_cpp_area_acquire(ptr noundef nonnull %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  %refcount.i.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then7.i.nfp_cpp_area_free.exit.i_crit_edge, label %do.end.i.i

if.then7.i.nfp_cpp_area_free.exit.i_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_free.exit.i

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_free.exit.i

nfp_cpp_area_free.exit.i:                         ; preds = %do.end.i.i, %if.then7.i.nfp_cpp_area_free.exit.i_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef nonnull %call.i.i) #12
  br label %__nfp_cpp_write.exit

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %if.then.i
  %area.0.i = phi ptr [ %3, %if.then.i ], [ %call.i.i, %if.end.i.if.end9.i_crit_edge ]
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %12 = ptrtoint ptr %area.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %area.0.i, align 8
  %op.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op.i.i, align 8
  %area_write.i.i = getelementptr inbounds %struct.nfp_cpp_operations, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %area_write.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area_write.i.i, align 4
  %call.i33.i = tail call i32 %17(ptr noundef %area.0.i, ptr noundef %add.ptr, i32 noundef %11, i32 noundef %0) #12
  br i1 %tobool.not.i, label %if.else13.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end9.i
  %call.i.i.i35.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call.i) #12
  br i1 %call.i.i.i35.i, label %if.end.i.i.i.i, label %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %24 = ptrtoint ptr %area_cache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %area_cache_list.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %area_cache_list.i.i, ptr noundef %25) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.area_cache_put.exit.i_crit_edge

__list_del_entry.exit.i.i.i.area_cache_put.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %area_cache_put.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %prev1.i.i2.i.i.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %area_cache_list.i.i, ptr %prev3.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %area_cache_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call.i, ptr %area_cache_list.i.i, align 4
  br label %area_cache_put.exit.i

area_cache_put.exit.i:                            ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.area_cache_put.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %area_cache_mutex.i.i) #12
  br label %__nfp_cpp_write.exit

if.else13.i:                                      ; preds = %if.end9.i
  tail call void @nfp_cpp_area_release(ptr noundef %area.0.i) #12
  %refcount.i.i.i = getelementptr inbounds %struct.nfp_cpp_area, ptr %area.0.i, i32 0, i32 2
  %call.i.i.i.i36.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i, label %if.else13.i.nfp_cpp_area_release_free.exit.i_crit_edge, label %do.end.i.i.i

if.else13.i.nfp_cpp_area_release_free.exit.i_crit_edge: ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_cpp_area_release_free.exit.i

do.end.i.i.i:                                     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %area.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %area.0.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.9) #15
  br label %nfp_cpp_area_release_free.exit.i

nfp_cpp_area_release_free.exit.i:                 ; preds = %do.end.i.i.i, %if.else13.i.nfp_cpp_area_release_free.exit.i_crit_edge
  tail call fastcc void @nfp_cpp_area_put(ptr noundef %area.0.i) #12
  br label %__nfp_cpp_write.exit

__nfp_cpp_write.exit:                             ; preds = %nfp_cpp_area_release_free.exit.i, %area_cache_put.exit.i, %nfp_cpp_area_free.exit.i
  %retval.0.i = phi i32 [ %call5.i, %nfp_cpp_area_free.exit.i ], [ %call.i33.i, %nfp_cpp_area_release_free.exit.i ], [ %call.i33.i, %area_cache_put.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %0)
  %cmp11.not = icmp eq i32 %retval.0.i, %0
  %add14 = add i32 %0, %offset.0
  %spec.select = select i1 %cmp11.not, i32 %retval.0, i32 %add14
  %retval.1 = select i1 %cmp9, i32 %retval.0.i, i32 %spec.select
  %not.cmp9 = xor i1 %cmp9, true
  %cond20 = and i1 %cmp11.not, %not.cmp9
  br i1 %cond20, label %__nfp_cpp_write.exit.for.cond_crit_edge, label %__nfp_cpp_write.exit.cleanup17_crit_edge

__nfp_cpp_write.exit.cleanup17_crit_edge:         ; preds = %__nfp_cpp_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

__nfp_cpp_write.exit.for.cond_crit_edge:          ; preds = %__nfp_cpp_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup17:                                        ; preds = %__nfp_cpp_write.exit.cleanup17_crit_edge, %__nfp_cpp_write.exit.thread, %for.cond.cleanup17_crit_edge
  %retval.2 = phi i32 [ -12, %__nfp_cpp_write.exit.thread ], [ %length, %for.cond.cleanup17_crit_edge ], [ %retval.1, %__nfp_cpp_write.exit.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_xpb_readl(ptr noundef %cpp, i32 noundef %xpb_addr, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %xpb_addr, 24
  %and.i = and i32 %shr.i, 63
  %0 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.then1.i [
    i32 0, label %entry.nfp_xpb_to_cpp.exit_crit_edge
    i32 1, label %if.end2.i
  ]

entry.nfp_xpb_to_cpp.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_xpb_to_cpp.exit

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %xpb_addr, 1073741824
  br label %nfp_xpb_to_cpp.exit

if.end2.i:                                        ; preds = %entry
  %and3.i = and i32 %xpb_addr, -2130706433
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and3.i)
  %cmp4.i = icmp ult i32 %and3.i, 393216
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %or6.i = or i32 %and3.i, 1073741824
  br label %nfp_xpb_to_cpp.exit

if.else.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 3
  %1 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %interface.i.i, align 8
  %.mask.i = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.mask.i)
  %cmp9.not.i = icmp eq i16 %.mask.i, 8192
  %or12.i = or i32 %and3.i, 16777216
  %spec.select = select i1 %cmp9.not.i, i32 %and3.i, i32 %or12.i
  br label %nfp_xpb_to_cpp.exit

nfp_xpb_to_cpp.exit:                              ; preds = %if.else.i, %if.then5.i, %if.then1.i, %entry.nfp_xpb_to_cpp.exit_crit_edge
  %xpb_addr.addr.0 = phi i32 [ %xpb_addr, %entry.nfp_xpb_to_cpp.exit_crit_edge ], [ %or6.i, %if.then5.i ], [ %or.i, %if.then1.i ], [ %spec.select, %if.else.i ]
  %conv = zext i32 %xpb_addr.addr.0 to i64
  %call1 = tail call i32 @nfp_cpp_readl(ptr noundef %cpp, i32 noundef 234889216, i64 noundef %conv, ptr noundef %value) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_readl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_xpb_writel(ptr noundef %cpp, i32 noundef %xpb_addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %xpb_addr, 24
  %and.i = and i32 %shr.i, 63
  %0 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and.i, label %if.then1.i [
    i32 0, label %entry.nfp_xpb_to_cpp.exit_crit_edge
    i32 1, label %if.end2.i
  ]

entry.nfp_xpb_to_cpp.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_xpb_to_cpp.exit

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %xpb_addr, 1073741824
  br label %nfp_xpb_to_cpp.exit

if.end2.i:                                        ; preds = %entry
  %and3.i = and i32 %xpb_addr, -2130706433
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and3.i)
  %cmp4.i = icmp ult i32 %and3.i, 393216
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %or6.i = or i32 %and3.i, 1073741824
  br label %nfp_xpb_to_cpp.exit

if.else.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 3
  %1 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %interface.i.i, align 8
  %.mask.i = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.mask.i)
  %cmp9.not.i = icmp eq i16 %.mask.i, 8192
  %or12.i = or i32 %and3.i, 16777216
  %spec.select = select i1 %cmp9.not.i, i32 %and3.i, i32 %or12.i
  br label %nfp_xpb_to_cpp.exit

nfp_xpb_to_cpp.exit:                              ; preds = %if.else.i, %if.then5.i, %if.then1.i, %entry.nfp_xpb_to_cpp.exit_crit_edge
  %xpb_addr.addr.0 = phi i32 [ %xpb_addr, %entry.nfp_xpb_to_cpp.exit_crit_edge ], [ %or6.i, %if.then5.i ], [ %or.i, %if.then1.i ], [ %spec.select, %if.else.i ]
  %conv = zext i32 %xpb_addr.addr.0 to i64
  %call1 = tail call i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef 234889216, i64 noundef %conv, i32 noundef %value) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_writel(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_xpb_writelm(ptr noundef %cpp, i32 noundef %xpb_tgt, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !86
  %shr.i.i = lshr i32 %xpb_tgt, 24
  %and.i.i = and i32 %shr.i.i, 63
  %1 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and.i.i, label %if.then1.i.i [
    i32 0, label %entry.nfp_xpb_readl.exit_crit_edge
    i32 1, label %if.end2.i.i
  ]

entry.nfp_xpb_readl.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_xpb_readl.exit

if.then1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i32 %xpb_tgt, 1073741824
  br label %nfp_xpb_readl.exit

if.end2.i.i:                                      ; preds = %entry
  %and3.i.i = and i32 %xpb_tgt, -2130706433
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and3.i.i)
  %cmp4.i.i = icmp ult i32 %and3.i.i, 393216
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or6.i.i = or i32 %and3.i.i, 1073741824
  br label %nfp_xpb_readl.exit

if.else.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i.i.i = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 3
  %2 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %interface.i.i.i, align 8
  %.mask.i.i = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.mask.i.i)
  %cmp9.not.i.i = icmp eq i16 %.mask.i.i, 8192
  %or12.i.i = or i32 %and3.i.i, 16777216
  %spec.select.i = select i1 %cmp9.not.i.i, i32 %and3.i.i, i32 %or12.i.i
  br label %nfp_xpb_readl.exit

nfp_xpb_readl.exit:                               ; preds = %if.else.i.i, %if.then5.i.i, %if.then1.i.i, %entry.nfp_xpb_readl.exit_crit_edge
  %xpb_addr.addr.0.i = phi i32 [ %xpb_tgt, %entry.nfp_xpb_readl.exit_crit_edge ], [ %or6.i.i, %if.then5.i.i ], [ %or.i.i, %if.then1.i.i ], [ %spec.select.i, %if.else.i.i ]
  %conv.i = zext i32 %xpb_addr.addr.0.i to i64
  %call1.i = call i32 @nfp_cpp_readl(ptr noundef %cpp, i32 noundef 234889216, i64 noundef %conv.i, ptr noundef nonnull %tmp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %nfp_xpb_readl.exit.cleanup_crit_edge, label %if.end

nfp_xpb_readl.exit.cleanup_crit_edge:             ; preds = %nfp_xpb_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nfp_xpb_readl.exit
  %neg = xor i32 %mask, -1
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %and = and i32 %5, %neg
  %and1 = and i32 %value, %mask
  %or = or i32 %and, %and1
  store i32 %or, ptr %tmp, align 4
  %6 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and.i.i, label %if.then1.i.i11 [
    i32 0, label %if.end.nfp_xpb_writel.exit_crit_edge
    i32 1, label %if.end2.i.i14
  ]

if.end.nfp_xpb_writel.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_xpb_writel.exit

if.then1.i.i11:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i10 = or i32 %xpb_tgt, 1073741824
  br label %nfp_xpb_writel.exit

if.end2.i.i14:                                    ; preds = %if.end
  %and3.i.i12 = and i32 %xpb_tgt, -2130706433
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and3.i.i12)
  %cmp4.i.i13 = icmp ult i32 %and3.i.i12, 393216
  br i1 %cmp4.i.i13, label %if.then5.i.i16, label %if.else.i.i22

if.then5.i.i16:                                   ; preds = %if.end2.i.i14
  call void @__sanitizer_cov_trace_pc() #14
  %or6.i.i15 = or i32 %and3.i.i12, 1073741824
  br label %nfp_xpb_writel.exit

if.else.i.i22:                                    ; preds = %if.end2.i.i14
  call void @__sanitizer_cov_trace_pc() #14
  %interface.i.i.i17 = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 3
  %7 = ptrtoint ptr %interface.i.i.i17 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %interface.i.i.i17, align 8
  %.mask.i.i18 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %.mask.i.i18)
  %cmp9.not.i.i19 = icmp eq i16 %.mask.i.i18, 8192
  %or12.i.i20 = or i32 %and3.i.i12, 16777216
  %spec.select.i21 = select i1 %cmp9.not.i.i19, i32 %and3.i.i12, i32 %or12.i.i20
  br label %nfp_xpb_writel.exit

nfp_xpb_writel.exit:                              ; preds = %if.else.i.i22, %if.then5.i.i16, %if.then1.i.i11, %if.end.nfp_xpb_writel.exit_crit_edge
  %xpb_addr.addr.0.i23 = phi i32 [ %xpb_tgt, %if.end.nfp_xpb_writel.exit_crit_edge ], [ %or6.i.i15, %if.then5.i.i16 ], [ %or.i.i10, %if.then1.i.i11 ], [ %spec.select.i21, %if.else.i.i22 ]
  %conv.i24 = zext i32 %xpb_addr.addr.0.i23 to i64
  %call1.i25 = call i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef 234889216, i64 noundef %conv.i24, i32 noundef %or) #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_xpb_writel.exit, %nfp_xpb_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i25, %nfp_xpb_writel.exit ], [ %call1.i, %nfp_xpb_readl.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_from_operations(ptr noundef %ops, ptr noundef %parent, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #12
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !86
  %1 = getelementptr inbounds [2 x i32], ptr %mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1224) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_malloc_crit_edge, label %if.end

entry.err_malloc_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_malloc

if.end:                                           ; preds = %entry
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %op, align 8
  %priv1 = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %priv1, align 8
  %get_interface = getelementptr inbounds %struct.nfp_cpp_operations, ptr %ops, i32 0, i32 5
  %6 = ptrtoint ptr %get_interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_interface, align 4
  %call2 = tail call i32 %7(ptr noundef %parent) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.err_free_cpp_crit_edge, label %if.end4

if.end.err_free_cpp_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_cpp

if.end4:                                          ; preds = %if.end
  %conv = trunc i32 %call2 to i16
  %interface = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %interface, align 8
  %read_serial = getelementptr inbounds %struct.nfp_cpp_operations, ptr %ops, i32 0, i32 4
  %9 = ptrtoint ptr %read_serial to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_serial, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end4.do.body_crit_edge, label %if.then6

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then6:                                         ; preds = %if.end4
  %serial = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 4
  %call8 = tail call i32 %10(ptr noundef %parent, ptr noundef %serial) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.do.body_crit_edge, label %if.then6.err_free_cpp_crit_edge

if.then6.err_free_cpp_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_cpp

if.then6.do.body_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.then6.do.body_crit_edge, %if.end4.do.body_crit_edge
  %resource_lock = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 7
  tail call void @__rwlock_init(ptr noundef %resource_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @nfp_cpp_from_operations.__key) #12
  %waitq = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.14, ptr noundef nonnull @nfp_cpp_from_operations.__key.13) #12
  %dep_map = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 7, i32 4
  %wait_type_inner = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 7, i32 4, i32 4
  %11 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @nfp_cpp_resource_lock_key, i32 noundef 0, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %resource_list = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %resource_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resource_list, ptr %resource_list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resource_list, ptr %prev.i, align 8
  %area_cache_list = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %area_cache_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %area_cache_list, ptr %area_cache_list, align 4
  %prev.i154 = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %area_cache_list, ptr %prev.i154, align 8
  %area_cache_mutex = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %area_cache_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @nfp_cpp_from_operations.__key.16) #12
  %init_name = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.18, ptr %init_name, align 8
  %parent25 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %parent25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parent, ptr %parent25, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %19 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nfp_cpp_dev_release, ptr %release, align 4
  %call28 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #12
  br label %err_free_cpp

if.end33:                                         ; preds = %do.body
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %21 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op, align 8
  %init = getelementptr inbounds %struct.nfp_cpp_operations, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init, align 4
  %tobool36.not = icmp eq ptr %24, null
  br i1 %tobool36.not, label %if.end33.if.end48_crit_edge, label %if.then37

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then37:                                        ; preds = %if.end33
  %call40 = tail call i32 %24(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %if.then37.if.end48_crit_edge

if.then37.if.end48_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.end46:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.19) #15
  br label %err_out

if.end48:                                         ; preds = %if.then37.if.end48_crit_edge, %if.end33.if.end48_crit_edge
  %model = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 2
  %call49 = tail call i32 @nfp_cpp_model_autodetect(ptr noundef nonnull %call7.i.i, ptr noundef %model) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end55, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.22) #15
  br label %err_out

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %tgt.0158, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end48.for.body_crit_edge
  %tgt.0158 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %tgt.0158, 2
  %add = add nuw nsw i32 %mul, 655360
  %arrayidx = getelementptr %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 9, i32 %tgt.0158
  %conv.i = zext i32 %add to i64
  %call1.i = tail call i32 @nfp_cpp_readl(ptr noundef %call7.i.i, i32 noundef 234889216, i64 noundef %conv.i, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp60 = icmp slt i32 %call1.i, 0
  br i1 %cmp60, label %do.end65, label %for.cond

do.end65:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.25) #15
  br label %err_out

for.end:                                          ; preds = %for.cond
  %call68 = call i32 @nfp_cpp_readl(ptr noundef nonnull %call7.i.i, i32 noundef 167780352, i64 noundef 4194636, ptr noundef nonnull %mask) #12
  %call70 = call i32 @nfp_cpp_readl(ptr noundef nonnull %call7.i.i, i32 noundef 167780352, i64 noundef 4194640, ptr noundef %1) #12
  %arrayidx.i = getelementptr %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 9, i32 7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 8
  %27 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %switch.i.not.not.i = icmp eq i32 %27, 0
  br i1 %switch.i.not.not.i, label %do.end81, label %do.end77

do.end77:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.28) #15
  br label %err_out

do.end81:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %cond.i.i = select i1 %tobool.not.i, i32 30, i32 38
  %mu_locality_lsb.i = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %mu_locality_lsb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i.i, ptr %mu_locality_lsb.i, align 4
  %29 = ptrtoint ptr %parent25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent25, align 8
  %31 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %model, align 4
  %serial85 = getelementptr inbounds %struct.nfp_cpp, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %interface to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %interface, align 8
  %conv88 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.31, i32 noundef %32, ptr noundef %serial85, i32 noundef %conv88) #15
  br label %cleanup

err_out:                                          ; preds = %do.end77, %do.end65, %do.end55, %do.end46
  %err.0 = phi i32 [ %call40, %do.end46 ], [ %call49, %do.end55 ], [ %call1.i, %do.end65 ], [ -22, %do.end77 ]
  call void @device_unregister(ptr noundef nonnull %call7.i.i) #12
  br label %err_free_cpp

err_free_cpp:                                     ; preds = %err_out, %if.then31, %if.then6.err_free_cpp_crit_edge, %if.end.err_free_cpp_crit_edge
  %err.1 = phi i32 [ %call8, %if.then6.err_free_cpp_crit_edge ], [ %call28, %if.then31 ], [ %err.0, %err_out ], [ %call2, %if.end.err_free_cpp_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err_malloc

err_malloc:                                       ; preds = %err_free_cpp, %entry.err_malloc_crit_edge
  %err.2 = phi i32 [ %err.1, %err_free_cpp ], [ -12, %entry.err_malloc_crit_edge ]
  %35 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_malloc, %do.end81
  %retval.0 = phi ptr [ %35, %err_malloc ], [ %call7.i.i, %do.end81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfp_cpp_dev_release(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_model_autodetect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_priv(ptr nocapture noundef readonly %cpp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_explicit_acquire(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 5
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 8
  %explicit_priv_size = getelementptr inbounds %struct.nfp_cpp_operations, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %explicit_priv_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %explicit_priv_size, align 4
  %add = add i32 %3, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cpp, ptr %call9.i.i, align 128
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op, align 8
  %explicit_acquire = getelementptr inbounds %struct.nfp_cpp_operations, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %explicit_acquire to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %explicit_acquire, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.if.then12_crit_edge, label %if.then7

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then7:                                         ; preds = %if.end
  %call10 = tail call i32 %8(ptr noundef nonnull %call9.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %phi.cmp = icmp slt i32 %call10, 0
  br i1 %phi.cmp, label %if.then7.if.then12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.if.then12_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12

if.then12:                                        ; preds = %if.then7.if.then12_crit_edge, %if.end.if.then12_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then12 ], [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_explicit_cpp(ptr nocapture noundef readonly %cpp_explicit) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cpp_explicit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpp_explicit, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_set_target(ptr nocapture noundef writeonly %expl, i32 noundef %cpp_id, i8 noundef zeroext %len, i8 noundef zeroext %mask) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cpp_id, ptr %cmd, align 4
  %len3 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %len3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %len, ptr %len3, align 1
  %byte_mask = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %mask, ptr %byte_mask, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_set_data(ptr nocapture noundef writeonly %expl, i8 noundef zeroext %data_master, i16 noundef zeroext %data_ref) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_master1 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %data_master1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data_master, ptr %data_master1, align 2
  %data_ref3 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %data_ref3 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %data_ref, ptr %data_ref3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_set_signal(ptr nocapture noundef writeonly %expl, i8 noundef zeroext %signal_master, i8 noundef zeroext %signal_ref) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_master1 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %signal_master1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %signal_master, ptr %signal_master1, align 1
  %signal_ref3 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 6
  %1 = ptrtoint ptr %signal_ref3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %signal_ref, ptr %signal_ref3, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_set_posted(ptr nocapture noundef writeonly %expl, i32 noundef %posted, i8 noundef zeroext %siga, i32 noundef %siga_mode, i8 noundef zeroext %sigb, i32 noundef %sigb_mode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %posted to i8
  %posted1 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %posted1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %posted1, align 1
  %siga3 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %siga3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %siga, ptr %siga3, align 4
  %sigb5 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %sigb5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %sigb, ptr %sigb5, align 1
  %conv6 = trunc i32 %siga_mode to i8
  %siga_mode8 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 10
  %3 = ptrtoint ptr %siga_mode8 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %siga_mode8, align 2
  %conv9 = trunc i32 %sigb_mode to i8
  %sigb_mode11 = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %sigb_mode11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %sigb_mode11, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_put(ptr noundef %expl, ptr noundef %buff, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expl, align 4
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %explicit_put = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %explicit_put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %explicit_put, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %expl, ptr noundef %buff, i32 noundef %len) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %if.then ], [ -19, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_do(ptr noundef %expl, i64 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expl, align 4
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %explicit_do = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %explicit_do to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %explicit_do, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cmd = getelementptr inbounds %struct.nfp_cpp_explicit, ptr %expl, i32 0, i32 1
  %call3 = tail call i32 %5(ptr noundef %expl, ptr noundef %cmd, i64 noundef %address) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %if.then ], [ -19, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_get(ptr noundef %expl, ptr noundef %buff, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expl, align 4
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %explicit_get = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %explicit_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %explicit_get, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 %5(ptr noundef %expl, ptr noundef %buff, i32 noundef %len) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %if.then ], [ -19, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_cpp_explicit_release(ptr noundef %expl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expl, align 4
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 8
  %explicit_release = getelementptr inbounds %struct.nfp_cpp_operations, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %explicit_release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %explicit_release, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %expl) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %expl) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_cpp_explicit_priv(ptr noundef readnone %cpp_explicit) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nfp_cpp_explicit, ptr %cpp_explicit, i32 1
  ret ptr %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @area_cache_get(ptr noundef %cpp, i32 noundef %id, i64 noundef %addr, ptr nocapture noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %id.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %id.addr, align 4
  %1 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %addr, ptr %addr.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp eq i32 %length, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp1 = icmp eq i32 %id, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %imb_cat_table = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 9
  %call = call i32 @nfp_target_cpp(i32 noundef %id, i64 noundef %addr, ptr noundef nonnull %id.addr, ptr noundef nonnull %addr.addr, ptr noundef %imb_cat_table) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %area_cache_mutex = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %area_cache_mutex, i32 noundef 0) #12
  %area_cache_list = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12
  %2 = ptrtoint ptr %area_cache_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %area_cache_list, align 4
  %cmp.i.not = icmp eq ptr %3, %area_cache_list
  br i1 %cmp.i.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %area_cache_mutex) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr.addr, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %addr.addr, align 8
  %8 = ptrtoint ptr %area_cache_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %cache.0132 = load ptr, ptr %area_cache_list, align 4
  %cmp12.not133 = icmp eq ptr %cache.0132, %area_cache_list
  br i1 %cmp12.not133, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = zext i32 %length to i64
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %9 = ptrtoint ptr %id.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.addr, align 4
  %conv21 = zext i32 %length to i64
  %add22 = add i64 %add, %conv21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cache.0134 = phi ptr [ %cache.0132, %for.body.lr.ph ], [ %cache.0, %for.inc.for.body_crit_edge ]
  %id14 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.0134, i32 0, i32 1
  %11 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15 = icmp eq i32 %10, %12
  br i1 %cmp15, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %addr17 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.0134, i32 0, i32 2
  %13 = ptrtoint ptr %addr17 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %addr17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %14)
  %cmp18.not = icmp ult i64 %add, %14
  br i1 %cmp18.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true
  %size = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.0134, i32 0, i32 3
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %conv24 = zext i32 %16 to i64
  %add25 = add i64 %14, %conv24
  call void @__sanitizer_cov_trace_cmp8(i64 %add22, i64 %add25)
  %cmp26.not = icmp ugt i64 %add22, %add25
  br i1 %cmp26.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true20.exit_crit_edge

land.lhs.true20.exit_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %cache.0134 to i32
  call void @__asan_load4_noabort(i32 %17)
  %cache.0 = load ptr, ptr %cache.0134, align 4
  %cmp12.not = icmp eq ptr %cache.0, %area_cache_list
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %conv39.pre-phi = phi i64 [ %.pre, %if.end8.for.end_crit_edge ], [ %conv21, %for.inc.for.end_crit_edge ]
  %prev = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev, align 4
  %add40 = add nsw i64 %conv39.pre-phi, -1
  %sub = add i64 %add40, %add
  %size41 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size41, align 8
  %sub42 = add i32 %21, -1
  %conv43 = zext i32 %sub42 to i64
  %neg = xor i64 %conv43, -1
  %22 = xor i64 %sub, %add
  %23 = and i64 %22, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp49.not = icmp eq i64 %23, 0
  br i1 %cmp49.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %area_cache_mutex) #12
  br label %cleanup

if.end53:                                         ; preds = %for.end
  %id54 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %id54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not = icmp eq i32 %25, 0
  br i1 %tobool55.not, label %if.end53.if.end59_crit_edge, label %if.then56

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %area = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 4
  %26 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %area, align 4
  call void @nfp_cpp_area_release(ptr noundef %27)
  %28 = ptrtoint ptr %id54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %id54, align 8
  %addr58 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %addr58 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %addr58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  %30 = ptrtoint ptr %id.addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.addr, align 4
  %32 = ptrtoint ptr %id54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %id54, align 8
  %33 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %addr.addr, align 8
  %35 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size41, align 8
  %sub62 = add i32 %36, -1
  %conv63 = zext i32 %sub62 to i64
  %neg64 = xor i64 %conv63, -1
  %and65 = and i64 %34, %neg64
  %addr66 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 2
  %37 = ptrtoint ptr %addr66 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %and65, ptr %addr66, align 8
  %op = getelementptr inbounds %struct.nfp_cpp, ptr %cpp, i32 0, i32 5
  %38 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op, align 8
  %area_init = getelementptr inbounds %struct.nfp_cpp_operations, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %area_init to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %area_init, align 4
  %tobool67.not = icmp eq ptr %41, null
  br i1 %tobool67.not, label %if.end59.if.end80_crit_edge, label %if.then68

if.end59.if.end80_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then68:                                        ; preds = %if.end59
  %area71 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 4
  %42 = ptrtoint ptr %area71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %area71, align 4
  %call74 = call i32 %41(ptr noundef %43, i32 noundef %31, i64 noundef %and65, i32 noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.then68.if.end80_crit_edge

if.then68.if.end80_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then77:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %area_cache_mutex) #12
  br label %cleanup

if.end80:                                         ; preds = %if.then68.if.end80_crit_edge, %if.end59.if.end80_crit_edge
  %area81 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %19, i32 0, i32 4
  %44 = ptrtoint ptr %area81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %area81, align 4
  %call82 = call i32 @nfp_cpp_area_acquire(ptr noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end80.exit_crit_edge

if.end80.exit_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %area_cache_mutex) #12
  br label %cleanup

exit:                                             ; preds = %if.end80.exit_crit_edge, %land.lhs.true20.exit_crit_edge
  %cache.1 = phi ptr [ %19, %if.end80.exit_crit_edge ], [ %cache.0134, %land.lhs.true20.exit_crit_edge ]
  %46 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %addr.addr, align 8
  %addr88 = getelementptr inbounds %struct.nfp_cpp_area_cache, ptr %cache.1, i32 0, i32 2
  %48 = ptrtoint ptr %addr88 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %addr88, align 8
  %sub89 = sub i64 %47, %49
  %conv90 = trunc i64 %sub89 to i32
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv90, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then85, %if.then77, %if.then51, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ %cache.1, %exit ], [ null, %if.then51 ], [ null, %if.then77 ], [ null, %if.then85 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !15, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 176, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 184, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nfp_cpp_free._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @nfp_cpp_free._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 300, i32 10}
!13 = !{ptr @nfp_cpp_area_alloc_with_name.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 320, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 406, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfp_cpp_area_free._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_cpp_area_free._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @nfp_cpp_from_operations.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1193, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfp_cpp_from_operations.__key.13, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1194, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1195, i32 2}
!30 = !{ptr @nfp_cpp_from_operations.__key.16, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1198, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1199, i32 23}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1216, i32 4}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nfp_cpp_from_operations._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @nfp_cpp_from_operations._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1224, i32 3}
!42 = !{ptr @nfp_cpp_from_operations._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfp_cpp_from_operations._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1234, i32 4}
!46 = !{ptr @nfp_cpp_from_operations._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_cpp_from_operations._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1247, i32 3}
!50 = !{ptr @nfp_cpp_from_operations._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nfp_cpp_from_operations._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1251, i32 2}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nfp_cpp_from_operations._entry.30, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @nfp_cpp_from_operations._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @nfp_cpp_resource_lock_key, !58, !"nfp_cpp_resource_lock_key", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 1143, i32 30}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cppcore.c", i32 432, i32 3}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__nfp_cpp_area_acquire._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @__nfp_cpp_area_acquire._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2148354665}
!75 = !{i64 2148269398, i64 2148269430, i64 2148269459, i64 2148269493, i64 2148269524, i64 2148269547}
!76 = !{i64 2148354894}
!77 = !{i64 2148351624}
!78 = !{i64 2148266933, i64 2148266965, i64 2148266994, i64 2148267028, i64 2148267059, i64 2148267082}
!79 = !{i64 2148351853}
!80 = !{i64 2148268678, i64 2148268704, i64 2148268733, i64 2148268767, i64 2148268798, i64 2148268821}
!81 = !{i64 2148267743, i64 2148267775, i64 2148267804, i64 2148267838, i64 2148267869, i64 2148267892}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2148355744}
!84 = !{i64 2148270208, i64 2148270240, i64 2148270269, i64 2148270303, i64 2148270334, i64 2148270357}
!85 = !{i64 2149603071}
!86 = !{!"auto-init"}
