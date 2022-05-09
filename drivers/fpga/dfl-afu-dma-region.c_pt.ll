; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-afu-dma-region.c_pt.bc'
source_filename = "../drivers/fpga/dfl-afu-dma-region.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dfl_feature_platform_data = type { %struct.list_head, %struct.mutex, %struct.cdev, ptr, ptr, i32, i32, i8, i32, ptr, i32, [0 x %struct.dfl_feature] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dfl_afu = type { i64, i32, i8, %struct.list_head, %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dfl_afu_dma_region = type { i64, i64, i64, ptr, %struct.rb_node, i8 }

@afu_dma_region_destroy.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_afu\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afu_dma_region_destroy\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/fpga/dfl-afu-dma-region.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"del region (iova = %llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@afu_dma_region_find.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afu_dma_region_find\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"find region (iova = %llx)\0A\00", [37 x i8] zeroinitializer }, align 32
@afu_dma_region_find.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"region with iova %llx and size %llx is not found\0A\00", [46 x i8] zeroinitializer }, align 32
@afu_dma_map_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 328, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to pin memory region\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afu_dma_map_region\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@afu_dma_map_region._entry_ptr = internal global ptr @afu_dma_map_region._entry, section ".printk_index", align 4
@afu_dma_map_region._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 334, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pages are not continuous\0A\00", [38 x i8] zeroinitializer }, align 32
@afu_dma_map_region._entry_ptr.13 = internal global ptr @afu_dma_map_region._entry.11, section ".printk_index", align 4
@afu_dma_map_region._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 345, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to map for dma\0A\00", [41 x i8] zeroinitializer }, align 32
@afu_dma_map_region._entry_ptr.16 = internal global ptr @afu_dma_map_region._entry.14, section ".printk_index", align 4
@afu_dma_map_region._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 356, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add dma region\0A\00", [38 x i8] zeroinitializer }, align 32
@afu_dma_map_region._entry_ptr.19 = internal global ptr @afu_dma_map_region._entry.17, section ".printk_index", align 4
@afu_dma_unpin_pages.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afu_dma_unpin_pages\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%ld pages unpinned\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@afu_dma_pin_pages.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afu_dma_pin_pages\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d pages pinned\0A\00", [47 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@afu_dma_region_add.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afu_dma_region_add\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"add region (iova = %llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@afu_dma_region_remove.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afu_dma_region_remove\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 212, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 257, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 271, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 328, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 334, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 345, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 356, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 92, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 61, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 149, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [37 x i8] c"../drivers/fpga/dfl-afu-dma-region.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 190, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @afu_dma_map_region._entry, ptr @afu_dma_map_region._entry.11, ptr @afu_dma_map_region._entry.14, ptr @afu_dma_map_region._entry.17, ptr @afu_dma_map_region._entry_ptr, ptr @afu_dma_map_region._entry_ptr.13, ptr @afu_dma_map_region._entry_ptr.16, ptr @afu_dma_map_region._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_dma_map_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_dma_map_region._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_dma_map_region._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_dma_map_region._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @afu_dma_region_init(ptr nocapture noundef readonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %dma_regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dma_regions to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dma_regions, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afu_dma_region_destroy(ptr nocapture noundef readonly %pdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %dma_regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 4
  %call1 = tail call ptr @rb_first(ptr noundef %dma_regions) #8
  %tobool.not34 = icmp eq ptr %call1, null
  br i1 %tobool.not34, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %node.035 = phi ptr [ %call1, %while.body.lr.ph ], [ %call19, %if.end18.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.035, i32 -28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_destroy.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_region_destroy, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %iova = getelementptr i8, ptr %node.035, i32 -12
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %iova, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_destroy.__UNIQUE_ID_ddebug263, ptr noundef %dev7, ptr noundef nonnull @.str.3, i64 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  tail call void @rb_erase(ptr noundef nonnull %node.035, ptr noundef %dma_regions) #8
  %iova9 = getelementptr i8, ptr %node.035, i32 -12
  %6 = ptrtoint ptr %iova9 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %iova9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool10.not = icmp eq i64 %7, 0
  br i1 %tobool10.not, label %do.end.if.end15_crit_edge, label %if.then11

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %parent2.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent2.i, align 8
  %conv = trunc i64 %7 to i32
  %length = getelementptr i8, ptr %node.035, i32 -20
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %length, align 8
  %conv14 = trunc i64 %15 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %conv, i32 noundef %conv14, i32 noundef 0, i32 noundef 0) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.end.if.end15_crit_edge
  %pages = getelementptr i8, ptr %node.035, i32 -4
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr i8, ptr %node.035, i32 -20
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %length.i, align 8
  %shr.i = lshr i64 %19, 12
  %conv.i = trunc i64 %shr.i to i32
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages, align 8
  tail call void @unpin_user_pages(ptr noundef %23, i32 noundef %conv.i) #8
  %24 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %25) #8
  %26 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm.i, align 8
  %call4.i = tail call i32 @account_locked_vm(ptr noundef %31, i32 noundef %conv.i, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_region_destroy, %if.then.i)) #8
          to label %if.end18 [label %if.then.i], !srcloc !57

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, ptr noundef %dev2.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.then17, %if.end15.if.end18_crit_edge
  %call19 = tail call ptr @rb_next(ptr noundef nonnull %node.035) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afu_dma_region_find(ptr nocapture noundef readonly %pdata, i64 noundef %iova, i64 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %dma_regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 4
  %dev1 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not.i = icmp eq i64 %size, 0
  %add5.i = add i64 %size, %iova
  %4 = ptrtoint ptr %dma_regions to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.075 = load ptr, ptr %dma_regions, align 4
  %tobool.not76 = icmp eq ptr %node.075, null
  br i1 %tobool.not76, label %entry.do.body20_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %entry.while.body_crit_edge
  %node.077 = phi ptr [ %node.0, %if.end19.while.body_crit_edge ], [ %node.075, %entry.while.body_crit_edge ]
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body
  %iova1.i = getelementptr i8, ptr %node.077, i32 -12
  %5 = ptrtoint ptr %iova1.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %iova1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %iova)
  %cmp.not.i = icmp eq i64 %6, %iova
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end11_crit_edge

