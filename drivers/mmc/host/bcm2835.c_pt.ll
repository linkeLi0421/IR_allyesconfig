; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/bcm2835.c_pt.bc'
source_filename = "../drivers/mmc/host/bcm2835.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bcm2835_host = type { %struct.spinlock, %struct.mutex, ptr, i32, ptr, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.sg_mapping_iter, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, i32, i32, ptr, i32, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_bcm2835__305_1479_bcm2835_driver_init6 = internal global ptr @bcm2835_driver_init, section ".initcall6.init", align 4
@bcm2835_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_probe, ptr @bcm2835_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @bcm2835_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_driver_exit = internal global ptr @bcm2835_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias306 = internal constant [38 x i8] c"bcm2835.alias=platform:sdhost-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [42 x i8] c"bcm2835.description=BCM2835 SDHost driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [38 x i8] c"bcm2835.file=drivers/mmc/host/bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [23 x i8] c"bcm2835.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [27 x i8] c"bcm2835.author=Phil Elwell\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdhost-bcm2835\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-sdhost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm2835_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcm2835\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm2835_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mmc/host/bcm2835.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @bcm2835_request, ptr null, ptr @bcm2835_set_ios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_reset, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bcm2835_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1383, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't get phys address\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_probe._entry_ptr = internal global ptr @bcm2835_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not get clk\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm2835_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s -> OK\0A\00", [22 x i8] zeroinitializer }, align 32
@bcm2835_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 1, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s -> err %d\0A\00", [18 x i8] zeroinitializer }, align 32
@bcm2835_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1178, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported block size (%d bytes)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm2835_request\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_request._entry_ptr = internal global ptr @bcm2835_request._entry, section ".printk_index", align 4
@bcm2835_request._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"previous command (%d) not complete (EDM %08x)\0A\00", [49 x i8] zeroinitializer }, align 32
@bcm2835_request._entry_ptr.17 = internal global ptr @bcm2835_request._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sbc\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835_dumpregs\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data blocks %x blksz %x - err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"=========== REGISTER DUMP ===========\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDCMD  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.25, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDARG  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.26, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDTOUT 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.27, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDCDIV 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.28, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDRSP0 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.29, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDRSP1 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.30, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDRSP2 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.31, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDRSP3 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.32, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDHSTS 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.33, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDVDD  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.34, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDEDM  0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.35, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDHCFG 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.36, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDHBCT 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.37, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SDHBLC 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm2835_dumpregs.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.38, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"===========================================\0A\00", [51 x i8] zeroinitializer }, align 32
@bcm2835_dumpcmd.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm2835_dumpcmd\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%c%s op %d arg 0x%x flags 0x%x - resp %08x %08x %08x %08x, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm2835_finish_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 617, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to terminate DMA (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm2835_finish_request\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_finish_request._entry_ptr = internal global ptr @bcm2835_finish_request._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bcm2835_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"previous command never completed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835_send_command\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_send_command._entry_ptr = internal global ptr @bcm2835_send_command._entry, section ".printk_index", align 4
@bcm2835_send_command._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 655, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported response type!\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_send_command._entry_ptr.47 = internal global ptr @bcm2835_send_command._entry.45, section ".printk_index", align 4
@bcm2835_read_wait_sdcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 590, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: timeout (%d ms)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm2835_read_wait_sdcmd\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_read_wait_sdcmd._entry_ptr = internal global ptr @bcm2835_read_wait_sdcmd._entry, section ".printk_index", align 4
@bcm2835_finish_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 752, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"command never completed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm2835_finish_command\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_finish_command._entry_ptr = internal global ptr @bcm2835_finish_command._entry, section ".printk_index", align 4
@bcm2835_finish_command._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 771, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected command %d error\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm2835_finish_command._entry_ptr.54 = internal global ptr @bcm2835_finish_command._entry.52, section ".printk_index", align 4
@bcm2835_wait_transfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 312, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"wait_transfer_complete - still waiting after %d retries\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bcm2835_wait_transfer_complete\00", [33 x i8] zeroinitializer }, align 32
@bcm2835_wait_transfer_complete._entry_ptr = internal global ptr @bcm2835_wait_transfer_complete._entry, section ".printk_index", align 4
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@bcm2835_add_host.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835_add_host\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"f_max %d, f_min %d, max_busy_timeout %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm2835_add_host.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm2835_add_host.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&host->mutex\00", [19 x i8] zeroinitializer }, align 32
@bcm2835_add_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.3, i32 1289, ptr @.str.63, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"unable to initialise DMA channel. Falling back to PIO\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_add_host._entry_ptr = internal global ptr @bcm2835_add_host._entry, section ".printk_index", align 4
@bcm2835_add_host.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&host->dma_work)\00", [61 x i8] zeroinitializer }, align 32
@bcm2835_add_host.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&host->timeout_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@bcm2835_add_host.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&host->timeout_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_add_host._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.58, ptr @.str.3, i32 1334, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_add_host._entry_ptr.72 = internal global ptr @bcm2835_add_host._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (>%d)\00", [25 x i8] zeroinitializer }, align 32
@bcm2835_add_host._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.3, i32 1348, ptr @.str.76, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loaded - DMA %s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_add_host._entry_ptr.77 = internal global ptr @bcm2835_add_host._entry.74, section ".printk_index", align 4
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bcm2835_finish_data.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm2835_finish_data\00", [44 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Finished early - HSTS %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"timeout waiting for hardware interrupt.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm2835_timeout\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_timeout._entry_ptr = internal global ptr @bcm2835_timeout._entry, section ".printk_index", align 4
@bcm2835_check_cmd_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 867, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdhost_busy_irq: intmask %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm2835_check_cmd_error\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_check_cmd_error._entry_ptr = internal global ptr @bcm2835_check_cmd_error._entry, section ".printk_index", align 4
@bcm2835_transfer_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 442, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s transfer error - HSTS %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835_transfer_pio\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_transfer_pio._entry_ptr = internal global ptr @bcm2835_transfer_pio._entry, section ".printk_index", align 4
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@bcm2835_transfer_pio._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.87, ptr @.str.3, i32 447, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s timeout error - HSTS %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_transfer_pio._entry_ptr.92 = internal global ptr @bcm2835_transfer_pio._entry.90, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm2835_transfer_block_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 389, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsm %x, hsts %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm2835_transfer_block_pio\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_transfer_block_pio._entry_ptr = internal global ptr @bcm2835_transfer_block_pio._entry, section ".printk_index", align 4
@bcm2835_transfer_block_pio._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 397, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PIO %s timeout - EDM %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm2835_transfer_block_pio._entry_ptr.97 = internal global ptr @bcm2835_transfer_block_pio._entry.95, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 10, i64 11]
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"bcm2835_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1470, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1474, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"bcm2835_match\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1464, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1362, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"bcm2835_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1259, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1370, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1383, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1393, i32 46 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1407, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1429, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1434, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1177, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1197, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 213, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 214, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 216, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 221, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 224, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 225, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 226, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 227, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 228, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 229, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 230, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 231, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 232, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 233, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 234, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 235, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 236, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 237, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 238, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 239, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 200, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 616, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 634, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 655, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 590, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 752, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 770, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 310, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1169, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1278, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1285, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1286, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1289, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1322, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1323, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1334, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1346, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 1347, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 735, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 836, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 867, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 441, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 446, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 388, i32 6 }
@___asan_gen_.418 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.422 = private constant [30 x i8] c"../drivers/mmc/host/bcm2835.c\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 395, i32 6 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_bcm2835_driver_exit, ptr @__initcall__kmod_bcm2835__305_1479_bcm2835_driver_init6, ptr @bcm2835_add_host._entry, ptr @bcm2835_add_host._entry.70, ptr @bcm2835_add_host._entry.74, ptr @bcm2835_add_host._entry_ptr, ptr @bcm2835_add_host._entry_ptr.72, ptr @bcm2835_add_host._entry_ptr.77, ptr @bcm2835_check_cmd_error._entry, ptr @bcm2835_check_cmd_error._entry_ptr, ptr @bcm2835_driver_exit, ptr @bcm2835_finish_command._entry, ptr @bcm2835_finish_command._entry.52, ptr @bcm2835_finish_command._entry_ptr, ptr @bcm2835_finish_command._entry_ptr.54, ptr @bcm2835_finish_request._entry, ptr @bcm2835_finish_request._entry_ptr, ptr @bcm2835_probe._entry, ptr @bcm2835_probe._entry_ptr, ptr @bcm2835_read_wait_sdcmd._entry, ptr @bcm2835_read_wait_sdcmd._entry_ptr, ptr @bcm2835_request._entry, ptr @bcm2835_request._entry.15, ptr @bcm2835_request._entry_ptr, ptr @bcm2835_request._entry_ptr.17, ptr @bcm2835_send_command._entry, ptr @bcm2835_send_command._entry.45, ptr @bcm2835_send_command._entry_ptr, ptr @bcm2835_send_command._entry_ptr.47, ptr @bcm2835_timeout._entry, ptr @bcm2835_timeout._entry_ptr, ptr @bcm2835_transfer_block_pio._entry, ptr @bcm2835_transfer_block_pio._entry.95, ptr @bcm2835_transfer_block_pio._entry_ptr, ptr @bcm2835_transfer_block_pio._entry_ptr.97, ptr @bcm2835_transfer_pio._entry, ptr @bcm2835_transfer_pio._entry.90, ptr @bcm2835_transfer_pio._entry_ptr, ptr @bcm2835_transfer_pio._entry_ptr.92, ptr @bcm2835_wait_transfer_complete._entry, ptr @bcm2835_wait_transfer_complete._entry_ptr, ptr @bcm2835_driver, ptr @.str, ptr @bcm2835_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bcm2835_ops, ptr @bcm2835_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @bcm2835_add_host.__key, ptr @bcm2835_add_host.__key.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @bcm2835_add_host.__key.64, ptr @.str.65, ptr @bcm2835_add_host.__key.66, ptr @.str.67, ptr @bcm2835_add_host.__key.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_request._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_finish_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_send_command._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_read_wait_sdcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_finish_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_finish_command._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_wait_transfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_add_host._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_check_cmd_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_transfer_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_transfer_pio._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_transfer_block_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_transfer_block_pio._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @mmc_alloc_host(i32 noundef 508, ptr noundef %dev1) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bcm2835_ops, ptr %ops, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 70
  %pdev9 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 1
  %1 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev9, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %private.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @bcm2835_probe.__key, i16 noundef signext 3) #8
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %ioaddr, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call14 to i32
  br label %do.body76

if.end20:                                         ; preds = %if.end7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__of_get_address(ptr noundef %5, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  br label %do.body76

if.end28:                                         ; preds = %if.end20
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %phys_addr = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 8
  %8 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %phys_addr, align 4
  %dma_chan = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 11, i32 3
  %9 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dma_chan, align 4
  %dma_desc = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_desc, align 4
  %call30 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %dma_chan_rxtx = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 11, i32 2, i32 1
  %11 = ptrtoint ptr %dma_chan_rxtx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call30, ptr %dma_chan_rxtx, align 4
  %cmp.i149 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then33, label %if.end28.if.end39_crit_edge

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then33:                                        ; preds = %if.end28
  %12 = ptrtoint ptr %dma_chan_rxtx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dma_chan_rxtx, align 4
  %cmp = icmp eq ptr %call30, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then33.do.body76_crit_edge, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then33.do.body76_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %cmp.i150 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call40 to i32
  %call44 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @.str.10) #8
  br label %do.body76

if.end45:                                         ; preds = %if.end39
  %call46 = tail call i32 @clk_get_rate(ptr noundef %call40) #8
  %max_clk = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 3
  %14 = ptrtoint ptr %max_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call46, ptr %max_clk, align 4
  %call47 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 10, i32 5, i32 3
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call47, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp49 = icmp slt i32 %call47, 1
  br i1 %cmp49, label %if.end45.do.body76_crit_edge, label %if.end51

if.end45.do.body76_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

if.end51:                                         ; preds = %if.end45
  %call52 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.do.body76_crit_edge

if.end51.do.body76_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

if.end55:                                         ; preds = %if.end51
  %call56 = tail call fastcc i32 @bcm2835_add_host(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.do.body76_crit_edge

if.end55.do.body76_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_probe, %if.then72)) #8
          to label %cleanup [label %if.then72], !srcloc !230

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #8
  br label %cleanup

do.body76:                                        ; preds = %if.end55.do.body76_crit_edge, %if.end51.do.body76_crit_edge, %if.end45.do.body76_crit_edge, %if.then42, %if.then33.do.body76_crit_edge, %do.end27, %if.then17
  %ret.0 = phi i32 [ %3, %if.then17 ], [ -517, %if.then33.do.body76_crit_edge ], [ %call44, %if.then42 ], [ %call52, %if.end51.do.body76_crit_edge ], [ %call56, %if.end55.do.body76_crit_edge ], [ -22, %do.end27 ], [ -22, %if.end45.do.body76_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_probe, %if.then88)) #8
          to label %do.end91 [label %if.then88], !srcloc !230

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef %ret.0) #8
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body76
  %dma_chan_rxtx92 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 11, i32 2, i32 1
  %17 = ptrtoint ptr %dma_chan_rxtx92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_chan_rxtx92, align 4
  %tobool93.not = icmp eq ptr %18, null
  br i1 %tobool93.not, label %do.end91.if.end96_crit_edge, label %if.then94

do.end91.if.end96_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then94:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %18) #8
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %do.end91.if.end96_crit_edge
  tail call void @mmc_free_host(ptr noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.then72, %if.end59, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end96 ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then72 ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1920
  tail call void @mmc_remove_host(ptr noundef %add.ptr.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @arm_heavy_mb() #8
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !232
  %irq = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #8
  %dma_work = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 7
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %dma_work) #8
  %timeout_work = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 8
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #8
  %dma_chan_rxtx = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %dma_chan_rxtx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_chan_rxtx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mmc_free_host(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_add_host(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %pio_limit_string = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1920
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pio_limit_string) #8
  %f_max = getelementptr i8, ptr %host, i32 -968
  %2 = call ptr @memset(ptr %pio_limit_string, i32 255, i32 20)
  %3 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %max_clk = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 6
  %5 = ptrtoint ptr %max_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %max_clk3 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 6
  %7 = ptrtoint ptr %max_clk3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_clk3, align 4
  %9 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %f_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %max_clk5 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 6
  %10 = ptrtoint ptr %max_clk5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_clk5, align 4
  %div = udiv i32 %11, 2047
  %f_min = getelementptr i8, ptr %host, i32 -972
  %12 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %f_min, align 4
  %13 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_max, align 8
  %div7 = udiv i32 %14, 1000
  %div8 = udiv i32 -1, %div7
  %max_busy_timeout = getelementptr i8, ptr %host, i32 -892
  %15 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div8, ptr %max_busy_timeout, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_add_host.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_add_host, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !230

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_max, align 8
  %18 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_min, align 4
  %20 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_busy_timeout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_add_host.__UNIQUE_ID_ddebug299, ptr noundef %dev1, ptr noundef nonnull @.str.59, i32 noundef %17, i32 noundef %19, i32 noundef %21) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end
  %caps = getelementptr i8, ptr %host, i32 -928
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps, align 32
  %or = or i32 %23, -1073741786
  store i32 %or, ptr %caps, align 32
  tail call void @__raw_spin_lock_init(ptr noundef %host, ptr noundef nonnull @.str.5, ptr noundef nonnull @bcm2835_add_host.__key, i16 noundef signext 3) #8
  %mutex = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.61, ptr noundef nonnull @bcm2835_add_host.__key.60) #8
  %dma_chan_rxtx = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 22
  %24 = ptrtoint ptr %dma_chan_rxtx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_chan_rxtx, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %do.end29, label %if.else

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.62) #11
  %use_dma = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 31
  br label %if.end58.sink.split

if.else:                                          ; preds = %do.end
  %use_dma30 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 31
  %26 = ptrtoint ptr %use_dma30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %use_dma30, align 4
  %dma_cfg_tx = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 25
  %src_addr_width = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 25, i32 3
  %27 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 25, i32 4
  %28 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %dst_addr_width, align 4
  %29 = ptrtoint ptr %dma_cfg_tx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %dma_cfg_tx, align 4
  %src_addr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 25, i32 1
  %30 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %src_addr, align 4
  %phys_addr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 3
  %31 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_addr, align 4
  %add = add i32 %32, 64
  %dst_addr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 25, i32 2
  %33 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %dst_addr, align 4
  %dma_cfg_rx = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 24
  %src_addr_width35 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 24, i32 3
  %34 = ptrtoint ptr %src_addr_width35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %src_addr_width35, align 4
  %dst_addr_width37 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 24, i32 4
  %35 = ptrtoint ptr %dst_addr_width37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %dst_addr_width37, align 4
  %36 = ptrtoint ptr %dma_cfg_rx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %dma_cfg_rx, align 4
  %src_addr43 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 24, i32 1
  %37 = ptrtoint ptr %src_addr43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %src_addr43, align 4
  %dst_addr45 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 24, i32 2
  %38 = ptrtoint ptr %dst_addr45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %dst_addr45, align 4
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %25, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.else.if.end58.sink.split_crit_edge, label %dmaengine_slave_config.exit

