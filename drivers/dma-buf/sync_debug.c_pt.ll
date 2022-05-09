; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/sync_debug.c_pt.bc'
source_filename = "../drivers/dma-buf/sync_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sync_timeline = type { %struct.kref, [32 x i8], i64, i32, %struct.rb_root, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.sync_file = type { ptr, [32 x i8], %struct.list_head, %struct.wait_queue_head, i32, ptr, %struct.dma_fence_cb }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.63 = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.68, i64, i64, i32, %struct.kref, i32 }
%union.anon.68 = type { i64 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, ptr, %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16 }
%struct.llist_node = type { ptr }
%union.anon.16 = type { i32 }
%struct.rcuwait = type { ptr }

@sync_timeline_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sync_timeline_list_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sync_timeline_list_head, ptr @sync_timeline_list_head }, [24 x i8] zeroinitializer }, align 32
@sync_file_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sync_file_list_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sync_file_list_head, ptr @sync_file_list_head }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_sync_debug__214_190_sync_debugfs_init7 = internal global ptr @sync_debugfs_init, section ".initcall7.init", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sync_timeline_list_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sync_file_list_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@dbgfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@sync_info_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sync_info_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_sync\00", [24 x i8] zeroinitializer }, align 32
@sw_sync_debugfs_fops = external dso_local constant %struct.file_operations, align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"objs:\0A--------------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fences:\0A--------------\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  %s%sfence %s\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"_\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"@%lld.%09ld\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c": %s\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" / %s\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"signaled\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%p] %s: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dma_fence_array_ops = external dso_local constant %struct.dma_fence_ops, align 4
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"sync_timeline_list_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"sync_timeline_list_head\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 13, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"sync_file_list_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"sync_file_list_head\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 15, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 14, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 16, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 176, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"dbgfs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 11, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 183, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"sync_info_debugfs_fops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 172, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 185, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 145, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 158, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 111, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 73, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 74, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 75, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 82, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 94, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 100, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 57, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 60, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 62, i32 9 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [32 x i8] c"../drivers/dma-buf/sync_debug.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 127, i32 16 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_sync_debug__214_190_sync_debugfs_init7, ptr @sync_timeline_list_lock, ptr @sync_timeline_list_head, ptr @sync_file_list_lock, ptr @sync_file_list_head, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dbgfs, ptr @.str.3, ptr @sync_info_debugfs_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_timeline_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_timeline_list_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_file_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_file_list_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_info_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sync_timeline_debug_add(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sync_timeline_list_lock) #4
  %sync_timeline_list = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 7
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @sync_timeline_list_head, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sync_timeline_list, ptr noundef %0, ptr noundef nonnull @sync_timeline_list_head) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %sync_timeline_list, ptr getelementptr inbounds (%struct.list_head, ptr @sync_timeline_list_head, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %sync_timeline_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sync_timeline_list_head, ptr %sync_timeline_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sync_timeline_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sync_timeline_list_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sync_timeline_debug_remove(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sync_timeline_list_lock) #4
  %sync_timeline_list = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sync_timeline_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %sync_timeline_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_timeline_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %sync_timeline_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %sync_timeline_list, align 4
  %prev.i = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sync_timeline_list_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sync_file_debug_add(ptr noundef %sync_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sync_file_list_lock) #4
  %sync_file_list = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 2
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @sync_file_list_head, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sync_file_list, ptr noundef %0, ptr noundef nonnull @sync_file_list_head) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %sync_file_list, ptr getelementptr inbounds (%struct.list_head, ptr @sync_file_list_head, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %sync_file_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sync_file_list_head, ptr %sync_file_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sync_file_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sync_file_list_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sync_file_debug_remove(ptr noundef %sync_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sync_file_list_lock) #4
  %sync_file_list = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sync_file_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %sync_file_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_file_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %sync_file_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %sync_file_list, align 4
  %prev.i = getelementptr inbounds %struct.sync_file, ptr %sync_file, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sync_file_list_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_debugfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef null) #4
  store ptr %call, ptr @dbgfs, align 4
  %call1 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @sync_info_debugfs_fops) #4
  %0 = load ptr, ptr @dbgfs, align 4
  %call2 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %0, ptr noundef null, ptr noundef nonnull @sw_sync_debugfs_fops) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_info_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sync_info_debugfs_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_info_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %buf.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.5) #4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @sync_timeline_list_lock) #4
  %pos.026 = load ptr, ptr @sync_timeline_list_head, align 4
  %cmp.i.not27 = icmp eq ptr %pos.026, @sync_timeline_list_head
  br i1 %cmp.i.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %sync_print_obj.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.028 = phi ptr [ %pos.0, %sync_print_obj.exit.for.body_crit_edge ], [ %pos.026, %entry.for.body_crit_edge ]
  %name.i = getelementptr i8, ptr %pos.028, i32 -104
  %value.i = getelementptr i8, ptr %pos.028, i32 -60
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %1) #4
  %lock.i = getelementptr i8, ptr %pos.028, i32 -44
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #4
  %pt_list.i = getelementptr i8, ptr %pos.028, i32 -52
  %2 = ptrtoint ptr %pt_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.012.i = load ptr, ptr %pt_list.i, align 4
  %cmp.i.not13.i = icmp eq ptr %pos.012.i, %pt_list.i
  br i1 %cmp.i.not13.i, label %for.body.sync_print_obj.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.sync_print_obj.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sync_print_obj.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %pos.014.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.012.i, %for.body.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.014.i, i32 -48
  tail call fastcc void @sync_print_fence(ptr noundef %s, ptr noundef %add.ptr.i, i1 noundef zeroext false) #4
  %3 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %pos.0.i = load ptr, ptr %pos.014.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %pt_list.i
  br i1 %cmp.i.not.i, label %for.body.i.sync_print_obj.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.sync_print_obj.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sync_print_obj.exit

