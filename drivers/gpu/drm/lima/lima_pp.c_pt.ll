; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_pp.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_pp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.73, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.73 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.drm_lima_m450_pp_frame = type { [23 x i32], i32, [36 x i32], i32, i32, %union.anon.74, [8 x i32] }
%union.anon.74 = type { [8 x i32] }
%struct.drm_lima_m400_pp_frame = type { [23 x i32], i32, [36 x i32], [4 x i32], [4 x i32] }

@lima_pp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pp %s fail to request irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lima_pp_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/lima/lima_pp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_pp_init._entry_ptr = internal global ptr @lima_pp_init._entry, section ".printk_index", align 4
@lima_pp_bcast_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_pp_bcast_init\00", [45 x i8] zeroinitializer }, align 32
@lima_pp_bcast_init._entry_ptr = internal global ptr @lima_pp_bcast_init._entry, section ".printk_index", align 4
@lima_pp_task_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lima_pp_task\00", [19 x i8] zeroinitializer }, align 32
@lima_pp_task_slab_refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lima_pp_soft_reset_async_wait_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pp %s reset time out\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lima_pp_soft_reset_async_wait_one\00", [62 x i8] zeroinitializer }, align 32
@lima_pp_soft_reset_async_wait_one._entry_ptr = internal global ptr @lima_pp_soft_reset_async_wait_one._entry, section ".printk_index", align 4
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/lima/lima_device.h\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali200\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali300\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali400\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali450\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@lima_pp_print_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 223, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - %s version major %d minor %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lima_pp_print_version\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lima_pp_print_version._entry_ptr = internal global ptr @lima_pp_print_version._entry, section ".printk_index", align 4
@lima_pp_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pp error irq state=%x status=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_pp_handle_irq\00", [45 x i8] zeroinitializer }, align 32
@lima_pp_handle_irq._entry_ptr = internal global ptr @lima_pp_handle_irq._entry, section ".printk_index", align 4
@lima_pp_task_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pp task error %d int_state=%x status=%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_pp_task_error\00", [45 x i8] zeroinitializer }, align 32
@lima_pp_task_error._entry_ptr = internal global ptr @lima_pp_task_error._entry, section ".printk_index", align 4
@lima_pp_hard_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pp hard reset timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lima_pp_hard_reset\00", [45 x i8] zeroinitializer }, align 32
@lima_pp_hard_reset._entry_ptr = internal global ptr @lima_pp_hard_reset._entry, section ".printk_index", align 4
@switch.table.lima_pp_init = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.10, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.12, ptr @.str.11, ptr @.str.13], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 257, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 292, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"lima_pp_task_slab\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 419, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 434, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"lima_pp_task_slab_refcnt\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 420, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 128, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [38 x i8] c"../drivers/gpu/drm/lima/lima_device.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 129, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 207, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 210, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 213, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 216, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 219, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 222, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 29, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 406, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [34 x i8] c"../drivers/gpu/drm/lima/lima_pp.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 187, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"switch.table.lima_pp_init\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @lima_pp_bcast_init._entry, ptr @lima_pp_bcast_init._entry_ptr, ptr @lima_pp_handle_irq._entry, ptr @lima_pp_handle_irq._entry_ptr, ptr @lima_pp_hard_reset._entry, ptr @lima_pp_hard_reset._entry_ptr, ptr @lima_pp_init._entry, ptr @lima_pp_init._entry_ptr, ptr @lima_pp_print_version._entry, ptr @lima_pp_print_version._entry_ptr, ptr @lima_pp_soft_reset_async_wait_one._entry, ptr @lima_pp_soft_reset_async_wait_one._entry_ptr, ptr @lima_pp_task_error._entry, ptr @lima_pp_task_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lima_pp_task_slab, ptr @.str.6, ptr @lima_pp_task_slab_refcnt, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.lima_pp_init], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_bcast_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_task_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_task_slab_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_soft_reset_async_wait_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_print_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_task_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pp_hard_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lima_pp_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_pp_resume(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lima_pp_hw_init(ptr noundef %ip)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_pp_hw_init(ptr noundef %ip) unnamed_addr #0 align 64 {
lima_pp_soft_reset_async.exit:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %iomem.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %1 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iomem.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %4, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -14745600) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %6, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -2147483648) #8, !srcloc !66
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %data, align 4
  %id.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp.i = icmp eq i32 %9, 24
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %lima_pp_soft_reset_async.exit
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %current_task.i = getelementptr %struct.lima_device, ptr %11, i32 0, i32 12, i32 1, i32 5
  %12 = ptrtoint ptr %current_task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_task.i, align 4
  %frame4.i = getelementptr inbounds %struct.lima_sched_task, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %frame4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %frame4.i, align 4
  %num_pp.i = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_pp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp518.not.i = icmp eq i32 %17, 0
  br i1 %cmp518.not.i, label %if.then1.i.if.end7.i_crit_edge, label %if.then1.i.for.body.i_crit_edge

if.then1.i.for.body.i_crit_edge:                  ; preds = %if.then1.i
  br label %for.body.i

