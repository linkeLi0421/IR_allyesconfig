; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/renesas_sdhi_sys_dmac.c_pt.bc'
source_filename = "../drivers/mmc/host/renesas_sdhi_sys_dmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.renesas_sdhi_of_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i32 }
%struct.renesas_sdhi_scc = type { i32, i32, i32 }
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_renesas_sdhi_sys_dmac__320_477_renesas_sys_dmac_sdhi_driver_init6 = internal global ptr @renesas_sys_dmac_sdhi_driver_init, section ".initcall6.init", align 4
@renesas_sys_dmac_sdhi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @renesas_sdhi_sys_dmac_probe, ptr @renesas_sdhi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @renesas_sdhi_sys_dmac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renesas_sdhi_sys_dmac_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_renesas_sys_dmac_sdhi_driver_exit = internal global ptr @renesas_sys_dmac_sdhi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [54 x i8] c"renesas_sdhi_sys_dmac.description=Renesas SDHI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [41 x i8] c"renesas_sdhi_sys_dmac.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [66 x i8] c"renesas_sdhi_sys_dmac.file=drivers/mmc/host/renesas_sdhi_sys_dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [37 x i8] c"renesas_sdhi_sys_dmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias325 = internal constant [52 x i8] c"renesas_sdhi_sys_dmac.alias=platform:sh_mobile_sdhi\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_mobile_sdhi\00", [17 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_of_match = internal constant { [17 x %struct.of_device_id], [860 x i8] } { [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_default_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_default_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_default_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r7s72100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rz_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen1_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen1_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-sdhi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen1_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-sdhi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-shmobile\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [860 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_mmc_host_runtime_suspend, ptr @tmio_mmc_host_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_dma_ops = internal constant { %struct.tmio_mmc_dma_ops, [36 x i8] } { %struct.tmio_mmc_dma_ops { ptr @renesas_sdhi_sys_dmac_start_dma, ptr @renesas_sdhi_sys_dmac_enable_dma, ptr @renesas_sdhi_sys_dmac_request_dma, ptr @renesas_sdhi_sys_dmac_release_dma, ptr @renesas_sdhi_sys_dmac_abort_dma, ptr @renesas_sdhi_sys_dmac_dataend_dma, ptr null }, [36 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_start_dma_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DMA failed: %d, falling back to PIO\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"renesas_sdhi_sys_dmac_start_dma_rx\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/mmc/host/renesas_sdhi_sys_dmac.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_start_dma_rx._entry_ptr = internal global ptr @renesas_sdhi_sys_dmac_start_dma_rx._entry, section ".printk_index", align 4
@renesas_sdhi_sys_dmac_start_dma_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.6, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"renesas_sdhi_sys_dmac_start_dma_tx\00", [61 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_start_dma_tx._entry_ptr = internal global ptr @renesas_sdhi_sys_dmac_start_dma_tx._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"renesas_sdhi_sys_dmac\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"renesas_sdhi_sys_dmac_request_dma\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@of_default_cfg = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@of_rz_compatible = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 2576, i32 1048576, i32 524, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@of_rcar_gen1_compatible = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 1040, i32 0, i32 524, i32 262144, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@of_rcar_gen2_compatible = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 3096, i32 0, i32 1073742348, i32 262144, i32 4, i32 8192, i32 0, i32 768, ptr @rcar_gen2_scc_taps, i32 2, i32 8388607, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rcar_gen2_scc_taps = internal global { [2 x %struct.renesas_sdhi_scc], [40 x i8] } { [2 x %struct.renesas_sdhi_scc] [%struct.renesas_sdhi_scc { i32 156000000, i32 1795, i32 0 }, %struct.renesas_sdhi_scc { i32 0, i32 768, i32 0 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"renesas_sys_dmac_sdhi_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 466, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 468, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"renesas_sdhi_sys_dmac_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 73, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [33 x i8] c"renesas_sdhi_sys_dmac_dev_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 458, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"renesas_sdhi_sys_dmac_dma_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 443, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 221, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 298, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 362, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 363, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 382, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 383, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 87, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1169, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"of_default_cfg\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 28, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"of_rz_compatible\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 32, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"of_rcar_gen1_compatible\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 40, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"of_rcar_gen2_compatible\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 59, i32 42 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"rcar_gen2_scc_taps\00", align 1
@___asan_gen_.94 = private constant [44 x i8] c"../drivers/mmc/host/renesas_sdhi_sys_dmac.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 48, i32 32 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_renesas_sys_dmac_sdhi_driver_exit, ptr @__initcall__kmod_renesas_sdhi_sys_dmac__320_477_renesas_sys_dmac_sdhi_driver_init6, ptr @renesas_sdhi_sys_dmac_start_dma_rx._entry, ptr @renesas_sdhi_sys_dmac_start_dma_rx._entry_ptr, ptr @renesas_sdhi_sys_dmac_start_dma_tx._entry, ptr @renesas_sdhi_sys_dmac_start_dma_tx._entry_ptr, ptr @renesas_sys_dmac_sdhi_driver_exit, ptr @renesas_sys_dmac_sdhi_driver, ptr @.str, ptr @renesas_sdhi_sys_dmac_of_match, ptr @renesas_sdhi_sys_dmac_dev_pm_ops, ptr @renesas_sdhi_sys_dmac_dma_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13, ptr @.str.14, ptr @of_default_cfg, ptr @of_rz_compatible, ptr @of_rcar_gen1_compatible, ptr @of_rcar_gen2_compatible, ptr @rcar_gen2_scc_taps], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sys_dmac_sdhi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_sys_dmac_of_match to i32), i32 3332, i32 4192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_sys_dmac_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_sys_dmac_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_sys_dmac_start_dma_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_sys_dmac_start_dma_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_default_cfg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rz_compatible to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rcar_gen1_compatible to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rcar_gen2_compatible to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_scc_taps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sys_dmac_sdhi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_sys_dmac_sdhi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sys_dmac_sdhi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_sys_dmac_sdhi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_sys_dmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %call1 = tail call i32 @renesas_sdhi_probe(ptr noundef %pdev, ptr noundef nonnull @renesas_sdhi_sys_dmac_dma_ops, ptr noundef %call, ptr noundef null) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_start_dma(ptr noundef %host, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %2 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_rx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %sg_ptr.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 7
  %6 = ptrtoint ptr %sg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_ptr.i, align 4
  %alignment_shift.i = getelementptr inbounds %struct.tmio_mmc_data, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %alignment_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alignment_shift.i, align 4
  %notmask.i = shl nsw i32 -1, %9
  %sub.i = xor i32 %notmask.i, -1
  %sg_len.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 9
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp137.not.i = icmp eq i32 %11, 0
  br i1 %cmp137.not.i, label %if.then2.if.end17.i_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.if.end17.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %aligned.0.off0140.i = phi i1 [ %spec.select.i, %for.inc.i.for.body.i_crit_edge ], [ true, %if.then2.for.body.i_crit_edge ]
  %i.0139.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %sg_tmp.0138.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.then2.for.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0138.i, i32 0, i32 2
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %and2.i = and i32 %13, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %for.body.i.if.then43.i_crit_edge

for.body.i.if.then43.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

for.inc.i:                                        ; preds = %for.body.i
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0138.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %15, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %aligned.0.off0140.i, i1 false
  %inc.i = add nuw i32 %i.0139.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg_tmp.0138.i) #6
  %16 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.thread.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.thread.i:                                 ; preds = %for.inc.i
  br i1 %spec.select.i, label %for.end.thread.i.if.end17.i_crit_edge, label %land.lhs.true.i

for.end.thread.i.if.end17.i_crit_edge:            ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8.old.i = icmp ugt i32 %17, 1
  br i1 %cmp8.old.i, label %land.lhs.true.i.if.then43.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then43.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %length9.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %length9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp10.i = icmp ugt i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %notmask.i)
  %tobool13.not.i = icmp ult i32 %notmask.i, -4096
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then43.i_crit_edge, label %if.end17.thread.i

lor.lhs.false.i.if.then43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.end17.i:                                       ; preds = %for.end.thread.i.if.end17.i_crit_edge, %if.then2.if.end17.i_crit_edge
  %length18.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %length18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp19.i = icmp ult i32 %21, 8
  br i1 %cmp19.i, label %if.end17.i.if.end6_crit_edge, label %if.end17.i.if.end28.i_crit_edge

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.end17.i.if.end6_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end17.thread.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp19160.i = icmp ult i32 %19, 8
  br i1 %cmp19160.i, label %if.end17.thread.i.if.end6_crit_edge, label %if.then23.i

if.end17.thread.i.if.end6_crit_edge:              ; preds = %if.end17.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then23.i:                                      ; preds = %if.end17.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %bounce_sg.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 18
  %bounce_buf.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 19
  %22 = ptrtoint ptr %bounce_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bounce_buf.i, align 4
  tail call void @sg_init_one(ptr noundef %bounce_sg.i, ptr noundef %23, i32 noundef %19) #6
  %24 = ptrtoint ptr %sg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bounce_sg.i, ptr %sg_ptr.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end28.i_crit_edge
  %sg.0.i = phi ptr [ %bounce_sg.i, %if.then23.i ], [ %7, %if.end17.i.if.end28.i_crit_edge ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_len.i, align 4
  %call30.i = tail call i32 @dma_map_sg_attrs(ptr noundef %28, ptr noundef %sg.0.i, i32 noundef %30, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 1
  br i1 %cmp31.i, label %if.end28.i.if.then43.i_crit_edge, label %lor.lhs.false.i.i

if.end28.i.if.then43.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

lor.lhs.false.i.i:                                ; preds = %if.end28.i
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %tobool1.not.i.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then43.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.then43.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.if.then43.i_crit_edge, label %if.end34.i

lor.lhs.false2.i.i.if.then43.i_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.end34.i:                                       ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %34(ptr noundef nonnull %3, ptr noundef %sg.0.i, i32 noundef %call30.i, i32 noundef 2, i32 noundef 2, ptr noundef null) #6
  %tobool35.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool35.not.i, label %if.end34.i.if.then43.i_crit_edge, label %if.then36.i

if.end34.i.if.then43.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.then36.i:                                      ; preds = %if.end34.i
  %dma_dataend.i = getelementptr i8, ptr %5, i32 64
  %35 = ptrtoint ptr %dma_dataend.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dma_dataend.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @renesas_sdhi_sys_dmac_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %host, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i111.i = tail call i32 %39(ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %cmp38.i = icmp slt i32 %call.i111.i, 0
  %dma_on.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 14
  %40 = ptrtoint ptr %dma_on.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %dma_on.i, align 4
  br i1 %cmp38.i, label %if.then36.i.if.then43.i_crit_edge, label %if.then36.i.if.end6_crit_edge

if.then36.i.if.end6_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then36.i.if.then43.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then36.i.if.then43.i_crit_edge, %if.end34.i.if.then43.i_crit_edge, %lor.lhs.false2.i.i.if.then43.i_crit_edge, %lor.lhs.false.i.i.if.then43.i_crit_edge, %if.end28.i.if.then43.i_crit_edge, %lor.lhs.false.i.if.then43.i_crit_edge, %land.lhs.true.i.if.then43.i_crit_edge, %for.body.i.if.then43.i_crit_edge
  %ret.1.ph.i = phi i32 [ -22, %land.lhs.true.i.if.then43.i_crit_edge ], [ -22, %lor.lhs.false.i.if.then43.i_crit_edge ], [ %call30.i, %if.end34.i.if.then43.i_crit_edge ], [ %call30.i, %if.end28.i.if.then43.i_crit_edge ], [ %call30.i, %lor.lhs.false2.i.i.if.then43.i_crit_edge ], [ %call30.i, %lor.lhs.false.i.i.if.then43.i_crit_edge ], [ %call.i111.i, %if.then36.i.if.then43.i_crit_edge ], [ -22, %for.body.i.if.then43.i_crit_edge ]
  %41 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata.i, align 4
  %chan_tx.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %43 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_tx.i.i, align 4
  %tobool.not.i112.i = icmp eq ptr %44, null
  br i1 %tobool.not.i112.i, label %if.then43.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge, label %lor.lhs.false.i114.i

if.then43.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i

lor.lhs.false.i114.i:                             ; preds = %if.then43.i
  %45 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan_rx, align 4
  %tobool1.not.i113.i = icmp eq ptr %46, null
  br i1 %tobool1.not.i113.i, label %lor.lhs.false.i114.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge, label %if.end.i115.i

lor.lhs.false.i114.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge: ; preds = %lor.lhs.false.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i

if.end.i115.i:                                    ; preds = %lor.lhs.false.i114.i
  %enable2.i.i = getelementptr i8, ptr %42, i32 60
  %47 = ptrtoint ptr %enable2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %enable2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i.i, label %if.end.i115.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge, label %if.then4.i.i

if.end.i115.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge: ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i

if.then4.i.i:                                     ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %48(ptr noundef %host, i1 noundef zeroext false) #6
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i

renesas_sdhi_sys_dmac_enable_dma.exit.i:          ; preds = %if.then4.i.i, %if.end.i115.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge, %lor.lhs.false.i114.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge, %if.then43.i.renesas_sdhi_sys_dmac_enable_dma.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.ph.i)
  %cmp44.i = icmp sgt i32 %ret.1.ph.i, -1
  %spec.store.select.i = select i1 %cmp44.i, i32 -5, i32 %ret.1.ph.i
  %49 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %chan_rx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %3) #6
  %50 = ptrtoint ptr %chan_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chan_tx.i.i, align 4
  %tobool48.not.i = icmp eq ptr %51, null
  br i1 %tobool48.not.i, label %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split_crit_edge, label %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split.sink.split_crit_edge

renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split.sink.split_crit_edge: ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split.sink.split

renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split_crit_edge: ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split

if.else:                                          ; preds = %entry
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %52 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_tx, align 4
  %tobool3.not = icmp eq ptr %53, null
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.else
  %pdata.i10 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %54 = ptrtoint ptr %pdata.i10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdata.i10, align 4
  %sg_ptr.i11 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 7
  %56 = ptrtoint ptr %sg_ptr.i11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sg_ptr.i11, align 4
  %alignment_shift.i12 = getelementptr inbounds %struct.tmio_mmc_data, ptr %55, i32 0, i32 7
  %58 = ptrtoint ptr %alignment_shift.i12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alignment_shift.i12, align 4
  %notmask.i13 = shl nsw i32 -1, %59
  %sub.i14 = xor i32 %notmask.i13, -1
  %sg_len.i15 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 9
  %60 = ptrtoint ptr %sg_len.i15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sg_len.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp153.not.i = icmp eq i32 %61, 0
  br i1 %cmp153.not.i, label %if.then4.if.end17.i38_crit_edge, label %if.then4.for.body.i23_crit_edge

if.then4.for.body.i23_crit_edge:                  ; preds = %if.then4
  br label %for.body.i23

if.then4.if.end17.i38_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i38

for.body.i23:                                     ; preds = %for.inc.i27.for.body.i23_crit_edge, %if.then4.for.body.i23_crit_edge
  %aligned.0.off0156.i = phi i1 [ %spec.select.i19, %for.inc.i27.for.body.i23_crit_edge ], [ true, %if.then4.for.body.i23_crit_edge ]
  %i.0155.i = phi i32 [ %inc.i24, %for.inc.i27.for.body.i23_crit_edge ], [ 0, %if.then4.for.body.i23_crit_edge ]
  %sg_tmp.0154.i = phi ptr [ %call.i25, %for.inc.i27.for.body.i23_crit_edge ], [ %57, %if.then4.for.body.i23_crit_edge ]
  %length.i20 = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0154.i, i32 0, i32 2
  %62 = ptrtoint ptr %length.i20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.i20, align 4
  %and2.i21 = and i32 %63, %sub.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i21)
  %tobool3.not.i22 = icmp eq i32 %and2.i21, 0
  br i1 %tobool3.not.i22, label %for.inc.i27, label %for.body.i23.if.then47.i_crit_edge

for.body.i23.if.then47.i_crit_edge:               ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

for.inc.i27:                                      ; preds = %for.body.i23
  %offset.i16 = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0154.i, i32 0, i32 1
  %64 = ptrtoint ptr %offset.i16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i16, align 4
  %and.i17 = and i32 %65, %sub.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  %spec.select.i19 = select i1 %tobool.not.i18, i1 %aligned.0.off0156.i, i1 false
  %inc.i24 = add nuw i32 %i.0155.i, 1
  %call.i25 = tail call ptr @sg_next(ptr noundef %sg_tmp.0154.i) #6
  %66 = ptrtoint ptr %sg_len.i15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sg_len.i15, align 4
  %cmp.i26 = icmp ult i32 %inc.i24, %67
  br i1 %cmp.i26, label %for.inc.i27.for.body.i23_crit_edge, label %for.end.thread.i28

for.inc.i27.for.body.i23_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i23

for.end.thread.i28:                               ; preds = %for.inc.i27
  br i1 %spec.select.i19, label %for.end.thread.i28.if.end17.i38_crit_edge, label %land.lhs.true.i30

for.end.thread.i28.if.end17.i38_crit_edge:        ; preds = %for.end.thread.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i38

land.lhs.true.i30:                                ; preds = %for.end.thread.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp8.old.i29 = icmp ugt i32 %67, 1
  br i1 %cmp8.old.i29, label %land.lhs.true.i30.if.then47.i_crit_edge, label %lor.lhs.false.i35

land.lhs.true.i30.if.then47.i_crit_edge:          ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

lor.lhs.false.i35:                                ; preds = %land.lhs.true.i30
  %length9.i31 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %68 = ptrtoint ptr %length9.i31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length9.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %69)
  %cmp10.i32 = icmp ugt i32 %69, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %notmask.i13)
  %tobool13.not.i33 = icmp ult i32 %notmask.i13, -4096
  %or.cond.i34 = select i1 %cmp10.i32, i1 true, i1 %tobool13.not.i33
  br i1 %or.cond.i34, label %lor.lhs.false.i35.if.then47.i_crit_edge, label %if.end17.thread.i39

lor.lhs.false.i35.if.then47.i_crit_edge:          ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.end17.i38:                                     ; preds = %for.end.thread.i28.if.end17.i38_crit_edge, %if.then4.if.end17.i38_crit_edge
  %length18.i36 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %70 = ptrtoint ptr %length18.i36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length18.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %71)
  %cmp19.i37 = icmp ult i32 %71, 8
  br i1 %cmp19.i37, label %if.end17.i38.if.end6_crit_edge, label %if.end17.i38.if.end32.i_crit_edge

if.end17.i38.if.end32.i_crit_edge:                ; preds = %if.end17.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end17.i38.if.end6_crit_edge:                   ; preds = %if.end17.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end17.thread.i39:                              ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %69)
  %cmp19176.i = icmp ult i32 %69, 8
  br i1 %cmp19176.i, label %if.end17.thread.i39.if.end6_crit_edge, label %if.then23.i41

if.end17.thread.i39.if.end6_crit_edge:            ; preds = %if.end17.thread.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then23.i41:                                    ; preds = %if.end17.thread.i39
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !71
  %and.i.i.i = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i40, label %if.then.i.i, label %if.then23.i41.do.end10.i.i_crit_edge

if.then23.i41.do.end10.i.i_crit_edge:             ; preds = %if.then23.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %if.then23.i41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %if.then23.i41.do.end10.i.i_crit_edge
  %73 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %57, align 4
  %and.i.i.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %tmio_mmc_kmap_atomic.exit.i, label %do.body2.i.i.i, !prof !72

do.body2.i.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

tmio_mmc_kmap_atomic.exit.i:                      ; preds = %do.end10.i.i
  %and.i15.i.i = and i32 %74, -4
  %75 = inttoptr i32 %and.i15.i.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %76 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %76, 512
  %77 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !74
  %81 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i1.i.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %86, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !75
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %75, i32 noundef %or.i.i.i) #6
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 1
  %87 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %88
  %bounce_sg.i42 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 18
  %bounce_buf.i43 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 19
  %89 = ptrtoint ptr %bounce_buf.i43 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bounce_buf.i43, align 4
  %91 = ptrtoint ptr %length9.i31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length9.i31, align 4
  tail call void @sg_init_one(ptr noundef %bounce_sg.i42, ptr noundef %90, i32 noundef %92) #6
  %93 = ptrtoint ptr %bounce_buf.i43 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bounce_buf.i43, align 4
  %length28.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 18, i32 2
  %95 = ptrtoint ptr %length28.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length28.i, align 4
  %97 = call ptr @memcpy(ptr %94, ptr %add.ptr.i.i, i32 %96)
  %98 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i.i, align 4
  %idx.neg.i.i = sub i32 0, %99
  %add.ptr.i120.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg.i.i
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr.i120.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !76
  %100 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i1.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 213
  %104 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %105, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !77
  %106 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br i1 %tobool.not.i.i40, label %if.then.i123.i, label %tmio_mmc_kmap_atomic.exit.i.do.body5.i.i_crit_edge

tmio_mmc_kmap_atomic.exit.i.do.body5.i.i_crit_edge: ; preds = %tmio_mmc_kmap_atomic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i.i

if.then.i123.i:                                   ; preds = %tmio_mmc_kmap_atomic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %if.then.i123.i, %tmio_mmc_kmap_atomic.exit.i.do.body5.i.i_crit_edge
  %110 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !78
  %and.i.i.i124.i = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i124.i)
  %tobool13.not.i.i = icmp eq i32 %and.i.i.i124.i, 0
  br i1 %tobool13.not.i.i, label %if.then17.i.i, label %do.body5.i.i.tmio_mmc_kunmap_atomic.exit.i_crit_edge, !prof !79

do.body5.i.i.tmio_mmc_kunmap_atomic.exit.i_crit_edge: ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tmio_mmc_kunmap_atomic.exit.i

if.then17.i.i:                                    ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %tmio_mmc_kunmap_atomic.exit.i

tmio_mmc_kunmap_atomic.exit.i:                    ; preds = %if.then17.i.i, %do.body5.i.i.tmio_mmc_kunmap_atomic.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #6, !srcloc !80
  %111 = ptrtoint ptr %sg_ptr.i11 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %bounce_sg.i42, ptr %sg_ptr.i11, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %tmio_mmc_kunmap_atomic.exit.i, %if.end17.i38.if.end32.i_crit_edge
  %sg.0.i44 = phi ptr [ %bounce_sg.i42, %tmio_mmc_kunmap_atomic.exit.i ], [ %57, %if.end17.i38.if.end32.i_crit_edge ]
  %112 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %53, align 4
  %dev.i45 = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 15
  %114 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i45, align 4
  %116 = ptrtoint ptr %sg_len.i15 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sg_len.i15, align 4
  %call34.i = tail call i32 @dma_map_sg_attrs(ptr noundef %115, ptr noundef %sg.0.i44, i32 noundef %117, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 1
  br i1 %cmp35.i, label %if.end32.i.if.then47.i_crit_edge, label %lor.lhs.false.i.i47

if.end32.i.if.then47.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

lor.lhs.false.i.i47:                              ; preds = %if.end32.i
  %118 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %53, align 4
  %tobool1.not.i.i46 = icmp eq ptr %119, null
  br i1 %tobool1.not.i.i46, label %lor.lhs.false.i.i47.if.then47.i_crit_edge, label %lor.lhs.false2.i.i50

lor.lhs.false.i.i47.if.then47.i_crit_edge:        ; preds = %lor.lhs.false.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

lor.lhs.false2.i.i50:                             ; preds = %lor.lhs.false.i.i47
  %device_prep_slave_sg.i.i48 = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 39
  %120 = ptrtoint ptr %device_prep_slave_sg.i.i48 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_prep_slave_sg.i.i48, align 4
  %tobool4.not.i.i49 = icmp eq ptr %121, null
  br i1 %tobool4.not.i.i49, label %lor.lhs.false2.i.i50.if.then47.i_crit_edge, label %if.end38.i

lor.lhs.false2.i.i50.if.then47.i_crit_edge:       ; preds = %lor.lhs.false2.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.end38.i:                                       ; preds = %lor.lhs.false2.i.i50
  %call.i.i51 = tail call ptr %121(ptr noundef nonnull %53, ptr noundef %sg.0.i44, i32 noundef %call34.i, i32 noundef 1, i32 noundef 2, ptr noundef null) #6
  %tobool39.not.i = icmp eq ptr %call.i.i51, null
  br i1 %tobool39.not.i, label %if.end38.i.if.then47.i_crit_edge, label %if.then40.i

if.end38.i.if.then47.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.then40.i:                                      ; preds = %if.end38.i
  %dma_dataend.i52 = getelementptr i8, ptr %55, i32 64
  %122 = ptrtoint ptr %dma_dataend.i52 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %dma_dataend.i52, align 4
  %callback.i53 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i51, i32 0, i32 6
  %123 = ptrtoint ptr %callback.i53 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @renesas_sdhi_sys_dmac_dma_callback, ptr %callback.i53, align 4
  %callback_param.i54 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i51, i32 0, i32 8
  %124 = ptrtoint ptr %callback_param.i54 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %host, ptr %callback_param.i54, align 4
  %tx_submit.i.i55 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i51, i32 0, i32 4
  %125 = ptrtoint ptr %tx_submit.i.i55 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_submit.i.i55, align 4
  %call.i126.i = tail call i32 %126(ptr noundef nonnull %call.i.i51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %cmp42.i = icmp slt i32 %call.i126.i, 0
  %dma_on.i56 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 14
  %127 = ptrtoint ptr %dma_on.i56 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %dma_on.i56, align 4
  br i1 %cmp42.i, label %if.then40.i.if.then47.i_crit_edge, label %if.then40.i.if.end6_crit_edge

if.then40.i.if.end6_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then40.i.if.then47.i_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then40.i.if.then47.i_crit_edge, %if.end38.i.if.then47.i_crit_edge, %lor.lhs.false2.i.i50.if.then47.i_crit_edge, %lor.lhs.false.i.i47.if.then47.i_crit_edge, %if.end32.i.if.then47.i_crit_edge, %lor.lhs.false.i35.if.then47.i_crit_edge, %land.lhs.true.i30.if.then47.i_crit_edge, %for.body.i23.if.then47.i_crit_edge
  %ret.1.ph.i57 = phi i32 [ -22, %land.lhs.true.i30.if.then47.i_crit_edge ], [ -22, %lor.lhs.false.i35.if.then47.i_crit_edge ], [ %call34.i, %if.end38.i.if.then47.i_crit_edge ], [ %call34.i, %if.end32.i.if.then47.i_crit_edge ], [ %call34.i, %lor.lhs.false2.i.i50.if.then47.i_crit_edge ], [ %call34.i, %lor.lhs.false.i.i47.if.then47.i_crit_edge ], [ %call.i126.i, %if.then40.i.if.then47.i_crit_edge ], [ -22, %for.body.i23.if.then47.i_crit_edge ]
  %128 = ptrtoint ptr %pdata.i10 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdata.i10, align 4
  %130 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %chan_tx, align 4
  %tobool.not.i127.i = icmp eq ptr %131, null
  br i1 %tobool.not.i127.i, label %if.then47.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge, label %lor.lhs.false.i129.i

if.then47.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i63

lor.lhs.false.i129.i:                             ; preds = %if.then47.i
  %chan_rx.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %132 = ptrtoint ptr %chan_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chan_rx.i.i, align 4
  %tobool1.not.i128.i = icmp eq ptr %133, null
  br i1 %tobool1.not.i128.i, label %lor.lhs.false.i129.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge, label %if.end.i130.i

lor.lhs.false.i129.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge: ; preds = %lor.lhs.false.i129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i63

if.end.i130.i:                                    ; preds = %lor.lhs.false.i129.i
  %enable2.i.i58 = getelementptr i8, ptr %129, i32 60
  %134 = ptrtoint ptr %enable2.i.i58 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %enable2.i.i58, align 4
  %tobool3.not.i.i59 = icmp eq ptr %135, null
  br i1 %tobool3.not.i.i59, label %if.end.i130.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge, label %if.then4.i.i60

if.end.i130.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge: ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i63

if.then4.i.i60:                                   ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %135(ptr noundef %host, i1 noundef zeroext false) #6
  br label %renesas_sdhi_sys_dmac_enable_dma.exit.i63

renesas_sdhi_sys_dmac_enable_dma.exit.i63:        ; preds = %if.then4.i.i60, %if.end.i130.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge, %lor.lhs.false.i129.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge, %if.then47.i.renesas_sdhi_sys_dmac_enable_dma.exit.i63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.ph.i57)
  %cmp48.i = icmp sgt i32 %ret.1.ph.i57, -1
  %spec.store.select.i61 = select i1 %cmp48.i, i32 -5, i32 %ret.1.ph.i57
  %136 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %chan_tx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %53) #6
  %chan_rx.i62 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %137 = ptrtoint ptr %chan_rx.i62 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %chan_rx.i62, align 4
  %tobool52.not.i = icmp eq ptr %138, null
  br i1 %tobool52.not.i, label %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split_crit_edge, label %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split.sink.split_crit_edge

renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split.sink.split_crit_edge: ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split.sink.split

renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split_crit_edge: ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split

if.end6.sink.split.sink.split:                    ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split.sink.split_crit_edge, %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split.sink.split_crit_edge
  %chan_rx.i62.sink = phi ptr [ %chan_tx.i.i, %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split.sink.split_crit_edge ], [ %chan_rx.i62, %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split.sink.split_crit_edge ]
  %.sink = phi ptr [ %51, %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split.sink.split_crit_edge ], [ %138, %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split.sink.split_crit_edge ]
  %spec.store.select.i61.sink.ph = phi i32 [ %spec.store.select.i, %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split.sink.split_crit_edge ], [ %spec.store.select.i61, %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split.sink.split_crit_edge ]
  %139 = ptrtoint ptr %chan_rx.i62.sink to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %chan_rx.i62.sink, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %.sink) #6
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end6.sink.split.sink.split, %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split_crit_edge, %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split_crit_edge
  %spec.store.select.i61.sink = phi i32 [ %spec.store.select.i, %renesas_sdhi_sys_dmac_enable_dma.exit.i.if.end6.sink.split_crit_edge ], [ %spec.store.select.i61, %renesas_sdhi_sys_dmac_enable_dma.exit.i63.if.end6.sink.split_crit_edge ], [ %spec.store.select.i61.sink.ph, %if.end6.sink.split.sink.split ]
  %pdev.i64 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %140 = ptrtoint ptr %pdev.i64 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev.i64, align 4
  %dev56.i = getelementptr inbounds %struct.platform_device, ptr %141, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev56.i, ptr noundef nonnull @.str.1, i32 noundef %spec.store.select.i61.sink) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.then40.i.if.end6_crit_edge, %if.end17.thread.i39.if.end6_crit_edge, %if.end17.i38.if.end6_crit_edge, %if.else.if.end6_crit_edge, %if.then36.i.if.end6_crit_edge, %if.end17.thread.i.if.end6_crit_edge, %if.end17.i.if.end6_crit_edge, %if.then.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_enable_dma(ptr noundef %host, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_rx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %enable2 = getelementptr i8, ptr %1, i32 60
  %6 = ptrtoint ptr %enable2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %host, i1 noundef zeroext %enable) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_request_dma(ptr noundef %host, ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  %mask.i154 = alloca %struct.dma_cap_mask_t, align 4
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %pdev = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup104_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup104_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

lor.lhs.false:                                    ; preds = %land.lhs.true
  %chan_priv_rx = getelementptr inbounds %struct.tmio_mmc_data, ptr %pdata, i32 0, i32 1
  %8 = ptrtoint ptr %chan_priv_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_priv_rx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup104_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.cleanup104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %10 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_tx, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true5, label %if.end.lor.lhs.false.i_crit_edge

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.lhs.true5:                                   ; preds = %if.end
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %12 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan_rx, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true5.if.end99_crit_edge

land.lhs.true5.if.end99_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then7:                                         ; preds = %land.lhs.true5
  %call = tail call ptr @platform_get_resource(ptr noundef %3, i32 noundef 512, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #6
  %14 = getelementptr inbounds i8, ptr %cfg, i32 12
  %15 = call ptr @memset(ptr %14, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.then7.cleanup.thread187_crit_edge, label %if.end11

if.then7.cleanup.thread187_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread187

if.end11:                                         ; preds = %if.then7
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #6
  %dma_priv = getelementptr i8, ptr %1, i32 52
  %filter = getelementptr i8, ptr %1, i32 56
  %17 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %filter, align 4
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata, align 4
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i)
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.fca.0.load, ptr %mask.i, align 4
  %call.i.i = call ptr @dma_request_chan(ptr noundef %dev14, ptr noundef nonnull @.str.7) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not9.i = icmp eq ptr %call.i.i, null
  %tobool.not.i = or i1 %cmp.i.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dma_request_slave_channel_compat.exit_crit_edge

if.end11.dma_request_slave_channel_compat.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_request_slave_channel_compat.exit

if.end.i:                                         ; preds = %if.end11
  %tobool1.not.i = icmp eq ptr %18, null
  %tobool2.not.i = icmp eq ptr %20, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end.i.dma_request_slave_channel_compat.exit_crit_edge, label %if.end4.i

if.end.i.dma_request_slave_channel_compat.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_request_slave_channel_compat.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef null) #6
  br label %dma_request_slave_channel_compat.exit

dma_request_slave_channel_compat.exit:            ; preds = %if.end4.i, %if.end.i.dma_request_slave_channel_compat.exit_crit_edge, %if.end11.dma_request_slave_channel_compat.exit_crit_edge
  %retval.0.i151 = phi ptr [ %call5.i, %if.end4.i ], [ %call.i.i, %if.end11.dma_request_slave_channel_compat.exit_crit_edge ], [ null, %if.end.i.dma_request_slave_channel_compat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i)
  %25 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i151, ptr %chan_tx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_sdhi_sys_dmac_request_dma, %if.then22)) #6
          to label %do.end [label %if.then22], !srcloc !81