sync_print_obj.exit:                              ; preds = %for.body.i.sync_print_obj.exit_crit_edge, %for.body.sync_print_obj.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #4
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  %4 = ptrtoint ptr %pos.028 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.0 = load ptr, ptr %pos.028, align 4
  %cmp.i.not = icmp eq ptr %pos.0, @sync_timeline_list_head
  br i1 %cmp.i.not, label %sync_print_obj.exit.for.end_crit_edge, label %sync_print_obj.exit.for.body_crit_edge

sync_print_obj.exit.for.body_crit_edge:           ; preds = %sync_print_obj.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

sync_print_obj.exit.for.end_crit_edge:            ; preds = %sync_print_obj.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %sync_print_obj.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @sync_timeline_list_lock) #4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.6) #4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @sync_file_list_lock) #4
  %pos.129 = load ptr, ptr @sync_file_list_head, align 4
  %cmp.i22.not30 = icmp eq ptr %pos.129, @sync_file_list_head
  br i1 %cmp.i22.not30, label %for.end.for.end11_crit_edge, label %for.end.for.body5_crit_edge

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.end.for.end11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end11

for.body5:                                        ; preds = %sync_print_sync_file.exit.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %pos.131 = phi ptr [ %pos.1, %sync_print_sync_file.exit.for.body5_crit_edge ], [ %pos.129, %for.end.for.body5_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %pos.131, i32 -36
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i) #4
  %5 = call ptr @memset(ptr %buf.i, i32 255, i32 128)
  %call.i = call ptr @sync_file_get_name(ptr noundef %add.ptr8, ptr noundef nonnull %buf.i, i32 noundef 128) #4
  %fence.i = getelementptr i8, ptr %pos.131, i32 64
  %6 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence.i, align 4
  %call1.i = call i32 @dma_fence_get_status(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i.i = icmp slt i32 %call1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp1.not.i.i = icmp eq i32 %call1.i, 0
  %.str.16..str.15.i.i = select i1 %cmp1.not.i.i, ptr @.str.16, ptr @.str.15
  %retval.0.i.i = select i1 %cmp.i.i, ptr @.str.14, ptr %.str.16..str.15.i.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef %add.ptr8, ptr noundef %call.i, ptr noundef nonnull %retval.0.i.i) #4
  %8 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fence.i, align 4
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %cmp.i18.i = icmp eq ptr %11, @dma_fence_array_ops
  br i1 %cmp.i18.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %for.body5
  %num_fences.i = getelementptr inbounds %struct.dma_fence_array, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %num_fences.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_fences.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20.not.i = icmp eq i32 %13, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i.sync_print_sync_file.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sync_print_sync_file.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sync_print_sync_file.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %fences.i = getelementptr inbounds %struct.dma_fence_array, ptr %9, i32 0, i32 4
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i25.for.body.i25_crit_edge ]
  %14 = ptrtoint ptr %fences.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fences.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %i.021.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  call fastcc void @sync_print_fence(ptr noundef %s, ptr noundef %17, i1 noundef zeroext true) #4
  %inc.i = add nuw i32 %i.021.i, 1
  %18 = ptrtoint ptr %num_fences.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_fences.i, align 4
  %cmp.i24 = icmp ult i32 %inc.i, %19
  br i1 %cmp.i24, label %for.body.i25.for.body.i25_crit_edge, label %for.body.i25.sync_print_sync_file.exit_crit_edge