if.else.if.end58.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

dmaengine_slave_config.exit:                      ; preds = %if.else
  %call.i = tail call i32 %42(ptr noundef nonnull %25, ptr noundef %dma_cfg_tx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp49.not = icmp eq i32 %call.i, 0
  br i1 %cmp49.not, label %lor.lhs.false50, label %dmaengine_slave_config.exit.if.end58.sink.split_crit_edge

dmaengine_slave_config.exit.if.end58.sink.split_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

lor.lhs.false50:                                  ; preds = %dmaengine_slave_config.exit
  %43 = ptrtoint ptr %dma_chan_rxtx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_chan_rxtx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_config.i200 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i200 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i200, align 4
  %tobool.not.i201 = icmp eq ptr %48, null
  br i1 %tobool.not.i201, label %lor.lhs.false50.if.end58.sink.split_crit_edge, label %dmaengine_slave_config.exit205

lor.lhs.false50.if.end58.sink.split_crit_edge:    ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

dmaengine_slave_config.exit205:                   ; preds = %lor.lhs.false50
  %call.i202 = tail call i32 %48(ptr noundef %44, ptr noundef %dma_cfg_rx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp54.not = icmp eq i32 %call.i202, 0
  br i1 %cmp54.not, label %dmaengine_slave_config.exit205.if.end58_crit_edge, label %dmaengine_slave_config.exit205.if.end58.sink.split_crit_edge

dmaengine_slave_config.exit205.if.end58.sink.split_crit_edge: ; preds = %dmaengine_slave_config.exit205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

dmaengine_slave_config.exit205.if.end58_crit_edge: ; preds = %dmaengine_slave_config.exit205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58.sink.split:                              ; preds = %dmaengine_slave_config.exit205.if.end58.sink.split_crit_edge, %lor.lhs.false50.if.end58.sink.split_crit_edge, %dmaengine_slave_config.exit.if.end58.sink.split_crit_edge, %if.else.if.end58.sink.split_crit_edge, %do.end29
  %use_dma30.sink = phi ptr [ %use_dma, %do.end29 ], [ %use_dma30, %lor.lhs.false50.if.end58.sink.split_crit_edge ], [ %use_dma30, %if.else.if.end58.sink.split_crit_edge ], [ %use_dma30, %dmaengine_slave_config.exit205.if.end58.sink.split_crit_edge ], [ %use_dma30, %dmaengine_slave_config.exit.if.end58.sink.split_crit_edge ]
  %49 = ptrtoint ptr %use_dma30.sink to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %use_dma30.sink, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %dmaengine_slave_config.exit205.if.end58_crit_edge
  %max_segs = getelementptr i8, ptr %host, i32 -908
  %50 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 128, ptr %max_segs, align 4
  %call59 = tail call i32 @dma_max_mapping_size(ptr noundef %dev1) #8
  %51 = tail call i32 @llvm.umin.i32(i32 %call59, i32 524288)
  %max_req_size = getelementptr i8, ptr %host, i32 -904
  %52 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max_req_size, align 8
  %max_seg_size = getelementptr i8, ptr %host, i32 -912
  %53 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %max_seg_size, align 16
  %max_blk_size = getelementptr i8, ptr %host, i32 -900
  %54 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1024, ptr %max_blk_size, align 4
  %max_blk_count = getelementptr i8, ptr %host, i32 -896
  %55 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 65535, ptr %max_blk_count, align 128
  %ocr_avail = getelementptr i8, ptr %host, i32 -960
  %56 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3145728, ptr %ocr_avail, align 64
  %dma_work = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 7
  tail call void @__init_work(ptr noundef %dma_work, i32 noundef 0) #8
  %57 = ptrtoint ptr %dma_work to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %dma_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.65, ptr noundef nonnull @bcm2835_add_host.__key.64, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry67 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %entry67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry67, ptr %entry67, align 4
  %prev.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 7, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry67, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @bcm2835_dma_complete_work, ptr %func, align 4
  %timeout_work = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #8
  %61 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map80 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map80, ptr noundef nonnull @.str.67, ptr noundef nonnull @bcm2835_add_host.__key.66, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry83 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8, i32 0, i32 1
  %62 = ptrtoint ptr %entry83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry83, ptr %entry83, align 4
  %prev.i206 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i206 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry83, ptr %prev.i206, align 4
  %func86 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8, i32 0, i32 2
  %64 = ptrtoint ptr %func86 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @bcm2835_timeout, ptr %func86, align 4
  %timer = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.69, ptr noundef nonnull @bcm2835_add_host.__key.68) #8
  %hcfg = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 13
  %65 = ptrtoint ptr %hcfg to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1024, ptr %hcfg, align 4
  tail call fastcc void @bcm2835_reset_internal(ptr noundef %host)
  %irq = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 11
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr i8, ptr %host, i32 -1768
  %68 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i207 = icmp eq ptr %69, null
  br i1 %tobool.not.i207, label %if.end.i, label %if.end58.dev_name.exit_crit_edge

if.end58.dev_name.exit_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr i8, ptr %host, i32 -1912
  %70 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end58.dev_name.exit_crit_edge
  %retval.0.i208 = phi ptr [ %71, %if.end.i ], [ %69, %if.end58.dev_name.exit_crit_edge ]
  %call96 = tail call i32 @request_threaded_irq(i32 noundef %67, ptr noundef nonnull @bcm2835_irq, ptr noundef nonnull @bcm2835_threaded_irq, i32 noundef 0, ptr noundef %retval.0.i208, ptr noundef %host) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.71, i32 noundef %73, i32 noundef %call96) #11
  br label %cleanup

if.end103:                                        ; preds = %dev_name.exit
  %call104 = tail call i32 @mmc_add_host(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end109, label %if.then106

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  %call108 = tail call ptr @free_irq(i32 noundef %75, ptr noundef %host) #8
  br label %cleanup

if.end109:                                        ; preds = %if.end103
  %76 = ptrtoint ptr %pio_limit_string to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %pio_limit_string, align 1
  %use_dma110 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 31
  %77 = ptrtoint ptr %use_dma110 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %use_dma110, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool111.not = icmp eq i8 %78, 0
  br i1 %tobool111.not, label %if.end109.do.end117_crit_edge, label %if.then112

if.end109.do.end117_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end117

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %call113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pio_limit_string, ptr noundef nonnull @.str.73, i32 noundef 1)
  br label %do.end117

do.end117:                                        ; preds = %if.then112, %if.end109.do.end117_crit_edge
  %79 = ptrtoint ptr %use_dma110 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %use_dma110, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool119.not = icmp eq i8 %80, 0
  %cond120 = select i1 %tobool119.not, ptr @.str.79, ptr @.str.78
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond120, ptr noundef nonnull %pio_limit_string) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %if.then106, %do.end101
  %retval.0 = phi i32 [ %call96, %do.end101 ], [ %call104, %if.then106 ], [ 0, %do.end117 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pio_limit_string) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pdev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %error6 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %error6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %error6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %error11 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %error11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %11 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %error16 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %error16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %error16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.end17.if.end31_crit_edge, label %land.lhs.true

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end17
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blksz, align 4
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #8, !range !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %land.lhs.true.if.end31_crit_edge, label %do.end

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %land.lhs.true
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %17) #11
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %do.end.if.end30_crit_edge, label %if.then27

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %error29 = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %error29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %error29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %do.end.if.end30_crit_edge
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #8
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end17.if.end31_crit_edge
  %mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %mrq32 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 0, i32 1
  %23 = ptrtoint ptr %mrq32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mrq32, align 4
  %tobool33.not = icmp eq ptr %24, null
  br i1 %tobool33.not, label %if.end31.if.end51_crit_edge, label %do.end45, !prof !235

if.end31.if.end51_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end45:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1189, i32 noundef 9, ptr noundef null) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end31.if.end51_crit_edge
  %25 = ptrtoint ptr %mrq32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mrq, ptr %mrq32, align 4
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 52
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !236
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %and = and i32 %29, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %switch = icmp eq i32 %and, 0
  br i1 %switch, label %if.end83, label %do.end67

do.end67:                                         ; preds = %if.end51
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !236
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %and75 = and i32 %33, 63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %and75, i32 noundef %29) #11
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %private.i)
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd, align 4
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %do.end67.if.end81_crit_edge, label %if.then78

do.end67.if.end81_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  %error80 = getelementptr inbounds %struct.mmc_command, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %error80 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -84, ptr %error80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %do.end67.if.end81_crit_edge
  %timeout_work.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #8
  %37 = ptrtoint ptr %mrq32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mrq32, align 4
  store ptr null, ptr %mrq32, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 1
  %39 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 1, i32 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %data.i, align 4
  %dma_desc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1, i32 1
  %41 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dma_desc.i, align 4
  %dma_chan.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 3
  %42 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_chan.i, align 4
  store ptr null, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end81.bcm2835_finish_request.exit_crit_edge, label %if.then.i

if.end81.bcm2835_finish_request.exit_crit_edge:   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

if.then.i:                                        ; preds = %if.end81
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 47
  %46 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %dmaengine_terminate_all.exit.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i
  %call.i.i = tail call i32 %47(ptr noundef nonnull %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, label %dmaengine_terminate_all.exit.i.do.end.i_crit_edge

dmaengine_terminate_all.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

do.end.i:                                         ; preds = %dmaengine_terminate_all.exit.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i.i, %dmaengine_terminate_all.exit.i.do.end.i_crit_edge ], [ -38, %if.then.i.do.end.i_crit_edge ]
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i) #11
  br label %bcm2835_finish_request.exit

bcm2835_finish_request.exit:                      ; preds = %do.end.i, %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, %if.end81.bcm2835_finish_request.exit_crit_edge
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %38) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end83:                                         ; preds = %if.end51
  %use_dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %use_dma, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool84.not = icmp eq i8 %51, 0
  br i1 %tobool84.not, label %if.end83.if.end93_crit_edge, label %land.lhs.true85

if.end83.if.end93_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true85:                                  ; preds = %if.end83
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %tobool87.not = icmp eq ptr %53, null
  br i1 %tobool87.not, label %land.lhs.true85.if.end93_crit_edge, label %land.lhs.true88

land.lhs.true85.if.end93_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true88:                                  ; preds = %land.lhs.true85
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp90 = icmp ugt i32 %55, 1
  br i1 %cmp90, label %if.then91, label %land.lhs.true88.if.end93_crit_edge

land.lhs.true88.if.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then91:                                        ; preds = %land.lhs.true88
  %dma_chan_rxtx.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 2, i32 1
  %56 = ptrtoint ptr %dma_chan_rxtx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_chan_rxtx.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 6
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i205 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i205, i32 1, i32 2
  %drain_words.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %drain_words.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %drain_words.i, align 4
  %61 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i = icmp ult i32 %62, 2
  %brmerge.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i205
  br i1 %brmerge.i, label %if.then91.if.end38.i_crit_edge, label %if.then2.i

if.then91.if.end38.i_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then2.i:                                       ; preds = %if.then91
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 2
  %63 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %64, %62
  %65 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 12) #8
  %sg_len6.i = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 10
  %66 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sg_len6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp7115.not.i = icmp eq i32 %67, 0
  br i1 %cmp7115.not.i, label %if.then2.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then2.i.for.end.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then2.i
  %sg5.i = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 12
  %68 = ptrtoint ptr %sg5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sg5.i, align 4
  %drain_page.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 6
  %drain_offset.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0118.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sg.0116.i = phi ptr [ %69, %for.body.lr.ph.i ], [ %call36.i, %for.inc.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %sg.0116.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sg.0116.i, align 4
  %and.i.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0116.i, i32 0, i32 2
  %72 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %65)
  %cmp9.i = icmp ult i32 %73, %65
  br i1 %cmp9.i, label %do.end.i206, label %if.then8.i.if.end24.i_crit_edge, !prof !239

if.then8.i.if.end24.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

do.end.i206:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 486, i32 noundef 9, ptr noundef null) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i206, %if.then8.i.if.end24.i_crit_edge
  %74 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %75, %65
  store i32 %sub.i, ptr %length.i, align 4
  %76 = ptrtoint ptr %sg.0116.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sg.0116.i, align 4
  %and.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !235

do.body2.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !240
  unreachable

sg_page.exit.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i109.i = and i32 %77, -4
  %78 = inttoptr i32 %and.i109.i to ptr
  %79 = ptrtoint ptr %drain_page.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %drain_page.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0116.i, i32 0, i32 1
  %80 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset.i, align 4
  %82 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %length.i, align 4
  %add.i = add i32 %83, %81
  %84 = ptrtoint ptr %drain_offset.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i, ptr %drain_offset.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sg_page.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0118.i, 1
  %call36.i = tail call ptr @sg_next(ptr noundef %sg.0116.i) #8
  %85 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sg_len6.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %86
  br i1 %cmp7.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then2.i.for.end.i_crit_edge
  %div108.i = lshr i32 %65, 2
  %87 = ptrtoint ptr %drain_words.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div108.i, ptr %drain_words.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %for.end.i, %if.then91.if.end38.i_crit_edge
  %88 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %57, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 44
  %90 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i207 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i207, label %if.end38.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.end38.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_cfg_tx.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 3
  %dma_cfg_rx.i = getelementptr inbounds %struct.bcm2835_host, ptr %private.i, i32 0, i32 24
  %cond43.i = select i1 %tobool.not.i205, ptr %dma_cfg_tx.i, ptr %dma_cfg_rx.i
  %call.i.i208 = tail call i32 %91(ptr noundef %57, ptr noundef %cond43.i) #8
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.end38.i.dmaengine_slave_config.exit.i_crit_edge
  %92 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %57, align 4
  %dev.i209 = getelementptr inbounds %struct.dma_device, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %dev.i209 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i209, align 4
  %sg45.i = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 12
  %96 = ptrtoint ptr %sg45.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sg45.i, align 4
  %sg_len46.i = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 10
  %98 = ptrtoint ptr %sg_len46.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sg_len46.i, align 4
  %call47.i = tail call i32 @dma_map_sg_attrs(ptr noundef %95, ptr noundef %97, i32 noundef %99, i32 noundef %..i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %dmaengine_slave_config.exit.i.if.end93_crit_edge, label %if.end50.i

dmaengine_slave_config.exit.i.if.end93_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.end50.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %100 = ptrtoint ptr %sg45.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sg45.i, align 4
  %tobool.not.i110.i = icmp eq ptr %57, null
  br i1 %tobool.not.i110.i, label %if.end50.i.if.then54.i_crit_edge, label %lor.lhs.false.i.i

if.end50.i.if.then54.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

lor.lhs.false.i.i:                                ; preds = %if.end50.i
  %102 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %57, align 4
  %tobool1.not.i.i = icmp eq ptr %103, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then54.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.then54.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %103, i32 0, i32 39
  %104 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %105, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.if.then54.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.if.then54.i_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i111.i = tail call ptr %105(ptr noundef nonnull %57, ptr noundef %101, i32 noundef %call47.i, i32 noundef %..i, i32 noundef 3, ptr noundef null) #8
  %tobool53.not.i = icmp eq ptr %call.i111.i, null
  br i1 %tobool53.not.i, label %dmaengine_prep_slave_sg.exit.i.if.then54.i_crit_edge, label %if.end58.i

dmaengine_prep_slave_sg.exit.i.if.then54.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

if.then54.i:                                      ; preds = %dmaengine_prep_slave_sg.exit.i.if.then54.i_crit_edge, %lor.lhs.false2.i.i.if.then54.i_crit_edge, %lor.lhs.false.i.i.if.then54.i_crit_edge, %if.end50.i.if.then54.i_crit_edge
  %106 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %57, align 4
  %dev56.i = getelementptr inbounds %struct.dma_device, ptr %107, i32 0, i32 15
  %108 = ptrtoint ptr %dev56.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev56.i, align 4
  %110 = ptrtoint ptr %sg45.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sg45.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %109, ptr noundef %111, i32 noundef %call47.i, i32 noundef %..i, i32 noundef 0) #8
  br label %if.end93

if.end58.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i111.i, i32 0, i32 6
  %112 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @bcm2835_dma_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i111.i, i32 0, i32 8
  %113 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %private.i, ptr %callback_param.i, align 4
  %dma_desc.i210 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1, i32 1
  %114 = ptrtoint ptr %dma_desc.i210 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i111.i, ptr %dma_desc.i210, align 4
  %dma_chan59.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 3
  %115 = ptrtoint ptr %dma_chan59.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %57, ptr %dma_chan59.i, align 4
  %dma_dir.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 2
  %116 = ptrtoint ptr %dma_dir.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %..i, ptr %dma_dir.i, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end58.i, %if.then54.i, %dmaengine_slave_config.exit.i.if.end93_crit_edge, %land.lhs.true88.if.end93_crit_edge, %land.lhs.true85.if.end93_crit_edge, %if.end83.if.end93_crit_edge
  %117 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mrq, align 4
  %tobool95.not = icmp eq ptr %118, null
  br i1 %tobool95.not, label %if.end93.land.end.thread_crit_edge, label %land.lhs.true96

if.end93.land.end.thread_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.thread

