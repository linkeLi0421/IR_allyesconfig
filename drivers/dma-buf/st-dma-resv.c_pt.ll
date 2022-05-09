; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/st-dma-resv.c_pt.bc'
source_filename = "../drivers/dma-buf/st-dma-resv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.subtest = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.dma_fence = type { ptr, ptr, %union.anon.40, i64, i64, i32, %struct.kref, i32 }
%union.anon.40 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }

@dma_resv.tests = internal constant { [9 x %struct.subtest], [56 x i8] } { [9 x %struct.subtest] [%struct.subtest { ptr @sanitycheck, ptr @.str }, %struct.subtest { ptr @test_excl_signaling, ptr @.str.1 }, %struct.subtest { ptr @test_shared_signaling, ptr @.str.2 }, %struct.subtest { ptr @test_excl_for_each, ptr @.str.3 }, %struct.subtest { ptr @test_shared_for_each, ptr @.str.4 }, %struct.subtest { ptr @test_excl_for_each_unlocked, ptr @.str.5 }, %struct.subtest { ptr @test_shared_for_each_unlocked, ptr @.str.6 }, %struct.subtest { ptr @test_excl_get_fences, ptr @.str.7 }, %struct.subtest { ptr @test_shared_get_fences, ptr @.str.8 }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sanitycheck\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_excl_signaling\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_shared_signaling\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_excl_for_each\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_shared_for_each\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_excl_for_each_unlocked\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"test_shared_for_each_unlocked\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"test_excl_get_fences\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_shared_get_fences\00", [41 x i8] zeroinitializer }, align 32
@dma_resv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fence_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fence_lock\00", [20 x i8] zeroinitializer }, align 32
@__func__.dma_resv = private unnamed_addr constant [9 x i8] c"dma_resv\00", align 1
@sanitycheck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str, ptr @.str.11, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Resv locking failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/dma-buf/st-dma-resv.c\00", [34 x i8] zeroinitializer }, align 32
@sanitycheck._entry_ptr = internal global ptr @sanitycheck._entry, section ".printk_index", align 4
@fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @fence_name, ptr @fence_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selftest\00", [23 x i8] zeroinitializer }, align 32
@test_signaling._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str.11, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_signaling\00", [17 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr = internal global ptr @test_signaling._entry, section ".printk_index", align 4
@test_signaling._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.11, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Resv shared slot allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr.16 = internal global ptr @test_signaling._entry.14, section ".printk_index", align 4
@test_signaling._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.11, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Resv unexpectedly signaled\0A\00", [34 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr.19 = internal global ptr @test_signaling._entry.17, section ".printk_index", align 4
@test_signaling._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.11, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Resv not reporting signaled\0A\00", [33 x i8] zeroinitializer }, align 32
@test_signaling._entry_ptr.22 = internal global ptr @test_signaling._entry.20, section ".printk_index", align 4
@test_for_each._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.23, ptr @.str.11, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_for_each\00", [18 x i8] zeroinitializer }, align 32
@test_for_each._entry_ptr = internal global ptr @test_for_each._entry, section ".printk_index", align 4
@test_for_each._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.23, ptr @.str.11, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_for_each._entry_ptr.25 = internal global ptr @test_for_each._entry.24, section ".printk_index", align 4
@test_for_each._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.11, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013More than one fence found\0A\00", [35 x i8] zeroinitializer }, align 32
@test_for_each._entry_ptr.28 = internal global ptr @test_for_each._entry.26, section ".printk_index", align 4
@test_for_each._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.11, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Unexpected fence\0A\00", [44 x i8] zeroinitializer }, align 32
@test_for_each._entry_ptr.31 = internal global ptr @test_for_each._entry.29, section ".printk_index", align 4
@test_for_each._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.11, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Unexpected fence usage\0A\00", [38 x i8] zeroinitializer }, align 32
@test_for_each._entry_ptr.34 = internal global ptr @test_for_each._entry.32, section ".printk_index", align 4
@test_for_each._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.11, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013No fence found\0A\00", [46 x i8] zeroinitializer }, align 32
@test_for_each._entry_ptr.37 = internal global ptr @test_for_each._entry.35, section ".printk_index", align 4
@test_for_each_unlocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.38, ptr @.str.11, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_for_each_unlocked\00", [41 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr = internal global ptr @test_for_each_unlocked._entry, section ".printk_index", align 4
@test_for_each_unlocked._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.38, ptr @.str.11, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr.40 = internal global ptr @test_for_each_unlocked._entry.39, section ".printk_index", align 4
@test_for_each_unlocked._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.38, ptr @.str.11, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr.42 = internal global ptr @test_for_each_unlocked._entry.41, section ".printk_index", align 4
@test_for_each_unlocked._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.38, ptr @.str.11, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013No restart flag\0A\00", [45 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr.45 = internal global ptr @test_for_each_unlocked._entry.43, section ".printk_index", align 4
@test_for_each_unlocked._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.38, ptr @.str.11, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr.47 = internal global ptr @test_for_each_unlocked._entry.46, section ".printk_index", align 4
@test_for_each_unlocked._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.38, ptr @.str.11, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr.49 = internal global ptr @test_for_each_unlocked._entry.48, section ".printk_index", align 4
@test_for_each_unlocked._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.11, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_for_each_unlocked._entry_ptr.51 = internal global ptr @test_for_each_unlocked._entry.50, section ".printk_index", align 4
@test_get_fences._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.52, ptr @.str.11, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_get_fences\00", [16 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr = internal global ptr @test_get_fences._entry, section ".printk_index", align 4
@test_get_fences._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.52, ptr @.str.11, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr.54 = internal global ptr @test_get_fences._entry.53, section ".printk_index", align 4
@test_get_fences._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.11, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013get_fences failed\0A\00", [43 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr.57 = internal global ptr @test_get_fences._entry.55, section ".printk_index", align 4
@test_get_fences._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.11, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013get_fences returned unexpected excl fence\0A\00", [51 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr.60 = internal global ptr @test_get_fences._entry.58, section ".printk_index", align 4
@test_get_fences._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.52, ptr @.str.11, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013get_fences returned unexpected shared fence\0A\00", [49 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr.63 = internal global ptr @test_get_fences._entry.61, section ".printk_index", align 4
@test_get_fences._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.11, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr.65 = internal global ptr @test_get_fences._entry.64, section ".printk_index", align 4
@test_get_fences._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.52, ptr @.str.11, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_get_fences._entry_ptr.67 = internal global ptr @test_get_fences._entry.66, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 357, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 358, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 359, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 360, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 361, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 362, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 363, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 364, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 365, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 366, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"fence_lock\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 14, i32 24 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 369, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 54, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"fence_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 21, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 18, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 74, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 81, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 91, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 97, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 133, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 140, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 152, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 157, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 162, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 169, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 205, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 212, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 227, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 232, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 236, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 241, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 256, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 289, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 296, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 309, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 315, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 319, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 324, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private constant [33 x i8] c"../drivers/dma-buf/st-dma-resv.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 328, i32 4 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @sanitycheck._entry, ptr @sanitycheck._entry_ptr, ptr @test_for_each._entry, ptr @test_for_each._entry.24, ptr @test_for_each._entry.26, ptr @test_for_each._entry.29, ptr @test_for_each._entry.32, ptr @test_for_each._entry.35, ptr @test_for_each._entry_ptr, ptr @test_for_each._entry_ptr.25, ptr @test_for_each._entry_ptr.28, ptr @test_for_each._entry_ptr.31, ptr @test_for_each._entry_ptr.34, ptr @test_for_each._entry_ptr.37, ptr @test_for_each_unlocked._entry, ptr @test_for_each_unlocked._entry.39, ptr @test_for_each_unlocked._entry.41, ptr @test_for_each_unlocked._entry.43, ptr @test_for_each_unlocked._entry.46, ptr @test_for_each_unlocked._entry.48, ptr @test_for_each_unlocked._entry.50, ptr @test_for_each_unlocked._entry_ptr, ptr @test_for_each_unlocked._entry_ptr.40, ptr @test_for_each_unlocked._entry_ptr.42, ptr @test_for_each_unlocked._entry_ptr.45, ptr @test_for_each_unlocked._entry_ptr.47, ptr @test_for_each_unlocked._entry_ptr.49, ptr @test_for_each_unlocked._entry_ptr.51, ptr @test_get_fences._entry, ptr @test_get_fences._entry.53, ptr @test_get_fences._entry.55, ptr @test_get_fences._entry.58, ptr @test_get_fences._entry.61, ptr @test_get_fences._entry.64, ptr @test_get_fences._entry.66, ptr @test_get_fences._entry_ptr, ptr @test_get_fences._entry_ptr.54, ptr @test_get_fences._entry_ptr.57, ptr @test_get_fences._entry_ptr.60, ptr @test_get_fences._entry_ptr.63, ptr @test_get_fences._entry_ptr.65, ptr @test_get_fences._entry_ptr.67, ptr @test_signaling._entry, ptr @test_signaling._entry.14, ptr @test_signaling._entry.17, ptr @test_signaling._entry.20, ptr @test_signaling._entry_ptr, ptr @test_signaling._entry_ptr.16, ptr @test_signaling._entry_ptr.19, ptr @test_signaling._entry_ptr.22, ptr @dma_resv.tests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dma_resv.__key, ptr @fence_lock, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @fence_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.44, ptr @.str.52, ptr @.str.56, ptr @.str.59, ptr @.str.62], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_resv.tests to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_resv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fence_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sanitycheck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_signaling._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_for_each_unlocked._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_get_fences._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_resv() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @fence_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @dma_resv.__key, i16 noundef signext 3) #7
  %call1 = tail call i32 @__subtests(ptr noundef nonnull @__func__.dma_resv, ptr noundef nonnull @dma_resv.tests, i32 noundef 9, ptr noundef null) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sanitycheck(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %resv = alloca %struct.dma_resv, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resv) #7
  %0 = call ptr @memset(ptr %resv, i32 255, i32 144)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 48) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fence_ops, ptr noundef nonnull @fence_lock, i64 noundef 0, i64 noundef 0) #7
  %call1 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call7.i.i) #7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !134

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  call void @dma_resv_init(ptr noundef nonnull %resv) #7
  %call.i = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.end6

