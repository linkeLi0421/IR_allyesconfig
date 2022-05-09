; ModuleID = '/llk/IR_all_yes/drivers/mtd/hyperbus/hbmc-am654.c_pt.bc'
source_filename = "../drivers/mtd/hyperbus/hbmc-am654.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hyperbus_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.am654_hbmc_priv = type { %struct.hyperbus_ctlr, %struct.hyperbus_device, ptr }
%struct.hyperbus_ctlr = type { ptr, i8, ptr }
%struct.hyperbus_device = type { %struct.map_info, ptr, ptr, ptr, i32, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.am654_hbmc_device_priv = type { %struct.completion, i32, ptr, ptr }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [8 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.rb_root = type { ptr }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_hbmc_am654__238_266_am654_hbmc_platform_driver_init6 = internal global ptr @am654_hbmc_platform_driver_init, section ".initcall6.init", align 4
@am654_hbmc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @am654_hbmc_probe, ptr @am654_hbmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @am654_hbmc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_am654_hbmc_platform_driver_exit = internal global ptr @am654_hbmc_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [49 x i8] c"hbmc_am654.description=HBMC driver for AM654 SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [48 x i8] c"hbmc_am654.file=drivers/mtd/hyperbus/hbmc-am654\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [26 x i8] c"hbmc_am654.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [37 x i8] c"hbmc_am654.alias=platform:hbmc-am654\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [56 x i8] c"hbmc_am654.author=Vignesh Raghavendra <vigneshr@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hbmc-am654\00", [21 x i8] zeroinitializer }, align 32
@am654_hbmc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-hbmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mux-controls\00", [19 x i8] zeroinitializer }, align 32
@am654_hbmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to select HBMC mux\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"am654_hbmc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/hyperbus/hbmc-am654.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@am654_hbmc_probe._entry_ptr = internal global ptr @am654_hbmc_probe._entry, section ".printk_index", align 4
@am654_hbmc_ops = internal constant { %struct.hyperbus_ops, [44 x i8] } { %struct.hyperbus_ops { ptr null, ptr null, ptr @am654_hbmc_read, ptr null, ptr @am654_hbmc_calibrate }, [44 x i8] zeroinitializer }, align 32
@am654_hbmc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register controller\0A\00", [33 x i8] zeroinitializer }, align 32
@am654_hbmc_probe._entry_ptr.9 = internal global ptr @am654_hbmc_probe._entry.7, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@am654_hbmc_dma_read.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hbmc_am654\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"am654_hbmc_dma_read\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@am654_hbmc_dma_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 96, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device_prep_dma_memcpy error\0A\00", [34 x i8] zeroinitializer }, align 32
@am654_hbmc_dma_read._entry_ptr = internal global ptr @am654_hbmc_dma_read._entry, section ".printk_index", align 4
@am654_hbmc_dma_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_submit_error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@am654_hbmc_dma_read._entry_ptr.16 = internal global ptr @am654_hbmc_dma_read._entry.14, section ".printk_index", align 4
@am654_hbmc_dma_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.4, i32 115, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA wait_for_completion_timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@am654_hbmc_dma_read._entry_ptr.19 = internal global ptr @am654_hbmc_dma_read._entry.17, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@am654_hbmc_request_mmap_dma.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"am654_hbmc_request_mmap_dma\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No DMA channel available\0A\00", [38 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"am654_hbmc_platform_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 257, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 261, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"am654_hbmc_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 248, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 179, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 187, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"am654_hbmc_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 133, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 218, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 89, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 96, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 108, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 115, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 326, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1169, i32 2 }
@___asan_gen_.105 = private constant [37 x i8] c"../drivers/mtd/hyperbus/hbmc-am654.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 150, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_am654_hbmc_platform_driver_exit, ptr @__initcall__kmod_hbmc_am654__238_266_am654_hbmc_platform_driver_init6, ptr @am654_hbmc_dma_read._entry, ptr @am654_hbmc_dma_read._entry.14, ptr @am654_hbmc_dma_read._entry.17, ptr @am654_hbmc_dma_read._entry_ptr, ptr @am654_hbmc_dma_read._entry_ptr.16, ptr @am654_hbmc_dma_read._entry_ptr.19, ptr @am654_hbmc_platform_driver_exit, ptr @am654_hbmc_probe._entry, ptr @am654_hbmc_probe._entry.7, ptr @am654_hbmc_probe._entry_ptr, ptr @am654_hbmc_probe._entry_ptr.9, ptr @am654_hbmc_platform_driver, ptr @.str, ptr @am654_hbmc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @am654_hbmc_ops, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @init_completion.__key, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_dma_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_dma_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_hbmc_dma_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @am654_hbmc_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @am654_hbmc_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am654_hbmc_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @am654_hbmc_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am654_hbmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #7
  %hbdev = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 1
  %np4 = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %np4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %np4, align 4
  %call7 = call i32 @of_address_to_resource(ptr noundef %call3, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup74_crit_edge

if.end.cleanup74_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i122 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i122, null
  br i1 %tobool.i.not, label %if.end10.if.end23_crit_edge, label %if.then13

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then13:                                        ; preds = %if.end10
  %call14 = call ptr @devm_mux_control_get(ptr noundef %dev, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call14 to i32
  br label %cleanup74

if.end18:                                         ; preds = %if.then13
  %call.i123 = call i32 @mux_control_select_delay(ptr noundef %call14, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool20.not = icmp eq i32 %call.i123, 0
  br i1 %tobool20.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup74

cleanup:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %mux_ctrl = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %mux_ctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %mux_ctrl, align 4
  br label %if.end23

if.end23:                                         ; preds = %cleanup, %if.end10.if.end23_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  %size = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %size, align 4
  %call26 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res) #7
  %virt = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call26, ptr %virt, align 4
  %cmp.i124 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call26 to i32
  br label %cleanup74

if.end38:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.hyperbus_ctlr, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @am654_hbmc_ops, ptr %ops, align 4
  %ctlr43 = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %ctlr43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %ctlr43, align 4
  %call.i125 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #7
  %tobool45.not = icmp eq ptr %call.i125, null
  br i1 %tobool45.not, label %if.end38.disable_mux_crit_edge, label %if.end47

if.end38.disable_mux_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_mux

if.end47:                                         ; preds = %if.end38
  %priv49 = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %priv49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i125, ptr %priv49, align 4
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res, align 4
  %device_base = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %call.i125, i32 0, i32 1
  %23 = ptrtoint ptr %device_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %device_base, align 4
  %ctlr51 = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %call.i125, i32 0, i32 2
  %24 = ptrtoint ptr %ctlr51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %ctlr51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #7
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask.i) #7
  %call.i126 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %mask.i) #7
  %cmp.i.i = icmp ugt ptr %call.i126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %if.end47
  %cmp.i127 = icmp eq ptr %call.i126, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i127, label %am654_hbmc_request_mmap_dma.exit.thread132, label %do.body.i

am654_hbmc_request_mmap_dma.exit.thread132:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %disable_mux

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am654_hbmc_request_mmap_dma.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am654_hbmc_probe, %if.then7.i)) #7
          to label %am654_hbmc_request_mmap_dma.exit [label %if.then7.i], !srcloc !74

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ctlr51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctlr51, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am654_hbmc_request_mmap_dma.__UNIQUE_ID_ddebug237, ptr noundef %29, ptr noundef nonnull @.str.24) #7
  br label %am654_hbmc_request_mmap_dma.exit.thread