if.then22:                                        ; preds = %dma_request_slave_channel_compat.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan_tx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug318, ptr noundef %dev24, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef %29) #6
  br label %do.end

do.end:                                           ; preds = %if.then22, %dma_request_slave_channel_compat.exit
  %30 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan_tx, align 4
  %tobool28.not = icmp eq ptr %31, null
  br i1 %tobool28.not, label %do.end.cleanup.thread187_crit_edge, label %if.end30

do.end.cleanup.thread187_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread187

if.end30:                                         ; preds = %do.end
  %32 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %cfg, align 4
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call, align 4
  %bus_shift = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %35 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_shift, align 4
  %shl = shl i32 48, %36
  %add = add i32 %shl, %34
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %37 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %dst_addr, align 4
  %38 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_priv, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool33.not = icmp eq i32 %39, 0
  %spec.select = select i1 %tobool33.not, i32 2, i32 %39
  %40 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select, ptr %dst_addr_width, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %41 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %src_addr, align 4
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i152 = icmp eq ptr %45, null
  br i1 %tobool.not.i152, label %if.end30.cleanup.thread184_crit_edge, label %dmaengine_slave_config.exit

if.end30.cleanup.thread184_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread184

dmaengine_slave_config.exit:                      ; preds = %if.end30
  %call.i = call i32 %45(ptr noundef nonnull %31, ptr noundef nonnull %cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.cleanup.thread184_crit_edge, label %if.end40

dmaengine_slave_config.exit.cleanup.thread184_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread184

if.end40:                                         ; preds = %dmaengine_slave_config.exit
  %46 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %filter, align 4
  %chan_priv_rx43 = getelementptr inbounds %struct.tmio_mmc_data, ptr %pdata, i32 0, i32 1
  %48 = ptrtoint ptr %chan_priv_rx43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan_priv_rx43, align 4
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.0.load109 = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i154)
  %53 = ptrtoint ptr %mask.i154 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.fca.0.load109, ptr %mask.i154, align 4
  %call.i.i155 = call ptr @dma_request_chan(ptr noundef %dev45, ptr noundef nonnull @.str.11) #6
  %cmp.i.i.i156 = icmp ugt ptr %call.i.i155, inttoptr (i32 -4096 to ptr)
  %tobool.not9.i157 = icmp eq ptr %call.i.i155, null
  %tobool.not.i158 = or i1 %cmp.i.i.i156, %tobool.not9.i157
  br i1 %tobool.not.i158, label %if.end.i162, label %if.end40.dma_request_slave_channel_compat.exit166_crit_edge