if.else:                                          ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  call void @dma_resv_fini(ptr noundef nonnull %resv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resv) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_excl_signaling(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_signaling(i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_shared_signaling(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_signaling(i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_excl_for_each(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_for_each(i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_shared_for_each(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_for_each(i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_excl_for_each_unlocked(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_for_each_unlocked(i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_shared_for_each_unlocked(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_for_each_unlocked(i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_excl_get_fences(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_get_fences(i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_shared_get_fences(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @test_get_fences(i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__subtests(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @fence_name(ptr nocapture noundef readnone %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_signaling(i1 noundef zeroext %shared) unnamed_addr #0 align 64 {
entry:
  %resv = alloca %struct.dma_resv, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resv) #7
  %0 = call ptr @memset(ptr %resv, i32 255, i32 144)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 48) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fence_ops, ptr noundef nonnull @fence_lock, i64 noundef 0, i64 noundef 0) #7
  call void @dma_resv_init(ptr noundef nonnull %resv) #7
  %call.i = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  br i1 %shared, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @dma_resv_reserve_shared(ptr noundef nonnull %resv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %if.then7.err_unlock.sink.split_crit_edge

if.then7.err_unlock.sink.split_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.sink.split

if.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_shared_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_excl_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  %call19 = call zeroext i1 @dma_resv_test_signaled(ptr noundef nonnull %resv, i1 noundef zeroext %shared) #7
  br i1 %call19, label %if.end17.err_unlock.sink.split_crit_edge, label %if.end26

if.end17.err_unlock.sink.split_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.sink.split

if.end26:                                         ; preds = %if.end17
  %call27 = call i32 @dma_fence_signal(ptr noundef nonnull %call7.i.i) #7
  %call29 = call zeroext i1 @dma_resv_test_signaled(ptr noundef nonnull %resv, i1 noundef zeroext %shared) #7
  br i1 %call29, label %if.end26.err_unlock_crit_edge, label %if.end26.err_unlock.sink.split_crit_edge

if.end26.err_unlock.sink.split_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.sink.split

if.end26.err_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

err_unlock.sink.split:                            ; preds = %if.end26.err_unlock.sink.split_crit_edge, %if.end17.err_unlock.sink.split_crit_edge, %if.then7.err_unlock.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.15, %if.then7.err_unlock.sink.split_crit_edge ], [ @.str.18, %if.end17.err_unlock.sink.split_crit_edge ], [ @.str.21, %if.end26.err_unlock.sink.split_crit_edge ]
  %r.1.ph = phi i32 [ %call8, %if.then7.err_unlock.sink.split_crit_edge ], [ -22, %if.end17.err_unlock.sink.split_crit_edge ], [ -22, %if.end26.err_unlock.sink.split_crit_edge ]
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink) #11
  br label %err_unlock

err_unlock:                                       ; preds = %err_unlock.sink.split, %if.end26.err_unlock_crit_edge
  %r.1 = phi i32 [ 0, %if.end26.err_unlock_crit_edge ], [ %r.1.ph, %err_unlock.sink.split ]
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  br label %if.then.i

if.then.i:                                        ; preds = %err_unlock, %do.end
  %r.2 = phi i32 [ %call.i, %do.end ], [ %r.1, %err_unlock ]
  call void @dma_resv_fini(ptr noundef nonnull %resv) #7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !134

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.2, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %r.2, %if.then10.i.i.i.i.i ], [ %r.2, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resv) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_for_each(i1 noundef zeroext %shared) unnamed_addr #0 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  %resv = alloca %struct.dma_resv, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #7
  %0 = call ptr @memset(ptr %cursor, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resv) #7
  %1 = call ptr @memset(ptr %resv, i32 255, i32 144)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 48) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fence_ops, ptr noundef nonnull @fence_lock, i64 noundef 0, i64 noundef 0) #7
  call void @dma_resv_init(ptr noundef nonnull %resv) #7
  %call.i = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  br i1 %shared, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @dma_resv_reserve_shared(ptr noundef nonnull %resv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %err_unlock

if.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_shared_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_excl_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  %frombool.i = zext i1 %shared to i8
  %3 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %resv, ptr %cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %4 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool.i, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %5 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fence.i, align 4
  %call19 = call ptr @dma_resv_iter_first(ptr noundef nonnull %cursor) #7
  %tobool20.not9 = icmp eq ptr %call19, null
  br i1 %tobool20.not9, label %do.end52, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end17
  %cmp.not = icmp eq ptr %call7.i.i, %call19
  br i1 %cmp.not, label %if.end35, label %do.end32

do.end25:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %err_unlock

do.end32:                                         ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  br label %err_unlock

if.end35:                                         ; preds = %for.body.lr.ph
  %index.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 4
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %8 = xor i1 %cmp.i, %shared
  br i1 %8, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  br label %err_unlock

if.end46:                                         ; preds = %if.end35
  %call47 = call ptr @dma_resv_iter_next(ptr noundef nonnull %cursor) #7
  %tobool20.not = icmp eq ptr %call47, null
  br i1 %tobool20.not, label %if.end55, label %do.end25

do.end52:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %err_unlock

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = call i32 @dma_fence_signal(ptr noundef nonnull %call7.i.i) #7
  br label %err_unlock

err_unlock:                                       ; preds = %if.end55, %do.end52, %do.end43, %do.end32, %do.end25, %do.end13
  %r.1 = phi i32 [ %call8, %do.end13 ], [ -22, %do.end32 ], [ -22, %do.end43 ], [ -22, %do.end25 ], [ -2, %do.end52 ], [ 0, %if.end55 ]
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  br label %if.then.i

if.then.i:                                        ; preds = %err_unlock, %do.end
  %r.2 = phi i32 [ %call.i, %do.end ], [ %r.1, %err_unlock ]
  call void @dma_resv_fini(ptr noundef nonnull %resv) #7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !134

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.2, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %r.2, %if.then10.i.i.i.i.i ], [ %r.2, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resv) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_for_each_unlocked(i1 noundef zeroext %shared) unnamed_addr #0 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  %resv = alloca %struct.dma_resv, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #7
  %0 = call ptr @memset(ptr %cursor, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resv) #7
  %1 = call ptr @memset(ptr %resv, i32 255, i32 144)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 48) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fence_ops, ptr noundef nonnull @fence_lock, i64 noundef 0, i64 noundef 0) #7
  call void @dma_resv_init(ptr noundef nonnull %resv) #7
  %call.i = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  br i1 %shared, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @dma_resv_reserve_shared(ptr noundef nonnull %resv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  br label %if.then.i

if.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_shared_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_excl_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  %frombool.i = zext i1 %shared to i8
  %3 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %resv, ptr %cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %4 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool.i, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %5 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fence.i, align 4
  %call19 = call ptr @dma_resv_iter_first_unlocked(ptr noundef nonnull %cursor) #7
  %tobool20.not9 = icmp eq ptr %call19, null
  br i1 %tobool20.not9, label %if.end17.err_iter_end.sink.split_crit_edge, label %for.body.lr.ph

if.end17.err_iter_end.sink.split_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end.sink.split

for.body.lr.ph:                                   ; preds = %if.end17
  %is_restarted.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 7
  %index.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 4
  %seq = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fence.011 = phi ptr [ %call19, %for.body.lr.ph ], [ %call64, %for.inc.for.body_crit_edge ]
  %r.010 = phi i32 [ -2, %for.body.lr.ph ], [ %r.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.010)
  %tobool21.not = icmp eq i32 %r.010, 0
  br i1 %tobool21.not, label %for.body.err_iter_end.sink.split_crit_edge, label %if.end28

for.body.err_iter_end.sink.split_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end.sink.split

if.end28:                                         ; preds = %for.body
  %6 = ptrtoint ptr %is_restarted.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_restarted.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  br i1 %tobool.i.not, label %if.end28.err_iter_end.sink.split_crit_edge, label %if.end36

if.end28.err_iter_end.sink.split_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end.sink.split

if.end36:                                         ; preds = %if.end28
  %cmp.not = icmp eq ptr %call7.i.i, %fence.011
  br i1 %cmp.not, label %if.end43, label %if.end36.err_iter_end.sink.split_crit_edge

if.end36.err_iter_end.sink.split_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end.sink.split

if.end43:                                         ; preds = %if.end36
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %10 = xor i1 %cmp.i, %shared
  br i1 %10, label %if.end54, label %if.end43.err_iter_end.sink.split_crit_edge

if.end43.err_iter_end.sink.split_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end.sink.split

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %r.010)
  %cmp55 = icmp eq i32 %r.010, -2
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %seq, align 4
  br label %for.inc

if.else58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %r.010)
  %cmp59 = icmp eq i32 %r.010, -22
  %spec.store.select = select i1 %cmp59, i32 0, i32 %r.010
  br label %for.inc

for.inc:                                          ; preds = %if.else58, %if.then57
  %r.1 = phi i32 [ -22, %if.then57 ], [ %spec.store.select, %if.else58 ]
  %call64 = call ptr @dma_resv_iter_next_unlocked(ptr noundef nonnull %cursor) #7
  %tobool20.not = icmp eq ptr %call64, null
  br i1 %tobool20.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.1)
  %tobool65.not = icmp eq i32 %r.1, 0
  br i1 %tobool65.not, label %for.end.err_iter_end_crit_edge, label %for.end.err_iter_end.sink.split_crit_edge

for.end.err_iter_end.sink.split_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end.sink.split

for.end.err_iter_end_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iter_end

err_iter_end.sink.split:                          ; preds = %for.end.err_iter_end.sink.split_crit_edge, %if.end43.err_iter_end.sink.split_crit_edge, %if.end36.err_iter_end.sink.split_crit_edge, %if.end28.err_iter_end.sink.split_crit_edge, %for.body.err_iter_end.sink.split_crit_edge, %if.end17.err_iter_end.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.36, %if.end17.err_iter_end.sink.split_crit_edge ], [ @.str.36, %for.end.err_iter_end.sink.split_crit_edge ], [ @.str.27, %for.body.err_iter_end.sink.split_crit_edge ], [ @.str.44, %if.end28.err_iter_end.sink.split_crit_edge ], [ @.str.30, %if.end36.err_iter_end.sink.split_crit_edge ], [ @.str.33, %if.end43.err_iter_end.sink.split_crit_edge ]
  %r.2.ph = phi i32 [ -2, %if.end17.err_iter_end.sink.split_crit_edge ], [ %r.1, %for.end.err_iter_end.sink.split_crit_edge ], [ -22, %for.body.err_iter_end.sink.split_crit_edge ], [ %r.010, %if.end28.err_iter_end.sink.split_crit_edge ], [ -22, %if.end36.err_iter_end.sink.split_crit_edge ], [ -22, %if.end43.err_iter_end.sink.split_crit_edge ]
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.36.sink) #11
  br label %err_iter_end

err_iter_end:                                     ; preds = %err_iter_end.sink.split, %for.end.err_iter_end_crit_edge
  %r.2 = phi i32 [ 0, %for.end.err_iter_end_crit_edge ], [ %r.2.ph, %err_iter_end.sink.split ]
  %13 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fence.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %err_iter_end.dma_resv_iter_end.exit_crit_edge, label %if.then.i.i

err_iter_end.dma_resv_iter_end.exit_crit_edge:    ; preds = %err_iter_end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_iter_end.exit

if.then.i.i:                                      ; preds = %err_iter_end
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_resv_iter_end.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !134

if.end5.i.i.i.i.i.i.dma_resv_iter_end.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_iter_end.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %dma_resv_iter_end.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i.i) #7
  br label %dma_resv_iter_end.exit

dma_resv_iter_end.exit:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_resv_iter_end.exit_crit_edge, %err_iter_end.dma_resv_iter_end.exit_crit_edge
  %call73 = call i32 @dma_fence_signal(ptr noundef nonnull %call7.i.i) #7
  br label %if.then.i

if.then.i:                                        ; preds = %dma_resv_iter_end.exit, %do.end13, %do.end
  %r.3 = phi i32 [ %call.i, %do.end ], [ %call8, %do.end13 ], [ %r.2, %dma_resv_iter_end.exit ]
  call void @dma_resv_fini(ptr noundef nonnull %resv) #7
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i3, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !134

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i3:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i3, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.3, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %r.3, %if.then10.i.i.i.i.i ], [ %r.3, %if.then.i.i3 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resv) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_get_fences(i1 noundef zeroext %shared) unnamed_addr #0 align 64 {
entry:
  %excl = alloca ptr, align 4
  %fences = alloca ptr, align 4
  %resv = alloca %struct.dma_resv, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %excl) #7
  %0 = ptrtoint ptr %excl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %excl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fences) #7
  %1 = ptrtoint ptr %fences to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fences, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resv) #7
  %2 = call ptr @memset(ptr %resv, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 48) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dma_fence_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fence_ops, ptr noundef nonnull @fence_lock, i64 noundef 0, i64 noundef 0) #7
  call void @dma_resv_init(ptr noundef nonnull %resv) #7
  %call.i = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %if.then.i20