land.lhs.true96:                                  ; preds = %if.end93
  %119 = ptrtoint ptr %mrq32 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mrq32, align 4
  %data98 = getelementptr inbounds %struct.mmc_request, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %data98 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data98, align 4
  %tobool99.not = icmp eq ptr %122, null
  br i1 %tobool99.not, label %land.lhs.true96.land.end.thread_crit_edge, label %land.end

land.lhs.true96.land.end.thread_crit_edge:        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true96.land.end.thread_crit_edge, %if.end93.land.end.thread_crit_edge
  %use_sbc214 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 2
  %123 = ptrtoint ptr %use_sbc214 to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load215 = load i8, ptr %use_sbc214, align 4
  %bf.clear216 = and i8 %bf.load215, -33
  store i8 %bf.clear216, ptr %use_sbc214, align 4
  br label %if.else

land.end:                                         ; preds = %land.lhs.true96
  %flags = getelementptr inbounds %struct.mmc_data, ptr %122, i32 0, i32 6
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags, align 4
  %and102 = lshr i32 %125, 4
  %126 = trunc i32 %and102 to i8
  %127 = and i8 %126, 32
  %use_sbc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 2
  %128 = ptrtoint ptr %use_sbc to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load = load i8, ptr %use_sbc, align 4
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %127, %bf.clear
  store i8 %bf.set, ptr %use_sbc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %bf.cast.not = icmp eq i8 %127, 0
  br i1 %bf.cast.not, label %land.end.if.else_crit_edge, label %if.then108

land.end.if.else_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then108:                                       ; preds = %land.end
  %129 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mrq, align 4
  %call110 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %private.i, ptr noundef %130)
  br i1 %call110, label %if.then111, label %if.then108.if.end139_crit_edge

if.then108.if.end139_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then111:                                       ; preds = %if.then108
  %131 = ptrtoint ptr %use_sbc to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load112 = load i8, ptr %use_sbc, align 4
  %132 = and i8 %bf.load112, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %bf.cast115.not = icmp eq i8 %132, 0
  br i1 %bf.cast115.not, label %if.then111.if.end139.sink.split_crit_edge, label %if.then111.if.end139_crit_edge

if.then111.if.end139_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then111.if.end139.sink.split_crit_edge:        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.sink.split

if.else:                                          ; preds = %land.end.if.else_crit_edge, %land.end.thread
  %use_sbc219 = phi ptr [ %use_sbc214, %land.end.thread ], [ %use_sbc, %land.end.if.else_crit_edge ]
  %133 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cmd, align 4
  %tobool120.not = icmp eq ptr %134, null
  br i1 %tobool120.not, label %if.else.if.end139_crit_edge, label %land.lhs.true121

if.else.if.end139_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

land.lhs.true121:                                 ; preds = %if.else
  %call123 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %private.i, ptr noundef nonnull %134)
  br i1 %call123, label %if.then124, label %land.lhs.true121.if.end139_crit_edge

land.lhs.true121.if.end139_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then124:                                       ; preds = %land.lhs.true121
  %data125 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 1, i32 1
  %135 = ptrtoint ptr %data125 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data125, align 4
  %tobool126.not = icmp eq ptr %136, null
  br i1 %tobool126.not, label %if.then124.if.end130_crit_edge, label %land.lhs.true127

if.then124.if.end130_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

land.lhs.true127:                                 ; preds = %if.then124
  %dma_desc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1, i32 1
  %137 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_desc, align 4
  %tobool128.not = icmp eq ptr %138, null
  br i1 %tobool128.not, label %land.lhs.true127.if.end130_crit_edge, label %if.then129

land.lhs.true127.if.end130_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then129:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i.i212 = tail call i32 %140(ptr noundef nonnull %138) #8
  %dma_chan.i213 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 3
  %141 = ptrtoint ptr %dma_chan.i213 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dma_chan.i213, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 50
  %145 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %146(ptr noundef %142) #8
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %land.lhs.true127.if.end130_crit_edge, %if.then124.if.end130_crit_edge
  %147 = ptrtoint ptr %use_sbc219 to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load132 = load i8, ptr %use_sbc219, align 4
  %148 = and i8 %bf.load132, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %bf.cast135.not = icmp eq i8 %148, 0
  br i1 %bf.cast135.not, label %if.end130.if.end139.sink.split_crit_edge, label %if.end130.if.end139_crit_edge

if.end130.if.end139_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.end130.if.end139.sink.split_crit_edge:         ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.end130.if.end139.sink.split_crit_edge, %if.then111.if.end139.sink.split_crit_edge
  tail call fastcc void @bcm2835_finish_command(ptr noundef %private.i)
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %if.end130.if.end139_crit_edge, %land.lhs.true121.if.end139_crit_edge, %if.else.if.end139_crit_edge, %if.then111.if.end139_crit_edge, %if.then108.if.end139_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %bcm2835_finish_request.exit, %if.end30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then.i_crit_edge, label %lor.lhs.false

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false:                                    ; preds = %entry
  %clock2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 2
  %2 = ptrtoint ptr %clock2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %1)
  %cmp.i = icmp ult i32 %1, 100000
  br i1 %cmp.i, label %if.then.if.then.i_crit_edge, label %if.end.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %cdiv.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11
  %4 = ptrtoint ptr %cdiv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2047, ptr %cdiv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %cdiv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cdiv.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #8, !srcloc !232
  br label %bcm2835_set_clock.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %max_clk.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %10 = ptrtoint ptr %max_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_clk.i, align 4
  %div2.i = udiv i32 %11, %1
  %12 = tail call i32 @llvm.smax.i32(i32 %div2.i, i32 2) #8
  %div7.i = udiv i32 %11, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %1)
  %cmp8.i = icmp ugt i32 %div7.i, %1
  %inc.i = zext i1 %cmp8.i to i32
  %spec.select.i = add nuw nsw i32 %12, %inc.i
  %13 = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 2049) #8
  %14 = add nsw i32 %13, -2
  %div15.i = udiv i32 %11, %13
  %actual_clock.i = getelementptr %struct.mmc_host, ptr %mmc, i32 0, i32 58
  %15 = ptrtoint ptr %actual_clock.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div15.i, ptr %actual_clock.i, align 8
  %div16.i = udiv i32 1000000000, %div15.i
  %caps.i = getelementptr %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 8
  %mul.i = mul i32 %cond.i, %div16.i
  %ns_per_fifo_word.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 5, i32 6
  %18 = ptrtoint ptr %ns_per_fifo_word.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.i, ptr %ns_per_fifo_word.i, align 4
  %cdiv17.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11
  %19 = ptrtoint ptr %cdiv17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %cdiv17.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %cdiv17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cdiv17.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %ioaddr22.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %ioaddr22.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %22) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %actual_clock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_clock.i, align 8
  %div2856.i = lshr i32 %26, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %div2856.i) #8
  %28 = ptrtoint ptr %ioaddr22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr22.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %27) #8, !srcloc !232
  br label %bcm2835_set_clock.exit

bcm2835_set_clock.exit:                           ; preds = %if.end.i, %if.then.i
  %30 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ios, align 4
  %clock5 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 2
  %32 = ptrtoint ptr %clock5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %clock5, align 4
  br label %if.end

if.end:                                           ; preds = %bcm2835_set_clock.exit, %lor.lhs.false.if.end_crit_edge
  %hcfg = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 5, i32 7
  %33 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hcfg, align 4
  %and = and i32 %34, -5
  store i32 %and, ptr %hcfg, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %35 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp6 = icmp eq i8 %36, 2
  br i1 %cmp6, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %34, 4
  %37 = ptrtoint ptr %hcfg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %hcfg, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %38 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hcfg, align 4
  %or14 = or i32 %39, 10
  store i32 %or14, ptr %hcfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hcfg, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %42) #8, !srcloc !232
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_reset(ptr nocapture noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 3
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end_crit_edge

dmaengine_terminate_async.exit.i.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %9, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end_crit_edge, label %if.then.i2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i, %if.end.i.if.end_crit_edge, %dmaengine_terminate_async.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %10 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_chan, align 4
  tail call fastcc void @bcm2835_reset_internal(ptr noundef %private.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_dumpregs(ptr noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 15
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.bcm2835_dumpcmd.exit_crit_edge, label %do.body.i

if.then.bcm2835_dumpcmd.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_dumpcmd.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then5.i)) #8
          to label %bcm2835_dumpcmd.exit [label %if.then5.i], !srcloc !230

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd6.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd6.i, align 4
  %cmp.i = icmp eq ptr %7, %5
  %cond.i = select i1 %cmp.i, i32 62, i32 32
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp.i, align 4
  %arrayidx8.i = getelementptr %struct.mmc_command, ptr %5, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.mmc_command, ptr %5, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr %struct.mmc_command, ptr %5, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, ptr noundef %dev2, ptr noundef nonnull @.str.40, i32 noundef %cond.i, ptr noundef nonnull @.str.18, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #8
  br label %bcm2835_dumpcmd.exit

bcm2835_dumpcmd.exit:                             ; preds = %if.then5.i, %do.body.i, %if.then.bcm2835_dumpcmd.exit_crit_edge
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd, align 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev1.i454 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %tobool.not.i455 = icmp eq ptr %25, null
  br i1 %tobool.not.i455, label %bcm2835_dumpcmd.exit.bcm2835_dumpcmd.exit468_crit_edge, label %do.body.i456

bcm2835_dumpcmd.exit.bcm2835_dumpcmd.exit468_crit_edge: ; preds = %bcm2835_dumpcmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_dumpcmd.exit468

do.body.i456:                                     ; preds = %bcm2835_dumpcmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then5.i467)) #8
          to label %bcm2835_dumpcmd.exit468 [label %if.then5.i467], !srcloc !230

if.then5.i467:                                    ; preds = %do.body.i456
  call void @__sanitizer_cov_trace_pc() #10
  %cmd6.i457 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %28 = ptrtoint ptr %cmd6.i457 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd6.i457, align 4
  %cmp.i458 = icmp eq ptr %29, %25
  %cond.i459 = select i1 %cmp.i458, i32 62, i32 32
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 4
  %arg.i460 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %arg.i460 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arg.i460, align 4
  %flags.i461 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i461 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i461, align 4
  %resp.i462 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 2
  %36 = ptrtoint ptr %resp.i462 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resp.i462, align 4
  %arrayidx8.i463 = getelementptr %struct.mmc_command, ptr %25, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx8.i463 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx8.i463, align 4
  %arrayidx10.i464 = getelementptr %struct.mmc_command, ptr %25, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx10.i464 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx10.i464, align 4
  %arrayidx12.i465 = getelementptr %struct.mmc_command, ptr %25, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx12.i465 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx12.i465, align 4
  %error.i466 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 5
  %44 = ptrtoint ptr %error.i466 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error.i466, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, ptr noundef %dev1.i454, ptr noundef nonnull @.str.40, i32 noundef %cond.i459, ptr noundef nonnull @.str.19, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #8
  br label %bcm2835_dumpcmd.exit468

bcm2835_dumpcmd.exit468:                          ; preds = %if.then5.i467, %do.body.i456, %bcm2835_dumpcmd.exit.bcm2835_dumpcmd.exit468_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %47, null
  br i1 %tobool3.not, label %bcm2835_dumpcmd.exit468.if.end12_crit_edge, label %do.body

bcm2835_dumpcmd.exit468.if.end12_crit_edge:       ; preds = %bcm2835_dumpcmd.exit468
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %bcm2835_dumpcmd.exit468
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then8)) #8
          to label %if.end12 [label %if.then8], !srcloc !230

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %blksz, align 4
  %error = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 5
  %54 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug274, ptr noundef %dev2, ptr noundef nonnull @.str.21, i32 noundef %51, i32 noundef %53, i32 noundef %55) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %do.body, %bcm2835_dumpcmd.exit468.if.end12_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stop, align 4
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 4
  %dev1.i470 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  %tobool.not.i471 = icmp eq ptr %57, null
  br i1 %tobool.not.i471, label %if.end12.do.body14_crit_edge, label %do.body.i472

if.end12.do.body14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body.i472:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then5.i483)) #8
          to label %do.body14 [label %if.then5.i483], !srcloc !230

if.then5.i483:                                    ; preds = %do.body.i472
  call void @__sanitizer_cov_trace_pc() #10
  %cmd6.i473 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %60 = ptrtoint ptr %cmd6.i473 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd6.i473, align 4
  %cmp.i474 = icmp eq ptr %61, %57
  %cond.i475 = select i1 %cmp.i474, i32 62, i32 32
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %57, align 4
  %arg.i476 = getelementptr inbounds %struct.mmc_command, ptr %57, i32 0, i32 1
  %64 = ptrtoint ptr %arg.i476 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arg.i476, align 4
  %flags.i477 = getelementptr inbounds %struct.mmc_command, ptr %57, i32 0, i32 3
  %66 = ptrtoint ptr %flags.i477 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i477, align 4
  %resp.i478 = getelementptr inbounds %struct.mmc_command, ptr %57, i32 0, i32 2
  %68 = ptrtoint ptr %resp.i478 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %resp.i478, align 4
  %arrayidx8.i479 = getelementptr %struct.mmc_command, ptr %57, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %arrayidx8.i479 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx8.i479, align 4
  %arrayidx10.i480 = getelementptr %struct.mmc_command, ptr %57, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %arrayidx10.i480 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx10.i480, align 4
  %arrayidx12.i481 = getelementptr %struct.mmc_command, ptr %57, i32 0, i32 2, i32 3
  %74 = ptrtoint ptr %arrayidx12.i481 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx12.i481, align 4
  %error.i482 = getelementptr inbounds %struct.mmc_command, ptr %57, i32 0, i32 5
  %76 = ptrtoint ptr %error.i482 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error.i482, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, ptr noundef %dev1.i470, ptr noundef nonnull @.str.40, i32 noundef %cond.i475, ptr noundef nonnull @.str.22, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #8
  br label %do.body14

do.body14:                                        ; preds = %if.then5.i483, %do.body.i472, %if.end12.do.body14_crit_edge, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then26)) #8
          to label %do.body30 [label %if.then26], !srcloc !230

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug275, ptr noundef %dev2, ptr noundef nonnull @.str.23) #8
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %do.body14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then42)) #8
          to label %do.body49 [label %if.then42], !srcloc !230

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %78 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !236
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug276, ptr noundef %dev2, ptr noundef nonnull @.str.24, i32 noundef %81) #8
  br label %do.body49

do.body49:                                        ; preds = %if.then42, %do.body30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then61)) #8
          to label %do.body72 [label %if.then61], !srcloc !230

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr64 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %82 = ptrtoint ptr %ioaddr64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr64, align 4
  %add.ptr65 = getelementptr i8, ptr %83, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #8, !srcloc !236
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug277, ptr noundef %dev2, ptr noundef nonnull @.str.25, i32 noundef %85) #8
  br label %do.body72

do.body72:                                        ; preds = %if.then61, %do.body49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then84)) #8
          to label %do.body95 [label %if.then84], !srcloc !230

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr87 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %86 = ptrtoint ptr %ioaddr87 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr87, align 4
  %add.ptr88 = getelementptr i8, ptr %87, i32 8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #8, !srcloc !236
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug278, ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %89) #8
  br label %do.body95

do.body95:                                        ; preds = %if.then84, %do.body72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then107)) #8
          to label %do.body118 [label %if.then107], !srcloc !230

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr110 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %90 = ptrtoint ptr %ioaddr110 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ioaddr110, align 4
  %add.ptr111 = getelementptr i8, ptr %91, i32 12
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #8, !srcloc !236
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !248
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug279, ptr noundef %dev2, ptr noundef nonnull @.str.27, i32 noundef %93) #8
  br label %do.body118

do.body118:                                       ; preds = %if.then107, %do.body95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then130)) #8
          to label %do.body141 [label %if.then130], !srcloc !230

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr133 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %94 = ptrtoint ptr %ioaddr133 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioaddr133, align 4
  %add.ptr134 = getelementptr i8, ptr %95, i32 16
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #8, !srcloc !236
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !249
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug280, ptr noundef %dev2, ptr noundef nonnull @.str.28, i32 noundef %97) #8
  br label %do.body141

do.body141:                                       ; preds = %if.then130, %do.body118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then153)) #8
          to label %do.body164 [label %if.then153], !srcloc !230

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr156 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %98 = ptrtoint ptr %ioaddr156 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr156, align 4
  %add.ptr157 = getelementptr i8, ptr %99, i32 20
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #8, !srcloc !236
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !250
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug281, ptr noundef %dev2, ptr noundef nonnull @.str.29, i32 noundef %101) #8
  br label %do.body164

do.body164:                                       ; preds = %if.then153, %do.body141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then176)) #8
          to label %do.body187 [label %if.then176], !srcloc !230

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr179 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %102 = ptrtoint ptr %ioaddr179 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioaddr179, align 4
  %add.ptr180 = getelementptr i8, ptr %103, i32 24
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #8, !srcloc !236
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !251
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug282, ptr noundef %dev2, ptr noundef nonnull @.str.30, i32 noundef %105) #8
  br label %do.body187