if.end40.dma_request_slave_channel_compat.exit166_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_request_slave_channel_compat.exit166

if.end.i162:                                      ; preds = %if.end40
  %tobool1.not.i159 = icmp eq ptr %47, null
  %tobool2.not.i160 = icmp eq ptr %49, null
  %or.cond.i161 = or i1 %tobool1.not.i159, %tobool2.not.i160
  br i1 %or.cond.i161, label %if.end.i162.dma_request_slave_channel_compat.exit166_crit_edge, label %if.end4.i164

if.end.i162.dma_request_slave_channel_compat.exit166_crit_edge: ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_request_slave_channel_compat.exit166

if.end4.i164:                                     ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i163 = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i154, ptr noundef nonnull %47, ptr noundef nonnull %49, ptr noundef null) #6
  br label %dma_request_slave_channel_compat.exit166

dma_request_slave_channel_compat.exit166:         ; preds = %if.end4.i164, %if.end.i162.dma_request_slave_channel_compat.exit166_crit_edge, %if.end40.dma_request_slave_channel_compat.exit166_crit_edge
  %retval.0.i165 = phi ptr [ %call5.i163, %if.end4.i164 ], [ %call.i.i155, %if.end40.dma_request_slave_channel_compat.exit166_crit_edge ], [ null, %if.end.i162.dma_request_slave_channel_compat.exit166_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i154)
  %54 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i165, ptr %chan_rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_sdhi_sys_dmac_request_dma, %if.then61)) #6
          to label %do.end67 [label %if.then61], !srcloc !81