if.end5:                                          ; preds = %if.end
  br i1 %shared, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @dma_resv_reserve_shared(ptr noundef nonnull %resv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  br label %if.then.i20

if.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_shared_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_resv_add_excl_fence(ptr noundef nonnull %resv, ptr noundef nonnull %call7.i.i) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  %call18 = call i32 @dma_resv_get_fences(ptr noundef nonnull %resv, ptr noundef nonnull %excl, ptr noundef nonnull %i, ptr noundef nonnull %fences) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #11
  br label %err_free

if.end26:                                         ; preds = %if.end17
  %5 = ptrtoint ptr %excl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %excl, align 4
  br i1 %shared, label %if.then28, label %if.else45

if.then28:                                        ; preds = %if.end26
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #11
  br label %err_free

if.end35:                                         ; preds = %if.then28
  %7 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp36.not = icmp eq i32 %8, 1
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end35.do.end41_crit_edge

if.end35.do.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

lor.lhs.false:                                    ; preds = %if.end35
  %9 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fences, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp37.not = icmp eq ptr %12, %call7.i.i
  br i1 %cmp37.not, label %lor.lhs.false.if.end62_crit_edge, label %lor.lhs.false.do.end41_crit_edge

lor.lhs.false.do.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end41:                                         ; preds = %lor.lhs.false.do.end41_crit_edge, %if.end35.do.end41_crit_edge
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #11
  br label %err_free

if.else45:                                        ; preds = %if.end26
  %cmp46.not = icmp eq ptr %6, %call7.i.i
  br i1 %cmp46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #11
  br label %err_free

if.end53:                                         ; preds = %if.else45
  %13 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp54.not = icmp eq i32 %14, 0
  br i1 %cmp54.not, label %if.end53.if.end62_crit_edge, label %do.end58

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end58:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #11
  br label %err_free

if.end62:                                         ; preds = %if.end53.if.end62_crit_edge, %lor.lhs.false.if.end62_crit_edge
  %call63 = call i32 @dma_fence_signal(ptr noundef nonnull %call7.i.i) #7
  br label %err_free

err_free:                                         ; preds = %if.end62, %do.end58, %do.end50, %do.end41, %do.end32, %do.end23
  %15 = ptrtoint ptr %excl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %excl, align 4
  %tobool.not.i1 = icmp eq ptr %16, null
  br i1 %tobool.not.i1, label %err_free.dma_fence_put.exit_crit_edge, label %if.then.i

err_free.dma_fence_put.exit_crit_edge:            ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %err_free
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !134

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %err_free.dma_fence_put.exit_crit_edge
  %18 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i, align 4
  %dec27 = add i32 %19, -1
  store i32 %dec27, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool64.not28 = icmp eq i32 %19, 0
  br i1 %tobool64.not28, label %dma_fence_put.exit.while.end_crit_edge, label %dma_fence_put.exit.while.body_crit_edge

dma_fence_put.exit.while.body_crit_edge:          ; preds = %dma_fence_put.exit
  br label %while.body

dma_fence_put.exit.while.end_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %dma_fence_put.exit14.while.body_crit_edge, %dma_fence_put.exit.while.body_crit_edge
  %dec29 = phi i32 [ %dec, %dma_fence_put.exit14.while.body_crit_edge ], [ %dec27, %dma_fence_put.exit.while.body_crit_edge ]
  %20 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fences, align 4
  %arrayidx65 = getelementptr ptr, ptr %21, i32 %dec29
  %22 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx65, align 4
  %tobool.not.i3 = icmp eq ptr %23, null
  br i1 %tobool.not.i3, label %while.body.dma_fence_put.exit14_crit_edge, label %if.then.i8

while.body.dma_fence_put.exit14_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit14

if.then.i8:                                       ; preds = %while.body
  %refcount.i4 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  %call.i.i.i.i.i.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i4, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i4, i32 1, i32 3, i32 1) #7
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i4, ptr %refcount.i4, i32 1, ptr elementtype(i32) %refcount.i4) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i6)
  %cmp.i.i.i.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i6, 1
  br i1 %cmp.i.i.i.i.i7, label %if.then.i.i12, label %if.end5.i.i.i.i.i10