do.body187:                                       ; preds = %if.then176, %do.body164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then199)) #8
          to label %do.body210 [label %if.then199], !srcloc !230

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr202 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %106 = ptrtoint ptr %ioaddr202 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ioaddr202, align 4
  %add.ptr203 = getelementptr i8, ptr %107, i32 28
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr203) #8, !srcloc !236
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug283, ptr noundef %dev2, ptr noundef nonnull @.str.31, i32 noundef %109) #8
  br label %do.body210

do.body210:                                       ; preds = %if.then199, %do.body187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then222)) #8
          to label %do.body233 [label %if.then222], !srcloc !230

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr225 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %110 = ptrtoint ptr %ioaddr225 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ioaddr225, align 4
  %add.ptr226 = getelementptr i8, ptr %111, i32 32
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226) #8, !srcloc !236
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !253
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug284, ptr noundef %dev2, ptr noundef nonnull @.str.32, i32 noundef %113) #8
  br label %do.body233

do.body233:                                       ; preds = %if.then222, %do.body210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then245)) #8
          to label %do.body256 [label %if.then245], !srcloc !230

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr248 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %114 = ptrtoint ptr %ioaddr248 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ioaddr248, align 4
  %add.ptr249 = getelementptr i8, ptr %115, i32 48
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #8, !srcloc !236
  %117 = tail call i32 @llvm.bswap.i32(i32 %116)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !254
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug285, ptr noundef %dev2, ptr noundef nonnull @.str.33, i32 noundef %117) #8
  br label %do.body256

do.body256:                                       ; preds = %if.then245, %do.body233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then268)) #8
          to label %do.body279 [label %if.then268], !srcloc !230

if.then268:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr271 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %118 = ptrtoint ptr %ioaddr271 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ioaddr271, align 4
  %add.ptr272 = getelementptr i8, ptr %119, i32 52
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #8, !srcloc !236
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug286, ptr noundef %dev2, ptr noundef nonnull @.str.34, i32 noundef %121) #8
  br label %do.body279

do.body279:                                       ; preds = %if.then268, %do.body256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then291)) #8
          to label %do.body302 [label %if.then291], !srcloc !230

if.then291:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr294 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %122 = ptrtoint ptr %ioaddr294 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ioaddr294, align 4
  %add.ptr295 = getelementptr i8, ptr %123, i32 56
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr295) #8, !srcloc !236
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !256
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug287, ptr noundef %dev2, ptr noundef nonnull @.str.35, i32 noundef %125) #8
  br label %do.body302

do.body302:                                       ; preds = %if.then291, %do.body279
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then314)) #8
          to label %do.body325 [label %if.then314], !srcloc !230

if.then314:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr317 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %126 = ptrtoint ptr %ioaddr317 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioaddr317, align 4
  %add.ptr318 = getelementptr i8, ptr %127, i32 60
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr318) #8, !srcloc !236
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug288, ptr noundef %dev2, ptr noundef nonnull @.str.36, i32 noundef %129) #8
  br label %do.body325

do.body325:                                       ; preds = %if.then314, %do.body302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then337)) #8
          to label %do.body348 [label %if.then337], !srcloc !230

if.then337:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr340 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %130 = ptrtoint ptr %ioaddr340 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ioaddr340, align 4
  %add.ptr341 = getelementptr i8, ptr %131, i32 80
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr341) #8, !srcloc !236
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug289, ptr noundef %dev2, ptr noundef nonnull @.str.37, i32 noundef %133) #8
  br label %do.body348

do.body348:                                       ; preds = %if.then337, %do.body325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_dumpregs, %if.then360)) #8
          to label %do.end363 [label %if.then360], !srcloc !230

if.then360:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_dumpregs.__UNIQUE_ID_ddebug290, ptr noundef %dev2, ptr noundef nonnull @.str.38) #8
  br label %do.end363

do.end363:                                        ; preds = %if.then360, %do.body348
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bcm2835_send_command(ptr noundef %host, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %cmd2 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !235

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 630, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @bcm2835_read_wait_sdcmd(ptr noundef %host)
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #11
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %host)
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -84, ptr %error, align 4
  %timeout_work.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #8
  %mrq1.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 15
  %5 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrq1.i, align 4
  store ptr null, ptr %mrq1.i, align 4
  %7 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cmd2, align 4
  %data.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data.i, align 4
  %dma_desc.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 26
  %9 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dma_desc.i, align 4
  %dma_chan.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 23
  %10 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chan.i, align 4
  store ptr null, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end26.bcm2835_finish_request.exit_crit_edge, label %if.then.i

do.end26.bcm2835_finish_request.exit_crit_edge:   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

if.then.i:                                        ; preds = %do.end26
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %dmaengine_terminate_all.exit.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i
  %call.i.i = tail call i32 %15(ptr noundef nonnull %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, label %dmaengine_terminate_all.exit.i.do.end.i_crit_edge

dmaengine_terminate_all.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

do.end.i:                                         ; preds = %dmaengine_terminate_all.exit.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i.i, %dmaengine_terminate_all.exit.i.do.end.i_crit_edge ], [ -38, %if.then.i.do.end.i_crit_edge ]
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i) #11
  br label %bcm2835_finish_request.exit

bcm2835_finish_request.exit:                      ; preds = %do.end.i, %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, %do.end26.bcm2835_finish_request.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef %6) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %land.lhs.true, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end27
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %20 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000, i32 %21)
  %cmp = icmp ugt i32 %21, 9000
  br i1 %cmp, label %if.then29, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %21, 999
  %div = udiv i32 %sub, 1000
  %mul = mul nuw nsw i32 %div, 100
  %add31 = add nuw nsw i32 %mul, 100
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  %timeout.0 = phi i32 [ %add31, %if.then29 ], [ 1000, %land.lhs.true.if.end32_crit_edge ], [ 1000, %if.end27.if.end32_crit_edge ]
  %timeout_work = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i156 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %timeout_work, i32 noundef %timeout.0) #8
  %23 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd, ptr %cmd2, align 4
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %26)
  %tobool39.not = icmp ult i32 %26, 134217728
  br i1 %tobool39.not, label %if.end32.if.end46_crit_edge, label %do.body41

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.body41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 4
  %add.ptr45 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %26) #8, !srcloc !232
  br label %if.end46

if.end46:                                         ; preds = %do.body41, %if.end32.if.end46_crit_edge
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %31 = and i32 %30, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %.not = icmp eq i32 %31, 10
  br i1 %.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #11
  %error57 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %32 = ptrtoint ptr %error57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -22, ptr %error57, align 4
  %call.i158 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #8
  %mrq1.i159 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 15
  %33 = ptrtoint ptr %mrq1.i159 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mrq1.i159, align 4
  store ptr null, ptr %mrq1.i159, align 4
  %35 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cmd2, align 4
  %data.i161 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %36 = ptrtoint ptr %data.i161 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %data.i161, align 4
  %dma_desc.i162 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 26
  %37 = ptrtoint ptr %dma_desc.i162 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dma_desc.i162, align 4
  %dma_chan.i163 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 23
  %38 = ptrtoint ptr %dma_chan.i163 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_chan.i163, align 4
  store ptr null, ptr %dma_chan.i163, align 4
  %tobool.not.i164 = icmp eq ptr %39, null
  br i1 %tobool.not.i164, label %do.end56.bcm2835_finish_request.exit176_crit_edge, label %if.then.i167

do.end56.bcm2835_finish_request.exit176_crit_edge: ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit176

if.then.i167:                                     ; preds = %do.end56
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_terminate_all.i.i165 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 47
  %42 = ptrtoint ptr %device_terminate_all.i.i165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_terminate_all.i.i165, align 4
  %tobool.not.i.i166 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i166, label %if.then.i167.do.end.i174_crit_edge, label %dmaengine_terminate_all.exit.i170

if.then.i167.do.end.i174_crit_edge:               ; preds = %if.then.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i174

dmaengine_terminate_all.exit.i170:                ; preds = %if.then.i167
  %call.i.i168 = tail call i32 %43(ptr noundef nonnull %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i168)
  %tobool5.not.i169 = icmp eq i32 %call.i.i168, 0
  br i1 %tobool5.not.i169, label %dmaengine_terminate_all.exit.i170.bcm2835_finish_request.exit176_crit_edge, label %dmaengine_terminate_all.exit.i170.do.end.i174_crit_edge

dmaengine_terminate_all.exit.i170.do.end.i174_crit_edge: ; preds = %dmaengine_terminate_all.exit.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i174

dmaengine_terminate_all.exit.i170.bcm2835_finish_request.exit176_crit_edge: ; preds = %dmaengine_terminate_all.exit.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit176

do.end.i174:                                      ; preds = %dmaengine_terminate_all.exit.i170.do.end.i174_crit_edge, %if.then.i167.do.end.i174_crit_edge
  %retval.0.i22.i171 = phi i32 [ %call.i.i168, %dmaengine_terminate_all.exit.i170.do.end.i174_crit_edge ], [ -38, %if.then.i167.do.end.i174_crit_edge ]
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 4
  %dev.i173 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i173, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i171) #11
  br label %bcm2835_finish_request.exit176

bcm2835_finish_request.exit176:                   ; preds = %do.end.i174, %dmaengine_terminate_all.exit.i170.bcm2835_finish_request.exit176_crit_edge, %do.end56.bcm2835_finish_request.exit176_crit_edge
  %add.ptr.i.i175 = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i175, ptr noundef %34) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %data2.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %48 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data2.i, align 4
  %tobool.not.i177 = icmp eq ptr %49, null
  br i1 %tobool.not.i177, label %if.end58.if.end.i_crit_edge, label %do.end.i178, !prof !235

if.end58.if.end.i_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i178:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 549, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i178, %if.end58.if.end.i_crit_edge
  %50 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %data2.i, align 4
  %tobool23.not.i = icmp eq ptr %47, null
  br i1 %tobool23.not.i, label %if.end.i.bcm2835_prepare_data.exit_crit_edge, label %if.end25.i

if.end.i.bcm2835_prepare_data.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_prepare_data.exit

if.end25.i:                                       ; preds = %if.end.i
  %data_complete.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 18
  %51 = ptrtoint ptr %data_complete.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %data_complete.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %data_complete.i, align 4
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 7
  %52 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %bytes_xfered.i, align 4
  %dma_desc.i179 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 26
  %53 = ptrtoint ptr %dma_desc.i179 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_desc.i179, align 4
  %tobool27.not.i = icmp eq ptr %54, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end25.i.if.end35.i_crit_edge

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags29.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 6
  %55 = ptrtoint ptr %flags29.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags29.i, align 4
  %and.i = and i32 %56, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool30.not.i, i32 5, i32 3
  %sg_miter.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 9
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 12
  %57 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 10
  %59 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg_len.i, align 4
  tail call void @sg_miter_start(ptr noundef %sg_miter.i, ptr noundef %58, i32 noundef %60, i32 noundef %..i) #8
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 3
  %61 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blocks.i, align 4
  %blocks34.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 10
  %63 = ptrtoint ptr %blocks34.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %blocks34.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end35.i_crit_edge
  %64 = ptrtoint ptr %dma_desc.i179 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_desc.i179, align 4
  %tobool.not.i.i180 = icmp eq ptr %65, null
  %hcfg2.i.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 13
  %66 = ptrtoint ptr %hcfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hcfg2.i.i, align 4
  %and4.i.i = and i32 %67, -1297
  %..i.i = select i1 %tobool.not.i.i180, i32 1040, i32 1024
  %or.i.i = or i32 %and4.i.i, %..i.i
  store i32 %or.i.i, ptr %hcfg2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %hcfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hcfg2.i.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %72, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i181, i32 %70) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 2
  %73 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blksz.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  %76 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %77, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %75) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void @arm_heavy_mb() #8
  %blocks42.i = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 3
  %78 = ptrtoint ptr %blocks42.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blocks42.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr, align 4
  %add.ptr44.i = getelementptr i8, ptr %82, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %80) #8, !srcloc !232
  br label %bcm2835_prepare_data.exit

bcm2835_prepare_data.exit:                        ; preds = %if.end35.i, %if.end.i.bcm2835_prepare_data.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !264
  tail call void @arm_heavy_mb() #8
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %83 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arg, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr, align 4
  %add.ptr63 = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %85) #8, !srcloc !232
  %88 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cmd, align 4
  %and64 = and i32 %89, 63
  %use_busy = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 18
  %90 = ptrtoint ptr %use_busy to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load = load i8, ptr %use_busy, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %use_busy, align 4
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags, align 4
  %and66 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then68, label %if.else69

if.then68:                                        ; preds = %bcm2835_prepare_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %and64, 1024
  br label %if.end86

if.else69:                                        ; preds = %bcm2835_prepare_data.exit
  %and71 = shl i32 %92, 8
  %93 = and i32 %and71, 512
  %94 = or i32 %93, %and64
  %and77 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else69.if.end86_crit_edge, label %if.then79

if.else69.if.end86_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then79:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  %or80 = or i32 %94, 2048
  %bf.set84 = or i8 %bf.load, 64
  %95 = ptrtoint ptr %use_busy to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %bf.set84, ptr %use_busy, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.else69.if.end86_crit_edge, %if.then68
  %sdcmd.1 = phi i32 [ %or80, %if.then79 ], [ %94, %if.else69.if.end86_crit_edge ], [ %or, %if.then68 ]
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %tobool88.not = icmp eq ptr %97, null
  br i1 %tobool88.not, label %if.end86.do.body105_crit_edge, label %if.then89

if.end86.do.body105_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %flags91 = getelementptr inbounds %struct.mmc_data, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags91, align 4
  %and92 = lshr i32 %99, 1
  %100 = and i32 %and92, 128
  %101 = or i32 %100, %sdcmd.1
  %and99 = lshr i32 %99, 3
  %102 = and i32 %and99, 64
  %103 = or i32 %101, %102
  br label %do.body105

do.body105:                                       ; preds = %if.then89, %if.end86.do.body105_crit_edge
  %sdcmd.3 = phi i32 [ %sdcmd.1, %if.end86.do.body105_crit_edge ], [ %103, %if.then89 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !265
  tail call void @arm_heavy_mb() #8
  %or108 = or i32 %sdcmd.3, 32768
  %104 = tail call i32 @llvm.bswap.i32(i32 %or108)
  %105 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #8, !srcloc !232
  br label %cleanup

cleanup:                                          ; preds = %do.body105, %bcm2835_finish_request.exit176, %bcm2835_finish_request.exit
  %retval.0 = phi i1 [ false, %bcm2835_finish_request.exit ], [ false, %bcm2835_finish_request.exit176 ], [ true, %do.body105 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_finish_command(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %cmd2 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %mrq = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 15
  %data = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %dma_desc = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 26
  %dma_chan.i185 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 23
  %use_busy = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 18
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end90.tailrecurse_crit_edge, %entry
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %call = tail call fastcc i32 @bcm2835_read_wait_sdcmd(ptr noundef %host)
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %tailrecurse
  %dev1.le244 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.le244, ptr noundef nonnull @.str.50) #11
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %host)
  %4 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd2, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -5, ptr %error, align 4
  %timeout_work.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #8
  %7 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %9 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cmd2, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %data, align 4
  %11 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dma_desc, align 4
  %12 = ptrtoint ptr %dma_chan.i185 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_chan.i185, align 4
  store ptr null, ptr %dma_chan.i185, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.bcm2835_finish_request.exit_crit_edge, label %if.then.i

do.end.bcm2835_finish_request.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

if.then.i:                                        ; preds = %do.end
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %dmaengine_terminate_all.exit.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i
  %call.i.i = tail call i32 %17(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, label %dmaengine_terminate_all.exit.i.do.end.i_crit_edge

dmaengine_terminate_all.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

do.end.i:                                         ; preds = %dmaengine_terminate_all.exit.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i.i, %dmaengine_terminate_all.exit.i.do.end.i_crit_edge ], [ -38, %if.then.i.do.end.i_crit_edge ]
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i) #11
  br label %bcm2835_finish_request.exit

bcm2835_finish_request.exit:                      ; preds = %do.end.i, %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, %do.end.bcm2835_finish_request.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef %8) #8
  br label %cleanup112

if.else:                                          ; preds = %tailrecurse
  %and4 = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end51_crit_edge, label %if.then6

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then6:                                         ; preds = %if.else
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !236
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr, align 4
  %add.ptr13 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -134217728) #8, !srcloc !232
  %and14 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then6.if.then17_crit_edge, label %lor.lhs.false

if.then6.if.then17_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then6
  %26 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd2, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.not = icmp eq i32 %29, 1
  br i1 %cmp.not, label %lor.lhs.false.if.end51_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.then6.if.then17_crit_edge
  %and18 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end26, label %if.then17.if.end_crit_edge

if.then17.if.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end26:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.le = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd2, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.le, ptr noundef nonnull @.str.53, i32 noundef %33) #11
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %host)
  br label %if.end

if.end:                                           ; preds = %do.end26, %if.then17.if.end_crit_edge
  %.sink = phi i32 [ -84, %do.end26 ], [ -110, %if.then17.if.end_crit_edge ]
  %34 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd2, align 4
  %error30 = getelementptr inbounds %struct.mmc_command, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %error30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %error30, align 4
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 4
  %add.ptr34 = getelementptr i8, ptr %38, i32 52
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !236
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %and38 = and i32 %40, 15
  %41 = zext i32 %and38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and38, label %if.end.if.end48_crit_edge [
    i32 4, label %if.end.do.body43_crit_edge
    i32 10, label %if.end.do.body43_crit_edge299
  ]