if.then1.i.if.end7.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.i.for.body.i_crit_edge
  %err.020.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lima_device, ptr %11, i32 0, i32 12, i32 1, i32 11, i32 %i.019.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %19) #8
  %or.i = or i32 %call.i, %err.020.i
  %inc.i = add nuw i32 %i.019.i, 1
  %20 = ptrtoint ptr %num_pp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pp.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %21
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end7.i_crit_edge

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.else.i:                                        ; preds = %lima_pp_soft_reset_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %ip) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %for.body.i.if.end7.i_crit_edge, %if.then1.i.if.end7.i_crit_edge
  %err.1.i = phi i32 [ %call6.i, %if.else.i ], [ 0, %if.then1.i.if.end7.i_crit_edge ], [ %or.i, %for.body.i.if.end7.i_crit_edge ]
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %data, align 4
  ret i32 %err.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_suspend(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_pp_init(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %iomem.i = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !69
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %shr3.i = lshr i32 %5, 16
  %6 = add nsw i32 %shr3.i, -51207
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %switch.lookup, label %entry.lima_pp_print_version.exit_crit_edge

entry.lima_pp_print_version.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_print_version.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.lima_pp_init, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %lima_pp_print_version.exit

lima_pp_print_version.exit:                       ; preds = %switch.lookup, %entry.lima_pp_print_version.exit_crit_edge
  %name.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %entry.lima_pp_print_version.exit_crit_edge ]
  %and2.i = and i32 %5, 255
  %shr.i = lshr i32 %5, 8
  %and.i = and i32 %shr.i, 255
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call8.i = tail call ptr @lima_ip_name(ptr noundef %ip) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.15, ptr noundef %call8.i, ptr noundef nonnull %name.0.i, i32 noundef %and.i, i32 noundef %and2.i) #11
  %call = tail call fastcc i32 @lima_pp_hw_init(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %lima_pp_print_version.exit.cleanup_crit_edge

lima_pp_print_version.exit.cleanup_crit_edge:     ; preds = %lima_pp_print_version.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lima_pp_print_version.exit
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 4
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @lima_ip_name(ptr noundef %ip) #8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %15, i32 noundef %17, ptr noundef nonnull @lima_pp_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %call3, ptr noundef %ip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call8 = tail call ptr @lima_ip_name(ptr noundef %ip) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %call8) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem.i, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 4096
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !69
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %pp_version = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %pp_version to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pp_version, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %lima_pp_print_version.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end9 ], [ %call, %lima_pp_print_version.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_pp_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 4140
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and.i = and i32 %5, 3864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.lima_pp_handle_irq.exit_crit_edge, label %if.then.i

if.end.lima_pp_handle_irq.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_handle_irq.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 4104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %11) #11
  %error.i = getelementptr %struct.lima_device, ptr %7, i32 0, i32 12, i32 1, i32 16
  %14 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %error.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem, align 4
  %add.ptr10.i = getelementptr i8, ptr %16, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !66
  br label %lima_pp_handle_irq.exit

lima_pp_handle_irq.exit:                          ; preds = %if.then.i, %if.end.lima_pp_handle_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem, align 4
  %add.ptr15.i = getelementptr i8, ptr %18, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %4) #8, !srcloc !66
  %task = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %task, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %task, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %task, ptr %task, i32 1, ptr elementtype(i32) %task) #8, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %lima_pp_handle_irq.exit.cleanup_crit_edge