if.end9.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %rx_chan10.i = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %call.i125, i32 0, i32 3
  %30 = ptrtoint ptr %rx_chan10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i126, ptr %rx_chan10.i, align 4
  %31 = ptrtoint ptr %call.i125 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %call.i125, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %call.i125, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #7
  br label %am654_hbmc_request_mmap_dma.exit.thread

am654_hbmc_request_mmap_dma.exit.thread:          ; preds = %if.end9.i, %if.then7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %if.end55

am654_hbmc_request_mmap_dma.exit:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %if.end55

if.end55:                                         ; preds = %am654_hbmc_request_mmap_dma.exit, %am654_hbmc_request_mmap_dma.exit.thread
  %call57 = call i32 @hyperbus_register_device(ptr noundef %hbdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end55.cleanup74_crit_edge, label %do.end62

if.end55.cleanup74_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

do.end62:                                         ; preds = %if.end55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %rx_chan = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %call.i125, i32 0, i32 3
  %32 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_chan, align 4
  %tobool64.not = icmp eq ptr %33, null
  br i1 %tobool64.not, label %do.end62.disable_mux_crit_edge, label %if.then65

do.end62.disable_mux_crit_edge:                   ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_mux

if.then65:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_release_channel(ptr noundef nonnull %33) #7
  br label %disable_mux

disable_mux:                                      ; preds = %if.then65, %do.end62.disable_mux_crit_edge, %am654_hbmc_request_mmap_dma.exit.thread132, %if.end38.disable_mux_crit_edge
  %ret.0 = phi i32 [ %call57, %if.then65 ], [ %call57, %do.end62.disable_mux_crit_edge ], [ -12, %if.end38.disable_mux_crit_edge ], [ -517, %am654_hbmc_request_mmap_dma.exit.thread132 ]
  %mux_ctrl68 = getelementptr inbounds %struct.am654_hbmc_priv, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %mux_ctrl68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mux_ctrl68, align 4
  %tobool69.not = icmp eq ptr %35, null
  br i1 %tobool69.not, label %disable_mux.cleanup74_crit_edge, label %if.then70

disable_mux.cleanup74_crit_edge:                  ; preds = %disable_mux
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.then70:                                        ; preds = %disable_mux
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call i32 @mux_control_deselect(ptr noundef nonnull %35) #7
  br label %cleanup74

cleanup74:                                        ; preds = %if.then70, %disable_mux.cleanup74_crit_edge, %if.end55.cleanup74_crit_edge, %if.then33, %do.end, %if.then16, %if.end.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.1 = phi i32 [ %16, %if.then33 ], [ -12, %entry.cleanup74_crit_edge ], [ %call7, %if.end.cleanup74_crit_edge ], [ 0, %if.end55.cleanup74_crit_edge ], [ %ret.0, %if.then70 ], [ %ret.0, %disable_mux.cleanup74_crit_edge ], [ %call.i123, %do.end ], [ %8, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am654_hbmc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hbdev = getelementptr inbounds %struct.am654_hbmc_priv, ptr %1, i32 0, i32 1
  %priv1 = getelementptr inbounds %struct.am654_hbmc_priv, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %call3 = tail call i32 @hyperbus_unregister_device(ptr noundef %hbdev) #7
  %mux_ctrl = getelementptr inbounds %struct.am654_hbmc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mux_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mux_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @mux_control_deselect(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_chan = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_chan, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %7) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hyperbus_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am654_hbmc_read(ptr nocapture noundef readonly %hbdev, ptr noundef %to, i32 noundef %from, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %len)
  %cmp = icmp slt i32 %len, 1024
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %priv1 = getelementptr inbounds %struct.hyperbus_device, ptr %hbdev, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call fastcc i32 @am654_hbmc_dma_read(ptr noundef %1, ptr noundef %to, i32 noundef %from, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %virt = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 3
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %from
  tail call void @mmiocpy(ptr noundef %to, ptr noundef %add.ptr, i32 noundef %len) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am654_hbmc_calibrate(ptr noundef %hbdev) #2 align 64 {
entry:
  %cfi = alloca %struct.cfi_private, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cfi) #7
  %0 = call ptr @memset(ptr %cfi, i32 255, i32 88)
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 2
  %1 = ptrtoint ptr %interleave to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %interleave, align 4
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %2 = ptrtoint ptr %device_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %device_type, align 4
  %call = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -16, i32 noundef 0, i32 noundef 0, ptr noundef %hbdev, ptr noundef nonnull %cfi, i32 noundef 2, ptr noundef null) #7
  %3 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_type, align 4
  %call4 = call i32 @cfi_send_gen_cmd(i8 noundef zeroext -104, i32 noundef 85, i32 noundef 0, ptr noundef %hbdev, ptr noundef nonnull %cfi, i32 noundef %4, ptr noundef null) #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %pass_count.015 = phi i32 [ 0, %entry ], [ %pass_count.1, %while.body.while.body_crit_edge ]
  %count.014 = phi i32 [ 25, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %call5 = call i32 @cfi_qry_present(ptr noundef %hbdev, i32 noundef 0, ptr noundef nonnull %cfi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %inc = add i32 %pass_count.015, 1
  %pass_count.1 = select i1 %tobool6.not, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pass_count.1)
  %cmp = icmp eq i32 %pass_count.1, 5
  %dec = add nsw i32 %count.014, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @cfi_qry_mode_off(i32 noundef 0, ptr noundef %hbdev, ptr noundef nonnull %cfi) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cfi) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @am654_hbmc_dma_read(ptr noundef %priv, ptr noundef %to, i32 noundef %from, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_chan1 = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %rx_chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_chan1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %to to i32
  %cmp = icmp ugt ptr %to, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %3 = load ptr, ptr @high_memory, align 4
  %cmp3 = icmp ugt ptr %3, %to
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sub = add i32 %2, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %4, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true4.cleanup_crit_edge, label %lor.lhs.false6

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %land.lhs.true4
  %5 = tail call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %stack1.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack1.i, align 4
  %cmp.not.i = icmp ugt ptr %10, %to
  %add.ptr.i = getelementptr i8, ptr %10, i32 16384
  %cmp2.i = icmp ule ptr %add.ptr.i, %to
  %tobool8.not = or i1 %cmp.not.i, %cmp2.i
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %to) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i94, !prof !75

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i94:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %14) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i94.dev_name.exit.i_crit_edge