if.end.do.body43_crit_edge299:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

if.end.do.body43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.body43:                                        ; preds = %if.end.do.body43_crit_edge, %if.end.do.body43_crit_edge299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %or = or i32 %40, 524288
  %42 = tail call i32 @llvm.bswap.i32(i32 %or)
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 4
  %add.ptr47 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %42) #8, !srcloc !232
  br label %if.end48

if.end48:                                         ; preds = %do.body43, %if.end.if.end48_crit_edge
  %timeout_work.i163 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  %call.i164 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i163) #8
  %45 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %47 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %cmd2, align 4
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %data, align 4
  %49 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dma_desc, align 4
  %50 = ptrtoint ptr %dma_chan.i185 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_chan.i185, align 4
  store ptr null, ptr %dma_chan.i185, align 4
  %tobool.not.i170 = icmp eq ptr %51, null
  br i1 %tobool.not.i170, label %if.end48.bcm2835_finish_request.exit182_crit_edge, label %if.then.i173

if.end48.bcm2835_finish_request.exit182_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit182

if.then.i173:                                     ; preds = %if.end48
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %device_terminate_all.i.i171 = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 47
  %54 = ptrtoint ptr %device_terminate_all.i.i171 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_terminate_all.i.i171, align 4
  %tobool.not.i.i172 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i172, label %if.then.i173.do.end.i180_crit_edge, label %dmaengine_terminate_all.exit.i176

if.then.i173.do.end.i180_crit_edge:               ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i180

dmaengine_terminate_all.exit.i176:                ; preds = %if.then.i173
  %call.i.i174 = tail call i32 %55(ptr noundef nonnull %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %tobool5.not.i175 = icmp eq i32 %call.i.i174, 0
  br i1 %tobool5.not.i175, label %dmaengine_terminate_all.exit.i176.bcm2835_finish_request.exit182_crit_edge, label %dmaengine_terminate_all.exit.i176.do.end.i180_crit_edge

dmaengine_terminate_all.exit.i176.do.end.i180_crit_edge: ; preds = %dmaengine_terminate_all.exit.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i180

dmaengine_terminate_all.exit.i176.bcm2835_finish_request.exit182_crit_edge: ; preds = %dmaengine_terminate_all.exit.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit182

do.end.i180:                                      ; preds = %dmaengine_terminate_all.exit.i176.do.end.i180_crit_edge, %if.then.i173.do.end.i180_crit_edge
  %retval.0.i22.i177 = phi i32 [ %call.i.i174, %dmaengine_terminate_all.exit.i176.do.end.i180_crit_edge ], [ -38, %if.then.i173.do.end.i180_crit_edge ]
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %dev.i179 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i179, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i177) #11
  br label %bcm2835_finish_request.exit182

bcm2835_finish_request.exit182:                   ; preds = %do.end.i180, %dmaengine_terminate_all.exit.i176.bcm2835_finish_request.exit182_crit_edge, %if.end48.bcm2835_finish_request.exit182_crit_edge
  %add.ptr.i.i181 = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i181, ptr noundef %46) #8
  br label %cleanup112

if.end51:                                         ; preds = %lor.lhs.false.if.end51_crit_edge, %if.else.if.end51_crit_edge
  %flags = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  %and52 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end79_crit_edge, label %if.then54

if.end51.if.end79_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then54:                                        ; preds = %if.end51
  %and56 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %60 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr, align 4
  %add.ptr72 = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool57.not, label %if.else68, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx, align 4
  %65 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr, align 4
  %add.ptr64.1 = getelementptr i8, ptr %66, i32 20
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.1) #8, !srcloc !236
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %arrayidx.1 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx.1, align 4
  %70 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ioaddr, align 4
  %add.ptr64.2 = getelementptr i8, ptr %71, i32 24
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.2) #8, !srcloc !236
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %arrayidx.2 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.2, align 4
  %75 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr, align 4
  %add.ptr64.3 = getelementptr i8, ptr %76, i32 28
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.3) #8, !srcloc !236
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %arrayidx.3 = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 0
  %79 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx.3, align 4
  br label %if.end79

if.else68:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %resp76 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %80 = ptrtoint ptr %resp76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %63, ptr %resp76, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else68, %for.body.preheader, %if.end51.if.end79_crit_edge
  %81 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mrq, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %cmp80 = icmp eq ptr %3, %84
  br i1 %cmp80, label %if.then81, label %if.else94

if.then81:                                        ; preds = %if.end79
  %85 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %cmd2, align 4
  %cmd84 = getelementptr inbounds %struct.mmc_request, ptr %82, i32 0, i32 1
  %86 = ptrtoint ptr %cmd84 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cmd84, align 4
  %call85 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %host, ptr noundef %87)
  br i1 %call85, label %if.then86, label %if.then81.cleanup112_crit_edge

if.then81.cleanup112_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.then86:                                        ; preds = %if.then81
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %tobool87.not = icmp eq ptr %89, null
  br i1 %tobool87.not, label %if.then86.if.end90_crit_edge, label %land.lhs.true

if.then86.if.end90_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

land.lhs.true:                                    ; preds = %if.then86
  %90 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dma_desc, align 4
  %tobool88.not = icmp eq ptr %91, null
  br i1 %tobool88.not, label %land.lhs.true.if.end90_crit_edge, label %if.then89

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then89:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i.i184 = tail call i32 %93(ptr noundef nonnull %91) #8
  %94 = ptrtoint ptr %dma_chan.i185 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dma_chan.i185, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %97, i32 0, i32 50
  %98 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %99(ptr noundef %95) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %land.lhs.true.if.end90_crit_edge, %if.then86.if.end90_crit_edge
  %100 = ptrtoint ptr %use_busy to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load = load i8, ptr %use_busy, align 4
  %101 = and i8 %bf.load, 64
  %bf.cast.not = icmp eq i8 %101, 0
  br i1 %bf.cast.not, label %if.end90.tailrecurse_crit_edge, label %if.end90.cleanup112_crit_edge

if.end90.cleanup112_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.end90.tailrecurse_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %tailrecurse

if.else94:                                        ; preds = %if.end79
  %stop = getelementptr inbounds %struct.mmc_request, ptr %82, i32 0, i32 3
  %102 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %stop, align 4
  %cmp96 = icmp eq ptr %3, %103
  br i1 %cmp96, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.else94
  %timeout_work.i186 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  %call.i187 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i186) #8
  %104 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %106 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %cmd2, align 4
  %107 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %data, align 4
  %108 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %dma_desc, align 4
  %109 = ptrtoint ptr %dma_chan.i185 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dma_chan.i185, align 4
  store ptr null, ptr %dma_chan.i185, align 4
  %tobool.not.i193 = icmp eq ptr %110, null
  br i1 %tobool.not.i193, label %if.then97.bcm2835_finish_request.exit205_crit_edge, label %if.then.i196

if.then97.bcm2835_finish_request.exit205_crit_edge: ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit205

if.then.i196:                                     ; preds = %if.then97
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %device_terminate_all.i.i194 = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 47
  %113 = ptrtoint ptr %device_terminate_all.i.i194 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device_terminate_all.i.i194, align 4
  %tobool.not.i.i195 = icmp eq ptr %114, null
  br i1 %tobool.not.i.i195, label %if.then.i196.do.end.i203_crit_edge, label %dmaengine_terminate_all.exit.i199

if.then.i196.do.end.i203_crit_edge:               ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i203

dmaengine_terminate_all.exit.i199:                ; preds = %if.then.i196
  %call.i.i197 = tail call i32 %114(ptr noundef nonnull %110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i197)
  %tobool5.not.i198 = icmp eq i32 %call.i.i197, 0
  br i1 %tobool5.not.i198, label %dmaengine_terminate_all.exit.i199.bcm2835_finish_request.exit205_crit_edge, label %dmaengine_terminate_all.exit.i199.do.end.i203_crit_edge

dmaengine_terminate_all.exit.i199.do.end.i203_crit_edge: ; preds = %dmaengine_terminate_all.exit.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i203

dmaengine_terminate_all.exit.i199.bcm2835_finish_request.exit205_crit_edge: ; preds = %dmaengine_terminate_all.exit.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit205

do.end.i203:                                      ; preds = %dmaengine_terminate_all.exit.i199.do.end.i203_crit_edge, %if.then.i196.do.end.i203_crit_edge
  %retval.0.i22.i200 = phi i32 [ %call.i.i197, %dmaengine_terminate_all.exit.i199.do.end.i203_crit_edge ], [ -38, %if.then.i196.do.end.i203_crit_edge ]
  %115 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev, align 4
  %dev.i202 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i202, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i200) #11
  br label %bcm2835_finish_request.exit205

bcm2835_finish_request.exit205:                   ; preds = %do.end.i203, %dmaengine_terminate_all.exit.i199.bcm2835_finish_request.exit205_crit_edge, %if.then97.bcm2835_finish_request.exit205_crit_edge
  %add.ptr.i.i204 = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i204, ptr noundef %105) #8
  br label %cleanup112

if.else98:                                        ; preds = %if.else94
  %117 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %cmd2, align 4
  %118 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data, align 4
  %tobool101.not = icmp eq ptr %119, null
  br i1 %tobool101.not, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else98
  %timeout_work.i206 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  %call.i207 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i206) #8
  %120 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %122 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %cmd2, align 4
  %123 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %data, align 4
  %124 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %dma_desc, align 4
  %125 = ptrtoint ptr %dma_chan.i185 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_chan.i185, align 4
  store ptr null, ptr %dma_chan.i185, align 4
  %tobool.not.i213 = icmp eq ptr %126, null
  br i1 %tobool.not.i213, label %if.then102.bcm2835_finish_request.exit225_crit_edge, label %if.then.i216

if.then102.bcm2835_finish_request.exit225_crit_edge: ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit225

if.then.i216:                                     ; preds = %if.then102
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %device_terminate_all.i.i214 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 47
  %129 = ptrtoint ptr %device_terminate_all.i.i214 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device_terminate_all.i.i214, align 4
  %tobool.not.i.i215 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i215, label %if.then.i216.do.end.i223_crit_edge, label %dmaengine_terminate_all.exit.i219

if.then.i216.do.end.i223_crit_edge:               ; preds = %if.then.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i223

dmaengine_terminate_all.exit.i219:                ; preds = %if.then.i216
  %call.i.i217 = tail call i32 %130(ptr noundef nonnull %126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i217)
  %tobool5.not.i218 = icmp eq i32 %call.i.i217, 0
  br i1 %tobool5.not.i218, label %dmaengine_terminate_all.exit.i219.bcm2835_finish_request.exit225_crit_edge, label %dmaengine_terminate_all.exit.i219.do.end.i223_crit_edge

dmaengine_terminate_all.exit.i219.do.end.i223_crit_edge: ; preds = %dmaengine_terminate_all.exit.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i223

dmaengine_terminate_all.exit.i219.bcm2835_finish_request.exit225_crit_edge: ; preds = %dmaengine_terminate_all.exit.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit225

do.end.i223:                                      ; preds = %dmaengine_terminate_all.exit.i219.do.end.i223_crit_edge, %if.then.i216.do.end.i223_crit_edge
  %retval.0.i22.i220 = phi i32 [ %call.i.i217, %dmaengine_terminate_all.exit.i219.do.end.i223_crit_edge ], [ -38, %if.then.i216.do.end.i223_crit_edge ]
  %131 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev, align 4
  %dev.i222 = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i222, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i220) #11
  br label %bcm2835_finish_request.exit225

bcm2835_finish_request.exit225:                   ; preds = %do.end.i223, %dmaengine_terminate_all.exit.i219.bcm2835_finish_request.exit225_crit_edge, %if.then102.bcm2835_finish_request.exit225_crit_edge
  %add.ptr.i.i224 = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i224, ptr noundef %121) #8
  br label %cleanup112

if.else103:                                       ; preds = %if.else98
  %133 = ptrtoint ptr %use_busy to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load104 = load i8, ptr %use_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load104)
  %bf.cast106.not = icmp sgt i8 %bf.load104, -1
  br i1 %bf.cast106.not, label %if.else103.cleanup112_crit_edge, label %if.then107

if.else103.cleanup112_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup112

if.then107:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %host)
  br label %cleanup112

cleanup112:                                       ; preds = %if.then107, %if.else103.cleanup112_crit_edge, %bcm2835_finish_request.exit225, %bcm2835_finish_request.exit205, %if.end90.cleanup112_crit_edge, %if.then81.cleanup112_crit_edge, %bcm2835_finish_request.exit182, %bcm2835_finish_request.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_complete(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_work = getelementptr inbounds %struct.bcm2835_host, ptr %param, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %dma_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_read_wait_sdcmd(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 10000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 583) #8
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !236
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  %and21 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not22 = icmp eq i32 %and21, 0
  br i1 %tobool.not22, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then27

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  br label %for.end

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !236
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  %and = and i32 %13, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then27.for.end_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then27.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  %value.0 = phi i32 [ %9, %if.then17 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then27.for.end_crit_edge ]
  %and30 = and i32 %value.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %for.end.if.end97_crit_edge, label %if.then33

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then33:                                        ; preds = %for.end
  %call37 = tail call i64 @ktime_get() #8
  %add.i1 = add i64 %call37, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 588) #8
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !236
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  %and6023 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6023)
  %tobool61.not24 = icmp eq i32 %and6023, 0
  br i1 %tobool61.not24, label %if.then33.if.end97_crit_edge, label %if.then33.land.lhs.true65_crit_edge

if.then33.land.lhs.true65_crit_edge:              ; preds = %if.then33
  br label %land.lhs.true65

if.then33.if.end97_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true65:                                  ; preds = %if.then80.land.lhs.true65_crit_edge, %if.then33.land.lhs.true65_crit_edge
  %call66 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i1)
  %cmp3.i3 = icmp sgt i64 %call66, %add.i1
  br i1 %cmp3.i3, label %for.end84, label %if.then80

if.then80:                                        ; preds = %land.lhs.true65
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !236
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  %and60 = and i32 %21, 32768
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then80.if.end97_crit_edge, label %if.then80.land.lhs.true65_crit_edge

if.then80.land.lhs.true65_crit_edge:              ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true65

if.then80.if.end97_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

for.end84:                                        ; preds = %land.lhs.true65
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !236
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !274
  %.pre = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool87.not = icmp eq i32 %.pre, 0
  br i1 %tobool87.not, label %for.end84.if.end97_crit_edge, label %do.end96

for.end84.if.end97_crit_edge:                     ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.end96:                                         ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 100) #11
  br label %if.end97

if.end97:                                         ; preds = %do.end96, %for.end84.if.end97_crit_edge, %if.then80.if.end97_crit_edge, %if.then33.if.end97_crit_edge, %for.end.if.end97_crit_edge
  %value.29 = phi i32 [ %25, %do.end96 ], [ %25, %for.end84.if.end97_crit_edge ], [ %value.0, %for.end.if.end97_crit_edge ], [ %17, %if.then33.if.end97_crit_edge ], [ %21, %if.then80.if.end97_crit_edge ]
  ret i32 %value.29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_transfer_complete(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_complete = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %data_complete to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %data_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %do.end, label %entry.if.end_crit_edge, !prof !239

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 695, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data20 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %1 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data20, align 4
  store ptr null, ptr %data20, align 4
  %mrq = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 15
  %3 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrq, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %error = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool23.not = icmp eq i32 %8, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %land.lhs.true.if.then27_crit_edge

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = ptrtoint ptr %data_complete to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load24 = load i8, ptr %data_complete, align 4
  %10 = and i8 %bf.load24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %bf.cast26.not = icmp eq i8 %10, 0
  br i1 %bf.cast26.not, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %land.lhs.true.if.then27_crit_edge
  %call = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %host, ptr noundef nonnull %6)
  br i1 %call, label %if.then30, label %if.then27.if.end38_crit_edge

if.then27.if.end38_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then30:                                        ; preds = %if.then27
  %11 = ptrtoint ptr %data_complete to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load31 = load i8, ptr %data_complete, align 4
  %12 = and i8 %bf.load31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast34.not = icmp eq i8 %12, 0
  br i1 %bf.cast34.not, label %if.then35, label %if.then30.if.end38_crit_edge

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bcm2835_finish_command(ptr noundef %host)
  br label %if.end38

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end.if.else_crit_edge
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 10, i32 4
  %ioaddr.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %17 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %18, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #8, !srcloc !236
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  %and250.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and250.i)
  %switch51.i = icmp ult i32 %and250.i, 2
  br i1 %switch51.i, label %if.else.bcm2835_wait_transfer_complete.exit_crit_edge, label %if.end.i.preheader

if.else.bcm2835_wait_transfer_complete.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_wait_transfer_complete.exit

if.end.i.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %and250.i, i32 %cond.i)
  %cmp4.i56 = icmp eq i32 %and250.i, %cond.i
  br i1 %cmp4.i56, label %if.end.i.preheader.do.body.i_crit_edge, label %if.end.i.preheader.if.end8.i_crit_edge

