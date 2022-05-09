; ModuleID = '/llk/IR_all_yes/lib/test_kasan_module.c_pt.bc'
source_filename = "../lib/test_kasan_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kasan_rcu_info = type { i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_license226 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@copy_user_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013kasan test: %s Failed to allocate user memory\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"copy_user_test\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lib/test_kasan_module.c\00", [40 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr = internal global ptr @copy_user_test._entry, section ".printk_index", align 4
@copy_user_test._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016kasan test: %s out-of-bounds in copy_from_user()\0A\00", [44 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.5 = internal global ptr @copy_user_test._entry.3, section ".printk_index", align 4
@copy_user_test._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016kasan test: %s out-of-bounds in copy_to_user()\0A\00", [46 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.8 = internal global ptr @copy_user_test._entry.6, section ".printk_index", align 4
@copy_user_test._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016kasan test: %s out-of-bounds in __copy_from_user()\0A\00", [42 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.11 = internal global ptr @copy_user_test._entry.9, section ".printk_index", align 4
@copy_user_test._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016kasan test: %s out-of-bounds in __copy_to_user()\0A\00", [44 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.14 = internal global ptr @copy_user_test._entry.12, section ".printk_index", align 4
@copy_user_test._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016kasan test: %s out-of-bounds in __copy_from_user_inatomic()\0A\00", [33 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.17 = internal global ptr @copy_user_test._entry.15, section ".printk_index", align 4
@copy_user_test._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016kasan test: %s out-of-bounds in __copy_to_user_inatomic()\0A\00", [35 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.20 = internal global ptr @copy_user_test._entry.18, section ".printk_index", align 4
@copy_user_test._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016kasan test: %s out-of-bounds in strncpy_from_user()\0A\00", [41 x i8] zeroinitializer }, align 32
@copy_user_test._entry_ptr.23 = internal global ptr @copy_user_test._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kasan_rcu_uaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016kasan test: %s use-after-free in kasan_rcu_reclaim\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kasan_rcu_uaf\00", [18 x i8] zeroinitializer }, align 32
@kasan_rcu_uaf._entry_ptr = internal global ptr @kasan_rcu_uaf._entry, section ".printk_index", align 4
@kasan_rcu_uaf._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013kasan test: %s Allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@kasan_rcu_uaf._entry_ptr.31 = internal global ptr @kasan_rcu_uaf._entry.29, section ".printk_index", align 4
@kasan_rcu_uaf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@global_rcu_ptr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kasan_wq_test\00", [18 x i8] zeroinitializer }, align 32
@kasan_workqueue_uaf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.35, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kasan_workqueue_uaf\00", [44 x i8] zeroinitializer }, align 32
@kasan_workqueue_uaf._entry_ptr = internal global ptr @kasan_workqueue_uaf._entry, section ".printk_index", align 4
@kasan_workqueue_uaf._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.35, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kasan_workqueue_uaf._entry_ptr.37 = internal global ptr @kasan_workqueue_uaf._entry.36, section ".printk_index", align 4
@kasan_workqueue_uaf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(work_completion)(work)\00", [40 x i8] zeroinitializer }, align 32
@kasan_workqueue_uaf._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016kasan test: %s use-after-free on workqueue\0A\00", [50 x i8] zeroinitializer }, align 32
@kasan_workqueue_uaf._entry_ptr.41 = internal global ptr @kasan_workqueue_uaf._entry.39, section ".printk_index", align 4
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 33, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 40, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 43, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 46, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 49, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 52, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 55, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 58, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 230, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 214, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 156, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 83, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 86, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 90, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"global_rcu_ptr\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 68, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 104, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 106, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 111, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 115, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [27 x i8] c"../lib/test_kasan_module.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 119, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_license226, ptr @copy_user_test._entry, ptr @copy_user_test._entry.12, ptr @copy_user_test._entry.15, ptr @copy_user_test._entry.18, ptr @copy_user_test._entry.21, ptr @copy_user_test._entry.3, ptr @copy_user_test._entry.6, ptr @copy_user_test._entry.9, ptr @copy_user_test._entry_ptr, ptr @copy_user_test._entry_ptr.11, ptr @copy_user_test._entry_ptr.14, ptr @copy_user_test._entry_ptr.17, ptr @copy_user_test._entry_ptr.20, ptr @copy_user_test._entry_ptr.23, ptr @copy_user_test._entry_ptr.5, ptr @copy_user_test._entry_ptr.8, ptr @kasan_rcu_uaf._entry, ptr @kasan_rcu_uaf._entry.29, ptr @kasan_rcu_uaf._entry_ptr, ptr @kasan_rcu_uaf._entry_ptr.31, ptr @kasan_workqueue_uaf._entry, ptr @kasan_workqueue_uaf._entry.36, ptr @kasan_workqueue_uaf._entry.39, ptr @kasan_workqueue_uaf._entry_ptr, ptr @kasan_workqueue_uaf._entry_ptr.37, ptr @kasan_workqueue_uaf._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @global_rcu_ptr, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @kasan_workqueue_uaf.__key, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_user_test._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_rcu_uaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_rcu_uaf._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_rcu_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_workqueue_uaf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_workqueue_uaf._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_workqueue_uaf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kasan_workqueue_uaf._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @kasan_save_enable_multi_shot() #8
  tail call fastcc void @copy_user_test() #9
  tail call fastcc void @kasan_rcu_uaf() #9
  tail call fastcc void @kasan_workqueue_uaf() #9
  tail call void @kasan_restore_multi_shot(i1 noundef zeroext %call) #8
  ret i32 -11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kasan_save_enable_multi_shot() local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_user_test() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 120) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 7, i32 noundef 34, i32 noundef 0) #8
  %1 = inttoptr i32 %call1 to ptr
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %2 = tail call i32 asm "", "=r,0"(i32 120) #12, !srcloc !83
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #11
  %add = add i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %add)
  %cmp1.i.i = icmp ugt i32 %add, 120
  br i1 %cmp1.i.i, label %if.then3.i.i87, label %if.then.i.i.i, !prof !84