land.lhs.true.i.if.end11_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.if.end.i_crit_edge
  %iova2.i = getelementptr i8, ptr %node.077, i32 -12
  %7 = ptrtoint ptr %iova2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %iova2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %iova)
  %cmp3.not.i = icmp ugt i64 %8, %iova
  br i1 %cmp3.not.i, label %if.end.i.if.end11_crit_edge, label %dma_region_check_iova.exit

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

dma_region_check_iova.exit:                       ; preds = %if.end.i
  %length.i = getelementptr i8, ptr %node.077, i32 -20
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %length.i, align 8
  %add.i = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add5.i)
  %cmp6.i.not = icmp ult i64 %add.i, %add5.i
  br i1 %cmp6.i.not, label %dma_region_check_iova.exit.if.end11_crit_edge, label %do.body

dma_region_check_iova.exit.if.end11_crit_edge:    ; preds = %dma_region_check_iova.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.body:                                          ; preds = %dma_region_check_iova.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.le = getelementptr i8, ptr %node.077, i32 -28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_find.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_region_find, %cleanup.thread)) #8
          to label %cleanup36 [label %cleanup.thread], !srcloc !57

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %iova2.i.le = getelementptr i8, ptr %node.077, i32 -12
  %11 = ptrtoint ptr %iova2.i.le to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %iova2.i.le, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_find.__UNIQUE_ID_ddebug264, ptr noundef %dev2, ptr noundef nonnull @.str.5, i64 noundef %12) #8
  br label %cleanup36

if.end11:                                         ; preds = %dma_region_check_iova.exit.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %land.lhs.true.i.if.end11_crit_edge
  %iova12 = getelementptr i8, ptr %node.077, i32 -12
  %13 = ptrtoint ptr %iova12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iova12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %iova)
  %cmp = icmp ugt i64 %14, %iova
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.077, i32 0, i32 2
  br label %if.end19

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %iova)
  %cmp15 = icmp ult i64 %14, %iova
  br i1 %cmp15, label %if.then16, label %if.else.do.body20_crit_edge