if.end5.i.i.i.i.i10:                              ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i6)
  %.not.i.i.i.i.i9 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i6, 0
  br i1 %.not.i.i.i.i.i9, label %if.end5.i.i.i.i.i10.dma_fence_put.exit14_crit_edge, label %if.then10.i.i.i.i.i11, !prof !134

if.end5.i.i.i.i.i10.dma_fence_put.exit14_crit_edge: ; preds = %if.end5.i.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit14

if.then10.i.i.i.i.i11:                            ; preds = %if.end5.i.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i4, i32 noundef 3) #7
  br label %dma_fence_put.exit14

if.then.i.i12:                                    ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i4) #7
  br label %dma_fence_put.exit14

dma_fence_put.exit14:                             ; preds = %if.then.i.i12, %if.then10.i.i.i.i.i11, %if.end5.i.i.i.i.i10.dma_fence_put.exit14_crit_edge, %while.body.dma_fence_put.exit14_crit_edge
  %25 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %i, align 4
  %tobool64.not = icmp eq i32 %26, 0
  br i1 %tobool64.not, label %dma_fence_put.exit14.while.end_crit_edge, label %dma_fence_put.exit14.while.body_crit_edge

dma_fence_put.exit14.while.body_crit_edge:        ; preds = %dma_fence_put.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