if.then61:                                        ; preds = %dma_request_slave_channel_compat.exit166
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 4
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan_rx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug319, ptr noundef %dev63, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9, ptr noundef %58) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %dma_request_slave_channel_compat.exit166
  %59 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chan_rx, align 4
  %tobool69.not = icmp eq ptr %60, null
  br i1 %tobool69.not, label %do.end67.cleanup.thread184_crit_edge, label %if.end71

do.end67.cleanup.thread184_crit_edge:             ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread184

if.end71:                                         ; preds = %do.end67
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %cfg, align 4
  %62 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dst_addr, align 4
  %64 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata1, align 4
  %dma_rx_offset = getelementptr inbounds %struct.tmio_mmc_data, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %dma_rx_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_rx_offset, align 4
  %add75 = add i32 %67, %63
  %68 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add75, ptr %src_addr, align 4
  %69 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_priv, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool80.not = icmp eq i32 %70, 0
  %spec.select147 = select i1 %tobool80.not, i32 2, i32 %70
  %71 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select147, ptr %src_addr_width, align 4
  %72 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %dst_addr, align 4
  %73 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %60, align 4
  %device_config.i167 = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %device_config.i167 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device_config.i167, align 4
  %tobool.not.i168 = icmp eq ptr %76, null
  br i1 %tobool.not.i168, label %if.end71.ecfgrx_crit_edge, label %dmaengine_slave_config.exit172