if.end.i.preheader.if.end8.i_crit_edge:           ; preds = %if.end.i.preheader
  br label %if.end8.i

if.end.i.preheader.do.body.i_crit_edge:           ; preds = %if.end.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i:                                         ; preds = %cleanup.i
  %cmp4.i = icmp eq i32 %and2.i, %cond.i
  br i1 %cmp4.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end.i.preheader.do.body.i_crit_edge
  %.lcssa = phi i32 [ %20, %if.end.i.preheader.do.body.i_crit_edge ], [ %34, %if.end.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  tail call void @arm_heavy_mb() #8
  %or.i = or i32 %.lcssa, 524288
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %22 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %21) #8, !srcloc !232
  br label %bcm2835_wait_transfer_complete.exit

if.end8.i:                                        ; preds = %if.end.i.if.end8.i_crit_edge, %if.end.i.preheader.if.end8.i_crit_edge
  %timediff.052.i57 = phi i32 [ %inc.i, %if.end.i.if.end8.i_crit_edge ], [ 0, %if.end.i.preheader.if.end8.i_crit_edge ]
  %inc.i = add nuw nsw i32 %timediff.052.i57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %inc.i)
  %cmp9.i = icmp eq i32 %inc.i, 100000
  br i1 %cmp9.i, label %do.end13.i, label %cleanup.i

do.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef 100000) #11
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %host) #8
  %26 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mrq, align 4
  %data15.i = getelementptr inbounds %struct.mmc_request, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %data15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data15.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -110, ptr %error.i, align 4
  br label %bcm2835_wait_transfer_complete.exit

cleanup.i:                                        ; preds = %if.end8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !278
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !236
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  %and2.i = and i32 %34, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i)
  %switch.i = icmp ult i32 %and2.i, 2
  br i1 %switch.i, label %cleanup.i.bcm2835_wait_transfer_complete.exit_crit_edge, label %if.end.i

cleanup.i.bcm2835_wait_transfer_complete.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_wait_transfer_complete.exit

bcm2835_wait_transfer_complete.exit:              ; preds = %cleanup.i.bcm2835_wait_transfer_complete.exit_crit_edge, %do.end13.i, %do.body.i, %if.else.bcm2835_wait_transfer_complete.exit_crit_edge
  %timeout_work.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 8
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #8
  %35 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %cmd.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %37 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %cmd.i, align 4
  %38 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %data20, align 4
  %dma_desc.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 26
  %39 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dma_desc.i, align 4
  %dma_chan.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 23
  %40 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_chan.i, align 4
  store ptr null, ptr %dma_chan.i, align 4
  %tobool.not.i51 = icmp eq ptr %41, null
  br i1 %tobool.not.i51, label %bcm2835_wait_transfer_complete.exit.bcm2835_finish_request.exit_crit_edge, label %if.then.i

bcm2835_wait_transfer_complete.exit.bcm2835_finish_request.exit_crit_edge: ; preds = %bcm2835_wait_transfer_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

if.then.i:                                        ; preds = %bcm2835_wait_transfer_complete.exit
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %dmaengine_terminate_all.exit.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i
  %call.i.i = tail call i32 %45(ptr noundef nonnull %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, label %dmaengine_terminate_all.exit.i.do.end.i_crit_edge

dmaengine_terminate_all.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

do.end.i:                                         ; preds = %dmaengine_terminate_all.exit.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i.i, %dmaengine_terminate_all.exit.i.do.end.i_crit_edge ], [ -38, %if.then.i.do.end.i_crit_edge ]
  %pdev.i52 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %46 = ptrtoint ptr %pdev.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i52, align 4
  %dev.i53 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i53, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i) #11
  br label %bcm2835_finish_request.exit

bcm2835_finish_request.exit:                      ; preds = %do.end.i, %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, %bcm2835_wait_transfer_complete.exit.bcm2835_finish_request.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i.i, ptr noundef %36) #8
  br label %if.end38

if.end38:                                         ; preds = %bcm2835_finish_request.exit, %if.then35, %if.then30.if.end38_crit_edge, %if.then27.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_reset_internal(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !279
  tail call void @arm_heavy_mb() #8
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 61440) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !283
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -133758976) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 4
  %add.ptr30 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 4
  %add.ptr35 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !287
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 4
  %add.ptr40 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #8, !srcloc !232
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %add.ptr42 = getelementptr i8, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  %21 = and i32 %20, -16647937
  %22 = or i32 %21, 524544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 4
  %add.ptr48 = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %22) #8, !srcloc !232
  tail call void @msleep(i32 noundef 20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !290
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 4
  %add.ptr53 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 16777216) #8, !srcloc !232
  tail call void @msleep(i32 noundef 20) #8
  %clock = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 5
  %27 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %clock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @arm_heavy_mb() #8
  %hcfg = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 13
  %28 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hcfg, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 4
  %add.ptr58 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %30) #8, !srcloc !232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  tail call void @arm_heavy_mb() #8
  %cdiv = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 14
  %33 = ptrtoint ptr %cdiv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cdiv, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 4
  %add.ptr63 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %35) #8, !srcloc !232
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_dma_complete_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 -112
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dma_chan = getelementptr i8, ptr %work, i32 228
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data1 = getelementptr i8, ptr %work, i32 216
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %dma_dir = getelementptr i8, ptr %work, i32 332
  %12 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_dir, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_chan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %drain_words = getelementptr i8, ptr %work, i32 336
  %15 = ptrtoint ptr %drain_words to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drain_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %if.end.if.end87_crit_edge, label %if.then5

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then5:                                         ; preds = %if.end
  %drain_offset = getelementptr i8, ptr %work, i32 344
  %17 = ptrtoint ptr %drain_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drain_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %18)
  %tobool6.not = icmp ult i32 %18, 4096
  br i1 %tobool6.not, label %if.then5.do.body13_crit_edge, label %if.then7

if.then5.do.body13_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %18, 12
  %drain_page = getelementptr i8, ptr %work, i32 340
  %19 = ptrtoint ptr %drain_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drain_page, align 4
  %add.ptr9 = getelementptr %struct.page, ptr %20, i32 %shr
  store ptr %add.ptr9, ptr %drain_page, align 4
  %and11 = and i32 %18, 4095
  %21 = ptrtoint ptr %drain_offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and11, ptr %drain_offset, align 4
  br label %do.body13

do.body13:                                        ; preds = %if.then7, %if.then5.do.body13_crit_edge
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !293
  %and.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not = icmp eq i32 %and.i, 0
  br i1 %tobool22.not, label %if.then23, label %do.body13.do.end26_crit_edge

do.body13.do.end26_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.then23:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body13.do.end26_crit_edge
  %drain_page27 = getelementptr i8, ptr %work, i32 340
  %23 = ptrtoint ptr %drain_page27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drain_page27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %25, 512
  %26 = tail call i32 @llvm.read_register.i32(metadata !220) #8
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !294
  %30 = tail call i32 @llvm.read_register.i32(metadata !220) #8
  %and.i.i.i1.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !295
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %24, i32 noundef %or.i) #8
  %36 = ptrtoint ptr %drain_words to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %drain_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool32.not112 = icmp eq i32 %.pr, 0
  br i1 %tobool32.not112, label %do.end26.do.end53_crit_edge, label %while.body.lr.ph

do.end26.do.end53_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

while.body.lr.ph:                                 ; preds = %do.end26
  %37 = ptrtoint ptr %drain_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drain_offset, align 4
  %add.ptr30 = getelementptr i8, ptr %call.i.i, i32 %38
  %ioaddr = getelementptr i8, ptr %work, i32 -20
  br label %while.body

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %while.body.lr.ph
  %buf.0113 = phi ptr [ %add.ptr30, %while.body.lr.ph ], [ %buf.1, %if.end48.while.body_crit_edge ]
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 4
  %add.ptr33 = getelementptr i8, ptr %40, i32 52
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  %42 = and i32 %41, -268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool39.not = icmp eq i32 %42, 0
  br i1 %tobool39.not, label %while.body.if.end48_crit_edge, label %if.then40

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 4
  %add.ptr44 = getelementptr i8, ptr %44, i32 64
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #8, !srcloc !236
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  %incdec.ptr = getelementptr i32, ptr %buf.0113, i32 1
  %47 = ptrtoint ptr %buf.0113 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %buf.0113, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %while.body.if.end48_crit_edge
  %buf.1 = phi ptr [ %incdec.ptr, %if.then40 ], [ %buf.0113, %while.body.if.end48_crit_edge ]
  %48 = ptrtoint ptr %drain_words to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %drain_words, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %drain_words, align 4
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %if.end48.do.end53_crit_edge, label %if.end48.while.body_crit_edge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end48.do.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

do.end53:                                         ; preds = %if.end48.do.end53_crit_edge, %do.end26.do.end53_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !298
  %50 = tail call i32 @llvm.read_register.i32(metadata !220) #8
  %and.i.i.i1.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %55, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !299
  %56 = tail call i32 @llvm.read_register.i32(metadata !220) #8
  %and.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br i1 %tobool22.not, label %if.then65, label %do.end53.do.body67_crit_edge

do.end53.do.body67_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.then65:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body67

do.body67:                                        ; preds = %if.then65, %do.end53.do.body67_crit_edge
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !300
  %and.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool75.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool75.not, label %if.then79, label %do.body67.do.end82_crit_edge, !prof !239

do.body67.do.end82_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end82

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body67.do.end82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #8, !srcloc !301
  br label %if.end87

if.end87:                                         ; preds = %do.end82, %if.end.if.end87_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  tail call fastcc void @bcm2835_finish_data(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_timeout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -200
  %pdev = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %mutex = getelementptr i8, ptr %work, i32 -156
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %mrq = getelementptr i8, ptr %work, i32 164
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.end

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82) #11
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %add.ptr)
  %add.ptr.i = getelementptr i8, ptr %work, i32 -2120
  %dma_chan.i = getelementptr i8, ptr %work, i32 184
  %4 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.bcm2835_reset.exit_crit_edge, label %if.then.i

do.end.bcm2835_reset.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_reset.exit

if.then.i:                                        ; preds = %do.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.then.i.bcm2835_reset.exit_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then.i.bcm2835_reset.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_reset.exit

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then.i
  %call.i.i.i = tail call i32 %9(ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.bcm2835_reset.exit_crit_edge

dmaengine_terminate_async.exit.i.i.bcm2835_reset.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_reset.exit

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.bcm2835_reset.exit_crit_edge, label %if.then.i2.i.i

if.end.i.i.bcm2835_reset.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_reset.exit

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef nonnull %5) #8
  br label %bcm2835_reset.exit

bcm2835_reset.exit:                               ; preds = %if.then.i2.i.i, %if.end.i.i.bcm2835_reset.exit_crit_edge, %dmaengine_terminate_async.exit.i.i.bcm2835_reset.exit_crit_edge, %if.then.i.bcm2835_reset.exit_crit_edge, %do.end.bcm2835_reset.exit_crit_edge
  %14 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_chan.i, align 4
  tail call fastcc void @bcm2835_reset_internal(ptr noundef %add.ptr) #8
  %data = getelementptr i8, ptr %work, i32 172
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %bcm2835_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -110, ptr %error, align 4
  tail call fastcc void @bcm2835_finish_data(ptr noundef %add.ptr)
  br label %if.end15

if.else:                                          ; preds = %bcm2835_reset.exit
  %cmd = getelementptr i8, ptr %work, i32 168
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.else10, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mrq, align 4
  %cmd12 = getelementptr inbounds %struct.mmc_request, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.else.if.end_crit_edge
  %.sink = phi ptr [ %23, %if.else10 ], [ %19, %if.else.if.end_crit_edge ]
  %error13 = getelementptr inbounds %struct.mmc_command, ptr %.sink, i32 0, i32 5
  %24 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -110, ptr %error13, align 4
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #8
  %25 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cmd, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %data, align 4
  %dma_desc.i = getelementptr i8, ptr %work, i32 284
  %29 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma_desc.i, align 4
  %30 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_chan.i, align 4
  store ptr null, ptr %dma_chan.i, align 4
  %tobool.not.i31 = icmp eq ptr %31, null
  br i1 %tobool.not.i31, label %if.end.bcm2835_finish_request.exit_crit_edge, label %if.then.i33

if.end.bcm2835_finish_request.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

if.then.i33:                                      ; preds = %if.end
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i32 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i32, label %if.then.i33.do.end.i_crit_edge, label %dmaengine_terminate_all.exit.i

if.then.i33.do.end.i_crit_edge:                   ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i33
  %call.i.i = tail call i32 %35(ptr noundef nonnull %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, label %dmaengine_terminate_all.exit.i.do.end.i_crit_edge

dmaengine_terminate_all.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_finish_request.exit

do.end.i:                                         ; preds = %dmaengine_terminate_all.exit.i.do.end.i_crit_edge, %if.then.i33.do.end.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i.i, %dmaengine_terminate_all.exit.i.do.end.i_crit_edge ], [ -38, %if.then.i33.do.end.i_crit_edge ]
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i22.i) #11
  br label %bcm2835_finish_request.exit

bcm2835_finish_request.exit:                      ; preds = %do.end.i, %dmaengine_terminate_all.exit.i.bcm2835_finish_request.exit_crit_edge, %if.end.bcm2835_finish_request.exit_crit_edge
  tail call void @mmc_request_done(ptr noundef %add.ptr.i, ptr noundef %26) #8
  br label %if.end15

if.end15:                                         ; preds = %bcm2835_finish_request.exit, %if.then4, %entry.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #8
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !236
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 17235968) #8, !srcloc !232
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 17
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.bcm2835_check_data_error.exit_crit_edge, label %if.end.i

if.then.bcm2835_check_data_error.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_check_data_error.exit

if.end.i:                                         ; preds = %if.then
  %and.i = and i32 %3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -84, ptr %error.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %and5.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.bcm2835_check_data_error.exit_crit_edge, label %if.then7.i

if.end4.i.bcm2835_check_data_error.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_check_data_error.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %error9.i = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %error9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -110, ptr %error9.i, align 4
  br label %bcm2835_check_data_error.exit

bcm2835_check_data_error.exit:                    ; preds = %if.then7.i, %if.end4.i.bcm2835_check_data_error.exit_crit_edge, %if.then.bcm2835_check_data_error.exit_crit_edge
  %irq_block = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 19
  %12 = ptrtoint ptr %irq_block to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %irq_block, align 1
  br label %if.end

if.end:                                           ; preds = %bcm2835_check_data_error.exit, %entry.if.end_crit_edge
  %result.0 = phi i32 [ 2, %bcm2835_check_data_error.exit ], [ 0, %entry.if.end_crit_edge ]
  %and4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 4
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %and.i33 = and i32 %3, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %if.then8, label %if.end.i35

if.end.i35:                                       ; preds = %if.then6
  %cmd.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 16
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.end.i35.if.end10_crit_edge, label %do.end.i

if.end.i35.if.end10_crit_edge:                    ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i:                                         ; preds = %if.end.i35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.84, i32 noundef %3) #11
  %and5.i36 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i36)
  %tobool6.not.i37 = icmp eq i32 %and5.i36, 0
  br i1 %tobool6.not.i37, label %if.else.i, label %if.then7.i39

if.then7.i39:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd.i, align 4
  %error.i38 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %error.i38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -84, ptr %error.i38, align 4
  br label %if.end45.i

if.else.i:                                        ; preds = %do.end.i
  %and9.i = and i32 %3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else21.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  %mrq.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 15
  %20 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mrq.i, align 4
  %data.i40 = getelementptr inbounds %struct.mmc_request, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %data.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i40, align 4
  %tobool12.not.i = icmp eq ptr %23, null
  br i1 %tobool12.not.i, label %if.else17.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %error16.i = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %error16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -84, ptr %error16.i, align 4
  br label %if.end45.i

if.else17.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd.i, align 4
  %error19.i = getelementptr inbounds %struct.mmc_command, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %error19.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -84, ptr %error19.i, align 4
  br label %if.end45.i

if.else21.i:                                      ; preds = %if.else.i
  %and22.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else36.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else21.i
  %mrq25.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 15
  %28 = ptrtoint ptr %mrq25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mrq25.i, align 4
  %data26.i = getelementptr inbounds %struct.mmc_request, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %data26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data26.i, align 4
  %tobool27.not.i = icmp eq ptr %31, null
  br i1 %tobool27.not.i, label %if.else32.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %error31.i = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %error31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -110, ptr %error31.i, align 4
  br label %if.end45.i

if.else32.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd.i, align 4
  %error34.i = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %error34.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -110, ptr %error34.i, align 4
  br label %if.end45.i

if.else36.i:                                      ; preds = %if.else21.i
  %and37.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.else36.i.if.end45.i_crit_edge, label %if.then39.i