dma_fence_put.exit14.while.end_crit_edge:         ; preds = %dma_fence_put.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %dma_fence_put.exit14.while.end_crit_edge, %dma_fence_put.exit.while.end_crit_edge
  %27 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fences, align 4
  call void @kfree(ptr noundef %28) #7
  br label %if.then.i20

if.then.i20:                                      ; preds = %while.end, %do.end13, %do.end
  %r.0 = phi i32 [ %call.i, %do.end ], [ %call8, %do.end13 ], [ %call18, %while.end ]
  call void @dma_resv_fini(ptr noundef nonnull %resv) #7
  %refcount.i16 = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i17 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i16, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @llvm.prefetch.p0(ptr %refcount.i16, i32 1, i32 3, i32 1) #7
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i16, ptr %refcount.i16, i32 1, ptr elementtype(i32) %refcount.i16) #7, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i.i19 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i.i19, label %if.then.i.i24, label %if.end5.i.i.i.i.i22

if.end5.i.i.i.i.i22:                              ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i18)
  %.not.i.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i.i21, label %if.end5.i.i.i.i.i22.cleanup_crit_edge, label %if.then10.i.i.i.i.i23, !prof !134

if.end5.i.i.i.i.i22.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i23:                            ; preds = %if.end5.i.i.i.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i16, i32 noundef 3) #7
  br label %cleanup