if.else.do.body20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.077, i32 0, i32 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then13
  %node.1.in = phi ptr [ %rb_left, %if.then13 ], [ %rb_right, %if.then16 ]
  %15 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %if.end19.do.body20_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end19.do.body20_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body20:                                        ; preds = %if.end19.do.body20_crit_edge, %if.else.do.body20_crit_edge, %entry.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_find.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_region_find, %if.then32)) #8
          to label %cleanup36 [label %if.then32], !srcloc !57

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_find.__UNIQUE_ID_ddebug265, ptr noundef %dev2, ptr noundef nonnull @.str.6, i64 noundef %iova, i64 noundef %size) #8
  br label %cleanup36

cleanup36:                                        ; preds = %if.then32, %do.body20, %cleanup.thread, %do.body
  %retval.2 = phi ptr [ null, %if.then32 ], [ %add.ptr.le, %cleanup.thread ], [ null, %do.body20 ], [ %add.ptr.le, %do.body ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afu_dma_map_region(ptr noundef %pdata, i64 noundef %user_addr, i64 noundef %length, ptr nocapture noundef writeonly %iova) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i64 %length, %user_addr
  %1 = and i64 %0, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %2 = icmp ne i64 %1, 0
  %3 = xor i64 %user_addr, -1
  %4 = add i64 %length, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %3)
  %5 = icmp uge i64 %4, %3
  %6 = or i1 %5, %2
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 48) #11
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %user_addr, ptr %call7.i.i, align 8
  %length15 = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %length15 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %length, ptr %length15, align 8
  %call16 = tail call fastcc i32 @afu_dma_pin_pages(ptr noundef %pdata, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.7) #12
  br label %free_region

if.end20:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %length15 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %length15, align 8
  %shr.i = lshr i64 %13, 12
  %conv.i = trunc i64 %shr.i to i32
  %pages.i = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %call7.i.i, i32 0, i32 3
  %sub.i = add i32 %conv.i, -1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end20
  %i.0.i = phi i32 [ 0, %if.end20 ], [ %add4.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %smax.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, %smax.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end28_crit_edge, label %for.body.i

for.cond.i.if.end28_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

for.body.i:                                       ; preds = %for.cond.i
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %i.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %19, 1
  %add2.i = add i32 %add.i, %sub.ptr.div.i
  %add4.i = add nuw i32 %i.0.i, 1
  %arrayidx5.i = getelementptr ptr, ptr %15, i32 %add4.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div9.i = sdiv exact i32 %sub.ptr.sub8.i, 36
  %add10.i = add i32 %sub.ptr.div9.i, %19
  %cmp11.not.i = icmp eq i32 %add2.i, %add10.i
  br i1 %cmp11.not.i, label %for.body.i.for.cond.i_crit_edge, label %afu_dma_check_continuous_pages.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

afu_dma_check_continuous_pages.exit:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %sub.i)
  %cmp.i.not = icmp slt i32 %i.0.i, %sub.i
  br i1 %cmp.i.not, label %do.end25, label %afu_dma_check_continuous_pages.exit.if.end28_crit_edge

afu_dma_check_continuous_pages.exit.if.end28_crit_edge: ; preds = %afu_dma_check_continuous_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end25:                                         ; preds = %afu_dma_check_continuous_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %22 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev26, align 4
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.12) #12
  br label %unpin_pages

if.end28:                                         ; preds = %afu_dma_check_continuous_pages.exit.if.end28_crit_edge, %for.cond.i.if.end28_crit_edge
  %dev.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 8
  %parent2.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent2.i, align 8
  %30 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %conv31 = trunc i64 %13 to i32
  %call32 = tail call i32 @dma_map_page_attrs(ptr noundef %29, ptr noundef %33, i32 noundef 0, i32 noundef %conv31, i32 noundef 0, i32 noundef 0) #8
  %conv33 = zext i32 %call32 to i64
  %iova34 = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %iova34 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv33, ptr %iova34, align 8
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %parent.i102 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %parent.i102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i102, align 8
  %parent2.i103 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %parent2.i103 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent2.i103, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %40, i32 noundef %call32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp.i104.not = icmp eq i32 %call32, -1
  br i1 %cmp.i104.not, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.15) #12
  br label %unpin_pages

