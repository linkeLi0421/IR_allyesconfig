; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_gp.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_gp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.76, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.76 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@lima_gp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gp %s fail to request irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lima_gp_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/lima/lima_gp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_gp_init._entry_ptr = internal global ptr @lima_gp_init._entry, section ".printk_index", align 4
@lima_gp_task_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lima_gp_task\00", [19 x i8] zeroinitializer }, align 32
@lima_gp_task_slab_refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lima_gp_soft_reset_async_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gp soft reset time out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lima_gp_soft_reset_async_wait\00", [34 x i8] zeroinitializer }, align 32
@lima_gp_soft_reset_async_wait._entry_ptr = internal global ptr @lima_gp_soft_reset_async_wait._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali200\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali300\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali400\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali450\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@lima_gp_print_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 271, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - %s version major %d minor %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lima_gp_print_version\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lima_gp_print_version._entry_ptr = internal global ptr @lima_gp_print_version._entry, section ".printk_index", align 4
@lima_gp_irq_handler.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lima\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lima_gp_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gp out of heap irq status=%x\0A\00", [34 x i8] zeroinitializer }, align 32
@lima_gp_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gp error irq state=%x status=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@lima_gp_irq_handler._entry_ptr = internal global ptr @lima_gp_irq_handler._entry, section ".printk_index", align 4
@lima_gp_task_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"gp task error int_state=%x status=%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_gp_task_error\00", [45 x i8] zeroinitializer }, align 32
@lima_gp_task_error._entry_ptr = internal global ptr @lima_gp_task_error._entry, section ".printk_index", align 4
@lima_gp_hard_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gp hard reset timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_gp_hard_reset\00", [45 x i8] zeroinitializer }, align 32
@lima_gp_hard_reset._entry_ptr = internal global ptr @lima_gp_hard_reset._entry, section ".printk_index", align 4
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/lima/lima_device.h\00", [61 x i8] zeroinitializer }, align 32
@switch.table.lima_gp_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.8, ptr @.str.10, ptr @.str.9, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 308, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"lima_gp_task_slab\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 274, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 330, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"lima_gp_task_slab_refcnt\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 275, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 92, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 255, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 258, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 261, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 264, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 267, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 270, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 37, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 40, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 204, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private constant [34 x i8] c"../drivers/gpu/drm/lima/lima_gp.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 185, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [38 x i8] c"../drivers/gpu/drm/lima/lima_device.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 129, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"switch.table.lima_gp_init\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @lima_gp_hard_reset._entry, ptr @lima_gp_hard_reset._entry_ptr, ptr @lima_gp_init._entry, ptr @lima_gp_init._entry_ptr, ptr @lima_gp_irq_handler._entry, ptr @lima_gp_irq_handler._entry_ptr, ptr @lima_gp_print_version._entry, ptr @lima_gp_print_version._entry_ptr, ptr @lima_gp_soft_reset_async_wait._entry, ptr @lima_gp_soft_reset_async_wait._entry_ptr, ptr @lima_gp_task_error._entry, ptr @lima_gp_task_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lima_gp_task_slab, ptr @.str.5, ptr @lima_gp_task_slab_refcnt, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.lima_gp_init], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_task_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_task_slab_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_soft_reset_async_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_print_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_task_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gp_hard_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lima_gp_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gp_resume(ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 5
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %iomem.i.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %1 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 2048) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 262144) #6, !srcloc !66
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %data.i, align 4
  %call.i = tail call fastcc i32 @lima_gp_soft_reset_async_wait(ptr noundef %ip) #6
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_gp_suspend(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gp_init(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %iomem.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 108
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %shr3.i = lshr i32 %5, 16
  %6 = add nsw i32 %shr3.i, -2567
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %switch.lookup, label %entry.lima_gp_print_version.exit_crit_edge

entry.lima_gp_print_version.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lima_gp_print_version.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.lima_gp_init, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %lima_gp_print_version.exit

lima_gp_print_version.exit:                       ; preds = %switch.lookup, %entry.lima_gp_print_version.exit_crit_edge
  %name.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.12, %entry.lima_gp_print_version.exit_crit_edge ]
  %and2.i = and i32 %5, 255
  %shr.i = lshr i32 %5, 8
  %and.i = and i32 %shr.i, 255
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call8.i = tail call ptr @lima_ip_name(ptr noundef %ip) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.13, ptr noundef %call8.i, ptr noundef nonnull %name.0.i, i32 noundef %and.i, i32 noundef %and2.i) #9
  %data.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 2048) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 262144) #6, !srcloc !66
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %data.i, align 4
  %call.i = tail call fastcc i32 @lima_gp_soft_reset_async_wait(ptr noundef %ip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %lima_gp_print_version.exit.cleanup_crit_edge

lima_gp_print_version.exit.cleanup_crit_edge:     ; preds = %lima_gp_print_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lima_gp_print_version.exit
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @lima_ip_name(ptr noundef %ip) #6
  %call.i25 = tail call i32 @devm_request_threaded_irq(ptr noundef %23, i32 noundef %25, ptr noundef nonnull @lima_gp_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %call3, ptr noundef %ip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool5.not = icmp eq i32 %call.i25, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call8 = tail call ptr @lima_ip_name(ptr noundef %ip) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %call8) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem.i, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 108
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %gp_version = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %gp_version to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %gp_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %lima_gp_print_version.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i25, %do.end ], [ 0, %if.end9 ], [ %call.i, %lima_gp_print_version.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_gp_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pipe2 = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 12
  %current_task = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 12, i32 0, i32 5
  %2 = ptrtoint ptr %current_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_task, align 4
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !69
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %7, 7368260
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end26 [
    i32 0, label %if.else37
    i32 4, label %do.body
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lima_gp_irq_handler.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lima_gp_irq_handler, %if.then21)) #6
          to label %do.body32 [label %if.then21], !srcloc !74

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lima_gp_irq_handler.__UNIQUE_ID_ddebug247, ptr noundef %14, ptr noundef nonnull @.str.18, i32 noundef %11) #6
  br label %do.body32