lima_pp_handle_irq.exit.cleanup_crit_edge:        ; preds = %lima_pp_handle_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %lima_pp_handle_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lima_sched_pipe_task_done(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %lima_pp_handle_irq.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then6 ], [ 1, %lima_pp_handle_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ip_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_fini(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @lima_pp_bcast_resume(ptr nocapture noundef writeonly %ip) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_bcast_suspend(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_pp_bcast_init(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @lima_ip_name(ptr noundef %ip) #8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %5, ptr noundef nonnull @lima_pp_bcast_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %call, ptr noundef %ip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call5 = tail call ptr @lima_ip_name(ptr noundef %ip) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_pp_bcast_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1
  %current_task = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 5
  %2 = ptrtoint ptr %current_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_task, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end:                                           ; preds = %entry
  %frame4 = getelementptr inbounds %struct.lima_sched_task, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %frame4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frame4, align 4
  %num_pp = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp51.not = icmp eq i32 %7, 0
  br i1 %cmp51.not, label %if.end.cleanup31_crit_edge, label %for.body.lr.ph

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

for.body.lr.ph:                                   ; preds = %if.end
  %done = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 15
  %task = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 17
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %ret.052 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 11, i32 %i.053
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %done, align 8
  %shl = shl nuw i32 1, %i.053
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 4104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %15 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 4140
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end7
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and.i = and i32 %18, 3864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then18.lima_pp_handle_irq.exit_crit_edge, label %if.then.i

if.then18.lima_pp_handle_irq.exit_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_handle_irq.exit

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 4
  %21 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 4104
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !69
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18, i32 noundef %18, i32 noundef %24) #11
  %error.i = getelementptr %struct.lima_device, ptr %20, i32 0, i32 12, i32 1, i32 16
  %27 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %error.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem, align 4
  %add.ptr10.i = getelementptr i8, ptr %29, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !66
  br label %lima_pp_handle_irq.exit

lima_pp_handle_irq.exit:                          ; preds = %if.then.i, %if.then18.lima_pp_handle_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomem, align 4
  %add.ptr15.i = getelementptr i8, ptr %31, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %17) #8, !srcloc !66
  br label %if.end23

if.else:                                          ; preds = %if.end7
  %32 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not = icmp eq i32 %32, 0
  br i1 %tobool20.not, label %if.else.if.end23_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %lima_pp_handle_irq.exit
  %ret.1 = phi i32 [ 1, %lima_pp_handle_irq.exit ], [ %ret.052, %if.else.if.end23_crit_edge ]
  %33 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %done, align 8
  %or = or i32 %34, %shl
  store i32 %or, ptr %done, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %task, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %task, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %task, ptr %task, i32 1, ptr elementtype(i32) %task) #8, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lima_sched_pipe_task_done(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.052, %for.body.cleanup_crit_edge ], [ %ret.052, %if.else.cleanup_crit_edge ], [ %ret.1, %if.then27 ], [ %ret.1, %if.end23.cleanup_crit_edge ]
  %inc = add nuw i32 %i.053, 1
  %36 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_pp, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup31_crit_edge

cleanup.cleanup31_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup31:                                        ; preds = %cleanup.cleanup31_crit_edge, %if.end.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup31_crit_edge ], [ 0, %if.end.cleanup31_crit_edge ], [ %ret.2, %cleanup.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_bcast_fini(ptr nocapture noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_pp_pipe_init(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.lima_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %. = select i1 %cmp, i32 272, i32 312
  %2 = load ptr, ptr @lima_pp_task_slab, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then2, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %entry
  %add = add nuw nsw i32 %., 160
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.6, i32 noundef %add, i32 noundef 0, i32 noundef 8192, i32 noundef 160, i32 noundef %., ptr noundef null) #8
  store ptr %call, ptr @lima_pp_task_slab, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %entry.if.end6_crit_edge
  %3 = load i32, ptr @lima_pp_task_slab_refcnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @lima_pp_task_slab_refcnt, align 4
  %frame_size7 = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 18
  %4 = ptrtoint ptr %frame_size7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %frame_size7, align 4
  %5 = load ptr, ptr @lima_pp_task_slab, align 4
  %task_slab = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 19
  %6 = ptrtoint ptr %task_slab to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %task_slab, align 8
  %task_validate = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 20
  %7 = ptrtoint ptr %task_validate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lima_pp_task_validate, ptr %task_validate, align 4
  %task_run = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 21
  %8 = ptrtoint ptr %task_run to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @lima_pp_task_run, ptr %task_run, align 8
  %task_fini = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 22
  %9 = ptrtoint ptr %task_fini to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lima_pp_task_fini, ptr %task_fini, align 4
  %task_error = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 23
  %10 = ptrtoint ptr %task_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lima_pp_task_error, ptr %task_error, align 8
  %task_mmu_error = getelementptr %struct.lima_device, ptr %dev, i32 0, i32 12, i32 1, i32 24
  %11 = ptrtoint ptr %task_mmu_error to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lima_pp_task_mmu_error, ptr %task_mmu_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lima_pp_task_validate(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %task) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 13
  %0 = ptrtoint ptr %bcast_processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcast_processor, align 8
  %tobool.not = icmp eq ptr %1, null
  %frame5 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 2
  %2 = ptrtoint ptr %frame5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %num_pp1 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 1
  %_pad = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %_pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup11_crit_edge

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_pp6 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, ptr %3, i32 0, i32 1
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then.if.end7_crit_edge
  %num_pp.0.in = phi ptr [ %num_pp1, %if.then.if.end7_crit_edge ], [ %num_pp6, %if.else ]
  %6 = ptrtoint ptr %num_pp.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %num_pp.0 = load i32, ptr %num_pp.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pp.0)
  %cmp = icmp eq i32 %num_pp.0, 0
  br i1 %cmp, label %if.end7.cleanup11_crit_edge, label %lor.lhs.false

if.end7.cleanup11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

lor.lhs.false:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %num_processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 12
  %7 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_processor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_pp.0, i32 %8)
  %cmp8 = icmp ugt i32 %num_pp.0, %8
  %spec.select = select i1 %cmp8, i32 -22, i32 0
  br label %cleanup11

cleanup11:                                        ; preds = %lor.lhs.false, %if.end7.cleanup11_crit_edge, %if.then.cleanup11_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup11_crit_edge ], [ -22, %if.end7.cleanup11_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_pp_task_run(ptr noundef %pipe, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 13
  %0 = ptrtoint ptr %bcast_processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcast_processor, align 8
  %tobool.not = icmp eq ptr %1, null
  %frame38 = getelementptr inbounds %struct.lima_sched_task, ptr %task, i32 0, i32 2
  %2 = ptrtoint ptr %frame38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frame38, align 4
  br i1 %tobool.not, label %if.else36, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %done = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 15
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done, align 8
  %task5 = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 17
  %num_pp = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pp, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %task5, i32 noundef 4) #8
  %9 = ptrtoint ptr %task5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %8, ptr %task5, align 4
  %use_dlbu = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %use_dlbu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_dlbu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pp, align 4
  tail call void @lima_dlbu_enable(ptr noundef %5, i32 noundef %13) #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1048576, ptr %3, align 4
  %add.ptr = getelementptr %struct.lima_device, ptr %5, i32 0, i32 11, i32 22
  %15 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 5
  tail call void @lima_dlbu_set_reg(ptr noundef %add.ptr, ptr noundef %15) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lima_dlbu_disable(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %16 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pp, align 4
  tail call void @lima_bcast_enable(ptr noundef %5, i32 noundef %17) #8
  %data.i = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.lima_pp_soft_reset_async_wait.exit_crit_edge, label %if.end.i

if.end.lima_pp_soft_reset_async_wait.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_soft_reset_async_wait.exit

if.end.i:                                         ; preds = %if.end
  %id.i = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp.i = icmp eq i32 %21, 24
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %current_task.i = getelementptr %struct.lima_device, ptr %23, i32 0, i32 12, i32 1, i32 5
  %24 = ptrtoint ptr %current_task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_task.i, align 4
  %frame4.i = getelementptr inbounds %struct.lima_sched_task, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %frame4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %frame4.i, align 4
  %num_pp.i = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %num_pp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp518.not.i = icmp eq i32 %29, 0
  br i1 %cmp518.not.i, label %if.then1.i.if.end7.i_crit_edge, label %if.then1.i.for.body.i_crit_edge

if.then1.i.for.body.i_crit_edge:                  ; preds = %if.then1.i
  br label %for.body.i

if.then1.i.if.end7.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then1.i.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then1.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.lima_device, ptr %23, i32 0, i32 12, i32 1, i32 11, i32 %i.019.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %31) #8
  %inc.i = add nuw i32 %i.019.i, 1
  %32 = ptrtoint ptr %num_pp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_pp.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %33
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end7.i_crit_edge

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef nonnull %1) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %for.body.i.if.end7.i_crit_edge, %if.then1.i.if.end7.i_crit_edge
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %data.i, align 4
  br label %lima_pp_soft_reset_async_wait.exit