if.end46:                                         ; preds = %if.end28
  %43 = ptrtoint ptr %iova34 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %iova34, align 8
  %45 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %iova, align 8
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call48 = tail call fastcc i32 @afu_dma_region_add(ptr noundef %pdata, ptr noundef nonnull %call7.i.i)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool50.not = icmp eq i32 %call48, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %do.end54

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %dev56 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.18) #12
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %parent.i106 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %parent.i106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i106, align 8
  %parent2.i107 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %parent2.i107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent2.i107, align 8
  %54 = ptrtoint ptr %iova34 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %iova34, align 8
  %conv60 = trunc i64 %55 to i32
  %56 = ptrtoint ptr %length15 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %length15, align 8
  %conv62 = trunc i64 %57 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %53, i32 noundef %conv60, i32 noundef %conv62, i32 noundef 0, i32 noundef 0) #8
  br label %unpin_pages

unpin_pages:                                      ; preds = %do.end54, %do.end43, %do.end25
  %ret.0 = phi i32 [ -14, %do.end43 ], [ %call48, %do.end54 ], [ -22, %do.end25 ]
  %58 = ptrtoint ptr %length15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %length15, align 8
  %shr.i109 = lshr i64 %59, 12
  %conv.i110 = trunc i64 %shr.i109 to i32
  %dev1.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %60 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i, align 4
  %62 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pages.i, align 8
  tail call void @unpin_user_pages(ptr noundef %63, i32 noundef %conv.i110) #8
  %64 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pages.i, align 8
  tail call void @kfree(ptr noundef %65) #8
  %66 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 53
  %70 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mm.i, align 8
  %call4.i = tail call i32 @account_locked_vm(ptr noundef %71, i32 noundef %conv.i110, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_map_region, %if.then.i)) #8
          to label %free_region [label %if.then.i], !srcloc !57

if.then.i:                                        ; preds = %unpin_pages
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, ptr noundef %dev2.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i110) #8
  br label %free_region

free_region:                                      ; preds = %if.then.i, %unpin_pages, %do.end
  %ret.1 = phi i32 [ %call16, %do.end ], [ %ret.0, %unpin_pages ], [ %ret.0, %if.then.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_region, %if.end46.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_region ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afu_dma_pin_pages(ptr nocapture noundef readonly %pdata, ptr nocapture noundef %region) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %length, align 8
  %shr = lshr i64 %1, 12
  %conv = trunc i64 %shr to i32
  %dev1 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  %call3 = tail call i32 @account_locked_vm(ptr noundef %9, i32 noundef %conv, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 4) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !58

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pages51 = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 3
  %12 = ptrtoint ptr %pages51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pages51, align 8
  br label %unlock_vm

if.end7.i.i:                                      ; preds = %if.end
  %13 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #13
  %pages = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 3
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %pages, align 8
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.unlock_vm_crit_edge, label %if.end8

if.end7.i.i.unlock_vm_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_vm

if.end8:                                          ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %region to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %region, align 8
  %conv9 = trunc i64 %16 to i32
  %call11 = tail call i32 @pin_user_pages_fast(i32 noundef %conv9, i32 noundef %conv, i32 noundef 1, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end8.free_pages_crit_edge, label %if.else

if.end8.free_pages_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pages

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %conv)
  %cmp14.not = icmp eq i32 %call11, %conv
  br i1 %cmp14.not, label %do.body, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 8
  tail call void @unpin_user_pages(ptr noundef %18, i32 noundef %call11) #8
  br label %free_pages

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_pin_pages.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_pin_pages, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !57

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_pin_pages.__UNIQUE_ID_ddebug259, ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %conv) #8
  br label %cleanup

free_pages:                                       ; preds = %if.then16, %if.end8.free_pages_crit_edge
  %ret.0 = phi i32 [ -14, %if.then16 ], [ %call11, %if.end8.free_pages_crit_edge ]
  %19 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %20) #8
  br label %unlock_vm