do.end26:                                         ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %7, i32 noundef %11) #9
  %tobool28.not = icmp eq ptr %3, null
  br i1 %tobool28.not, label %do.end26.do.body32_crit_edge, label %if.then29

do.end26.do.body32_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

if.then29:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  %recoverable = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %recoverable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %recoverable, align 8
  br label %do.body32

do.body32:                                        ; preds = %if.then29, %do.end26.do.body32_crit_edge, %if.then21, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr36 = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #6, !srcloc !66
  %error = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 12, i32 0, i32 16
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %error, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem, align 4
  %add.ptr55.c = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c, i32 %6) #6, !srcloc !66
  br label %if.then57

if.else37:                                        ; preds = %if.end
  %and38 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %and41 = and i32 %11, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %23 = select i1 %tobool39.not, i1 %tobool42.not, i1 false
  %error49 = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 12, i32 0, i32 16
  %24 = ptrtoint ptr %error49 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %error49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem, align 4
  %add.ptr55 = getelementptr i8, ptr %26, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %6) #6, !srcloc !66
  br i1 %23, label %if.else37.if.then57_crit_edge, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else37.if.then57_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.then57:                                        ; preds = %if.else37.if.then57_crit_edge, %do.body32
  tail call void @lima_sched_pipe_task_done(ptr noundef %pipe2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.else37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then57 ], [ 1, %if.else37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ip_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_gp_fini(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gp_pipe_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lima_gp_task_slab, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.5, i32 noundef 184, i32 noundef 0, i32 noundef 8192, i32 noundef 160, i32 noundef 24, ptr noundef null) #6
  store ptr %call, ptr @lima_gp_task_slab, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %1 = load i32, ptr @lima_gp_task_slab_refcnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @lima_gp_task_slab_refcnt, align 4
  %frame_size5 = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 18
  %2 = ptrtoint ptr %frame_size5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 24, ptr %frame_size5, align 4
  %3 = load ptr, ptr @lima_gp_task_slab, align 4
  %task_slab = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 19
  %4 = ptrtoint ptr %task_slab to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %task_slab, align 8
  %task_validate = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 20
  %5 = ptrtoint ptr %task_validate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lima_gp_task_validate, ptr %task_validate, align 4
  %task_run = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 21
  %6 = ptrtoint ptr %task_run to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lima_gp_task_run, ptr %task_run, align 8
  %task_fini = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 22
  %7 = ptrtoint ptr %task_fini to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lima_gp_task_fini, ptr %task_fini, align 4
  %task_error = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 23
  %8 = ptrtoint ptr %task_error to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @lima_gp_task_error, ptr %task_error, align 8
  %task_mmu_error = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 24
  %9 = ptrtoint ptr %task_mmu_error to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lima_gp_task_mmu_error, ptr %task_mmu_error, align 4
  %task_recover = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 12, i32 0, i32 25
  %10 = ptrtoint ptr %task_recover to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lima_gp_task_recover, ptr %task_recover, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lima_gp_task_validate(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %task) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frame1 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 2
  %0 = ptrtoint ptr %frame1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frame1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %arrayidx3 = getelementptr i32, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr i32, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6 = icmp ugt i32 %7, %9
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr i32, ptr %1, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %1, i32 5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp10 = icmp ugt i32 %11, %13
  br i1 %cmp10, label %lor.lhs.false7.cleanup_crit_edge, label %if.end

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp13 = icmp eq i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp16 = icmp eq i32 %7, %9
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  %spec.select = select i1 %or.cond, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_gp_task_run(ptr nocapture noundef readonly %pipe, ptr nocapture noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %processor, align 4
  %frame1 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 2
  %2 = ptrtoint ptr %frame1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame1, align 4
  %num_bos = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 4
  %4 = ptrtoint ptr %num_bos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp69 = icmp sgt i32 %5, 0
  br i1 %cmp69, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bos = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 3
  %vm = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 1
  %arrayidx4 = getelementptr i32, ptr %3, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bos, align 8
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %i.070
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm, align 8
  %call = tail call i32 @lima_vm_get_va(ptr noundef %13, ptr noundef %9) #6
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %15)
  %cmp5 = icmp eq i32 %call, %15
  br i1 %cmp5, label %cleanup, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %heap_size.le = getelementptr inbounds %struct.lima_bo, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %heap_size.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %heap_size.le, align 4
  %add = add i32 %17, %call
  %arrayidx8 = getelementptr i32, ptr %3, i32 5
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %arrayidx8, align 4
  %recoverable = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 5
  %19 = ptrtoint ptr %recoverable to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %recoverable, align 8
  %heap = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 6
  %20 = ptrtoint ptr %heap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %9, ptr %heap, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %21 = ptrtoint ptr %num_bos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_bos, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %arrayidx10 = getelementptr i32, ptr %3, i32 1
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10, align 4
  %arrayidx14 = getelementptr i32, ptr %3, i32 2
  %27 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %3, i32 3
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15, align 4
  %call20 = tail call fastcc i32 @lima_gp_soft_reset_async_wait(ptr noundef %1)
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx10, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iomem, align 4
  %add.ptr25.1 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.1, i32 %38) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx14, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iomem, align 4
  %add.ptr25.2 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.2, i32 %43) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx15, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iomem, align 4
  %add.ptr25.3 = getelementptr i8, ptr %50, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.3, i32 %48) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %arrayidx24.4 = getelementptr i32, ptr %3, i32 4
  %51 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx24.4, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iomem, align 4
  %add.ptr25.4 = getelementptr i8, ptr %55, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.4, i32 %53) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %arrayidx24.5 = getelementptr i32, ptr %3, i32 5
  %56 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx24.5, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iomem, align 4
  %add.ptr25.5 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.5, i32 %58) #6, !srcloc !66
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp16.not = icmp eq i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp11.not.not = icmp eq i32 %24, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iomem, align 4
  %add.ptr33 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 268435456) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %63 = select i1 %cmp11.not.not, i32 0, i32 16777216
  %64 = or i32 %63, 33554432
  %65 = select i1 %cmp16.not, i32 %63, i32 %64
  %66 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iomem, align 4
  %add.ptr38 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %65) #6, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_gp_task_fini(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %processor, align 4
  %data.i = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.lima_gp_soft_reset_async.exit_crit_edge