if.else36.i.if.end45.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd.i, align 4
  %error41.i = getelementptr inbounds %struct.mmc_command, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %error41.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -110, ptr %error41.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %if.else36.i.if.end45.i_crit_edge, %if.else32.i, %if.then28.i, %if.else17.i, %if.then13.i, %if.then7.i39
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %dev_id) #8
  br label %if.end10

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %irq_busy = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 20
  %39 = ptrtoint ptr %irq_busy to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %irq_busy, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end45.i, %if.end.i35.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %result.1 = phi i32 [ 2, %if.then8 ], [ %result.0, %if.end.if.end10_crit_edge ], [ 1, %if.end.i35.if.end10_crit_edge ], [ 1, %if.end45.i ]
  %and11 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %hcfg = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 13
  %40 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hcfg, align 4
  %and13 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %if.then15

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %data.i41 = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 17
  %42 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i41, align 4
  %tobool.not.i42 = icmp eq ptr %43, null
  br i1 %tobool.not.i42, label %if.then15.bcm2835_data_irq.exit_crit_edge, label %if.end.i.i

if.then15.bcm2835_data_irq.exit_crit_edge:        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_data_irq.exit

if.end.i.i:                                       ; preds = %if.then15
  %and.i.i = and i32 %3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %error.i.i = getelementptr inbounds %struct.mmc_data, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -84, ptr %error.i.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %and5.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end4.i.i.bcm2835_check_data_error.exit.i_crit_edge, label %if.then7.i.i

if.end4.i.i.bcm2835_check_data_error.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_check_data_error.exit.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i41, align 4
  %error9.i.i = getelementptr inbounds %struct.mmc_data, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %error9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -110, ptr %error9.i.i, align 4
  br label %bcm2835_check_data_error.exit.i

bcm2835_check_data_error.exit.i:                  ; preds = %if.then7.i.i, %if.end4.i.i.bcm2835_check_data_error.exit.i_crit_edge
  %48 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i41, align 4
  %error.i43 = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %error.i43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %error.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not.i44 = icmp eq i32 %51, 0
  br i1 %tobool2.not.i44, label %if.end4.i47, label %bcm2835_check_data_error.exit.i.finished.i_crit_edge

bcm2835_check_data_error.exit.i.finished.i_crit_edge: ; preds = %bcm2835_check_data_error.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %finished.i

if.end4.i47:                                      ; preds = %bcm2835_check_data_error.exit.i
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %and.i45 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool6.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool6.not.i46, label %if.else.i49, label %if.then7.i48

if.then7.i48:                                     ; preds = %if.end4.i47
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hcfg, align 4
  %and8.i = and i32 %55, -273
  %or.i = or i32 %and8.i, 256
  store i32 %or.i, ptr %hcfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hcfg, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %58) #8, !srcloc !232
  tail call fastcc void @bcm2835_transfer_pio(ptr noundef %dev_id) #8
  br label %bcm2835_data_irq.exit

if.else.i49:                                      ; preds = %if.end4.i47
  tail call fastcc void @bcm2835_transfer_pio(ptr noundef %dev_id) #8
  %blocks.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 10
  %61 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blocks.i, align 4
  %dec.i = add i32 %62, -1
  store i32 %dec.i, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.else.i49.finished.i_crit_edge, label %lor.lhs.false.i

if.else.i49.finished.i_crit_edge:                 ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %finished.i

lor.lhs.false.i:                                  ; preds = %if.else.i49
  %63 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i41, align 4
  %error13.i = getelementptr inbounds %struct.mmc_data, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %error13.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool14.not.i = icmp eq i32 %66, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.bcm2835_data_irq.exit_crit_edge, label %lor.lhs.false.i.finished.i_crit_edge

lor.lhs.false.i.finished.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %finished.i

lor.lhs.false.i.bcm2835_data_irq.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_data_irq.exit

finished.i:                                       ; preds = %lor.lhs.false.i.finished.i_crit_edge, %if.else.i49.finished.i_crit_edge, %bcm2835_check_data_error.exit.i.finished.i_crit_edge
  %67 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hcfg, align 4
  %and19.i = and i32 %68, -273
  store i32 %and19.i, ptr %hcfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hcfg, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %72 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr, align 4
  %add.ptr24.i = getelementptr i8, ptr %73, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %71) #8, !srcloc !232
  br label %bcm2835_data_irq.exit

bcm2835_data_irq.exit:                            ; preds = %finished.i, %lor.lhs.false.i.bcm2835_data_irq.exit_crit_edge, %if.then7.i48, %if.then15.bcm2835_data_irq.exit_crit_edge
  %irq_data = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 21
  %74 = ptrtoint ptr %irq_data to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %irq_data, align 1
  br label %if.end16

if.end16:                                         ; preds = %bcm2835_data_irq.exit, %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %result.2 = phi i32 [ 2, %bcm2835_data_irq.exit ], [ %result.1, %land.lhs.true.if.end16_crit_edge ], [ %result.1, %if.end10.if.end16_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #8
  ret i32 %result.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_threaded_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #8
  %irq_block = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %irq_block to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_block, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %irq_busy = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 20
  %2 = ptrtoint ptr %irq_busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_busy, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %irq_data = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 21
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_data, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %irq_block to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %irq_block, align 1
  %7 = ptrtoint ptr %irq_busy to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %irq_busy, align 2
  %8 = ptrtoint ptr %irq_data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %irq_data, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call2) #8
  %mutex = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 17
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !239

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 958, i32 noundef 9, ptr noundef null) #8
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %dev_id) #8
  br label %if.end

if.end23.i:                                       ; preds = %if.then
  %dma_desc.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 26
  %11 = ptrtoint ptr %dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_desc.i, align 4
  %tobool24.not.i = icmp eq ptr %12, null
  br i1 %tobool24.not.i, label %if.then25.i, label %if.else64.i

if.then25.i:                                      ; preds = %if.end23.i
  %blocks.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 10
  %13 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not.i = icmp eq i32 %14, 0
  br i1 %tobool27.not.i, label %do.end45.i, label %if.then25.i.if.end51.i_crit_edge, !prof !239

if.then25.i.if.end51.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

do.end45.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 964, i32 noundef 9, ptr noundef null) #8
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end45.i, %if.then25.i.if.end51.i_crit_edge
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool60.not.i = icmp eq i32 %18, 0
  br i1 %tobool60.not.i, label %lor.lhs.false.i, label %if.end51.i.if.then62.i_crit_edge

if.end51.i.if.then62.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62.i

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %19 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blocks.i, align 4
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then62.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then62.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62.i

if.then62.i:                                      ; preds = %lor.lhs.false.i.if.then62.i_crit_edge, %if.end51.i.if.then62.i_crit_edge
  tail call fastcc void @bcm2835_finish_data(ptr noundef %dev_id) #8
  br label %if.end

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bcm2835_transfer_pio(ptr noundef %dev_id) #8
  br label %if.end

if.else64.i:                                      ; preds = %if.end23.i
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 6
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool66.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool66.not.i, label %if.else64.i.if.end_crit_edge, label %if.then67.i

if.else64.i.if.end_crit_edge:                     ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then67.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bcm2835_finish_data(ptr noundef %dev_id) #8
  br label %if.end

if.end:                                           ; preds = %if.then67.i, %if.else64.i.if.end_crit_edge, %if.else.i, %if.then62.i, %do.end.i, %entry.if.end_crit_edge
  br i1 %tobool5.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end
  %cmd.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 16
  %23 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd.i, align 4
  %tobool.not.i33 = icmp eq ptr %24, null
  br i1 %tobool.not.i33, label %do.end.i34, label %if.end23.i35, !prof !239

do.end.i34:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 900, i32 noundef 9, ptr noundef null) #8
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %dev_id) #8
  br label %if.end16

if.end23.i35:                                     ; preds = %if.then15
  %use_busy.i = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 18
  %25 = ptrtoint ptr %use_busy.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %use_busy.i, align 4
  %26 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %bf.cast.not.i = icmp eq i8 %26, 0
  br i1 %bf.cast.not.i, label %do.end42.i, label %if.end58.i, !prof !239

do.end42.i:                                       ; preds = %if.end23.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 905, i32 noundef 9, ptr noundef null) #8
  tail call fastcc void @bcm2835_dumpregs(ptr noundef %dev_id) #8
  br label %if.end16

if.end58.i:                                       ; preds = %if.end23.i35
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear61.i = and i8 %bf.load.i, -65
  %27 = ptrtoint ptr %use_busy.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear61.i, ptr %use_busy.i, align 4
  tail call fastcc void @bcm2835_finish_command(ptr noundef %dev_id) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end58.i, %do.end42.i, %do.end.i34, %if.end.if.end16_crit_edge
  br i1 %tobool7.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  %data.i36 = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 17
  %28 = ptrtoint ptr %data.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i36, align 4
  %tobool.not.i37 = icmp eq ptr %29, null
  br i1 %tobool.not.i37, label %if.then18.if.end19_crit_edge, label %if.end.i

if.then18.if.end19_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.i:                                         ; preds = %if.then18
  %blocks.i38 = getelementptr inbounds %struct.bcm2835_host, ptr %dev_id, i32 0, i32 10
  %30 = ptrtoint ptr %blocks.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i39 = icmp eq i32 %31, 0
  br i1 %cmp.i39, label %if.end.i.if.then3.i_crit_edge, label %lor.lhs.false.i41

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

lor.lhs.false.i41:                                ; preds = %if.end.i
  %error.i40 = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %error.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i = icmp eq i32 %33, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i41.if.end19_crit_edge, label %lor.lhs.false.i41.if.then3.i_crit_edge

lor.lhs.false.i41.if.then3.i_crit_edge:           ; preds = %lor.lhs.false.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

lor.lhs.false.i41.if.end19_crit_edge:             ; preds = %lor.lhs.false.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then3.i:                                       ; preds = %lor.lhs.false.i41.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  tail call fastcc void @bcm2835_finish_data(ptr noundef %dev_id) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then3.i, %lor.lhs.false.i41.if.end19_crit_edge, %if.then18.if.end19_crit_edge, %if.end16.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_finish_data(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %data2 = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %hcfg = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 13
  %4 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcfg, align 4
  %and = and i32 %5, -273
  store i32 %and, ptr %hcfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %hcfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hcfg, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %ioaddr = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !232
  %error = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocks, align 4
  %mul = mul i32 %16, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %mul, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %bytes_xfered, align 4
  %data_complete = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 18
  %18 = ptrtoint ptr %data_complete to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %data_complete, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %data_complete, align 4
  %cmd = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 16
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %if.else, label %do.body5

do.body5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_finish_data.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_finish_data, %if.then9)) #8
          to label %if.end17 [label %if.then9], !srcloc !230

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 4
  %add.ptr11 = getelementptr i8, ptr %22, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !236
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_finish_data.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.81, i32 noundef %24) #8
  br label %if.end17

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %host)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_transfer_pio(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %data = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 17
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksz.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 50
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !293
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.end11.i_crit_edge

entry.do.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %entry.do.end11.i_crit_edge
  %sg_miter.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 9
  %length.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 9, i32 2
  %consumed.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 9, i32 3
  %addr.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 9, i32 1
  %ioaddr.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 2
  %ns_per_fifo_word.i = getelementptr inbounds %struct.bcm2835_host, ptr %host, i32 0, i32 12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.end131.i.while.cond.i_crit_edge, %do.end11.i
  %blksize.0.i = phi i32 [ %7, %do.end11.i ], [ %sub.i, %while.end131.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blksize.0.i)
  %tobool12.not.i = icmp eq i32 %blksize.0.i, 0
  br i1 %tobool12.not.i, label %while.cond.i.while.end142.i_crit_edge, label %while.body.i

while.cond.i.while.end142.i_crit_edge:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end142.i

while.body.i:                                     ; preds = %while.cond.i
  %call13.i = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter.i) #8
  br i1 %call13.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -22, ptr %error.i, align 4
  br label %while.end142.i

if.end16.i:                                       ; preds = %while.body.i
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %blksize.0.i) #8
  %rem.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool21.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool21.not.i, label %if.end25.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %error24.i = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %error24.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -22, ptr %error24.i, align 4
  br label %while.end142.i

if.end25.i:                                       ; preds = %if.end16.i
  %sub.i = sub i32 %blksize.0.i, %15
  %19 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %consumed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %tobool29.not251.i = icmp ult i32 %15, 4
  br i1 %tobool29.not251.i, label %if.end25.i.while.end131.i_crit_edge, label %while.body30.preheader.i

if.end25.i.while.end131.i_crit_edge:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end131.i

while.body30.preheader.i:                         ; preds = %if.end25.i
  %div227.i = lshr i32 %15, 2
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 4
  br label %while.body30.i

while.body30.i:                                   ; preds = %cleanup128.i.while.body30.i_crit_edge, %while.body30.preheader.i
  %copy_words.0254.i = phi i32 [ %copy_words.1.i, %cleanup128.i.while.body30.i_crit_edge ], [ %div227.i, %while.body30.preheader.i ]
  %hsts.0253.i = phi i32 [ %hsts.3.i, %cleanup128.i.while.body30.i_crit_edge ], [ 0, %while.body30.preheader.i ]
  %buf.0252.i = phi ptr [ %buf.3.i, %cleanup128.i.while.body30.i_crit_edge ], [ %21, %while.body30.preheader.i ]
  %22 = tail call i32 @llvm.smin.i32(i32 %copy_words.0254.i, i32 8) #8
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !236
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  %shr.i = lshr i32 %26, 4
  %and.i = and i32 %shr.i, 31
  %sub45.i = sub nsw i32 16, %and.i
  %words.0.i = select i1 %cmp.not, i32 %sub45.i, i32 %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %words.0.i)
  %cmp47.i = icmp sgt i32 %22, %words.0.i
  br i1 %cmp47.i, label %if.then49.i, label %if.else101.i

if.then49.i:                                      ; preds = %while.body30.i
  %and50.i = and i32 %26, 15
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev51.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  br i1 %cmp.not, label %switch.early.test234.critedge.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %if.then49.i
  %29 = zext i32 %and50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %and50.i, label %switch.early.test.i.if.then72.i_crit_edge [
    i32 5, label %switch.early.test.i.if.end87.i_crit_edge
    i32 4, label %switch.early.test.i.if.end87.i_crit_edge36
    i32 2, label %switch.early.test.i.if.end87.i_crit_edge37
  ]

switch.early.test.i.if.end87.i_crit_edge37:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

switch.early.test.i.if.end87.i_crit_edge36:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

switch.early.test.i.if.end87.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

switch.early.test.i.if.then72.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

switch.early.test234.critedge.i:                  ; preds = %if.then49.i
  %30 = zext i32 %and50.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and50.i, label %switch.early.test234.critedge.i.if.then72.i_crit_edge [
    i32 11, label %switch.early.test234.critedge.i.if.end87.i_crit_edge
    i32 10, label %switch.early.test234.critedge.i.if.end87.i_crit_edge38
    i32 3, label %switch.early.test234.critedge.i.if.end87.i_crit_edge39
  ]

switch.early.test234.critedge.i.if.end87.i_crit_edge39: ; preds = %switch.early.test234.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

switch.early.test234.critedge.i.if.end87.i_crit_edge38: ; preds = %switch.early.test234.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

switch.early.test234.critedge.i.if.end87.i_crit_edge: ; preds = %switch.early.test234.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

switch.early.test234.critedge.i.if.then72.i_crit_edge: ; preds = %switch.early.test234.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

if.then72.i:                                      ; preds = %switch.early.test234.critedge.i.if.then72.i_crit_edge, %switch.early.test.i.if.then72.i_crit_edge
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr76.i = getelementptr i8, ptr %32, i32 32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i) #8, !srcloc !236
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i, ptr noundef nonnull @.str.93, i32 noundef %and50.i, i32 noundef %34) #11
  %and83.i = and i32 %34, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.then72.i.if.end87.i_crit_edge, label %if.then72.i.while.end131.i_crit_edge

if.then72.i.while.end131.i_crit_edge:             ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end131.i

if.then72.i.if.end87.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then72.i.if.end87.i_crit_edge, %switch.early.test234.critedge.i.if.end87.i_crit_edge, %switch.early.test234.critedge.i.if.end87.i_crit_edge38, %switch.early.test234.critedge.i.if.end87.i_crit_edge39, %switch.early.test.i.if.end87.i_crit_edge, %switch.early.test.i.if.end87.i_crit_edge36, %switch.early.test.i.if.end87.i_crit_edge37
  %hsts.1.i = phi i32 [ %34, %if.then72.i.if.end87.i_crit_edge ], [ %hsts.0253.i, %switch.early.test234.critedge.i.if.end87.i_crit_edge ], [ %hsts.0253.i, %switch.early.test234.critedge.i.if.end87.i_crit_edge38 ], [ %hsts.0253.i, %switch.early.test234.critedge.i.if.end87.i_crit_edge39 ], [ %hsts.0253.i, %switch.early.test.i.if.end87.i_crit_edge ], [ %hsts.0253.i, %switch.early.test.i.if.end87.i_crit_edge36 ], [ %hsts.0253.i, %switch.early.test.i.if.end87.i_crit_edge37 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub88.i = sub i32 %add.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub88.i)
  %cmp89.i = icmp slt i32 %sub88.i, 0
  br i1 %cmp89.i, label %while.end131.thread.i, label %cond.false8.i.i

while.end131.thread.i:                            ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond97.i = select i1 %cmp.not, ptr @.str.89, ptr @.str.88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond97.i, i32 noundef %26) #11
  br label %while.end142.i