unlock_vm:                                        ; preds = %free_pages, %if.end7.i.i.unlock_vm_crit_edge, %kcalloc.exit.thread
  %ret.1 = phi i32 [ %ret.0, %free_pages ], [ -12, %if.end7.i.i.unlock_vm_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %mm29 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %mm29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm29, align 8
  %call30 = tail call i32 @account_locked_vm(ptr noundef %24, i32 noundef %conv, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock_vm, %if.then23, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock_vm ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afu_dma_region_add(ptr nocapture noundef readonly %pdata, ptr noundef %region) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_add.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_region_add, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %iova = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 2
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %iova, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_add.__UNIQUE_ID_ddebug261, ptr noundef %dev4, ptr noundef nonnull @.str.25, i64 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma_regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dma_regions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regions, align 4
  %tobool5.not50 = icmp eq ptr %7, null
  br i1 %tobool5.not50, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %iova7 = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 2
  %8 = ptrtoint ptr %iova7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %iova7, align 8
  %length = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  %add5.i = add i64 %11, %9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %12 = phi ptr [ %7, %while.body.lr.ph ], [ %22, %cleanup.while.body_crit_edge ]
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body
  %iova1.i = getelementptr i8, ptr %12, i32 -12
  %13 = ptrtoint ptr %iova1.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iova1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %9)
  %cmp.not.i = icmp eq i64 %14, %9
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end10_crit_edge

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.if.end.i_crit_edge
  %iova2.i = getelementptr i8, ptr %12, i32 -12
  %15 = ptrtoint ptr %iova2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iova2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %9)
  %cmp3.not.i = icmp ugt i64 %16, %9
  br i1 %cmp3.not.i, label %if.end.i.if.end10_crit_edge, label %dma_region_check_iova.exit

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

dma_region_check_iova.exit:                       ; preds = %if.end.i
  %length.i = getelementptr i8, ptr %12, i32 -20
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length.i, align 8
  %add.i = add i64 %18, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add5.i)
  %cmp6.i.not = icmp ult i64 %add.i, %add5.i
  br i1 %cmp6.i.not, label %dma_region_check_iova.exit.if.end10_crit_edge, label %dma_region_check_iova.exit.cleanup23_crit_edge

dma_region_check_iova.exit.cleanup23_crit_edge:   ; preds = %dma_region_check_iova.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

dma_region_check_iova.exit.if.end10_crit_edge:    ; preds = %dma_region_check_iova.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %dma_region_check_iova.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge
  %iova12 = getelementptr i8, ptr %12, i32 -12
  %19 = ptrtoint ptr %iova12 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %iova12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %20)
  %cmp = icmp ult i64 %9, %20
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %20)
  %cmp16 = icmp ugt i64 %9, %20
  br i1 %cmp16, label %if.then17, label %if.else.cleanup23_crit_edge

if.else.cleanup23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.then13
  %new.2 = phi ptr [ %rb_left, %if.then13 ], [ %rb_right, %if.then17 ]
  %21 = ptrtoint ptr %new.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %new.2, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %12 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %do.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %do.end.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.2, %while.cond.while.end_crit_edge ], [ %dma_regions, %do.end.while.end_crit_edge ]
  %node = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 4
  %23 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %parent.0.lcssa, ptr %node, align 4
  %rb_right.i = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %region, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_left.i, align 4
  %26 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node, ptr %new.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %node, ptr noundef %dma_regions) #8
  br label %cleanup23

cleanup23:                                        ; preds = %while.end, %if.else.cleanup23_crit_edge, %dma_region_check_iova.exit.cleanup23_crit_edge
  %retval.2 = phi i32 [ 0, %while.end ], [ -17, %dma_region_check_iova.exit.cleanup23_crit_edge ], [ -17, %if.else.cleanup23_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afu_dma_unmap_region(ptr noundef %pdata, i64 noundef %iova) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %private.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i.i, align 4
  %dma_regions.i.i = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 4
  %dev1.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dma_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i2.i = load ptr, ptr %dma_regions.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %node.0.i2.i, null
  br i1 %tobool.not.i3.i, label %entry.do.body20.i.i_crit_edge, label %while.body.i.preheader.i

entry.do.body20.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i.i

while.body.i.preheader.i:                         ; preds = %entry
  %5 = xor i64 %iova, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end19.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %node.0.i4.i = phi ptr [ %node.0.i.i, %if.end19.i.i.while.body.i.i_crit_edge ], [ %node.0.i2.i, %while.body.i.preheader.i ]
  %iova1.i.i.i = getelementptr i8, ptr %node.0.i4.i, i32 -12
  %6 = ptrtoint ptr %iova1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %iova1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %iova)
  %cmp.not.i.i.i = icmp eq i64 %7, %iova
  br i1 %cmp.not.i.i.i, label %dma_region_check_iova.exit.i.i, label %while.body.i.i.if.end11.i.i_crit_edge