entry.lima_gp_soft_reset_async.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lima_gp_soft_reset_async.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %iomem.i = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 2048) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 262144) #6, !srcloc !66
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %data.i, align 4
  br label %lima_gp_soft_reset_async.exit

lima_gp_soft_reset_async.exit:                    ; preds = %do.body.i, %entry.lima_gp_soft_reset_async.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_gp_task_error(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %processor, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 104
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !69
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %9, i32 noundef %13) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 14745536) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr6.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 4
  %add.ptr11.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 536870912) #6, !srcloc !66
  %call.i.i = tail call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call.i.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.24, i32 noundef 129) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %23, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 6848) #6, !srcloc !66
  %24 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem, align 4
  %add.ptr2.i3.i.i = getelementptr i8, ptr %25, i32 84
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 6848, i32 %26)
  %cmp.i.not4.i.i = icmp eq i32 %26, 6848
  br i1 %cmp.i.not4.i.i, label %entry.do.body16.i_crit_edge, label %entry.land.lhs.true.i.i_crit_edge

entry.land.lhs.true.i.i_crit_edge:                ; preds = %entry
  br label %land.lhs.true.i.i

entry.do.body16.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16.i

land.lhs.true.i.i:                                ; preds = %if.then19.i.i.land.lhs.true.i.i_crit_edge, %entry.land.lhs.true.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %do.end14.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 6848) #6, !srcloc !66
  %29 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %30, i32 84
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %cmp.i.not.i.i = icmp eq i32 %31, 6848
  br i1 %cmp.i.not.i.i, label %if.then19.i.i.do.body16.i_crit_edge, label %if.then19.i.i.land.lhs.true.i.i_crit_edge

if.then19.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.then19.i.i.do.body16.i_crit_edge:              ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16.i

do.end14.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.22) #9
  br label %lima_gp_hard_reset.exit