cond.false8.i.i:                                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ns_per_fifo_word.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ns_per_fifo_word.i, align 4
  %sub99.i = sub i32 %22, %words.0.i
  %mul.i = mul i32 %37, %sub99.i
  %sub.i.i = add i32 %mul.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %div.i.i) #8
  br label %cleanup128.i

if.else101.i:                                     ; preds = %while.body30.i
  %39 = tail call i32 @llvm.smin.i32(i32 %words.0.i, i32 %copy_words.0254.i) #8
  %sub107.i = sub i32 %copy_words.0254.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool109.not248.i = icmp eq i32 %39, 0
  br i1 %tobool109.not248.i, label %if.else101.i.cleanup128.i_crit_edge, label %if.else101.i.while.body110.i_crit_edge

if.else101.i.while.body110.i_crit_edge:           ; preds = %if.else101.i
  br label %while.body110.i

if.else101.i.cleanup128.i_crit_edge:              ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup128.i

while.body110.i:                                  ; preds = %if.end127.i.while.body110.i_crit_edge, %if.else101.i.while.body110.i_crit_edge
  %buf.1250.i = phi ptr [ %buf.2.i, %if.end127.i.while.body110.i_crit_edge ], [ %buf.0252.i, %if.else101.i.while.body110.i_crit_edge ]
  %words.2249.i = phi i32 [ %dec.i, %if.end127.i.while.body110.i_crit_edge ], [ %39, %if.else101.i.while.body110.i_crit_edge ]
  br i1 %cmp.not, label %do.body121.i, label %if.then112.i

if.then112.i:                                     ; preds = %while.body110.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr116.i = getelementptr i8, ptr %41, i32 64
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116.i) #8, !srcloc !236
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  %44 = ptrtoint ptr %buf.1250.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %buf.1250.i, align 4
  br label %if.end127.i

do.body121.i:                                     ; preds = %while.body110.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %buf.1250.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf.1250.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %48 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %49, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126.i, i32 %47) #8, !srcloc !232
  br label %if.end127.i

if.end127.i:                                      ; preds = %do.body121.i, %if.then112.i
  %buf.2.i = getelementptr i32, ptr %buf.1250.i, i32 1
  %dec.i = add i32 %words.2249.i, -1
  %tobool109.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool109.not.i, label %if.end127.i.cleanup128.i_crit_edge, label %if.end127.i.while.body110.i_crit_edge

if.end127.i.while.body110.i_crit_edge:            ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body110.i

if.end127.i.cleanup128.i_crit_edge:               ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup128.i

cleanup128.i:                                     ; preds = %if.end127.i.cleanup128.i_crit_edge, %if.else101.i.cleanup128.i_crit_edge, %cond.false8.i.i
  %buf.3.i = phi ptr [ %buf.0252.i, %cond.false8.i.i ], [ %buf.0252.i, %if.else101.i.cleanup128.i_crit_edge ], [ %buf.2.i, %if.end127.i.cleanup128.i_crit_edge ]
  %hsts.3.i = phi i32 [ %hsts.1.i, %cond.false8.i.i ], [ %hsts.0253.i, %if.else101.i.cleanup128.i_crit_edge ], [ %hsts.0253.i, %if.end127.i.cleanup128.i_crit_edge ]
  %copy_words.1.i = phi i32 [ %copy_words.0254.i, %cond.false8.i.i ], [ %sub107.i, %if.else101.i.cleanup128.i_crit_edge ], [ %sub107.i, %if.end127.i.cleanup128.i_crit_edge ]
  %tobool29.not.i = icmp eq i32 %copy_words.1.i, 0
  br i1 %tobool29.not.i, label %cleanup128.i.while.end131.i_crit_edge, label %cleanup128.i.while.body30.i_crit_edge

cleanup128.i.while.body30.i_crit_edge:            ; preds = %cleanup128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body30.i

cleanup128.i.while.end131.i_crit_edge:            ; preds = %cleanup128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end131.i

while.end131.i:                                   ; preds = %cleanup128.i.while.end131.i_crit_edge, %if.then72.i.while.end131.i_crit_edge, %if.end25.i.while.end131.i_crit_edge
  %hsts.4.i = phi i32 [ 0, %if.end25.i.while.end131.i_crit_edge ], [ %hsts.3.i, %cleanup128.i.while.end131.i_crit_edge ], [ %34, %if.then72.i.while.end131.i_crit_edge ]
  %and132.i = and i32 %hsts.4.i, 248
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %while.end131.i.while.cond.i_crit_edge, label %while.end131.i.while.end142.i_crit_edge

while.end131.i.while.end142.i_crit_edge:          ; preds = %while.end131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end142.i

while.end131.i.while.cond.i_crit_edge:            ; preds = %while.end131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end142.i:                                   ; preds = %while.end131.i.while.end142.i_crit_edge, %while.end131.thread.i, %if.then22.i, %if.then14.i, %while.cond.i.while.end142.i_crit_edge
  tail call void @sg_miter_stop(ptr noundef %sg_miter.i) #8
  br i1 %tobool.not.i, label %if.then153.i, label %while.end142.i.do.body155.i_crit_edge

while.end142.i.do.body155.i_crit_edge:            ; preds = %while.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body155.i

if.then153.i:                                     ; preds = %while.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body155.i

do.body155.i:                                     ; preds = %if.then153.i, %while.end142.i.do.body155.i_crit_edge
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !300
  %and.i.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool163.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool163.not.i, label %if.then167.i, label %do.body155.i.bcm2835_transfer_block_pio.exit_crit_edge, !prof !239

do.body155.i.bcm2835_transfer_block_pio.exit_crit_edge: ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm2835_transfer_block_pio.exit

if.then167.i:                                     ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %bcm2835_transfer_block_pio.exit

bcm2835_transfer_block_pio.exit:                  ; preds = %if.then167.i, %do.body155.i.bcm2835_transfer_block_pio.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #8, !srcloc !301
  %51 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !236
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  %and3 = and i32 %54, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %bcm2835_transfer_block_pio.exit.if.end17.sink.split_crit_edge

bcm2835_transfer_block_pio.exit.if.end17.sink.split_crit_edge: ; preds = %bcm2835_transfer_block_pio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split

if.else:                                          ; preds = %bcm2835_transfer_block_pio.exit
  %and7 = and i32 %54, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.if.end17_crit_edge, label %if.else.if.end17.sink.split_crit_edge

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %bcm2835_transfer_block_pio.exit.if.end17.sink.split_crit_edge
  %.str.91.sink = phi ptr [ @.str.86, %bcm2835_transfer_block_pio.exit.if.end17.sink.split_crit_edge ], [ @.str.91, %if.else.if.end17.sink.split_crit_edge ]
  %.sink = phi i32 [ -84, %bcm2835_transfer_block_pio.exit.if.end17.sink.split_crit_edge ], [ -110, %if.else.if.end17.sink.split_crit_edge ]
  %cond14 = select i1 %cmp.not, ptr @.str.89, ptr @.str.88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.91.sink, ptr noundef nonnull %cond14, i32 noundef %54) #11
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %error16 = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %error16 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %error16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !151, !152, !153, !155, !157, !158, !160, !161, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !179, !180, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218}
!llvm.named.register.sp = !{!220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__initcall__kmod_bcm2835__305_1479_bcm2835_driver_init6, !1, !"__initcall__kmod_bcm2835__305_1479_bcm2835_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/bcm2835.c", i32 1479, i32 1}
!2 = !{ptr @__exitcall_bcm2835_driver_exit, !1, !"__exitcall_bcm2835_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias306, !4, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/bcm2835.c", i32 1481, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/bcm2835.c", i32 1482, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/bcm2835.c", i32 1483, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author310, !11, !"__UNIQUE_ID_author310", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/bcm2835.c", i32 1484, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/bcm2835.c", i32 1474, i32 12}
!14 = !{ptr @bcm2835_driver, !15, !"bcm2835_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/bcm2835.c", i32 1470, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/bcm2835.c", i32 1362, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bcm2835_probe.__UNIQUE_ID_ddebug302, !17, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!22 = !{ptr @bcm2835_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/bcm2835.c", i32 1370, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/bcm2835.c", i32 1383, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bcm2835_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm2835_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/bcm2835.c", i32 1393, i32 46}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/bcm2835.c", i32 1407, i32 42}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/bcm2835.c", i32 1429, i32 2}
!37 = !{ptr @bcm2835_probe.__UNIQUE_ID_ddebug303, !36, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/bcm2835.c", i32 1434, i32 2}
!40 = !{ptr @bcm2835_probe.__UNIQUE_ID_ddebug304, !39, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!41 = !{ptr @bcm2835_ops, !42, !"bcm2835_ops", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/bcm2835.c", i32 1259, i32 34}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/bcm2835.c", i32 1177, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm2835_request._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm2835_request._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/bcm2835.c", i32 1197, i32 3}
!50 = !{ptr @bcm2835_request._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcm2835_request._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/bcm2835.c", i32 213, i32 35}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/bcm2835.c", i32 214, i32 35}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/bcm2835.c", i32 216, i32 4}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug274, !57, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/bcm2835.c", i32 221, i32 36}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/bcm2835.c", i32 224, i32 2}
!64 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug275, !63, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/bcm2835.c", i32 225, i32 2}
!67 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug276, !66, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/bcm2835.c", i32 226, i32 2}
!70 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug277, !69, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/bcm2835.c", i32 227, i32 2}
!73 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug278, !72, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/bcm2835.c", i32 228, i32 2}
!76 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug279, !75, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/bcm2835.c", i32 229, i32 2}
!79 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug280, !78, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/bcm2835.c", i32 230, i32 2}
!82 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug281, !81, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/bcm2835.c", i32 231, i32 2}
!85 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug282, !84, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/bcm2835.c", i32 232, i32 2}
!88 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug283, !87, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/bcm2835.c", i32 233, i32 2}
!91 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug284, !90, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/bcm2835.c", i32 234, i32 2}
!94 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug285, !93, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/bcm2835.c", i32 235, i32 2}
!97 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug286, !96, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/bcm2835.c", i32 236, i32 2}
!100 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug287, !99, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/bcm2835.c", i32 237, i32 2}
!103 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug288, !102, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/bcm2835.c", i32 238, i32 2}
!106 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug289, !105, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/bcm2835.c", i32 239, i32 2}
!109 = !{ptr @bcm2835_dumpregs.__UNIQUE_ID_ddebug290, !108, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/bcm2835.c", i32 200, i32 2}
!112 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @bcm2835_dumpcmd.__UNIQUE_ID_ddebug273, !111, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/bcm2835.c", i32 616, i32 4}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bcm2835_finish_request._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @bcm2835_finish_request._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/bcm2835.c", i32 634, i32 3}
!121 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @bcm2835_send_command._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @bcm2835_send_command._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/bcm2835.c", i32 655, i32 3}
!126 = !{ptr @bcm2835_send_command._entry.45, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @bcm2835_send_command._entry_ptr.47, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/bcm2835.c", i32 590, i32 3}
!130 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @bcm2835_read_wait_sdcmd._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @bcm2835_read_wait_sdcmd._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/bcm2835.c", i32 752, i32 3}
!135 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @bcm2835_finish_command._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @bcm2835_finish_command._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/host/bcm2835.c", i32 770, i32 5}
!140 = !{ptr @bcm2835_finish_command._entry.52, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @bcm2835_finish_command._entry_ptr.54, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/bcm2835.c", i32 310, i32 4}
!144 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @bcm2835_wait_transfer_complete._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @bcm2835_wait_transfer_complete._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/bcm2835.c", i32 1278, i32 2}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @bcm2835_add_host.__UNIQUE_ID_ddebug299, !150, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!153 = !{ptr @bcm2835_add_host.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/bcm2835.c", i32 1285, i32 2}
!155 = !{ptr @bcm2835_add_host.__key.60, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/bcm2835.c", i32 1286, i32 2}
!157 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/bcm2835.c", i32 1289, i32 3}
!160 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bcm2835_add_host._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @bcm2835_add_host._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @bcm2835_add_host.__key.64, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/mmc/host/bcm2835.c", i32 1322, i32 2}
!165 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @bcm2835_add_host.__key.66, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/bcm2835.c", i32 1323, i32 2}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bcm2835_add_host.__key.68, !167, !"__key", i1 false, i1 false}
!170 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mmc/host/bcm2835.c", i32 1334, i32 3}
!173 = !{ptr @bcm2835_add_host._entry.70, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @bcm2835_add_host._entry_ptr.72, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mmc/host/bcm2835.c", i32 1346, i32 29}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/bcm2835.c", i32 1347, i32 2}
!179 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @bcm2835_add_host._entry.74, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @bcm2835_add_host._entry_ptr.77, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mmc/host/bcm2835.c", i32 735, i32 3}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @bcm2835_finish_data.__UNIQUE_ID_ddebug297, !185, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mmc/host/bcm2835.c", i32 836, i32 3}
!190 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @bcm2835_timeout._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @bcm2835_timeout._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mmc/host/bcm2835.c", i32 867, i32 2}
!195 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @bcm2835_check_cmd_error._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @bcm2835_check_cmd_error._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mmc/host/bcm2835.c", i32 441, i32 3}
!200 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @bcm2835_transfer_pio._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @bcm2835_transfer_pio._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/bcm2835.c", i32 446, i32 3}
!207 = !{ptr @bcm2835_transfer_pio._entry.90, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @bcm2835_transfer_pio._entry_ptr.92, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mmc/host/bcm2835.c", i32 388, i32 6}
!211 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @bcm2835_transfer_block_pio._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @bcm2835_transfer_block_pio._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/host/bcm2835.c", i32 395, i32 6}
!216 = !{ptr @bcm2835_transfer_block_pio._entry.95, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @bcm2835_transfer_block_pio._entry_ptr.97, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @bcm2835_match, !219, !"bcm2835_match", i1 false, i1 false}
!219 = !{!"../drivers/mmc/host/bcm2835.c", i32 1464, i32 34}
!220 = !{!"sp"}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i64 2148757398, i64 2148757403, i64 2148757416, i64 2148757460, i64 2148757494, i64 2148757515}
!231 = !{i64 2154995449}
!232 = !{i64 6341988}
!233 = !{i8 0, i8 2}
!234 = !{i32 0, i32 33}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{i64 6342406}
!237 = !{i64 2154971338}
!238 = !{i64 2154973743}
!239 = !{!"branch_weights", i32 1, i32 2000}
!240 = !{i64 2153903672, i64 2153904164, i64 2153903709, i64 2153903765, i64 2153903799, i64 2153903823, i64 2153903864, i64 2153903885, i64 2153903913, i64 2153903947}
!241 = !{i64 2154967467}
!242 = !{i64 2154967914}
!243 = !{i64 2154968351}
!244 = !{i64 2154974433}
!245 = !{i64 2154856623}
!246 = !{i64 2154859382}
!247 = !{i64 2154862145}
!248 = !{i64 2154864908}
!249 = !{i64 2154867671}
!250 = !{i64 2154870434}
!251 = !{i64 2154873197}
!252 = !{i64 2154875960}
!253 = !{i64 2154878723}
!254 = !{i64 2154881482}
!255 = !{i64 2154884241}
!256 = !{i64 2154887004}
!257 = !{i64 2154889767}
!258 = !{i64 2154892530}
!259 = !{i64 2154937899}
!260 = !{i64 2154938314}
!261 = !{i64 2154925844}
!262 = !{i64 2154926880}
!263 = !{i64 2154927311}
!264 = !{i64 2154940363}
!265 = !{i64 2154941018}
!266 = !{i64 2154947333}
!267 = !{i64 2154947782}
!268 = !{i64 2154950249}
!269 = !{i64 2154950597}
!270 = !{i64 2154951416}
!271 = !{i64 2154929122}
!272 = !{i64 2154929616}
!273 = !{i64 2154931267}
!274 = !{i64 2154931761}
!275 = !{i64 2154901270}
!276 = !{i64 2154901618}
!277 = !{i64 2154904088}
!278 = !{i64 2154903930}
!279 = !{i64 2154895165}
!280 = !{i64 2154895555}
!281 = !{i64 2154895945}
!282 = !{i64 2154896342}
!283 = !{i64 2154896753}
!284 = !{i64 2154897147}
!285 = !{i64 2154897549}
!286 = !{i64 2154897939}
!287 = !{i64 2154898329}
!288 = !{i64 2154898999}
!289 = !{i64 2154899245}
!290 = !{i64 2154899646}
!291 = !{i64 2154900045}
!292 = !{i64 2154900471}
!293 = !{i64 668064, i64 668125}
!294 = !{i64 2154188898}
!295 = !{i64 2153340681}
!296 = !{i64 2154964240}
!297 = !{i64 2154964739}
!298 = !{i64 2153340888}
!299 = !{i64 2154191669}
!300 = !{i64 670796}
!301 = !{i64 671081}
!302 = !{i64 2154960700}
!303 = !{i64 2154960969}
!304 = !{i64 2154958327}
!305 = !{i64 2154958917}
!306 = !{i64 2154942142}
!307 = !{i64 2154945220}
!308 = !{i64 2154912122}
!309 = !{i64 2154912652}
!310 = !{i64 2154917014}
!311 = !{i64 2154917240}
!312 = !{i64 2154918998}