if.then.i94.dev_name.exit.i_crit_edge:            ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i94.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i94.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %14, ptr noundef nonnull %to, i32 noundef %len) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %add.ptr.i95 = getelementptr %struct.page, ptr %19, i32 %shr
  %and.i = and i32 %2, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %add.ptr.i95, i32 noundef %and.i, i32 noundef %len, i32 noundef 2, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i96 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev11 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %retval.0.i96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i96)
  %cmp.i97 = icmp eq i32 %retval.0.i96, -1
  br i1 %cmp.i97, label %do.body, label %lor.lhs.false.i

do.body:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am654_hbmc_dma_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am654_hbmc_dma_read, %if.then19)) #7
          to label %cleanup [label %if.then19], !srcloc !74

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctlr = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %priv, i32 0, i32 2
  %24 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctlr, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @am654_hbmc_dma_read.__UNIQUE_ID_ddebug236, ptr noundef %27, ptr noundef nonnull @.str.12) #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %dma_map_single_attrs.exit
  %device_base = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %device_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %device_base, align 4
  %add23 = add i32 %29, %from
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end29_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end29_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 30
  %32 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end29_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.do.end29_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i98 = tail call ptr %33(ptr noundef nonnull %1, i32 noundef %retval.0.i96, i32 noundef %add23, i32 noundef %len, i32 noundef 3) #7
  %tobool25.not = icmp eq ptr %call.i98, null
  br i1 %tobool25.not, label %dmaengine_prep_dma_memcpy.exit.do.end29_crit_edge, label %if.end32