while.body.i.i.if.end11.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

dma_region_check_iova.exit.i.i:                   ; preds = %while.body.i.i
  %length.i.i.i = getelementptr i8, ptr %node.0.i4.i, i32 -20
  %8 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp6.i.not.i.i = icmp ugt i64 %9, %5
  br i1 %cmp6.i.not.i.i, label %dma_region_check_iova.exit.i.i.if.end11.i.i_crit_edge, label %do.body.i.i

dma_region_check_iova.exit.i.i.if.end11.i.i_crit_edge: ; preds = %dma_region_check_iova.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

do.body.i.i:                                      ; preds = %dma_region_check_iova.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.le.i.i = getelementptr i8, ptr %node.0.i4.i, i32 -28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_find.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_unmap_region, %cleanup.thread.i.i)) #8
          to label %afu_dma_region_find_iova.exit [label %cleanup.thread.i.i], !srcloc !57

cleanup.thread.i.i:                               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %iova1.i.i.i.le = getelementptr i8, ptr %node.0.i4.i, i32 -12
  %10 = ptrtoint ptr %iova1.i.i.i.le to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %iova1.i.i.i.le, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_find.__UNIQUE_ID_ddebug264, ptr noundef %dev2.i.i, ptr noundef nonnull @.str.5, i64 noundef %11) #8
  br label %afu_dma_region_find_iova.exit

if.end11.i.i:                                     ; preds = %dma_region_check_iova.exit.i.i.if.end11.i.i_crit_edge, %while.body.i.i.if.end11.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %iova)
  %cmp.i.i = icmp ugt i64 %7, %iova
  br i1 %cmp.i.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i4.i, i32 0, i32 2
  br label %if.end19.i.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %iova)
  %cmp15.i.i = icmp ult i64 %7, %iova
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.else.i.i.do.body20.i.i_crit_edge

if.else.i.i.do.body20.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.0.i4.i, i32 0, i32 1
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then16.i.i, %if.then13.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then13.i.i ], [ %rb_right.i.i, %if.then16.i.i ]
  %12 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end19.i.i.do.body20.i.i_crit_edge, label %if.end19.i.i.while.body.i.i_crit_edge

if.end19.i.i.while.body.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end19.i.i.do.body20.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i.i

do.body20.i.i:                                    ; preds = %if.end19.i.i.do.body20.i.i_crit_edge, %if.else.i.i.do.body20.i.i_crit_edge, %entry.do.body20.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_find.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_unmap_region, %afu_dma_region_find_iova.exit.thread)) #8
          to label %afu_dma_region_find_iova.exit [label %afu_dma_region_find_iova.exit.thread], !srcloc !57

afu_dma_region_find_iova.exit.thread:             ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_find.__UNIQUE_ID_ddebug265, ptr noundef %dev2.i.i, ptr noundef nonnull @.str.6, i64 noundef %iova, i64 noundef 0) #8
  br label %if.then

afu_dma_region_find_iova.exit:                    ; preds = %do.body20.i.i, %cleanup.thread.i.i, %do.body.i.i
  %retval.2.i.i = phi ptr [ %add.ptr.le.i.i, %cleanup.thread.i.i ], [ null, %do.body20.i.i ], [ %add.ptr.le.i.i, %do.body.i.i ]
  %tobool.not = icmp eq ptr %retval.2.i.i, null
  br i1 %tobool.not, label %afu_dma_region_find_iova.exit.if.then_crit_edge, label %if.end