lima_pp_soft_reset_async_wait.exit:               ; preds = %if.end7.i, %if.end.lima_pp_soft_reset_async_wait.exit_crit_edge
  %wb = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 2
  tail call fastcc void @lima_pp_write_frame(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %wb)
  %35 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp137.not = icmp eq i32 %36, 0
  br i1 %cmp137.not, label %lima_pp_soft_reset_async_wait.exit.do.body31_crit_edge, label %for.body.lr.ph

lima_pp_soft_reset_async_wait.exit.do.body31_crit_edge: ; preds = %lima_pp_soft_reset_async_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

for.body.lr.ph:                                   ; preds = %lima_pp_soft_reset_async_wait.exit
  %37 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end30.for.body_crit_edge ]
  %arrayidx18 = getelementptr %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11, i32 %i.0138
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %arrayidx19 = getelementptr %struct.drm_lima_m450_pp_frame, ptr %3, i32 0, i32 6, i32 %i.0138
  %40 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx19, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %39, i32 0, i32 3
  %43 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem, align 4
  %add.ptr20 = getelementptr i8, ptr %44, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %42) #8, !srcloc !66
  %45 = ptrtoint ptr %use_dlbu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %use_dlbu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool22.not = icmp eq i32 %46, 0
  br i1 %tobool22.not, label %do.body24, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.body24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %arrayidx27 = getelementptr [8 x i32], ptr %37, i32 0, i32 %i.0138
  %47 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx27, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !66
  br label %if.end30

if.end30:                                         ; preds = %do.body24, %for.body.if.end30_crit_edge
  %inc = add nuw i32 %i.0138, 1
  %52 = ptrtoint ptr %num_pp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_pp, align 4
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %if.end30.for.body_crit_edge, label %if.end30.do.body31_crit_edge

if.end30.do.body31_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body31:                                        ; preds = %if.end30.do.body31_crit_edge, %lima_pp_soft_reset_async_wait.exit.do.body31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %iomem34 = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %iomem34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iomem34, align 4
  %add.ptr35 = getelementptr i8, ptr %55, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 1073741824) #8, !srcloc !66
  br label %if.end69

if.else36:                                        ; preds = %entry
  %task40 = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 17
  %num_pp41 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, ptr %3, i32 0, i32 1
  %56 = ptrtoint ptr %num_pp41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_pp41, align 4
  %call.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %task40, i32 noundef 4) #8
  %58 = ptrtoint ptr %task40 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %57, ptr %task40, align 4
  %59 = ptrtoint ptr %num_pp41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_pp41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp44139.not = icmp eq i32 %60, 0
  br i1 %cmp44139.not, label %if.else36.if.end69_crit_edge, label %for.body45.lr.ph

if.else36.if.end69_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

for.body45.lr.ph:                                 ; preds = %if.else36
  %arrayidx55 = getelementptr [23 x i32], ptr %3, i32 0, i32 12
  %wb59 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, ptr %3, i32 0, i32 2
  br label %for.body45

for.body45:                                       ; preds = %lima_pp_soft_reset_async_wait.exit136.for.body45_crit_edge, %for.body45.lr.ph
  %i39.0140 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc67, %lima_pp_soft_reset_async_wait.exit136.for.body45_crit_edge ]
  %arrayidx48 = getelementptr %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11, i32 %i39.0140
  %61 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr %struct.drm_lima_m400_pp_frame, ptr %3, i32 0, i32 3, i32 %i39.0140
  %63 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx49, align 4
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %3, align 4
  %arrayidx53 = getelementptr %struct.drm_lima_m400_pp_frame, ptr %3, i32 0, i32 4, i32 %i39.0140
  %66 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx53, align 4
  %68 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx55, align 4
  %data.i113 = getelementptr inbounds %struct.lima_ip, ptr %62, i32 0, i32 5
  %69 = ptrtoint ptr %data.i113 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data.i113, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i114 = icmp eq i8 %70, 0
  br i1 %tobool.not.i114, label %for.body45.lima_pp_soft_reset_async_wait.exit136_crit_edge, label %if.end.i117