if.then.i.i.i:                                    ; preds = %if.end5
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %add, i32 -1226833920) #12, !srcloc !85
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.then.i2.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !86

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef %add) #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !74) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !87
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !89
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %1, i32 noundef %add) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !89
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %add, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i2.i ], [ %add, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end59.i.i94_crit_edge, label %if.then11.i.i, !prof !86

if.end.i.i.if.end59.i.i94_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i.i94

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub i32 %add, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i
  %call12.i.i = tail call ptr @memset(ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef %res.0.i.i) #8
  br label %if.end59.i.i94

if.then3.i.i87:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef 120, i32 noundef %add) #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef 120, i32 noundef %add) #8
  br label %copy_to_user.exit

if.end59.i.i94:                                   ; preds = %if.then11.i.i, %if.end.i.i.if.end59.i.i94_crit_edge
  %call16123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #11
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #8
  %call.i.i96 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i96, label %if.end59.i.i94.copy_to_user.exit_crit_edge, label %if.end.i.i100

if.end59.i.i94.copy_to_user.exit_crit_edge:       ; preds = %if.end59.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.end.i.i100:                                    ; preds = %if.end59.i.i94
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %add, i32 -1226833920) #12, !srcloc !90
  %asmresult.i.i98 = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i98)
  %cmp.i1.i99 = icmp eq i32 %asmresult.i.i98, 0
  br i1 %cmp.i1.i99, label %if.then2.i.i, label %if.end.i.i100.copy_to_user.exit_crit_edge

if.end.i.i100.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i101 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %add) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef %add) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i100.copy_to_user.exit_crit_edge, %if.end59.i.i94.copy_to_user.exit_crit_edge, %if.then3.i.i87
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 109) #8
  %call.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i, label %copy_to_user.exit.__copy_from_user.exit_crit_edge, label %if.end.i

copy_to_user.exit.__copy_from_user.exit_crit_edge: ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__copy_from_user.exit

if.end.i:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef %add) #8
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext false) #8
  %8 = tail call i32 @llvm.read_register.i32(metadata !74) #13
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !87
  %and.i.i.i = and i32 %10, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #13, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !89
  %call1.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %1, i32 noundef %add) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !89
  br label %__copy_from_user.exit

__copy_from_user.exit:                            ; preds = %if.end.i, %copy_to_user.exit.__copy_from_user.exit_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 143) #8
  %call.i104 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i104, label %__copy_from_user.exit.__copy_to_user.exit_crit_edge, label %if.end.i106

__copy_from_user.exit.__copy_to_user.exit_crit_edge: ; preds = %__copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__copy_to_user.exit

if.end.i106:                                      ; preds = %__copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i105 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %add) #8
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext true) #8
  %call.i1.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef %add) #8
  br label %__copy_to_user.exit

__copy_to_user.exit:                              ; preds = %if.end.i106, %__copy_from_user.exit.__copy_to_user.exit_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1) #11
  %call.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef %add) #8
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext false) #8
  %11 = tail call i32 @llvm.read_register.i32(metadata !74) #13
  %and.i.i.i.i.i111 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i111 to ptr
  %cpu_domain.i.i.i.i112 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i112) #5, !srcloc !87
  %and.i.i.i113 = and i32 %13, -13
  %or.i.i.i114 = or i32 %and.i.i.i113, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i114) #13, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !89
  %call1.i.i115 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %1, i32 noundef %add) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #13, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !89
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #11
  %call.i117 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i117, label %__copy_to_user.exit.__copy_to_user_inatomic.exit_crit_edge, label %if.end.i119

__copy_to_user.exit.__copy_to_user_inatomic.exit_crit_edge: ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__copy_to_user_inatomic.exit