afu_dma_region_find_iova.exit.if.then_crit_edge:  ; preds = %afu_dma_region_find_iova.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %afu_dma_region_find_iova.exit.if.then_crit_edge, %afu_dma_region_find_iova.exit.thread
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %afu_dma_region_find_iova.exit
  %in_use = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %retval.2.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_use, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_region_remove.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_unmap_region, %if.then.i)) #8
          to label %afu_dma_region_remove.exit [label %if.then.i], !srcloc !57

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i.i, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %iova.i = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %retval.2.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %iova.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_region_remove.__UNIQUE_ID_ddebug262, ptr noundef %dev3.i, ptr noundef nonnull @.str.3, i64 noundef %18) #8
  br label %afu_dma_region_remove.exit

afu_dma_region_remove.exit:                       ; preds = %if.then.i, %if.end5
  %19 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i.i.i, align 4
  %node.i = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %retval.2.i.i, i32 0, i32 4
  %dma_regions.i = getelementptr inbounds %struct.dfl_afu, ptr %20, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %node.i, ptr noundef %dma_regions.i) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %21 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i.i, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %parent2.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent2.i, align 8
  %iova8 = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %retval.2.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %iova8 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %iova8, align 8
  %conv = trunc i64 %28 to i32
  %length = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %retval.2.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %length, align 8
  %conv9 = trunc i64 %30 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %conv, i32 noundef %conv9, i32 noundef 0, i32 noundef 0) #8
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %length, align 8
  %shr.i = lshr i64 %32, 12
  %conv.i = trunc i64 %shr.i to i32
  %33 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i.i, align 4
  %pages.i = getelementptr inbounds %struct.dfl_afu_dma_region, ptr %retval.2.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pages.i, align 8
  tail call void @unpin_user_pages(ptr noundef %36, i32 noundef %conv.i) #8
  %37 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages.i, align 8
  tail call void @kfree(ptr noundef %38) #8
  %39 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 53
  %43 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mm.i, align 8
  %call4.i = tail call i32 @account_locked_vm(ptr noundef %44, i32 noundef %conv.i, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_dma_unmap_region, %if.then.i24)) #8
          to label %afu_dma_unpin_pages.exit [label %if.then.i24], !srcloc !57

if.then.i24:                                      ; preds = %afu_dma_region_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, ptr noundef %dev2.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #8
  br label %afu_dma_unpin_pages.exit

afu_dma_unpin_pages.exit:                         ; preds = %if.then.i24, %afu_dma_region_remove.exit
  tail call void @kfree(ptr noundef nonnull %retval.2.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %afu_dma_unpin_pages.exit, %if.then3, %if.then
  %retval.0 = phi i32 [ -16, %if.then3 ], [ 0, %afu_dma_unpin_pages.exit ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @account_locked_vm(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 212, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @afu_dma_region_destroy.__UNIQUE_ID_ddebug263, !1, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 257, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @afu_dma_region_find.__UNIQUE_ID_ddebug264, !7, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 271, i32 2}
!12 = !{ptr @afu_dma_region_find.__UNIQUE_ID_ddebug265, !11, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 328, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @afu_dma_map_region._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @afu_dma_map_region._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 334, i32 3}
!22 = !{ptr @afu_dma_map_region._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @afu_dma_map_region._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 345, i32 3}
!26 = !{ptr @afu_dma_map_region._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @afu_dma_map_region._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 356, i32 3}
!30 = !{ptr @afu_dma_map_region._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @afu_dma_map_region._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 92, i32 2}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @afu_dma_unpin_pages.__UNIQUE_ID_ddebug260, !33, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 61, i32 2}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @afu_dma_pin_pages.__UNIQUE_ID_ddebug259, !37, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 149, i32 2}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @afu_dma_region_add.__UNIQUE_ID_ddebug261, !41, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fpga/dfl-afu-dma-region.c", i32 190, i32 2}
!46 = !{ptr @afu_dma_region_remove.__UNIQUE_ID_ddebug262, !45, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148330255, i64 2148330260, i64 2148330273, i64 2148330317, i64 2148330351, i64 2148330372}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i8 0, i8 2}