for.body45.lima_pp_soft_reset_async_wait.exit136_crit_edge: ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_soft_reset_async_wait.exit136

if.end.i117:                                      ; preds = %for.body45
  %id.i115 = getelementptr inbounds %struct.lima_ip, ptr %62, i32 0, i32 1
  %71 = ptrtoint ptr %id.i115 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %72)
  %cmp.i116 = icmp eq i32 %72, 24
  br i1 %cmp.i116, label %if.then1.i122, label %if.else.i132

if.then1.i122:                                    ; preds = %if.end.i117
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %62, align 4
  %current_task.i118 = getelementptr %struct.lima_device, ptr %74, i32 0, i32 12, i32 1, i32 5
  %75 = ptrtoint ptr %current_task.i118 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %current_task.i118, align 4
  %frame4.i119 = getelementptr inbounds %struct.lima_sched_task, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %frame4.i119 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %frame4.i119, align 4
  %num_pp.i120 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %num_pp.i120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_pp.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp518.not.i121 = icmp eq i32 %80, 0
  br i1 %cmp518.not.i121, label %if.then1.i122.if.end7.i134_crit_edge, label %if.then1.i122.for.body.i130_crit_edge

if.then1.i122.for.body.i130_crit_edge:            ; preds = %if.then1.i122
  br label %for.body.i130

if.then1.i122.if.end7.i134_crit_edge:             ; preds = %if.then1.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i134

for.body.i130:                                    ; preds = %for.body.i130.for.body.i130_crit_edge, %if.then1.i122.for.body.i130_crit_edge
  %i.019.i124 = phi i32 [ %inc.i128, %for.body.i130.for.body.i130_crit_edge ], [ 0, %if.then1.i122.for.body.i130_crit_edge ]
  %arrayidx.i125 = getelementptr %struct.lima_device, ptr %74, i32 0, i32 12, i32 1, i32 11, i32 %i.019.i124
  %81 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i125, align 4
  %call.i126 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %82) #8
  %inc.i128 = add nuw i32 %i.019.i124, 1
  %83 = ptrtoint ptr %num_pp.i120 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_pp.i120, align 4
  %cmp5.i129 = icmp ult i32 %inc.i128, %84
  br i1 %cmp5.i129, label %for.body.i130.for.body.i130_crit_edge, label %for.body.i130.if.end7.i134_crit_edge

for.body.i130.if.end7.i134_crit_edge:             ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i134

for.body.i130.for.body.i130_crit_edge:            ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i130

if.else.i132:                                     ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i131 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %62) #8
  br label %if.end7.i134

if.end7.i134:                                     ; preds = %if.else.i132, %for.body.i130.if.end7.i134_crit_edge, %if.then1.i122.if.end7.i134_crit_edge
  %85 = ptrtoint ptr %data.i113 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %data.i113, align 4
  br label %lima_pp_soft_reset_async_wait.exit136

lima_pp_soft_reset_async_wait.exit136:            ; preds = %if.end7.i134, %for.body45.lima_pp_soft_reset_async_wait.exit136_crit_edge
  tail call fastcc void @lima_pp_write_frame(ptr noundef %62, ptr noundef %3, ptr noundef %wb59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %iomem64 = getelementptr inbounds %struct.lima_ip, ptr %62, i32 0, i32 3
  %86 = ptrtoint ptr %iomem64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %iomem64, align 4
  %add.ptr65 = getelementptr i8, ptr %87, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 1073741824) #8, !srcloc !66
  %inc67 = add nuw i32 %i39.0140, 1
  %88 = ptrtoint ptr %num_pp41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_pp41, align 4
  %cmp44 = icmp ult i32 %inc67, %89
  br i1 %cmp44, label %lima_pp_soft_reset_async_wait.exit136.for.body45_crit_edge, label %lima_pp_soft_reset_async_wait.exit136.if.end69_crit_edge

lima_pp_soft_reset_async_wait.exit136.if.end69_crit_edge: ; preds = %lima_pp_soft_reset_async_wait.exit136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

lima_pp_soft_reset_async_wait.exit136.for.body45_crit_edge: ; preds = %lima_pp_soft_reset_async_wait.exit136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

if.end69:                                         ; preds = %lima_pp_soft_reset_async_wait.exit136.if.end69_crit_edge, %if.else36.if.end69_crit_edge, %do.body31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_pp_task_fini(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 13
  %0 = ptrtoint ptr %bcast_processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bcast_processor, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 12
  %2 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_processor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15 = icmp sgt i32 %3, 0
  br i1 %cmp15, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %iomem.i = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -14745600) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %iomem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -2147483648) #8, !srcloc !66
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %data.i, align 4
  br label %if.end

for.body:                                         ; preds = %lima_pp_soft_reset_async.exit14.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %lima_pp_soft_reset_async.exit14.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11, i32 %i.016
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %data.i7 = getelementptr inbounds %struct.lima_ip, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %data.i7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.i7, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i8 = icmp eq i8 %16, 0
  br i1 %tobool.not.i8, label %do.body.i13, label %for.body.lima_pp_soft_reset_async.exit14_crit_edge

for.body.lima_pp_soft_reset_async.exit14_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_soft_reset_async.exit14