dmaengine_prep_dma_memcpy.exit.do.end29_crit_edge: ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

do.end29:                                         ; preds = %dmaengine_prep_dma_memcpy.exit.do.end29_crit_edge, %lor.lhs.false2.i.do.end29_crit_edge, %lor.lhs.false.i.do.end29_crit_edge
  %ctlr30 = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %priv, i32 0, i32 2
  %34 = ptrtoint ptr %ctlr30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctlr30, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.13) #10
  br label %unmap_dma

if.end32:                                         ; preds = %dmaengine_prep_dma_memcpy.exit
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %priv, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i98, i32 0, i32 6
  %39 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @am654_hbmc_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i98, i32 0, i32 8
  %40 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %priv, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i98, i32 0, i32 4
  %41 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_submit.i, align 4
  %call.i101 = tail call i32 %42(ptr noundef nonnull %call.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i101)
  %tobool35.not = icmp sgt i32 %call.i101, -1
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %ctlr40 = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %priv, i32 0, i32 2
  %43 = ptrtoint ptr %ctlr40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctlr40, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.15, i32 noundef %call.i101) #10
  br label %unmap_dma

if.end42:                                         ; preds = %if.end32
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %50(ptr noundef nonnull %1) #7
  %add44 = add i32 %len, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add44) #7
  %call46 = tail call i32 @wait_for_completion_timeout(ptr noundef %priv, i32 noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end42.unmap_dma_crit_edge

if.end42.unmap_dma_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_dma

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dmaengine_terminate_sync(ptr noundef nonnull %1)
  %ctlr53 = getelementptr inbounds %struct.am654_hbmc_device_priv, ptr %priv, i32 0, i32 2
  %51 = ptrtoint ptr %ctlr53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctlr53, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.18) #10
  br label %unmap_dma