for.body.i25.sync_print_sync_file.exit_crit_edge: ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sync_print_sync_file.exit

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i25

if.else.i:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @sync_print_fence(ptr noundef %s, ptr noundef %9, i1 noundef zeroext true) #4
  br label %sync_print_sync_file.exit

sync_print_sync_file.exit:                        ; preds = %if.else.i, %for.body.i25.sync_print_sync_file.exit_crit_edge, %for.cond.preheader.i.sync_print_sync_file.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i) #4
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  %20 = ptrtoint ptr %pos.131 to i32
  call void @__asan_load4_noabort(i32 %20)
  %pos.1 = load ptr, ptr %pos.131, align 4
  %cmp.i22.not = icmp eq ptr %pos.1, @sync_file_list_head
  br i1 %cmp.i22.not, label %sync_print_sync_file.exit.for.end11_crit_edge, label %sync_print_sync_file.exit.for.body5_crit_edge

sync_print_sync_file.exit.for.body5_crit_edge:    ; preds = %sync_print_sync_file.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body5

sync_print_sync_file.exit.for.end11_crit_edge:    ; preds = %sync_print_sync_file.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end11

for.end11:                                        ; preds = %sync_print_sync_file.exit.for.end11_crit_edge, %for.end.for.end11_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @sync_file_list_lock) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sync_print_fence(ptr noundef %s, ptr noundef %fence, i1 noundef zeroext %show) unnamed_addr #0 align 64 {
entry:
  %ts64 = alloca %struct.timespec64, align 8
  %value = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %signaled.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signaled.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %if.end.i.i..thread_crit_edge, label %land.lhs.true.i.i

if.end.i.i..thread_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = tail call zeroext i1 %7(ptr noundef %fence) #4
  br i1 %call4.i.i, label %if.then5.i.i, label %land.lhs.true.i.i..thread_crit_edge

land.lhs.true.i.i..thread_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i.i = tail call i32 @dma_fence_signal_locked(ptr noundef %fence) #4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i.i, %entry.if.then.i_crit_edge
  %error.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 7
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %name68 = getelementptr i8, ptr %1, i32 -60
  %spec.select69 = select i1 %show, ptr @.str.10, ptr @.str.9
  %spec.select4770 = select i1 %show, ptr %name68, ptr @.str.9
  br i1 %tobool.not.i, label %if.then.i..thread66_crit_edge, label %10

if.then.i..thread66_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread66

.thread:                                          ; preds = %land.lhs.true.i.i..thread_crit_edge, %if.end.i.i..thread_crit_edge
  %name50 = getelementptr i8, ptr %1, i32 -60
  %spec.select51 = select i1 %show, ptr @.str.10, ptr @.str.9
  %spec.select4752 = select i1 %show, ptr %name50, ptr @.str.9
  br label %.thread66

10:                                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp slt i32 %9, 0
  %spec.select72 = select i1 %cmp.i, ptr @.str.14, ptr @.str.15
  br label %.thread66

.thread66:                                        ; preds = %10, %.thread, %if.then.i..thread66_crit_edge
  %spec.select5565 = phi ptr [ %spec.select51, %.thread ], [ %spec.select69, %10 ], [ %spec.select69, %if.then.i..thread66_crit_edge ]
  %spec.select475764 = phi ptr [ %spec.select4752, %.thread ], [ %spec.select4770, %10 ], [ %spec.select4770, %if.then.i..thread66_crit_edge ]
  %11 = phi ptr [ @.str.16, %.thread ], [ %spec.select72, %10 ], [ @.str.15, %if.then.i..thread66_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef %spec.select475764, ptr noundef nonnull %spec.select5565, ptr noundef nonnull %11) #4
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  br i1 %tobool6.not, label %.thread66.if.end_crit_edge, label %if.then