do.body.i13:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %iomem.i9 = getelementptr inbounds %struct.lima_ip, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %iomem.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomem.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %18, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %iomem.i9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem.i9, align 4
  %add.ptr4.i11 = getelementptr i8, ptr %20, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i11, i32 -14745600) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %iomem.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem.i9, align 4
  %add.ptr8.i12 = getelementptr i8, ptr %22, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i12, i32 -2147483648) #8, !srcloc !66
  %23 = ptrtoint ptr %data.i7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %data.i7, align 4
  br label %lima_pp_soft_reset_async.exit14

lima_pp_soft_reset_async.exit14:                  ; preds = %do.body.i13, %for.body.lima_pp_soft_reset_async.exit14_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %24 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_processor, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %lima_pp_soft_reset_async.exit14.for.body_crit_edge, label %lima_pp_soft_reset_async.exit14.if.end_crit_edge

lima_pp_soft_reset_async.exit14.if.end_crit_edge: ; preds = %lima_pp_soft_reset_async.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lima_pp_soft_reset_async.exit14.for.body_crit_edge: ; preds = %lima_pp_soft_reset_async.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %lima_pp_soft_reset_async.exit14.if.end_crit_edge, %do.body.i, %if.then.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_pp_task_error(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_processor = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 12
  %0 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_processor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %lima_pp_hard_reset.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %lima_pp_hard_reset.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 11, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %12 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 4104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !69
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %i.019, i32 noundef %11, i32 noundef %15) #11
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 14745536) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem, align 4
  %add.ptr6.i = getelementptr i8, ptr %21, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomem, align 4
  %add.ptr11.i = getelementptr i8, ptr %23, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 536870912) #8, !srcloc !66
  %call.i.i = tail call i64 @ktime_get() #8
  %add.i.i.i = add i64 %call.i.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 129) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %25, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 6848) #8, !srcloc !66
  %26 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iomem, align 4
  %add.ptr2.i3.i = getelementptr i8, ptr %27, i32 4232
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 6848, i32 %28)
  %cmp.i4.not.i = icmp eq i32 %28, 6848
  br i1 %cmp.i4.not.i, label %for.body.do.body16.i_crit_edge, label %for.body.land.lhs.true.i.i_crit_edge

for.body.land.lhs.true.i.i_crit_edge:             ; preds = %for.body
  br label %land.lhs.true.i.i

for.body.do.body16.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

land.lhs.true.i.i:                                ; preds = %if.end17.i.i.land.lhs.true.i.i_crit_edge, %for.body.land.lhs.true.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %do.end14.i, label %if.end17.i.i

if.end17.i.i:                                     ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 6848) #8, !srcloc !66
  %31 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %32, i32 4232
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %cmp.i.not.i = icmp eq i32 %33, 6848
  br i1 %cmp.i.not.i, label %if.end17.i.i.do.body16.i_crit_edge, label %if.end17.i.i.land.lhs.true.i.i_crit_edge

if.end17.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

if.end17.i.i.do.body16.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

do.end14.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.22) #11
  br label %lima_pp_hard_reset.exit

do.body16.i:                                      ; preds = %if.end17.i.i.do.body16.i_crit_edge, %for.body.do.body16.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomem, align 4
  %add.ptr20.i = getelementptr i8, ptr %37, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem, align 4
  %add.ptr25.i = getelementptr i8, ptr %39, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 -14745600) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem, align 4
  %add.ptr30.i = getelementptr i8, ptr %41, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 420413440) #8, !srcloc !66
  br label %lima_pp_hard_reset.exit

lima_pp_hard_reset.exit:                          ; preds = %do.body16.i, %do.end14.i
  %inc = add nuw nsw i32 %i.019, 1
  %42 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_processor, align 4
  %cmp = icmp slt i32 %inc, %43
  br i1 %cmp, label %lima_pp_hard_reset.exit.for.body_crit_edge, label %lima_pp_hard_reset.exit.for.end_crit_edge

lima_pp_hard_reset.exit.for.end_crit_edge:        ; preds = %lima_pp_hard_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lima_pp_hard_reset.exit.for.body_crit_edge:       ; preds = %lima_pp_hard_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %lima_pp_hard_reset.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_pp_task_mmu_error(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.lima_sched_pipe, ptr %pipe, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %task, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %task, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %task, ptr %task, i32 1, ptr elementtype(i32) %task) #8, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lima_sched_pipe_task_done(ptr noundef %pipe) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_pp_pipe_fini(ptr nocapture noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lima_pp_task_slab_refcnt, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @lima_pp_task_slab_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @lima_pp_task_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  store ptr null, ptr @lima_pp_task_slab, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 100000
  %iomem.i18 = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem.i18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %3, i32 4104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i20 = icmp eq i32 %5, 0
  br i1 %tobool.not.i20, label %lima_pp_soft_reset_poll.exit25, label %entry.land.lhs.true.i.preheader_crit_edge

entry.land.lhs.true.i.preheader_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.preheader

lima_pp_soft_reset_poll.exit25:                   ; preds = %entry
  %6 = ptrtoint ptr %iomem.i18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem.i18, align 4
  %add.ptr5.i21 = getelementptr i8, ptr %7, i32 4128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i21) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %8)
  %cmp.i22.not = icmp eq i32 %8, 1048576
  br i1 %cmp.i22.not, label %lima_pp_soft_reset_poll.exit25.do.body4_crit_edge, label %lima_pp_soft_reset_poll.exit25.land.lhs.true.i.preheader_crit_edge