unmap_dma:                                        ; preds = %if.then48, %if.end42.unmap_dma_crit_edge, %do.end39, %do.end29
  %ret.0 = phi i32 [ %call.i101, %do.end39 ], [ 0, %if.end42.unmap_dma_crit_edge ], [ -110, %if.then48 ], [ -5, %do.end29 ]
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %dev57 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev57, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %retval.0.i96, i32 noundef %len, i32 noundef 2, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %unmap_dma, %if.then19, %do.body, %lor.lhs.false6.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unmap_dma ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %land.lhs.true4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.then19 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am654_hbmc_dma_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %param) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmaengine_terminate_sync(ptr noundef %chan) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dmaengine_terminate_async.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dmaengine_terminate_async.exit:                   ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %chan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %dmaengine_terminate_async.exit.cleanup_crit_edge

dmaengine_terminate_async.exit.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dmaengine_terminate_async.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 1169) #7
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i1 = icmp eq ptr %7, null
  br i1 %tobool.not.i1, label %if.end.cleanup_crit_edge, label %if.then.i2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i2:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %chan) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2, %if.end.cleanup_crit_edge, %dmaengine_terminate_async.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_send_gen_cmd(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfi_qry_present(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_qry_mode_off(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hyperbus_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_hbmc_am654__238_266_am654_hbmc_platform_driver_init6, !1, !"__initcall__kmod_hbmc_am654__238_266_am654_hbmc_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_am654_hbmc_platform_driver_exit, !1, !"__exitcall_am654_hbmc_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 269, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias242, !9, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!9 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 270, i32 1}
!10 = !{ptr @__UNIQUE_ID_author243, !11, !"__UNIQUE_ID_author243", i1 false, i1 false}
!11 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 271, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 261, i32 11}
!14 = !{ptr @am654_hbmc_platform_driver, !15, !"am654_hbmc_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 257, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 179, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 187, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @am654_hbmc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @am654_hbmc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 218, i32 3}
!28 = !{ptr @am654_hbmc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @am654_hbmc_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @am654_hbmc_ops, !31, !"am654_hbmc_ops", i1 false, i1 false}
!31 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 133, i32 34}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 89, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @am654_hbmc_dma_read.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 96, i32 3}
!39 = !{ptr @am654_hbmc_dma_read._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @am654_hbmc_dma_read._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 108, i32 3}
!43 = !{ptr @am654_hbmc_dma_read._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @am654_hbmc_dma_read._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 115, i32 3}
!47 = !{ptr @am654_hbmc_dma_read._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @am654_hbmc_dma_read._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 150, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @am654_hbmc_request_mmap_dma.__UNIQUE_ID_ddebug237, !56, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @am654_hbmc_dt_ids, !63, !"am654_hbmc_dt_ids", i1 false, i1 false}
!63 = !{!"../drivers/mtd/hyperbus/hbmc-am654.c", i32 248, i32 34}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148320495, i64 2148320500, i64 2148320513, i64 2148320557, i64 2148320591, i64 2148320612}
!75 = !{!"branch_weights", i32 2000, i32 1}