if.then.i.i24:                                    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @dma_fence_release(ptr noundef %refcount.i16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i24, %if.then10.i.i.i.i.i23, %if.end5.i.i.i.i.i22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end5.i.i.i.i.i22.cleanup_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i23 ], [ %r.0, %if.then.i.i24 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fences) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %excl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_get_fences(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 358, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 359, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 360, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 361, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 362, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 363, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 364, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 365, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 366, i32 3}
!18 = !{ptr @dma_resv.tests, !19, !"tests", i1 false, i1 false}
!19 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 357, i32 30}
!20 = !{ptr @dma_resv.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 369, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.dma_resv, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 370, i32 9}
!25 = !{ptr @fence_lock, !26, !"fence_lock", i1 false, i1 false}
!26 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 14, i32 24}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 54, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sanitycheck._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @sanitycheck._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @fence_ops, !33, !"fence_ops", i1 false, i1 false}
!33 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 21, i32 35}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 18, i32 9}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 74, i32 3}
!38 = !{ptr @test_signaling._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test_signaling._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 81, i32 4}
!42 = !{ptr @test_signaling._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @test_signaling._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 91, i32 3}
!46 = !{ptr @test_signaling._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @test_signaling._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 97, i32 3}
!50 = !{ptr @test_signaling._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @test_signaling._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 133, i32 3}
!54 = !{ptr @test_for_each._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @test_for_each._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @test_for_each._entry.24, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 140, i32 4}
!58 = !{ptr @test_for_each._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 152, i32 4}
!61 = !{ptr @test_for_each._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @test_for_each._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 157, i32 4}
!65 = !{ptr @test_for_each._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @test_for_each._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 162, i32 4}
!69 = !{ptr @test_for_each._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @test_for_each._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 169, i32 3}
!73 = !{ptr @test_for_each._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @test_for_each._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 205, i32 3}
!77 = !{ptr @test_for_each_unlocked._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @test_for_each_unlocked._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @test_for_each_unlocked._entry.39, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 212, i32 4}
!81 = !{ptr @test_for_each_unlocked._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @test_for_each_unlocked._entry.41, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 227, i32 4}
!84 = !{ptr @test_for_each_unlocked._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 232, i32 4}
!87 = !{ptr @test_for_each_unlocked._entry.43, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @test_for_each_unlocked._entry_ptr.45, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @test_for_each_unlocked._entry.46, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 236, i32 4}
!91 = !{ptr @test_for_each_unlocked._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @test_for_each_unlocked._entry.48, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 241, i32 4}
!94 = !{ptr @test_for_each_unlocked._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @test_for_each_unlocked._entry.50, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 256, i32 3}
!97 = !{ptr @test_for_each_unlocked._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 289, i32 3}
!100 = !{ptr @test_get_fences._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @test_get_fences._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @test_get_fences._entry.53, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 296, i32 4}
!104 = !{ptr @test_get_fences._entry_ptr.54, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 309, i32 3}
!107 = !{ptr @test_get_fences._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @test_get_fences._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 315, i32 4}
!111 = !{ptr @test_get_fences._entry.58, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @test_get_fences._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 319, i32 4}
!115 = !{ptr @test_get_fences._entry.61, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @test_get_fences._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @test_get_fences._entry.64, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 324, i32 4}
!119 = !{ptr @test_get_fences._entry_ptr.65, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @test_get_fences._entry.66, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/dma-buf/st-dma-resv.c", i32 328, i32 4}
!122 = !{ptr @test_get_fences._entry_ptr.67, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148675141}
!133 = !{i64 2148589581, i64 2148589613, i64 2148589642, i64 2148589676, i64 2148589707, i64 2148589730}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2149872914}
!136 = !{i8 0, i8 2}
!137 = !{!"auto-init"}