lima_pp_soft_reset_poll.exit25.land.lhs.true.i.preheader_crit_edge: ; preds = %lima_pp_soft_reset_poll.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.preheader

lima_pp_soft_reset_poll.exit25.do.body4_crit_edge: ; preds = %lima_pp_soft_reset_poll.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

land.lhs.true.i.preheader:                        ; preds = %lima_pp_soft_reset_poll.exit25.land.lhs.true.i.preheader_crit_edge, %entry.land.lhs.true.i.preheader_crit_edge
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lima_pp_soft_reset_poll.exit.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %call13.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end, label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %iomem.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem.i18, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end17.i.lima_pp_soft_reset_poll.exit_crit_edge

if.end17.i.lima_pp_soft_reset_poll.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lima_pp_soft_reset_poll.exit

land.rhs.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %iomem.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem.i18, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 4128
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %15)
  %cmp.i = icmp eq i32 %15, 1048576
  %phi.cast.i = zext i1 %cmp.i to i32
  br label %lima_pp_soft_reset_poll.exit

lima_pp_soft_reset_poll.exit:                     ; preds = %land.rhs.i, %if.end17.i.lima_pp_soft_reset_poll.exit_crit_edge
  %16 = phi i32 [ 0, %if.end17.i.lima_pp_soft_reset_poll.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %tobool9.not.i = icmp eq i32 %16, 0
  br i1 %tobool9.not.i, label %lima_pp_soft_reset_poll.exit.land.lhs.true.i_crit_edge, label %lima_pp_soft_reset_poll.exit.do.body4_crit_edge

lima_pp_soft_reset_poll.exit.do.body4_crit_edge:  ; preds = %lima_pp_soft_reset_poll.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

lima_pp_soft_reset_poll.exit.land.lhs.true.i_crit_edge: ; preds = %lima_pp_soft_reset_poll.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

do.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call3 = tail call ptr @lima_ip_name(ptr noundef %ip) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef %call3) #11
  br label %cleanup

do.body4:                                         ; preds = %lima_pp_soft_reset_poll.exit.do.body4_crit_edge, %lima_pp_soft_reset_poll.exit25.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %iomem.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomem.i18, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -14745600) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %iomem.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomem.i18, align 4
  %add.ptr11 = getelementptr i8, ptr %22, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 420413440) #8, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %do.body4 ]
  ret i32 %retval.0
}

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
declare dso_local void @lima_sched_pipe_task_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_set_reg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_bcast_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lima_pp_write_frame(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %frame, ptr nocapture noundef readonly %wb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %arrayidx = getelementptr i32, ptr %frame, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iomem, align 4
  %mul = shl i32 %i.033, 2
  %add.ptr1 = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #8, !srcloc !66
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %do.body.for.cond5.preheader_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.for.cond5.preheader_crit_edge:            ; preds = %do.body
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond5.preheader.for.cond5.preheader_crit_edge, %do.body.for.cond5.preheader_crit_edge
  %n.037 = phi i32 [ %inc11.11, %for.cond5.preheader.for.cond5.preheader_crit_edge ], [ 0, %do.body.for.cond5.preheader_crit_edge ]
  %i.136 = phi i32 [ %inc22, %for.cond5.preheader.for.cond5.preheader_crit_edge ], [ 0, %do.body.for.cond5.preheader_crit_edge ]
  %add = shl i32 %i.136, 8
  %mul14 = add nuw nsw i32 %add, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11 = or i32 %n.037, 1
  %arrayidx12 = getelementptr i32, ptr %wb, i32 %n.037
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx12, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %7) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.1 = or i32 %n.037, 2
  %arrayidx12.1 = getelementptr i32, ptr %wb, i32 %inc11
  %10 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12.1, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomem, align 4
  %add.ptr15.1 = getelementptr i8, ptr %14, i32 4
  %add.ptr17.1 = getelementptr i8, ptr %add.ptr15.1, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.1, i32 %12) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.2 = or i32 %n.037, 3
  %arrayidx12.2 = getelementptr i32, ptr %wb, i32 %inc11.1
  %15 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12.2, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomem, align 4
  %add.ptr15.2 = getelementptr i8, ptr %19, i32 8
  %add.ptr17.2 = getelementptr i8, ptr %add.ptr15.2, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.2, i32 %17) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.3 = add nuw nsw i32 %n.037, 4
  %arrayidx12.3 = getelementptr i32, ptr %wb, i32 %inc11.2
  %20 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.3, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomem, align 4
  %add.ptr15.3 = getelementptr i8, ptr %24, i32 12
  %add.ptr17.3 = getelementptr i8, ptr %add.ptr15.3, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.3, i32 %22) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.4 = add nuw nsw i32 %n.037, 5
  %arrayidx12.4 = getelementptr i32, ptr %wb, i32 %inc11.3
  %25 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx12.4, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem, align 4
  %add.ptr15.4 = getelementptr i8, ptr %29, i32 16
  %add.ptr17.4 = getelementptr i8, ptr %add.ptr15.4, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.4, i32 %27) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.5 = add nuw nsw i32 %n.037, 6
  %arrayidx12.5 = getelementptr i32, ptr %wb, i32 %inc11.4
  %30 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12.5, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem, align 4
  %add.ptr15.5 = getelementptr i8, ptr %34, i32 20
  %add.ptr17.5 = getelementptr i8, ptr %add.ptr15.5, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.5, i32 %32) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.6 = add nuw nsw i32 %n.037, 7
  %arrayidx12.6 = getelementptr i32, ptr %wb, i32 %inc11.5
  %35 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx12.6, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem, align 4
  %add.ptr15.6 = getelementptr i8, ptr %39, i32 24
  %add.ptr17.6 = getelementptr i8, ptr %add.ptr15.6, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.6, i32 %37) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.7 = add nuw nsw i32 %n.037, 8
  %arrayidx12.7 = getelementptr i32, ptr %wb, i32 %inc11.6
  %40 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx12.7, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem, align 4
  %add.ptr15.7 = getelementptr i8, ptr %44, i32 28
  %add.ptr17.7 = getelementptr i8, ptr %add.ptr15.7, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.7, i32 %42) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.8 = add nuw nsw i32 %n.037, 9
  %arrayidx12.8 = getelementptr i32, ptr %wb, i32 %inc11.7
  %45 = ptrtoint ptr %arrayidx12.8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx12.8, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iomem, align 4
  %add.ptr15.8 = getelementptr i8, ptr %49, i32 32
  %add.ptr17.8 = getelementptr i8, ptr %add.ptr15.8, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.8, i32 %47) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.9 = add nuw nsw i32 %n.037, 10
  %arrayidx12.9 = getelementptr i32, ptr %wb, i32 %inc11.8
  %50 = ptrtoint ptr %arrayidx12.9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx12.9, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iomem, align 4
  %add.ptr15.9 = getelementptr i8, ptr %54, i32 36
  %add.ptr17.9 = getelementptr i8, ptr %add.ptr15.9, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.9, i32 %52) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.10 = add nuw nsw i32 %n.037, 11
  %arrayidx12.10 = getelementptr i32, ptr %wb, i32 %inc11.9
  %55 = ptrtoint ptr %arrayidx12.10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx12.10, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iomem, align 4
  %add.ptr15.10 = getelementptr i8, ptr %59, i32 40
  %add.ptr17.10 = getelementptr i8, ptr %add.ptr15.10, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.10, i32 %57) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %inc11.11 = add nuw nsw i32 %n.037, 12
  %arrayidx12.11 = getelementptr i32, ptr %wb, i32 %inc11.10
  %60 = ptrtoint ptr %arrayidx12.11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx12.11, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iomem, align 4
  %add.ptr15.11 = getelementptr i8, ptr %64, i32 44
  %add.ptr17.11 = getelementptr i8, ptr %add.ptr15.11, i32 %mul14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.11, i32 %62) #8, !srcloc !66
  %inc22 = add nuw nsw i32 %i.136, 1
  %exitcond39.not = icmp eq i32 %inc22, 3
  br i1 %exitcond39.not, label %for.end23, label %for.cond5.preheader.for.cond5.preheader_crit_edge