if.end71.ecfgrx_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %ecfgrx

dmaengine_slave_config.exit172:                   ; preds = %if.end71
  %call.i169 = call i32 %76(ptr noundef nonnull %60, ptr noundef nonnull %cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp87 = icmp slt i32 %call.i169, 0
  br i1 %cmp87, label %dmaengine_slave_config.exit172.ecfgrx_crit_edge, label %if.end89

dmaengine_slave_config.exit172.ecfgrx_crit_edge:  ; preds = %dmaengine_slave_config.exit172
  call void @__sanitizer_cov_trace_pc() #8
  br label %ecfgrx

if.end89:                                         ; preds = %dmaengine_slave_config.exit172
  %call90 = call i32 @__get_free_pages(i32 noundef 3265, i32 noundef 0) #6
  %77 = inttoptr i32 %call90 to ptr
  %bounce_buf = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 19
  %78 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %bounce_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool92.not = icmp eq i32 %call90, 0
  br i1 %tobool92.not, label %if.end89.ecfgrx_crit_edge, label %cleanup

if.end89.ecfgrx_crit_edge:                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %ecfgrx

cleanup.thread184:                                ; preds = %do.end67.cleanup.thread184_crit_edge, %dmaengine_slave_config.exit.cleanup.thread184_crit_edge, %if.end30.cleanup.thread184_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  br label %ecfgtx

cleanup.thread187:                                ; preds = %do.end.cleanup.thread187_crit_edge, %if.then7.cleanup.thread187_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  br label %cleanup104

cleanup:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %dma_dataend = getelementptr i8, ptr %1, i32 64
  %79 = ptrtoint ptr %dma_dataend to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %dma_dataend, align 4
  %wait.i = getelementptr i8, ptr %1, i32 68
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #6
  %dma_issue = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 17
  %80 = ptrtoint ptr %host to i32
  call void @tasklet_init(ptr noundef %dma_issue, ptr noundef nonnull @renesas_sdhi_sys_dmac_issue_tasklet_fn, i32 noundef %80) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  br label %if.end99

if.end99:                                         ; preds = %cleanup, %land.lhs.true5.if.end99_crit_edge
  %81 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load ptr, ptr %chan_tx, align 4
  %tobool.not.i173 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i173, label %if.end99.cleanup104_crit_edge, label %if.end99.lor.lhs.false.i_crit_edge

if.end99.lor.lhs.false.i_crit_edge:               ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end99.cleanup104_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

lor.lhs.false.i:                                  ; preds = %if.end99.lor.lhs.false.i_crit_edge, %if.end.lor.lhs.false.i_crit_edge
  %chan_rx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %82 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chan_rx.i, align 4
  %tobool1.not.i174 = icmp eq ptr %83, null
  br i1 %tobool1.not.i174, label %lor.lhs.false.i.cleanup104_crit_edge, label %if.end.i175

lor.lhs.false.i.cleanup104_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.end.i175:                                      ; preds = %lor.lhs.false.i
  %84 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata1, align 4
  %enable2.i = getelementptr i8, ptr %85, i32 60
  %86 = ptrtoint ptr %enable2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %enable2.i, align 4
  %tobool3.not.i = icmp eq ptr %87, null
  br i1 %tobool3.not.i, label %if.end.i175.cleanup104_crit_edge, label %if.then4.i

if.end.i175.cleanup104_crit_edge:                 ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.then4.i:                                       ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  call void %87(ptr noundef %host, i1 noundef zeroext true) #6
  br label %cleanup104

ecfgrx:                                           ; preds = %if.end89.ecfgrx_crit_edge, %dmaengine_slave_config.exit172.ecfgrx_crit_edge, %if.end71.ecfgrx_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #6
  %88 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chan_rx, align 4
  call void @dma_release_channel(ptr noundef %89) #6
  %90 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %chan_rx, align 4
  br label %ecfgtx

ecfgtx:                                           ; preds = %ecfgrx, %cleanup.thread184
  %91 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chan_tx, align 4
  call void @dma_release_channel(ptr noundef %92) #6
  %93 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %chan_tx, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %ecfgtx, %if.then4.i, %if.end.i175.cleanup104_crit_edge, %lor.lhs.false.i.cleanup104_crit_edge, %if.end99.cleanup104_crit_edge, %cleanup.thread187, %lor.lhs.false.cleanup104_crit_edge, %land.lhs.true.cleanup104_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_release_dma(ptr nocapture noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chan_tx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %3 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan_rx, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %chan_rx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %4) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %bounce_buf = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 19
  %6 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bounce_buf, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %7 to i32
  tail call void @free_pages(i32 noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %bounce_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bounce_buf, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_abort_dma(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge, label %lor.lhs.false.i

entry.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit

lor.lhs.false.i:                                  ; preds = %entry
  %chan_rx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_rx.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge, label %if.end.i

lor.lhs.false.i.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %enable2.i = getelementptr i8, ptr %1, i32 60
  %6 = ptrtoint ptr %enable2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable2.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.end.i.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge, label %if.then4.i

if.end.i.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %host, i1 noundef zeroext false) #6
  br label %renesas_sdhi_sys_dmac_enable_dma.exit

renesas_sdhi_sys_dmac_enable_dma.exit:            ; preds = %if.then4.i, %if.end.i.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge, %lor.lhs.false.i.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge, %entry.renesas_sdhi_sys_dmac_enable_dma.exit_crit_edge
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %8 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_rx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %renesas_sdhi_sys_dmac_enable_dma.exit.if.end_crit_edge, label %if.then

renesas_sdhi_sys_dmac_enable_dma.exit.if.end_crit_edge: ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %renesas_sdhi_sys_dmac_enable_dma.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %13(ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i13 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i13, label %if.end.i14, label %dmaengine_terminate_async.exit.i.if.end_crit_edge

dmaengine_terminate_async.exit.i.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i14:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1169) #6
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %17, null
  br i1 %tobool.not.i1.i, label %if.end.i14.if.end_crit_edge, label %if.then.i2.i

if.end.i14.if.end_crit_edge:                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i2.i:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef nonnull %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i, %if.end.i14.if.end_crit_edge, %dmaengine_terminate_async.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %renesas_sdhi_sys_dmac_enable_dma.exit.if.end_crit_edge
  %18 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan_tx.i, align 4
  %tobool2.not = icmp eq ptr %19, null
  br i1 %tobool2.not, label %if.end.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, label %if.then3

if.end.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit35

if.then3:                                         ; preds = %if.end
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %device_terminate_all.i.i15 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %22 = ptrtoint ptr %device_terminate_all.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_terminate_all.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i16, label %if.then3.if.end6_crit_edge, label %dmaengine_terminate_async.exit.i19

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

dmaengine_terminate_async.exit.i19:               ; preds = %if.then3
  %call.i.i17 = tail call i32 %23(ptr noundef nonnull %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i18 = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i18, label %if.end.i22, label %dmaengine_terminate_async.exit.i19.if.end6_crit_edge

dmaengine_terminate_async.exit.i19.if.end6_crit_edge: ; preds = %dmaengine_terminate_async.exit.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i22:                                       ; preds = %dmaengine_terminate_async.exit.i19
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1169) #6
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %device_synchronize.i.i20 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 48
  %26 = ptrtoint ptr %device_synchronize.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_synchronize.i.i20, align 4
  %tobool.not.i1.i21 = icmp eq ptr %27, null
  br i1 %tobool.not.i1.i21, label %if.end.i22.if.end6_crit_edge, label %if.then.i2.i23

if.end.i22.if.end6_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i2.i23:                                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %27(ptr noundef nonnull %19) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.i2.i23, %if.end.i22.if.end6_crit_edge, %dmaengine_terminate_async.exit.i19.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %28 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %chan_tx.i, align 4
  %29 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i27, label %if.end6.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, label %lor.lhs.false.i30

if.end6.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit35

lor.lhs.false.i30:                                ; preds = %if.end6
  %31 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan_rx, align 4
  %tobool1.not.i29 = icmp eq ptr %32, null
  br i1 %tobool1.not.i29, label %lor.lhs.false.i30.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, label %if.end.i33

lor.lhs.false.i30.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge: ; preds = %lor.lhs.false.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit35

if.end.i33:                                       ; preds = %lor.lhs.false.i30
  %enable2.i31 = getelementptr i8, ptr %30, i32 60
  %33 = ptrtoint ptr %enable2.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable2.i31, align 4
  %tobool3.not.i32 = icmp eq ptr %34, null
  br i1 %tobool3.not.i32, label %if.end.i33.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, label %if.then4.i34

if.end.i33.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sys_dmac_enable_dma.exit35

if.then4.i34:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %34(ptr noundef %host, i1 noundef zeroext true) #6
  br label %renesas_sdhi_sys_dmac_enable_dma.exit35

renesas_sdhi_sys_dmac_enable_dma.exit35:          ; preds = %if.then4.i34, %if.end.i33.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, %lor.lhs.false.i30.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, %if.end6.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge, %if.end.renesas_sdhi_sys_dmac_enable_dma.exit35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_dataend_dma(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %dma_dataend = getelementptr i8, ptr %1, i32 64
  tail call void @complete(ptr noundef %dma_dataend) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_dma_callback(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %lock = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %data = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 16
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 15
  %chan_tx.sink = select i1 %tobool2.not, ptr %chan_tx, ptr %chan_rx
  %.sink27 = select i1 %tobool2.not, i32 1, i32 2
  %6 = ptrtoint ptr %chan_tx.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_tx.sink, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev5 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %sg_ptr6 = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 7
  %12 = ptrtoint ptr %sg_ptr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_ptr6, align 4
  %sg_len7 = getelementptr inbounds %struct.tmio_mmc_host, ptr %arg, i32 0, i32 9
  %14 = ptrtoint ptr %sg_len7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len7, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %.sink27, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %dma_dataend = getelementptr i8, ptr %1, i32 64
  tail call void @wait_for_completion(ptr noundef %dma_dataend) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  tail call void @tmio_mmc_do_data_irq(ptr noundef %arg) #6
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_do_data_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_sys_dmac_issue_tasklet_fn(i32 noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %priv to ptr
  %lock = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %data = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 15
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 16
  %chan_rx.sink = select i1 %tobool2.not, ptr %chan_tx, ptr %chan_rx
  %5 = ptrtoint ptr %chan_rx.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_rx.sink, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %chan.0 = phi ptr [ null, %entry.if.end4_crit_edge ], [ %6, %if.then ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %0, i32 noundef 4) #6
  %tobool6.not = icmp eq ptr %chan.0, null
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 50
  %9 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %10(ptr noundef nonnull %chan.0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_enable_mmc_irqs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_renesas_sdhi_sys_dmac__320_477_renesas_sys_dmac_sdhi_driver_init6, !1, !"__initcall__kmod_renesas_sdhi_sys_dmac__320_477_renesas_sys_dmac_sdhi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 477, i32 1}
!2 = !{ptr @__exitcall_renesas_sys_dmac_sdhi_driver_exit, !1, !"__exitcall_renesas_sys_dmac_sdhi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 479, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias325, !11, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 482, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 468, i32 11}
!14 = !{ptr @renesas_sys_dmac_sdhi_driver, !15, !"renesas_sys_dmac_sdhi_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 466, i32 31}
!16 = !{ptr @renesas_sdhi_sys_dmac_dma_ops, !17, !"renesas_sdhi_sys_dmac_dma_ops", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 443, i32 38}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 221, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @renesas_sdhi_sys_dmac_start_dma_rx._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @renesas_sdhi_sys_dmac_start_dma_rx._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 298, i32 3}
!28 = !{ptr @renesas_sdhi_sys_dmac_start_dma_tx._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @renesas_sdhi_sys_dmac_start_dma_tx._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 362, i32 24}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 363, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug318, !33, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 382, i32 24}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 383, i32 3}
!41 = !{ptr @renesas_sdhi_sys_dmac_request_dma.__UNIQUE_ID_ddebug319, !40, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!47 = !{ptr @renesas_sdhi_sys_dmac_of_match, !48, !"renesas_sdhi_sys_dmac_of_match", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 73, i32 34}
!49 = !{ptr @of_default_cfg, !50, !"of_default_cfg", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 28, i32 42}
!51 = !{ptr @of_rz_compatible, !52, !"of_rz_compatible", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 32, i32 42}
!53 = !{ptr @of_rcar_gen1_compatible, !54, !"of_rcar_gen1_compatible", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 40, i32 42}
!55 = !{ptr @of_rcar_gen2_compatible, !56, !"of_rcar_gen2_compatible", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 59, i32 42}
!57 = !{ptr @rcar_gen2_scc_taps, !58, !"rcar_gen2_scc_taps", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 48, i32 32}
!59 = !{ptr @renesas_sdhi_sys_dmac_dev_pm_ops, !60, !"renesas_sdhi_sys_dmac_dev_pm_ops", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/renesas_sdhi_sys_dmac.c", i32 458, i32 32}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 869825, i64 869886}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2153789916, i64 2153790408, i64 2153789953, i64 2153790009, i64 2153790043, i64 2153790067, i64 2153790108, i64 2153790129, i64 2153790157, i64 2153790191}
!74 = !{i64 2155562833}
!75 = !{i64 2153226925}
!76 = !{i64 2153227132}
!77 = !{i64 2155569665}
!78 = !{i64 872557}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 872842}
!81 = !{i64 2148288960, i64 2148288965, i64 2148288978, i64 2148289022, i64 2148289056, i64 2148289077}