if.end.i119:                                      ; preds = %__copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %add) #8
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext true) #8
  %call.i1.i121 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef %add) #8
  br label %__copy_to_user_inatomic.exit

__copy_to_user_inatomic.exit:                     ; preds = %if.end.i119, %__copy_to_user.exit.__copy_to_user_inatomic.exit_crit_edge
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1) #11
  %call53 = tail call i32 @strncpy_from_user(ptr noundef nonnull %call7.i, ptr noundef %1, i32 noundef %add) #8
  %call54 = tail call i32 @vm_munmap(i32 noundef %call1, i32 noundef 4096) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__copy_to_user_inatomic.exit, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kasan_rcu_uaf() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end4, label %do.body7

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #11
  br label %cleanup

do.body7:                                         ; preds = %entry
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body7.do.end14_crit_edge, label %land.lhs.true

do.body7.do.end14_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true:                                    ; preds = %do.body7
  %.b17 = load i1, ptr @kasan_rcu_uaf.__warned, align 1
  br i1 %.b17, label %land.lhs.true.do.end14_crit_edge, label %if.then11

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @kasan_rcu_uaf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef nonnull @.str.32) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true.do.end14_crit_edge, %do.body7.do.end14_crit_edge
  store ptr %call7.i, ptr @global_rcu_ptr, align 4
  %rcu = getelementptr inbounds %struct.kasan_rcu_info, ptr %call7.i, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @kasan_rcu_reclaim) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end4
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kasan_workqueue_uaf() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %agg.tmp.ensured.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.33, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.34) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 44) #10
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %do.end7, label %do.body11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.35) #11
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #8
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @kasan_workqueue_uaf.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry12, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kasan_workqueue_work, ptr %func, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %call, ptr noundef nonnull %call7.i) #8
  tail call void @destroy_workqueue(ptr noundef nonnull %call) #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.35) #11
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.ensured.sroa.0.0.copyload = load volatile i32, ptr %call7.i, align 8
  %6 = ptrtoint ptr %agg.tmp.ensured.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.ensured.sroa.0.0.copyload, ptr %agg.tmp.ensured.sroa.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_restore_multi_shot(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kasan_rcu_reclaim(ptr noundef %rp) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %rp, i32 -4
  tail call void @kfree(ptr noundef %add.ptr) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kasan_workqueue_work(ptr noundef %work) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { cold nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind allocsize(2) "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__UNIQUE_ID_license226, !1, !"__UNIQUE_ID_license226", i1 false, i1 false}
!1 = !{!"../lib/test_kasan_module.c", i32 141, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/test_kasan_module.c", i32 33, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @copy_user_test._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @copy_user_test._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/test_kasan_module.c", i32 40, i32 2}
!10 = !{ptr @copy_user_test._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @copy_user_test._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_kasan_module.c", i32 43, i32 2}
!14 = !{ptr @copy_user_test._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @copy_user_test._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/test_kasan_module.c", i32 46, i32 2}
!18 = !{ptr @copy_user_test._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @copy_user_test._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/test_kasan_module.c", i32 49, i32 2}
!22 = !{ptr @copy_user_test._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @copy_user_test._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_kasan_module.c", i32 52, i32 2}
!26 = !{ptr @copy_user_test._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @copy_user_test._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/test_kasan_module.c", i32 55, i32 2}
!30 = !{ptr @copy_user_test._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @copy_user_test._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/test_kasan_module.c", i32 58, i32 2}
!34 = !{ptr @copy_user_test._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @copy_user_test._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/test_kasan_module.c", i32 83, i32 2}
!45 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @kasan_rcu_uaf._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @kasan_rcu_uaf._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_kasan_module.c", i32 86, i32 3}
!50 = !{ptr @kasan_rcu_uaf._entry.29, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @kasan_rcu_uaf._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../lib/test_kasan_module.c", i32 90, i32 19}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @global_rcu_ptr, !56, !"global_rcu_ptr", i1 false, i1 false}
!56 = !{!"../lib/test_kasan_module.c", i32 68, i32 4}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_kasan_module.c", i32 104, i32 14}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/test_kasan_module.c", i32 106, i32 3}
!62 = !{ptr @kasan_workqueue_uaf._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @kasan_workqueue_uaf._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @kasan_workqueue_uaf._entry.36, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../lib/test_kasan_module.c", i32 111, i32 3}
!66 = !{ptr @kasan_workqueue_uaf._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @kasan_workqueue_uaf.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../lib/test_kasan_module.c", i32 115, i32 2}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/test_kasan_module.c", i32 119, i32 2}
!72 = !{ptr @kasan_workqueue_uaf._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @kasan_workqueue_uaf._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2153540760}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2152730525, i64 2152730550}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 5226080}
!88 = !{i64 5226277}
!89 = !{i64 2152711510}
!90 = !{i64 2152731206, i64 2152731231}