do.body16.i:                                      ; preds = %if.then19.i.i.do.body16.i_crit_edge, %entry.do.body16.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iomem, align 4
  %add.ptr20.i = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomem, align 4
  %add.ptr25.i = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 -8423424) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem, align 4
  %add.ptr30.i = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 1198419968) #6, !srcloc !66
  br label %lima_gp_hard_reset.exit

lima_gp_hard_reset.exit:                          ; preds = %do.body16.i, %do.end14.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_gp_task_mmu_error(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lima_sched_pipe_task_done(ptr noundef %pipe) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_gp_task_recover(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11
  %0 = ptrtoint ptr %processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %processor, align 4
  %current_task = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 5
  %2 = ptrtoint ptr %current_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_task, align 4
  %frame1 = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %frame1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame1, align 4
  %arrayidx3 = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %sub = sub i32 %7, %9
  %heap = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %heap, align 4
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp = icmp eq i32 %sub, %13
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %vm = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm, align 8
  %call = tail call i32 @lima_heap_alloc(ptr noundef %11, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.cleanup30_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then.cleanup30_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1198419968) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %20) #6, !srcloc !66
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4, align 4
  %25 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %heap, align 4
  %heap_size17 = getelementptr inbounds %struct.lima_bo, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %heap_size17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %heap_size17, align 4
  %add = add i32 %28, %24
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %arrayidx3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem, align 4
  %add.ptr24 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %32) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem, align 4
  %add.ptr29 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 268435456) #6, !srcloc !66
  br label %cleanup30

cleanup30:                                        ; preds = %do.body, %if.then.cleanup30_crit_edge
  %retval.1 = phi i32 [ 0, %do.body ], [ %call, %if.then.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_gp_pipe_fini(ptr nocapture noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lima_gp_task_slab_refcnt, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @lima_gp_task_slab_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @lima_gp_task_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #6
  store ptr null, ptr @lima_gp_task_slab, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_gp_soft_reset_async_wait(ptr nocapture noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %data = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 100000
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %and = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call17 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %for.end

for.end:                                          ; preds = %if.then20, %for.cond.for.end_crit_edge
  %v.0 = phi i32 [ %11, %if.then20 ], [ %7, %for.cond.for.end_crit_edge ]
  %and33 = and i32 %v.0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end39, label %do.body42

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #9
  br label %cleanup

do.body42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem, align 4
  %add.ptr46 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 -8423424) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr51 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 1198419968) #6, !srcloc !66
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %do.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end39 ], [ 0, %do.body42 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_pipe_task_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_get_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_heap_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 308, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lima_gp_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lima_gp_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 330, i32 4}
!10 = !{ptr @lima_gp_task_slab, !11, !"lima_gp_task_slab", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 274, i32 27}
!12 = !{ptr @lima_gp_task_slab_refcnt, !13, !"lima_gp_task_slab_refcnt", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 275, i32 12}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 92, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lima_gp_soft_reset_async_wait._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @lima_gp_soft_reset_async_wait._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 255, i32 13}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 258, i32 10}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 261, i32 10}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 264, i32 10}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 267, i32 10}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 270, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @lima_gp_print_version._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @lima_gp_print_version._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 37, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lima_gp_irq_handler.__UNIQUE_ID_ddebug247, !36, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 40, i32 4}
!42 = !{ptr @lima_gp_irq_handler._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lima_gp_irq_handler._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 204, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lima_gp_task_error._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lima_gp_task_error._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/lima/lima_gp.c", i32 185, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lima_gp_hard_reset._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lima_gp_hard_reset._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/lima/lima_device.h", i32 129, i32 2}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2154651534}
!66 = !{i64 4204700}
!67 = !{i64 2154652093}
!68 = !{i64 2154652733}
!69 = !{i64 4205118}
!70 = !{i64 2154690669}
!71 = !{i64 2154694628}
!72 = !{i64 2154642957}
!73 = !{i64 2154643472}
!74 = !{i64 2148723892, i64 2148723897, i64 2148723910, i64 2148723954, i64 2148723988, i64 2148724009}
!75 = !{i64 2154650344}
!76 = !{i64 2154651101}
!77 = !{i64 2154666680}
!78 = !{i64 2154667252}
!79 = !{i64 2154667755}
!80 = !{i8 0, i8 2}
!81 = !{i64 2154684210}
!82 = !{i64 2154684725}
!83 = !{i64 2154669181}
!84 = !{i64 2154669629}
!85 = !{i64 2154670184}
!86 = !{i64 2154668200}
!87 = !{i64 2154668910}
!88 = !{i64 2154672268}
!89 = !{i64 2154676156}
!90 = !{i64 2154680584}
!91 = !{i64 2154687258}
!92 = !{i64 2154688821}
!93 = !{i64 2154689317}
!94 = !{i64 2154689908}
!95 = !{i64 2154654688}
!96 = !{i64 2154655170}
!97 = !{i64 2154660487}
!98 = !{i64 2154664915}