.thread66.if.end_crit_edge:                       ; preds = %.thread66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %.thread66
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts64) #4
  %15 = call ptr @memset(ptr %ts64, i32 255, i32 16)
  %16 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts64, i64 noundef %18) #4
  %19 = ptrtoint ptr %ts64 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ts64, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts64, i32 0, i32 1
  %21 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i64 noundef %20, i32 noundef %22) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts64) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %.thread66.if.end_crit_edge
  %ops = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %timeline_value_str = getelementptr inbounds %struct.dma_fence_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %timeline_value_str to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timeline_value_str, align 4
  %tobool7.not = icmp eq ptr %26, null
  br i1 %tobool7.not, label %if.end.if.end31_crit_edge, label %land.lhs.true

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %fence_value_str = getelementptr inbounds %struct.dma_fence_ops, ptr %24, i32 0, i32 7
  %27 = ptrtoint ptr %fence_value_str to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fence_value_str, align 4
  %tobool9.not = icmp eq ptr %28, null
  br i1 %tobool9.not, label %land.lhs.true.if.end31_crit_edge, label %if.then10

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %value) #4
  %29 = call ptr @memset(ptr %value, i32 255, i32 64)
  %30 = ptrtoint ptr %fence_value_str to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fence_value_str, align 4
  call void %31(ptr noundef %fence, ptr noundef nonnull %value, i32 noundef 64) #4
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %32)
  %char0 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool16.not = icmp eq i8 %char0, 0
  br i1 %tobool16.not, label %if.then10.if.end30_crit_edge, label %if.then19

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then19:                                        ; preds = %if.then10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, ptr noundef nonnull %value) #4
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %timeline_value_str22 = getelementptr inbounds %struct.dma_fence_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %timeline_value_str22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %timeline_value_str22, align 4
  call void %36(ptr noundef %fence, ptr noundef nonnull %value, i32 noundef 64) #4
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %37)
  %char046 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char046)
  %tobool26.not = icmp eq i8 %char046, 0
  br i1 %tobool26.not, label %if.then19.if.end30_crit_edge, label %if.then27

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, ptr noundef nonnull %value) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then19.if.end30_crit_edge, %if.then10.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %value) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_get_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_sync_debug__214_190_sync_debugfs_init7, !1, !"__initcall__kmod_sync_debug__214_190_sync_debugfs_init7", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/sync_debug.c", i32 190, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/sync_debug.c", i32 14, i32 8}
!4 = !{ptr @sync_timeline_list_lock, !3, !"sync_timeline_list_lock", i1 false, i1 false}
!5 = !{ptr @sync_timeline_list_head, !6, !"sync_timeline_list_head", i1 false, i1 false}
!6 = !{!"../drivers/dma-buf/sync_debug.c", i32 13, i32 8}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/dma-buf/sync_debug.c", i32 16, i32 8}
!9 = !{ptr @sync_file_list_lock, !8, !"sync_file_list_lock", i1 false, i1 false}
!10 = !{ptr @sync_file_list_head, !11, !"sync_file_list_head", i1 false, i1 false}
!11 = !{!"../drivers/dma-buf/sync_debug.c", i32 15, i32 8}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/sync_debug.c", i32 176, i32 29}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/sync_debug.c", i32 183, i32 29}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/sync_debug.c", i32 185, i32 29}
!18 = !{ptr @dbgfs, !19, !"dbgfs", i1 false, i1 false}
!19 = !{!"../drivers/dma-buf/sync_debug.c", i32 11, i32 23}
!20 = !{ptr @sync_info_debugfs_fops, !21, !"sync_info_debugfs_fops", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/sync_debug.c", i32 172, i32 1}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma-buf/sync_debug.c", i32 145, i32 14}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma-buf/sync_debug.c", i32 158, i32 14}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma-buf/sync_debug.c", i32 111, i32 16}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma-buf/sync_debug.c", i32 73, i32 16}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma-buf/sync_debug.c", i32 74, i32 28}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma-buf/sync_debug.c", i32 75, i32 13}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma-buf/sync_debug.c", i32 82, i32 17}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma-buf/sync_debug.c", i32 94, i32 18}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma-buf/sync_debug.c", i32 100, i32 19}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma-buf/sync_debug.c", i32 57, i32 10}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma-buf/sync_debug.c", i32 60, i32 10}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma-buf/sync_debug.c", i32 62, i32 9}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma-buf/sync_debug.c", i32 127, i32 16}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