for.cond5.preheader.for.cond5.preheader_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader

for.end23:                                        ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 257, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lima_pp_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lima_pp_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 292, i32 3}
!10 = !{ptr @lima_pp_bcast_init._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @lima_pp_bcast_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 434, i32 4}
!14 = !{ptr @lima_pp_task_slab, !15, !"lima_pp_task_slab", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 419, i32 27}
!16 = !{ptr @lima_pp_task_slab_refcnt, !17, !"lima_pp_task_slab_refcnt", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 420, i32 12}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 128, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lima_pp_soft_reset_async_wait_one._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @lima_pp_soft_reset_async_wait_one._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/lima/lima_device.h", i32 129, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 207, i32 13}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 210, i32 10}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 213, i32 10}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 216, i32 10}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 219, i32 10}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 222, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lima_pp_print_version._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @lima_pp_print_version._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 29, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lima_pp_handle_irq._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @lima_pp_handle_irq._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 406, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lima_pp_task_error._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @lima_pp_task_error._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/lima/lima_pp.c", i32 187, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lima_pp_hard_reset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lima_pp_hard_reset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2154182202}
!66 = !{i64 4206476}
!67 = !{i64 2154185039}
!68 = !{i64 2154186781}
!69 = !{i64 4206894}
!70 = !{i64 2154208819}
!71 = !{i64 2154212790}
!72 = !{i64 2154180807}
!73 = !{i64 2154177700}
!74 = !{i64 2154179661}
!75 = !{i64 2154180098}
!76 = !{i64 2148332305}
!77 = !{i64 2148247038, i64 2148247070, i64 2148247099, i64 2148247133, i64 2148247164, i64 2148247187}
!78 = !{i64 2148332534}
!79 = !{i64 2154181334}
!80 = !{i64 2154181861}
!81 = !{i8 0, i8 2}
!82 = !{i64 2154214827}
!83 = !{i64 2154215403}
!84 = !{i64 2154216047}
!85 = !{i64 2154216702}
!86 = !{i64 2154219344}
!87 = !{i64 2154219871}
!88 = !{i64 2154198529}
!89 = !{i64 2154198985}
!90 = !{i64 2154199548}
!91 = !{i64 2154197528}
!92 = !{i64 2154198252}
!93 = !{i64 2154201640}
!94 = !{i64 2154204477}
!95 = !{i64 2154207474}
!96 = !{i64 2154187556}
!97 = !{i64 2154188165}
!98 = !{i64 2154192526}
!99 = !{i64 2154195523}
!100 = !{i64 2154196579}
!101 = !{i64 2154197042}
