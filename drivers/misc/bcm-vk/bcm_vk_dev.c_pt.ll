; ModuleID = '/llk/IR_all_yes/drivers/misc/bcm-vk/bcm_vk_dev.c_pt.bc'
source_filename = "../drivers/misc/bcm-vk/bcm_vk_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.bcm_vk_entry = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.load_image_entry = type { i32, [2 x ptr] }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.bcm_vk = type { ptr, [3 x ptr], i32, %struct.bcm_vk_card_info, %struct.bcm_vk_proc_mon_info, %struct.bcm_vk_dauth_info, %struct.mutex, %struct.miscdevice, i32, ptr, %struct.timer_list, [2 x %struct.bcm_vk_tty], ptr, %struct.work_struct, %struct.kref, %struct.spinlock, i16, [128 x i32], %struct.spinlock, [160 x %struct.bcm_vk_ctx], [128 x %struct.bcm_vk_ht_entry], i32, %struct.atomic_t, %struct.bcm_vk_msg_chan, %struct.bcm_vk_msg_chan, ptr, %struct.work_struct, [1 x i32], ptr, i32, %struct.notifier_block, i32, %struct.bcm_vk_hb_ctrl, %struct.spinlock, %struct.bcm_vk_alert, %struct.bcm_vk_alert, %struct.bcm_vk_alert_cnts, i32, %struct.bcm_vk_peer_log, i32 }
%struct.bcm_vk_card_info = type { i32, [64 x i8], [64 x i8], i32, [3 x i32], i32, i32, i32 }
%struct.bcm_vk_proc_mon_info = type { i32, i32, [8 x %struct.bcm_vk_proc_mon_entry_t] }
%struct.bcm_vk_proc_mon_entry_t = type { [8 x i8], i32, i32 }
%struct.bcm_vk_dauth_info = type { [4 x %struct.bcm_vk_dauth_key] }
%struct.bcm_vk_dauth_key = type { [72 x i8], [8 x i8] }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.bcm_vk_tty = type { %struct.tty_port, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.bcm_vk_ctx = type { %struct.list_head, i32, i8, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head }
%struct.bcm_vk_ht_entry = type { %struct.list_head }
%struct.bcm_vk_msg_chan = type { i32, %struct.mutex, [4 x ptr], %struct.spinlock, [4 x %struct.list_head], [4 x %struct.bcm_vk_sync_qinfo] }
%struct.bcm_vk_sync_qinfo = type { ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bcm_vk_hb_ctrl = type { %struct.timer_list, i32, i32 }
%struct.bcm_vk_alert = type { i16, i16 }
%struct.bcm_vk_alert_cnts = type { i16, i16 }
%struct.bcm_vk_peer_log = type { i32, i32, i32, i32, [0 x i8] }
%struct.vk_reset = type { i32, i32 }
%struct.vk_image = type { i32, [64 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__param_str_auto_load = internal constant [17 x i8] c"bcm_vk.auto_load\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@auto_load = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_auto_load = internal constant %struct.kernel_param { ptr @__param_str_auto_load, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @auto_load } }, section "__param", align 4
@__UNIQUE_ID_auto_loadtype236 = internal constant [31 x i8] c"bcm_vk.parmtype=auto_load:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_load237 = internal constant [69 x i8] c"bcm_vk.parm=auto_load:Load images automatically at PCIe probe time.\0A\00", section ".modinfo", align 1
@__param_str_nr_scratch_pages = internal constant [24 x i8] c"bcm_vk.nr_scratch_pages\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@nr_scratch_pages = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_nr_scratch_pages = internal constant %struct.kernel_param { ptr @__param_str_nr_scratch_pages, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @nr_scratch_pages } }, section "__param", align 4
@__UNIQUE_ID_nr_scratch_pagestype238 = internal constant [38 x i8] c"bcm_vk.parmtype=nr_scratch_pages:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_scratch_pages239 = internal constant [78 x i8] c"bcm_vk.parm=nr_scratch_pages:Number of pre allocated DMAable coherent pages.\0A\00", section ".modinfo", align 1
@__param_str_nr_ib_sgl_blk = internal constant [21 x i8] c"bcm_vk.nr_ib_sgl_blk\00", align 1
@nr_ib_sgl_blk = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_nr_ib_sgl_blk = internal constant %struct.kernel_param { ptr @__param_str_nr_ib_sgl_blk, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @nr_ib_sgl_blk } }, section "__param", align 4
@__UNIQUE_ID_nr_ib_sgl_blktype240 = internal constant [35 x i8] c"bcm_vk.parmtype=nr_ib_sgl_blk:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_ib_sgl_blk241 = internal constant [69 x i8] c"bcm_vk.parm=nr_ib_sgl_blk:Number of in-band msg blks for short SGL.\0A\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uecc\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssim_busy\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afbc_busy\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"high_temp\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wdog_timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_fault\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ramdump\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cop_wdog_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"malloc_fail warn\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"low_temp warn\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecc\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipc_down\00", [23 x i8] zeroinitializer }, align 32
@bcm_vk_peer_err = dso_local constant { [12 x %struct.bcm_vk_entry], [48 x i8] } { [12 x %struct.bcm_vk_entry] [%struct.bcm_vk_entry { i32 1, i32 1, ptr @.str }, %struct.bcm_vk_entry { i32 2, i32 2, ptr @.str.1 }, %struct.bcm_vk_entry { i32 4, i32 4, ptr @.str.2 }, %struct.bcm_vk_entry { i32 8, i32 8, ptr @.str.3 }, %struct.bcm_vk_entry { i32 16, i32 16, ptr @.str.4 }, %struct.bcm_vk_entry { i32 32, i32 32, ptr @.str.5 }, %struct.bcm_vk_entry { i32 64, i32 64, ptr @.str.6 }, %struct.bcm_vk_entry { i32 128, i32 128, ptr @.str.7 }, %struct.bcm_vk_entry { i32 256, i32 256, ptr @.str.8 }, %struct.bcm_vk_entry { i32 512, i32 512, ptr @.str.9 }, %struct.bcm_vk_entry { i32 1024, i32 1024, ptr @.str.10 }, %struct.bcm_vk_entry { i32 2048, i32 2048, ptr @.str.11 }], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCIe_down\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hb_fail\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intf_ver_fail\00", [18 x i8] zeroinitializer }, align 32
@bcm_vk_host_err = dso_local constant { [3 x %struct.bcm_vk_entry], [60 x i8] } { [3 x %struct.bcm_vk_entry] [%struct.bcm_vk_entry { i32 32768, i32 32768, ptr @.str.12 }, %struct.bcm_vk_entry { i32 16384, i32 16384, ptr @.str.13 }, %struct.bcm_vk_entry { i32 8192, i32 8192, ptr @.str.14 }], [60 x i8] zeroinitializer }, align 32
@bcm_vk_notf_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 144, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Interrupt %d received when msgq not inited\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_vk_notf_irqhandler\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/misc/bcm-vk/bcm_vk_dev.c\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_vk_notf_irqhandler._entry_ptr = internal global ptr @bcm_vk_notf_irqhandler._entry, section ".printk_index", align 4
@bcm_vk_blk_drv_access.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.17, ptr @.str.22, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcm_vk\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm_vk_blk_drv_access\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Send kill signal to pid %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm_vk_auto_load_all_images.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.17, ptr @.str.24, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm_vk_auto_load_all_images\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Load All for device %d\0A\00", [40 x i8] zeroinitializer }, align 32
@image_tab = internal constant { [3 x [2 x %struct.load_image_entry]], [56 x i8] } { [3 x [2 x %struct.load_image_entry]] [[2 x %struct.load_image_entry] [%struct.load_image_entry { i32 1, [2 x ptr] [ptr @.str.63, ptr @.str.64] }, %struct.load_image_entry { i32 2, [2 x ptr] [ptr @.str.65, ptr @.str.66] }], [2 x %struct.load_image_entry] [%struct.load_image_entry { i32 1, [2 x ptr] [ptr @.str.67, ptr @.str.64] }, %struct.load_image_entry { i32 2, [2 x ptr] [ptr @.str.68, ptr @.str.66] }], [2 x %struct.load_image_entry] [%struct.load_image_entry { i32 1, [2 x ptr] [ptr @.str.69, ptr @.str.70] }, %struct.load_image_entry { i32 2, [2 x ptr] [ptr @.str.71, ptr @.str.70] }]], [56 x i8] zeroinitializer }, align 32
@bcm_vk_auto_load_all_images._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.17, i32 878, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No suitable firmware exists for type %d\00", [56 x i8] zeroinitializer }, align 32
@bcm_vk_auto_load_all_images._entry_ptr = internal global ptr @bcm_vk_auto_load_all_images._entry, section ".printk_index", align 4
@bcm_vk_auto_load_all_images._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.17, i32 885, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Auto load %s, ret %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm_vk_auto_load_all_images._entry_ptr.29 = internal global ptr @bcm_vk_auto_load_all_images._entry.26, section ".printk_index", align 4
@bcm_vk_auto_load_all_images._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.17, i32 889, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error loading default %s\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_vk_auto_load_all_images._entry_ptr.32 = internal global ptr @bcm_vk_auto_load_all_images._entry.30, section ".printk_index", align 4
@bcm_vk_release_data.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.33, ptr @.str.17, ptr @.str.34, i8 1, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_vk_release_data\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BCM-VK:%d release data 0x%p\0A\00", [35 x i8] zeroinitializer }, align 32
@__initcall__kmod_bcm_vk__260_1648_pci_driver_init6 = internal global ptr @pci_driver_init, section ".initcall6.init", align 4
@pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.39, ptr @bcm_vk_ids, ptr @bcm_vk_probe, ptr @bcm_vk_remove, ptr null, ptr null, ptr @bcm_vk_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci_driver_exit = internal global ptr @pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description261 = internal constant [43 x i8] c"bcm_vk.description=Broadcom VK Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [57 x i8] c"bcm_vk.author=Scott Branden <scott.branden@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [39 x i8] c"bcm_vk.file=drivers/misc/bcm-vk/bcm_vk\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [22 x i8] c"bcm_vk.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version265 = internal constant [19 x i8] c"bcm_vk.version=1.0\00", section ".modinfo", align 1
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.20, ptr @.str.36 }, section "__modver", align 4
@bcm_vk_log_notf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.17, i32 220, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ALERT! %s.%d uecc RAISED - ErrCnt %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk_log_notf\00", [16 x i8] zeroinitializer }, align 32
@bcm_vk_log_notf._entry_ptr = internal global ptr @bcm_vk_log_notf._entry, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcm-vk\00", [25 x i8] zeroinitializer }, align 32
@bcm_vk_log_notf._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.17, i32 231, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ALERT! %s.%d ecc RAISED - ErrCnt %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_log_notf._entry_ptr.42 = internal global ptr @bcm_vk_log_notf._entry.40, section ".printk_index", align 4
@bcm_vk_log_notf._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.38, ptr @.str.17, i32 237, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALERT! %s.%d %s %s\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm_vk_log_notf._entry_ptr.45 = internal global ptr @bcm_vk_log_notf._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAISED\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLEARED\00", [24 x i8] zeroinitializer }, align 32
@bcm_vk_dump_peer_log.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.48, ptr @.str.17, ptr @.str.49, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_vk_dump_peer_log\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Peer PANIC: Size 0x%x(0x%x), [Rd Wr] = [%d %d]\0A\00", [48 x i8] zeroinitializer }, align 32
@bcm_vk_dump_peer_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.17, i32 257, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Peer log dump disabled - skipped!\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm_vk_dump_peer_log._entry_ptr = internal global ptr @bcm_vk_dump_peer_log._entry, section ".printk_index", align 4
@bcm_vk_dump_peer_log._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.48, ptr @.str.17, i32 270, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Corrupted Ptrs: Size 0x%x(0x%x) Mask 0x%x(0x%x) [Rd Wr] = [%d %d], skip log dump.\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm_vk_dump_peer_log._entry_ptr.53 = internal global ptr @bcm_vk_dump_peer_log._entry.51, section ".printk_index", align 4
@bcm_vk_dump_peer_log._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.17, i32 282, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@bcm_vk_dump_peer_log._entry_ptr.56 = internal global ptr @bcm_vk_dump_peer_log._entry.54, section ".printk_index", align 4
@get_soc_idx.vk_soc_tab = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@get_soc_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.17, i32 820, ptr @.str.59, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Rev %d not in image lookup table, default to idx=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_soc_idx\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@get_soc_idx._entry_ptr = internal global ptr @get_soc_idx._entry, section ".printk_index", align 4
@get_soc_idx._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.17, i32 829, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no images for 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@get_soc_idx._entry_ptr.62 = internal global ptr @get_soc_idx._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vk_a0-boot1.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vk-boot1.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vk_a0-boot2.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vk-boot2.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vk_b0-boot1.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vk_b0-boot2.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vp-boot1.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vp-boot2.bin\00", [19 x i8] zeroinitializer }, align 32
@bcm_vk_next_boot_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.17, i32 797, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"boot-status value for next image: 0x%x : fw-status 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_vk_next_boot_image\00", [41 x i8] zeroinitializer }, align 32
@bcm_vk_next_boot_image._entry_ptr = internal global ptr @bcm_vk_next_boot_image._entry, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.17, i32 577, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"boot1 wait SRAM err - ret(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_vk_load_image_by_type\00", [38 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr = internal global ptr @bcm_vk_load_image_by_type._entry, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.17, i32 586, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error allocating 0x%zx\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.78 = internal global ptr @bcm_vk_load_image_by_type._entry.76, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.17, i32 599, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"boot2 wait DDR open error - ret(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.81 = internal global ptr @bcm_vk_load_image_by_type._entry.79, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.17, i32 608, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.83 = internal global ptr @bcm_vk_load_image_by_type._entry.82, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.75, ptr @.str.17, i32 615, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error invalid image type 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.86 = internal global ptr @bcm_vk_load_image_by_type._entry.84, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.75, ptr @.str.17, i32 625, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d requesting firmware file: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.89 = internal global ptr @bcm_vk_load_image_by_type._entry.87, section ".printk_index", align 4
@bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.17, ptr @.str.90, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"size=0x%zx\0A\00", [20 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.17, ptr @.str.91, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Signaling 0x%x to 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.75, ptr @.str.17, i32 652, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Timeout %ld ms waiting for boot1 to come up - ret(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.94 = internal global ptr @bcm_vk_load_image_by_type._entry.92, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.75, ptr @.str.17, i32 660, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Boot1 standalone success\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.97 = internal global ptr @bcm_vk_load_image_by_type._entry.95, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.75, ptr @.str.17, i32 664, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Timeout %ld ms - Boot1 standalone failure\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.100 = internal global ptr @bcm_vk_load_image_by_type._entry.98, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.17, ptr @.str.101, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Exit boot2 download\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.75, ptr @.str.17, i32 689, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error detected during ACK waiting\00", [62 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.104 = internal global ptr @bcm_vk_load_image_by_type._entry.102, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.75, ptr @.str.17, i32 695, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error. No reply from card\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.107 = internal global ptr @bcm_vk_load_image_by_type._entry.105, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.75, ptr @.str.17, i32 715, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Error %d requesting firmware file: %s offset: 0x%zx\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.110 = internal global ptr @bcm_vk_load_image_by_type._entry.108, section ".printk_index", align 4
@bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.17, ptr @.str.90, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.17, ptr @.str.91, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@bcm_vk_load_image_by_type._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.75, ptr @.str.17, i32 726, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error detected waiting for transfer\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.113 = internal global ptr @bcm_vk_load_image_by_type._entry.111, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.75, ptr @.str.17, i32 737, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Boot2 not ready - ret(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.116 = internal global ptr @bcm_vk_load_image_by_type._entry.114, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.75, ptr @.str.17, i32 746, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failure in intf version check\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.119 = internal global ptr @bcm_vk_load_image_by_type._entry.117, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.75, ptr @.str.17, i32 756, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Boot2 Error reading comm msg Q info\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.122 = internal global ptr @bcm_vk_load_image_by_type._entry.120, section ".printk_index", align 4
@bcm_vk_load_image_by_type._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.75, ptr @.str.17, i32 764, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Syncing Card Info failure\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_load_image_by_type._entry_ptr.125 = internal global ptr @bcm_vk_load_image_by_type._entry.123, section ".printk_index", align 4
@bcm_vk_wait.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.126, ptr @.str.17, ptr @.str.127, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm_vk_wait\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BAR%d Offset=0x%llx: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.17, i32 360, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Boot Err 0x%x, progress 0x%x after %d ms\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm_vk_wait._entry_ptr = internal global ptr @bcm_vk_wait._entry, section ".printk_index", align 4
@bcm_vk_intf_ver_chk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.17, i32 174, ptr @.str.59, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Pre-release major.minor=%d.%d - drv %d.%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_vk_intf_ver_chk\00", [44 x i8] zeroinitializer }, align 32
@bcm_vk_intf_ver_chk._entry_ptr = internal global ptr @bcm_vk_intf_ver_chk._entry, section ".printk_index", align 4
@bcm_vk_intf_ver_chk._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.17, i32 178, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Intf major.minor=%d.%d rejected - drv %d.%d\0A\00", [51 x i8] zeroinitializer }, align 32
@bcm_vk_intf_ver_chk._entry_ptr.133 = internal global ptr @bcm_vk_intf_ver_chk._entry.131, section ".printk_index", align 4
@bcm_vk_intf_ver_chk.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.130, ptr @.str.17, ptr @.str.134, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Intf major.minor=%d.%d passed - drv %d.%d\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_get_card_info.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.135, ptr @.str.17, ptr @.str.136, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_vk_get_card_info\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"version   : %x\0Aos_tag    : %s\0Acmpt_tag  : %s\0Acpu_freq  : %d MHz\0Acpu_scale : %d full, %d lowest\0Addr_freq  : %d MHz\0Addr_size  : %d MB\0Avideo_freq: %d MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_get_card_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.17, i32 426, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Peer log disabled - range error: Size 0x%x(0x%x), [Rd Wr] = [%d %d]\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_get_card_info._entry_ptr = internal global ptr @bcm_vk_get_card_info._entry, section ".printk_index", align 4
@bcm_vk_get_card_info.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.135, ptr @.str.17, ptr @.str.138, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Peer log: Size 0x%x(0x%x), [Rd Wr] = [%d %d]\0A\00", [50 x i8] zeroinitializer }, align 32
@bcm_vk_get_proc_mon_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.17, i32 458, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Processing monitoring entry %d exceeds max %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_vk_get_proc_mon_info\00", [39 x i8] zeroinitializer }, align 32
@bcm_vk_get_proc_mon_info._entry_ptr = internal global ptr @bcm_vk_get_proc_mon_info._entry, section ".printk_index", align 4
@bcm_vk_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5348, i32 24199, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 24200, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.17, i32 1299, ptr @.str.59, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Inband SGL blk %d limited to max %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_vk_probe\00", [19 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr = internal global ptr @bcm_vk_probe._entry, section ".printk_index", align 4
@bcm_vk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vk->mutex\00", [21 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.142, ptr @.str.17, i32 1307, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.146 = internal global ptr @bcm_vk_probe._entry.144, section ".printk_index", align 4
@bcm_vk_probe._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.142, ptr @.str.17, i32 1314, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.149 = internal global ptr @bcm_vk_probe._entry.147, section ".printk_index", align 4
@bcm_vk_probe._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.142, ptr @.str.17, i32 1322, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.152 = internal global ptr @bcm_vk_probe._entry.150, section ".printk_index", align 4
@bcm_vk_probe._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.142, ptr @.str.17, i32 1348, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to get min %d MSIX interrupts, irq(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.155 = internal global ptr @bcm_vk_probe._entry.153, section ".printk_index", align 4
@bcm_vk_probe._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.142, ptr @.str.17, i32 1355, ptr @.str.59, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Number of IRQs %d allocated - requested(%d).\0A\00", [50 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.158 = internal global ptr @bcm_vk_probe._entry.156, section ".printk_index", align 4
@bcm_vk_probe._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.142, ptr @.str.17, i32 1361, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to remap BAR%d\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.161 = internal global ptr @bcm_vk_probe._entry.159, section ".printk_index", align 4
@bcm_vk_probe._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.142, ptr @.str.17, i32 1375, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to request msgq IRQ %d for MSIX %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.164 = internal global ptr @bcm_vk_probe._entry.162, section ".printk_index", align 4
@bcm_vk_probe._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.142, ptr @.str.17, i32 1385, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to request notf IRQ %d for MSIX %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.167 = internal global ptr @bcm_vk_probe._entry.165, section ".printk_index", align 4
@bcm_vk_probe._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.142, ptr @.str.17, i32 1398, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed request tty IRQ %d for MSIX %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.170 = internal global ptr @bcm_vk_probe._entry.168, section ".printk_index", align 4
@bcm_vk_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.194, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.142, ptr @.str.17, i32 1407, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unable to get id\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.173 = internal global ptr @bcm_vk_probe._entry.171, section ".printk_index", align 4
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm-vk.%d\00", [22 x i8] zeroinitializer }, align 32
@bcm_vk_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @bcm_vk_read, ptr @bcm_vk_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_vk_poll, ptr @bcm_vk_ioctl, ptr null, ptr @bcm_vk_mmap, i32 0, ptr @bcm_vk_open, ptr null, ptr @bcm_vk_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.142, ptr @.str.17, i32 1424, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.177 = internal global ptr @bcm_vk_probe._entry.175, section ".printk_index", align 4
@bcm_vk_probe.__key.178 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&vk->wq_work)\00", [32 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.142, ptr @.str.17, i32 1433, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fail to create workqueue thread\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.182 = internal global ptr @bcm_vk_probe._entry.180, section ".printk_index", align 4
@bcm_vk_probe._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.142, ptr @.str.17, i32 1440, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init msg queue info\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.185 = internal global ptr @bcm_vk_probe._entry.183, section ".printk_index", align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@bcm_vk_probe._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.142, ptr @.str.17, i32 1452, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fail to register panic notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.188 = internal global ptr @bcm_vk_probe._entry.186, section ".printk_index", align 4
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk.%d_ttyVK\00", [16 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.142, ptr @.str.17, i32 1474, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Auto-load skipped - BROM not in proper state (0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_vk_probe._entry_ptr.192 = internal global ptr @bcm_vk_probe._entry.190, section ".printk_index", align 4
@bcm_vk_probe.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.142, ptr @.str.17, ptr @.str.193, i8 1, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BCM-VK:%u created\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_vk_ida.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@bcm_vk_ioctl.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.195, ptr @.str.17, ptr @.str.196, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_vk_ioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ioctl, cmd=0x%02x, arg=0x%02lx\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm_vk_load_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.17, i32 961, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid image.type %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_vk_load_image\00", [46 x i8] zeroinitializer }, align 32
@bcm_vk_load_image._entry_ptr = internal global ptr @bcm_vk_load_image._entry, section ".printk_index", align 4
@bcm_vk_load_image._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.17, i32 968, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Next expected image %u, Loading %u\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm_vk_load_image._entry_ptr.201 = internal global ptr @bcm_vk_load_image._entry.199, section ".printk_index", align 4
@bcm_vk_load_image._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.198, ptr @.str.17, i32 978, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Download operation already pending.\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_load_image._entry_ptr.204 = internal global ptr @bcm_vk_load_image._entry.202, section ".printk_index", align 4
@bcm_vk_load_image._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.198, ptr @.str.17, i32 994, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No suitable image found for type %d\00", [60 x i8] zeroinitializer }, align 32
@bcm_vk_load_image._entry_ptr.207 = internal global ptr @bcm_vk_load_image._entry.205, section ".printk_index", align 4
@bcm_vk_load_image._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.198, ptr @.str.17, i32 1003, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Load %s, ret %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bcm_vk_load_image._entry_ptr.210 = internal global ptr @bcm_vk_load_image._entry.208, section ".printk_index", align 4
@.str.213 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.17, i32 1152, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Download operation pending - skip reset.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_vk_reset\00", [19 x i8] zeroinitializer }, align 32
@bcm_vk_reset._entry_ptr = internal global ptr @bcm_vk_reset._entry, section ".printk_index", align 4
@bcm_vk_reset._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.17, i32 1158, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Issue Reset %s\0A\00", [16 x i8] zeroinitializer }, align 32
@bcm_vk_reset._entry_ptr.218 = internal global ptr @bcm_vk_reset._entry.216, section ".printk_index", align 4
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"in ramdump mode\00", [16 x i8] zeroinitializer }, align 32
@bcm_vk_reset._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.215, ptr @.str.17, i32 1174, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Reset already launched by process pid %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm_vk_reset._entry_ptr.222 = internal global ptr @bcm_vk_reset._entry.220, section ".printk_index", align 4
@bcm_vk_trigger_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.17, i32 1099, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Card in boot error 0x%x, clear CODEPUSH val\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_vk_trigger_reset\00", [43 x i8] zeroinitializer }, align 32
@bcm_vk_trigger_reset._entry_ptr = internal global ptr @bcm_vk_trigger_reset._entry, section ".printk_index", align 4
@bcm_vk_trigger_reset._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.224, ptr @.str.17, i32 1119, ptr @.str.28, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Hard reset on Standalone mode\00", [34 x i8] zeroinitializer }, align 32
@bcm_vk_trigger_reset._entry_ptr.227 = internal global ptr @bcm_vk_trigger_reset._entry.225, section ".printk_index", align 4
@bcm_vk_reset_successful._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.17, i32 1030, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCIe Intf Down!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_vk_reset_successful\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_reset_successful._entry_ptr = internal global ptr @bcm_vk_reset_successful._entry, section ".printk_index", align 4
@bcm_vk_reset_successful.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.229, ptr @.str.17, ptr @.str.230, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW status = 0x%x ret %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm_vk_wq_handler.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.231, ptr @.str.17, ptr @.str.232, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.231 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_vk_wq_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Spurious trigger for workqueue\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm_vk_remove.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.233, ptr @.str.17, ptr @.str.234, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_vk_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BCM-VK:%d released\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 1024]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 16, i64 24199, i64 24200]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967282]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967282]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 65538, i64 131078]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 1074290180, i64 1078222338]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 16, i64 24199, i64 24200]
@___asan_gen_.241 = private unnamed_addr constant [10 x i8] c"auto_load\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 99, i32 13 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"nr_scratch_pages\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 103, i32 13 }
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"nr_ib_sgl_blk\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 107, i32 13 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 116, i32 31 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 117, i32 41 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 118, i32 41 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 119, i32 49 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 120, i32 47 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 121, i32 41 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 122, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 124, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 125, i32 51 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 126, i32 49 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 127, i32 29 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 128, i32 37 }
@___asan_gen_.286 = private unnamed_addr constant [16 x i8] c"bcm_vk_peer_err\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 115, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 133, i32 49 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 134, i32 47 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 135, i32 55 }
@___asan_gen_.298 = private unnamed_addr constant [16 x i8] c"bcm_vk_host_err\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 132, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 143, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 522, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 870, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [10 x i8] c"image_tab\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 47, i32 38 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 877, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 884, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 888, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1539, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [11 x i8] c"pci_driver\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1641, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1653, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 217, i32 5 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 229, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 235, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 253, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 257, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 266, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 282, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant [11 x i8] c"vk_soc_tab\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 807, i32 28 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 818, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 829, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 49, i32 26 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 49, i32 45 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 50, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 50, i32 45 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 53, i32 26 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 54, i32 26 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 58, i32 26 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 58, i32 42 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 59, i32 26 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 795, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 577, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 586, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 598, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 608, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 615, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 624, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 628, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 634, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 650, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 660, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 663, i32 5 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 686, i32 5 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 689, i32 5 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 695, i32 5 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 713, i32 6 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 726, i32 5 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 737, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 746, i32 5 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 756, i32 5 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 764, i32 5 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 351, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 357, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 173, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 176, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 182, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 399, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 422, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 429, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 457, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant [11 x i8] c"bcm_vk_ids\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1634, i32 35 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1298, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1303, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1307, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1314, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1322, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1347, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1354, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1361, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1374, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1384, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1397, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant [11 x i8] c"bcm_vk_ida\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1407, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1412, i32 31 }
@___asan_gen_.733 = private unnamed_addr constant [12 x i8] c"bcm_vk_fops\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1258, i32 37 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1424, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1428, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1433, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1440, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1452, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1456, i32 31 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1472, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1481, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 25, i32 8 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1234, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 961, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 967, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 978, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 993, i32 4 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1003, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 156, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1152, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1157, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1173, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1097, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1119, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1030, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1048, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 940, i32 3 }
@___asan_gen_.883 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.884 = private constant [36 x i8] c"../drivers/misc/bcm-vk/bcm_vk_dev.c\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.884, i32 1593, i32 2 }
@llvm.compiler.used = appending global [295 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_auto_load237, ptr @__UNIQUE_ID_auto_loadtype236, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__UNIQUE_ID_nr_ib_sgl_blk241, ptr @__UNIQUE_ID_nr_ib_sgl_blktype240, ptr @__UNIQUE_ID_nr_scratch_pages239, ptr @__UNIQUE_ID_nr_scratch_pagestype238, ptr @__UNIQUE_ID_version265, ptr @__exitcall_pci_driver_exit, ptr @__initcall__kmod_bcm_vk__260_1648_pci_driver_init6, ptr @__modver_attr, ptr @__param_auto_load, ptr @__param_nr_ib_sgl_blk, ptr @__param_nr_scratch_pages, ptr @bcm_vk_auto_load_all_images._entry, ptr @bcm_vk_auto_load_all_images._entry.26, ptr @bcm_vk_auto_load_all_images._entry.30, ptr @bcm_vk_auto_load_all_images._entry_ptr, ptr @bcm_vk_auto_load_all_images._entry_ptr.29, ptr @bcm_vk_auto_load_all_images._entry_ptr.32, ptr @bcm_vk_dump_peer_log._entry, ptr @bcm_vk_dump_peer_log._entry.51, ptr @bcm_vk_dump_peer_log._entry.54, ptr @bcm_vk_dump_peer_log._entry_ptr, ptr @bcm_vk_dump_peer_log._entry_ptr.53, ptr @bcm_vk_dump_peer_log._entry_ptr.56, ptr @bcm_vk_get_card_info._entry, ptr @bcm_vk_get_card_info._entry_ptr, ptr @bcm_vk_get_proc_mon_info._entry, ptr @bcm_vk_get_proc_mon_info._entry_ptr, ptr @bcm_vk_intf_ver_chk._entry, ptr @bcm_vk_intf_ver_chk._entry.131, ptr @bcm_vk_intf_ver_chk._entry_ptr, ptr @bcm_vk_intf_ver_chk._entry_ptr.133, ptr @bcm_vk_load_image._entry, ptr @bcm_vk_load_image._entry.199, ptr @bcm_vk_load_image._entry.202, ptr @bcm_vk_load_image._entry.205, ptr @bcm_vk_load_image._entry.208, ptr @bcm_vk_load_image._entry_ptr, ptr @bcm_vk_load_image._entry_ptr.201, ptr @bcm_vk_load_image._entry_ptr.204, ptr @bcm_vk_load_image._entry_ptr.207, ptr @bcm_vk_load_image._entry_ptr.210, ptr @bcm_vk_load_image_by_type._entry, ptr @bcm_vk_load_image_by_type._entry.102, ptr @bcm_vk_load_image_by_type._entry.105, ptr @bcm_vk_load_image_by_type._entry.108, ptr @bcm_vk_load_image_by_type._entry.111, ptr @bcm_vk_load_image_by_type._entry.114, ptr @bcm_vk_load_image_by_type._entry.117, ptr @bcm_vk_load_image_by_type._entry.120, ptr @bcm_vk_load_image_by_type._entry.123, ptr @bcm_vk_load_image_by_type._entry.76, ptr @bcm_vk_load_image_by_type._entry.79, ptr @bcm_vk_load_image_by_type._entry.82, ptr @bcm_vk_load_image_by_type._entry.84, ptr @bcm_vk_load_image_by_type._entry.87, ptr @bcm_vk_load_image_by_type._entry.92, ptr @bcm_vk_load_image_by_type._entry.95, ptr @bcm_vk_load_image_by_type._entry.98, ptr @bcm_vk_load_image_by_type._entry_ptr, ptr @bcm_vk_load_image_by_type._entry_ptr.100, ptr @bcm_vk_load_image_by_type._entry_ptr.104, ptr @bcm_vk_load_image_by_type._entry_ptr.107, ptr @bcm_vk_load_image_by_type._entry_ptr.110, ptr @bcm_vk_load_image_by_type._entry_ptr.113, ptr @bcm_vk_load_image_by_type._entry_ptr.116, ptr @bcm_vk_load_image_by_type._entry_ptr.119, ptr @bcm_vk_load_image_by_type._entry_ptr.122, ptr @bcm_vk_load_image_by_type._entry_ptr.125, ptr @bcm_vk_load_image_by_type._entry_ptr.78, ptr @bcm_vk_load_image_by_type._entry_ptr.81, ptr @bcm_vk_load_image_by_type._entry_ptr.83, ptr @bcm_vk_load_image_by_type._entry_ptr.86, ptr @bcm_vk_load_image_by_type._entry_ptr.89, ptr @bcm_vk_load_image_by_type._entry_ptr.94, ptr @bcm_vk_load_image_by_type._entry_ptr.97, ptr @bcm_vk_log_notf._entry, ptr @bcm_vk_log_notf._entry.40, ptr @bcm_vk_log_notf._entry.43, ptr @bcm_vk_log_notf._entry_ptr, ptr @bcm_vk_log_notf._entry_ptr.42, ptr @bcm_vk_log_notf._entry_ptr.45, ptr @bcm_vk_next_boot_image._entry, ptr @bcm_vk_next_boot_image._entry_ptr, ptr @bcm_vk_notf_irqhandler._entry, ptr @bcm_vk_notf_irqhandler._entry_ptr, ptr @bcm_vk_probe._entry, ptr @bcm_vk_probe._entry.144, ptr @bcm_vk_probe._entry.147, ptr @bcm_vk_probe._entry.150, ptr @bcm_vk_probe._entry.153, ptr @bcm_vk_probe._entry.156, ptr @bcm_vk_probe._entry.159, ptr @bcm_vk_probe._entry.162, ptr @bcm_vk_probe._entry.165, ptr @bcm_vk_probe._entry.168, ptr @bcm_vk_probe._entry.171, ptr @bcm_vk_probe._entry.175, ptr @bcm_vk_probe._entry.180, ptr @bcm_vk_probe._entry.183, ptr @bcm_vk_probe._entry.186, ptr @bcm_vk_probe._entry.190, ptr @bcm_vk_probe._entry_ptr, ptr @bcm_vk_probe._entry_ptr.146, ptr @bcm_vk_probe._entry_ptr.149, ptr @bcm_vk_probe._entry_ptr.152, ptr @bcm_vk_probe._entry_ptr.155, ptr @bcm_vk_probe._entry_ptr.158, ptr @bcm_vk_probe._entry_ptr.161, ptr @bcm_vk_probe._entry_ptr.164, ptr @bcm_vk_probe._entry_ptr.167, ptr @bcm_vk_probe._entry_ptr.170, ptr @bcm_vk_probe._entry_ptr.173, ptr @bcm_vk_probe._entry_ptr.177, ptr @bcm_vk_probe._entry_ptr.182, ptr @bcm_vk_probe._entry_ptr.185, ptr @bcm_vk_probe._entry_ptr.188, ptr @bcm_vk_probe._entry_ptr.192, ptr @bcm_vk_reset._entry, ptr @bcm_vk_reset._entry.216, ptr @bcm_vk_reset._entry.220, ptr @bcm_vk_reset._entry_ptr, ptr @bcm_vk_reset._entry_ptr.218, ptr @bcm_vk_reset._entry_ptr.222, ptr @bcm_vk_reset_successful._entry, ptr @bcm_vk_reset_successful._entry_ptr, ptr @bcm_vk_trigger_reset._entry, ptr @bcm_vk_trigger_reset._entry.225, ptr @bcm_vk_trigger_reset._entry_ptr, ptr @bcm_vk_trigger_reset._entry_ptr.227, ptr @bcm_vk_wait._entry, ptr @bcm_vk_wait._entry_ptr, ptr @get_soc_idx._entry, ptr @get_soc_idx._entry.60, ptr @get_soc_idx._entry_ptr, ptr @get_soc_idx._entry_ptr.62, ptr @pci_driver_exit, ptr @auto_load, ptr @nr_scratch_pages, ptr @nr_ib_sgl_blk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @bcm_vk_peer_err, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @bcm_vk_host_err, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @image_tab, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @pci_driver, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @get_soc_idx.vk_soc_tab, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @bcm_vk_ids, ptr @.str.141, ptr @.str.142, ptr @bcm_vk_probe.__key, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @bcm_vk_ida, ptr @.str.172, ptr @.str.174, ptr @bcm_vk_fops, ptr @.str.176, ptr @bcm_vk_probe.__key.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @.str.219, ptr @.str.221, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234], section "llvm.metadata"
@0 = internal global [215 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_load to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_scratch_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_ib_sgl_blk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_peer_err to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_host_err to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_notf_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @image_tab to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_auto_load_all_images._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_auto_load_all_images._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_auto_load_all_images._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_log_notf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_log_notf._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_log_notf._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_dump_peer_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_dump_peer_log._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_dump_peer_log._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_soc_idx.vk_soc_tab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_soc_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_soc_idx._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_next_boot_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image_by_type._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_intf_ver_chk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_intf_ver_chk._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_get_card_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_get_proc_mon_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe.__key.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_probe._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_load_image._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_reset._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_reset._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_trigger_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_trigger_reset._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_reset_successful._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_notf_irqhandler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bcm_vk_drv_access_ok(ptr noundef %dev_id) #11
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %irq) #14
  br label %skip_schedule_work

if.end:                                           ; preds = %entry
  %wq_offload = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 27
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %wq_offload) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.skip_schedule_work_crit_edge

if.end.skip_schedule_work_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_schedule_work

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 25
  %2 = ptrtoint ptr %wq_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq_thread, align 4
  %wq_work = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %wq_work) #11
  br label %skip_schedule_work

skip_schedule_work:                               ; preds = %if.then2, %if.end.skip_schedule_work_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bcm_vk_drv_access_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_handle_notf(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  %alert = alloca %struct.bcm_vk_alert, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alert) #11
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then14, label %do.body6

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %conv = trunc i32 %3 to i16
  %peer_alert = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 35
  %notfs = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 35, i32 1
  %4 = ptrtoint ptr %notfs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %notfs, align 2
  tail call fastcc void @bcm_vk_log_notf(ptr noundef %vk, ptr noundef %peer_alert, ptr noundef nonnull @bcm_vk_peer_err, i32 noundef 12)
  %5 = ptrtoint ptr %notfs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %notfs, align 2
  %7 = ptrtoint ptr %peer_alert to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %peer_alert, align 4
  %host_alert_lock = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 33
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host_alert_lock) #11
  br label %if.end18

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bcm_vk_blk_drv_access(ptr noundef %vk)
  %host_alert_lock56 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 33
  %call1057 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host_alert_lock56) #11
  %notfs15 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %notfs15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %notfs15, align 2
  %10 = or i16 %9, -32768
  store i16 %10, ptr %notfs15, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.body6
  %call1060 = phi i32 [ %call1057, %if.then14 ], [ %call10, %do.body6 ]
  %host_alert_lock58 = phi ptr [ %host_alert_lock56, %if.then14 ], [ %host_alert_lock, %do.body6 ]
  %host_alert19 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 34
  %11 = ptrtoint ptr %host_alert19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_alert19, align 4
  %13 = ptrtoint ptr %alert to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %alert, align 4
  %14 = trunc i32 %12 to i16
  store i16 %14, ptr %host_alert19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host_alert_lock58, i32 noundef %call1060) #11
  call fastcc void @bcm_vk_log_notf(ptr noundef %vk, ptr noundef nonnull %alert, ptr noundef nonnull @bcm_vk_host_err, i32 noundef 3)
  br i1 %cmp, label %if.end18.if.end36_crit_edge, label %land.lhs.true

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end18
  %15 = ptrtoint ptr %host_alert19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host_alert19, align 4
  %17 = and i16 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool29.not = icmp eq i16 %17, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

lor.lhs.false:                                    ; preds = %land.lhs.true
  %peer_alert30 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 35
  %18 = ptrtoint ptr %peer_alert30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %peer_alert30, align 4
  %20 = and i16 %19, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool34.not = icmp eq i16 %20, 0
  br i1 %tobool34.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  tail call fastcc void @bcm_vk_dump_peer_log(ptr noundef %vk)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %lor.lhs.false.if.end36_crit_edge, %if.end18.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alert) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_log_notf(ptr nocapture noundef %vk, ptr nocapture noundef readonly %alert, ptr nocapture noundef readonly %entry_tab, i32 noundef %table_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %table_size)
  %cmp86.not = icmp eq i32 %table_size, 0
  br i1 %cmp86.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %notfs = getelementptr inbounds %struct.bcm_vk_alert, ptr %alert, i32 0, i32 1
  %arrayidx.i84 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %alert_cnts29 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 36
  %devid41 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 8
  %uecc = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 36, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm_vk_entry, ptr %entry_tab, i32 %i.087
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %notfs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %notfs, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %3, %conv
  %trunc = trunc i32 %and to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.else46 [
    i16 1, label %if.then
    i16 1024, label %if.then23
  ]

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i84, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %11 = trunc i32 %10 to i16
  %12 = lshr i16 %11, 8
  %13 = ptrtoint ptr %uecc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %uecc, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp12.not = icmp eq i16 %12, %14
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %11)
  %cmp15.not = icmp ult i16 %11, 256
  %or.cond = or i1 %cmp15.not, %cmp12.not
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = zext i16 %12 to i32
  %15 = ptrtoint ptr %devid41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devid41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, i32 noundef %16, i32 noundef %conv10) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %uecc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %uecc, align 2
  br label %for.inc

if.then23:                                        ; preds = %for.body
  %18 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %19, i32 1128
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #11, !srcloc !463
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %22 = trunc i32 %21 to i16
  %23 = ptrtoint ptr %alert_cnts29 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %alert_cnts29, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %22)
  %cmp31.not = icmp ne i16 %24, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %22)
  %cmp35 = icmp ugt i16 %22, 9
  %or.cond83 = and i1 %cmp31.not, %cmp35
  br i1 %or.cond83, label %do.end40, label %if.then23.if.end43_crit_edge

if.then23.if.end43_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.end40:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %devid41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devid41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %26, i32 noundef %21) #14
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.then23.if.end43_crit_edge
  %27 = ptrtoint ptr %alert_cnts29 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %22, ptr %alert_cnts29, align 4
  br label %for.inc

if.else46:                                        ; preds = %for.body
  %28 = ptrtoint ptr %alert to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %alert, align 2
  %conv4 = zext i16 %29 to i32
  %and5 = and i32 %3, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and5)
  %cmp47.not = icmp eq i32 %and, %and5
  br i1 %cmp47.not, label %if.else46.for.inc_crit_edge, label %do.end52

if.else46.for.inc_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end52:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %devid41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devid41, align 4
  %str = getelementptr %struct.bcm_vk_entry, ptr %entry_tab, i32 %i.087, i32 2
  %32 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %str, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.47, ptr @.str.46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef %31, ptr noundef %33, ptr noundef nonnull %cond) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end52, %if.else46.for.inc_crit_edge, %if.end43, %if.end
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %table_size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_blk_drv_access(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock) #11
  %msgq_inited = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msgq_inited, i32 noundef 4) #11
  %0 = ptrtoint ptr %msgq_inited to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %msgq_inited, align 4
  %reset_pid = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 20, i32 %i.044
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ctx.041 = load ptr, ptr %arrayidx, align 4
  %cmp5.not42 = icmp eq ptr %ctx.041, %arrayidx
  br i1 %cmp5.not42, label %for.body.for.end_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %ctx.043 = phi ptr [ %ctx.0, %for.inc.for.body6_crit_edge ], [ %ctx.041, %for.body.for.body6_crit_edge ]
  %pid = getelementptr inbounds %struct.bcm_vk_ctx, ptr %ctx.043, i32 0, i32 3
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  %4 = ptrtoint ptr %reset_pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7.not = icmp eq i32 %3, %5
  br i1 %cmp7.not, label %for.body6.for.inc_crit_edge, label %do.body

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %for.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_blk_drv_access.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_blk_drv_access, %if.then12)) #11
          to label %do.end [label %if.then12], !srcloc !465

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vk, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_blk_drv_access.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 4
  %call15 = tail call ptr @find_vpid(i32 noundef %11) #11
  %call16 = tail call i32 @kill_pid(ptr noundef %call15, i32 noundef 9, i32 noundef 1) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body6.for.inc_crit_edge
  %12 = ptrtoint ptr %ctx.043 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ctx.0 = load ptr, ptr %ctx.043, align 4
  %cmp5.not = icmp eq ptr %ctx.0, %arrayidx
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end24, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bcm_vk_tty_terminate_tty_user(ptr noundef %vk) #11
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_dump_peer_log(ptr nocapture noundef readonly %vk) unnamed_addr #0 align 64 {
entry:
  %log = alloca %struct.bcm_vk_peer_log, align 4
  %loc_buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %log) #11
  %0 = getelementptr inbounds %struct.bcm_vk_peer_log, ptr %log, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bcm_vk_peer_log, ptr %log, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bcm_vk_peer_log, ptr %log, i32 0, i32 3
  %3 = call ptr @memset(ptr %log, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %loc_buf) #11
  %4 = call ptr @memset(ptr %loc_buf, i32 255, i32 255)
  %5 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %arrayidx = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %peerlog_off = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 37
  %9 = ptrtoint ptr %peerlog_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %peerlog_off, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  call void @mmiocpy(ptr noundef nonnull %log, ptr noundef %add.ptr, i32 noundef 16) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_dump_peer_log.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_dump_peer_log, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !465

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %15 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %log, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_dump_peer_log.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %buf_size4 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 2
  %19 = ptrtoint ptr %buf_size4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_size4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not = icmp eq i32 %20, 0
  br i1 %tobool5.not, label %do.end9, label %if.end10

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %21 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %log, align 4
  %mask12 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 3
  %23 = ptrtoint ptr %mask12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp ugt i32 %22, %24
  br i1 %cmp, label %if.end10.do.end27_crit_edge, label %lor.lhs.false

if.end10.do.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

lor.lhs.false:                                    ; preds = %if.end10
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp15 = icmp ugt i32 %26, %24
  br i1 %cmp15, label %lor.lhs.false.do.end27_crit_edge, label %lor.lhs.false16

lor.lhs.false.do.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %20)
  %cmp19.not = icmp eq i32 %28, %20
  br i1 %cmp19.not, label %lor.lhs.false20, label %lor.lhs.false16.do.end27_crit_edge

lor.lhs.false16.do.end27_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp23.not = icmp eq i32 %30, %24
  br i1 %cmp23.not, label %if.end34, label %lor.lhs.false20.do.end27_crit_edge

lor.lhs.false20.do.end27_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end27:                                         ; preds = %lor.lhs.false20.do.end27_crit_edge, %lor.lhs.false16.do.end27_crit_edge, %lor.lhs.false.do.end27_crit_edge, %if.end10.do.end27_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %2, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52, i32 noundef %20, i32 noundef %32, i32 noundef %24, i32 noundef %34, i32 noundef %22, i32 noundef %36) #14
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false20
  %37 = ptrtoint ptr %peerlog_off to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %peerlog_off, align 4
  %add = add i32 %38, 16
  %arrayidx36 = getelementptr inbounds [256 x i8], ptr %loc_buf, i32 0, i32 255
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx36, align 1
  %40 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %log, align 4
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp39.not93 = icmp eq i32 %41, %43
  br i1 %cmp39.not93, label %if.end34.while.end_crit_edge, label %if.end34.while.body_crit_edge

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  br label %while.body

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %if.end34.while.body_crit_edge
  %44 = phi i32 [ %and, %if.end55.while.body_crit_edge ], [ %41, %if.end34.while.body_crit_edge ]
  %cnt.094 = phi i32 [ %cnt.1, %if.end55.while.body_crit_edge ], [ 0, %if.end34.while.body_crit_edge ]
  %add41 = add i32 %add, %44
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 %add41
  %47 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !466
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !467
  %arrayidx43 = getelementptr [256 x i8], ptr %loc_buf, i32 0, i32 %cnt.094
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp46 = icmp eq i8 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %cnt.094)
  %cmp49 = icmp eq i32 %cnt.094, 255
  %or.cond = select i1 %cmp46, i1 true, i1 %cmp49
  br i1 %or.cond, label %do.end54, label %if.else

do.end54:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, ptr noundef nonnull %loc_buf) #14
  br label %if.end55

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %cnt.094, 1
  br label %if.end55

if.end55:                                         ; preds = %if.else, %do.end54
  %cnt.1 = phi i32 [ 0, %do.end54 ], [ %inc, %if.else ]
  %49 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %log, align 4
  %add57 = add i32 %50, 1
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %and = and i32 %add57, %52
  store i32 %and, ptr %log, align 4
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 4
  %cmp39.not = icmp eq i32 %and, %54
  br i1 %cmp39.not, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %if.end34.while.end_crit_edge
  %.lcssa = phi i32 [ %41, %if.end34.while.end_crit_edge ], [ %and, %if.end55.while.end_crit_edge ]
  %55 = ptrtoint ptr %peerlog_off to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %peerlog_off, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %57 = call i32 @llvm.bswap.i32(i32 %.lcssa) #11
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i91 = getelementptr i8, ptr %59, i32 %56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %57) #11, !srcloc !469
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end27, %do.end9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %loc_buf) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %log) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_tty_terminate_tty_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_auto_load_all_images(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.235)
  switch i16 %3, label %get_soc_idx.exit.thread60 [
    i16 24199, label %sw.bb.i
    i16 24200, label %entry.do.body_crit_edge
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb.i:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 1096
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %8 = lshr i32 %7, 12
  %and.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 2
  br i1 %cmp.i, label %get_soc_idx.exit, label %if.else.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %and.i, i32 noundef 0) #14
  br label %do.body

get_soc_idx.exit.thread60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61, i32 noundef %conv.i) #14
  br label %auto_load_all_exit

get_soc_idx.exit:                                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [2 x i32], ptr @get_soc_idx.vk_soc_tab, i32 0, i32 %and.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  br label %do.body

do.body:                                          ; preds = %get_soc_idx.exit, %if.else.i, %entry.do.body_crit_edge
  %idx.0.i59 = phi i32 [ %10, %get_soc_idx.exit ], [ 2, %entry.do.body_crit_edge ], [ 0, %if.else.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_auto_load_all_images.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_auto_load_all_images, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !465

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %devid = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 8
  %11 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_auto_load_all_images.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %12) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx.i.i52 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %arrayidx8 = getelementptr [3 x [2 x %struct.load_image_entry]], ptr @image_tab, i32 0, i32 %idx.0.i59, i32 0
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  %15 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i52, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %16, i32 1028
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #11, !srcloc !463
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %19 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i52, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %20, i32 1052
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #11, !srcloc !463
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i54 = icmp eq i32 %17, -1
  %and.i55 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i = icmp eq i32 %and.i55, 0
  %or.cond.i = or i1 %cmp.i54, %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663808, i32 %17)
  %cmp2.i = icmp eq i32 %17, 100663808
  %spec.select.i = select i1 %cmp2.i, i32 2, i32 0
  %load_type.0.i = select i1 %or.cond.i, i32 %spec.select.i, i32 1
  %23 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vk, align 4
  %dev.i56 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i56, ptr noundef nonnull @.str.72, i32 noundef %18, i32 noundef %22) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %load_type.0.i, i32 %14)
  %cmp10 = icmp eq i32 %load_type.0.i, %14
  br i1 %cmp10, label %if.then11, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then11:                                        ; preds = %do.end
  %call14 = tail call fastcc ptr @get_load_fw_name(ptr noundef %vk, ptr noundef %arrayidx8)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then11.do.end19_crit_edge, label %if.end20

if.then11.do.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end19:                                         ; preds = %if.then11.1.do.end19_crit_edge, %if.then11.do.end19_crit_edge
  %.lcssa = phi i32 [ %14, %if.then11.do.end19_crit_edge ], [ %26, %if.then11.1.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %.lcssa) #14
  br label %auto_load_all_exit

if.end20:                                         ; preds = %if.then11
  %call21 = tail call fastcc i32 @bcm_vk_load_image_by_type(ptr noundef %vk, i32 noundef %14, ptr noundef nonnull %call14)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull %call14, i32 noundef %call21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool25.not = icmp eq i32 %call21, 0
  br i1 %tobool25.not, label %if.end20.for.inc_crit_edge, label %if.end20.do.end29_crit_edge

if.end20.do.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end29:                                         ; preds = %if.end20.1.do.end29_crit_edge, %if.end20.do.end29_crit_edge
  %call21.lcssa = phi i32 [ %call21, %if.end20.do.end29_crit_edge ], [ %call21.1, %if.end20.1.do.end29_crit_edge ]
  %call14.lcssa70 = phi ptr [ %call14, %if.end20.do.end29_crit_edge ], [ %call14.1, %if.end20.1.do.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull %call14.lcssa70) #14
  br label %auto_load_all_exit

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %ret.1 = phi i32 [ 0, %if.end20.for.inc_crit_edge ], [ -1, %do.end.for.inc_crit_edge ]
  %arrayidx8.1 = getelementptr [3 x [2 x %struct.load_image_entry]], ptr @image_tab, i32 0, i32 %idx.0.i59, i32 1
  %25 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx8.1, align 4
  %27 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i52, align 4
  %add.ptr.i.i53.1 = getelementptr i8, ptr %28, i32 1028
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53.1) #11, !srcloc !463
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %31 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i52, align 4
  %add.ptr.i11.i.1 = getelementptr i8, ptr %32, i32 1052
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.1) #11, !srcloc !463
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i54.1 = icmp eq i32 %29, -1
  %and.i55.1 = and i32 %30, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.1)
  %tobool.not.i.1 = icmp eq i32 %and.i55.1, 0
  %or.cond.i.1 = or i1 %cmp.i54.1, %tobool.not.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663808, i32 %29)
  %cmp2.i.1 = icmp eq i32 %29, 100663808
  %spec.select.i.1 = select i1 %cmp2.i.1, i32 2, i32 0
  %load_type.0.i.1 = select i1 %or.cond.i.1, i32 %spec.select.i.1, i32 1
  %35 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vk, align 4
  %dev.i56.1 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i56.1, ptr noundef nonnull @.str.72, i32 noundef %30, i32 noundef %34) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %load_type.0.i.1, i32 %26)
  %cmp10.1 = icmp eq i32 %load_type.0.i.1, %26
  br i1 %cmp10.1, label %if.then11.1, label %for.inc.auto_load_all_exit_crit_edge

for.inc.auto_load_all_exit_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %auto_load_all_exit

if.then11.1:                                      ; preds = %for.inc
  %call14.1 = tail call fastcc ptr @get_load_fw_name(ptr noundef %vk, ptr noundef %arrayidx8.1)
  %tobool15.not.1 = icmp eq ptr %call14.1, null
  br i1 %tobool15.not.1, label %if.then11.1.do.end19_crit_edge, label %if.end20.1

if.then11.1.do.end19_crit_edge:                   ; preds = %if.then11.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

if.end20.1:                                       ; preds = %if.then11.1
  %call21.1 = tail call fastcc i32 @bcm_vk_load_image_by_type(ptr noundef %vk, i32 noundef %26, ptr noundef nonnull %call14.1)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull %call14.1, i32 noundef %call21.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool25.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool25.not.1, label %if.end20.1.auto_load_all_exit_crit_edge, label %if.end20.1.do.end29_crit_edge

if.end20.1.do.end29_crit_edge:                    ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end20.1.auto_load_all_exit_crit_edge:          ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %auto_load_all_exit

auto_load_all_exit:                               ; preds = %if.end20.1.auto_load_all_exit_crit_edge, %for.inc.auto_load_all_exit_crit_edge, %do.end29, %do.end19, %get_soc_idx.exit.thread60
  %ret.2 = phi i32 [ %call21.lcssa, %do.end29 ], [ -2, %do.end19 ], [ -1, %get_soc_idx.exit.thread60 ], [ 0, %if.end20.1.auto_load_all_exit_crit_edge ], [ %ret.1, %for.inc.auto_load_all_exit_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_load_fw_name(ptr nocapture noundef readonly %vk, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #11
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dummy, align 4, !annotation !470
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fw, align 4
  %arrayidx = getelementptr %struct.load_image_entry, ptr %entry1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @request_partial_firmware_into_buf(ptr noundef nonnull %fw, ptr noundef %5, ptr noundef %dev2, ptr noundef nonnull %dummy, i32 noundef 4, i32 noundef 0) #11
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond:                                         ; preds = %entry
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fw, align 4
  %arrayidx.1 = getelementptr %struct.load_image_entry, ptr %entry1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = call i32 @request_partial_firmware_into_buf(ptr noundef nonnull %fw, ptr noundef %10, ptr noundef %dev2, ptr noundef nonnull %dummy, i32 noundef 4, i32 noundef 0) #11
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.if.then_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.cond.if.then_crit_edge ]
  %13 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_load_image_by_type(ptr noundef %vk, i32 noundef %load_type, ptr noundef %filename) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %boot_dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_dma_addr) #11
  %3 = ptrtoint ptr %boot_dma_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %boot_dma_addr, align 4, !annotation !470
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %load_type)
  %cmp = icmp eq i32 %load_type, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %7 = or i32 %6, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i370 = getelementptr i8, ptr %9, i32 3192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370, i32 %7) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i372 = getelementptr i8, ptr %11, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 16777216) #11, !srcloc !469
  %call2 = tail call fastcc i32 @bcm_vk_wait(ptr noundef %vk, i64 noundef 1028, i32 noundef 65536, i32 noundef 65536, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74, i32 noundef %call2) #14
  br label %cleanup239

if.end:                                           ; preds = %if.then
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 262144, ptr noundef nonnull %boot_dma_addr, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end9, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.77, i32 noundef 262144) #14
  br label %cleanup239

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %load_type)
  %cmp11 = icmp eq i32 %load_type, 2
  br i1 %cmp11, label %if.then12, label %do.end30

if.then12:                                        ; preds = %if.else
  %call13 = tail call fastcc i32 @bcm_vk_wait(ptr noundef %vk, i64 noundef 1028, i32 noundef 131072, i32 noundef 131072, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.80, i32 noundef %call13) #14
  br label %cleanup239

if.end19:                                         ; preds = %if.then12
  %call.i373 = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4194304, ptr noundef nonnull %boot_dma_addr, i32 noundef 3264, i32 noundef 0) #11
  %tobool21.not = icmp eq ptr %call.i373, null
  br i1 %tobool21.not, label %do.end25, label %if.end26

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.77, i32 noundef 4194304) #14
  br label %cleanup239

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %boot_dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boot_dma_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %arrayidx.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 25056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !469
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %16 = call i32 @llvm.bswap.i32(i32 %13) #11
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %18, i32 25060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %16) #11, !srcloc !469
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %20, i32 25064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16384) #11, !srcloc !469
  br label %if.end32

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.85, i32 noundef %load_type) #14
  br label %cleanup239

if.end32:                                         ; preds = %if.end26, %if.end.if.end32_crit_edge
  %codepush.0 = phi i32 [ 4194305, %if.end.if.end32_crit_edge ], [ 1610612736, %if.end26 ]
  %offset_codepush.0 = phi i64 [ 1024, %if.end.if.end32_crit_edge ], [ 1032, %if.end26 ]
  %max_buf.0 = phi i32 [ 262144, %if.end.if.end32_crit_edge ], [ 4194304, %if.end26 ]
  %bufp.0 = phi ptr [ %call.i, %if.end.if.end32_crit_edge ], [ %call.i373, %if.end26 ]
  %call33 = call i32 @request_partial_firmware_into_buf(ptr noundef nonnull %fw, ptr noundef %filename, ptr noundef %dev1, ptr noundef nonnull %bufp.0, i32 noundef %max_buf.0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.88, i32 noundef %call33, ptr noundef %filename) #14
  br label %err_buf_out.thread397

do.body40:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_load_image_by_type, %if.then45)) #11
          to label %do.end48 [label %if.then45], !srcloc !465

if.then45:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.90, i32 noundef %24) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body40
  br i1 %cmp, label %if.then50, label %do.end48.do.body53_crit_edge

do.end48.do.body53_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

if.then50:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 1048576
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %bufp.0, i32 noundef %30) #11
  br label %do.body53

do.body53:                                        ; preds = %if.then50, %do.end48.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_load_image_by_type, %if.then65)) #11
          to label %do.end68 [label %if.then65], !srcloc !465

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.91, i32 noundef %codepush.0, i64 noundef %offset_codepush.0) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %do.body53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %31 = call i32 @llvm.bswap.i32(i32 %codepush.0) #11
  %arrayidx.i374 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %32 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i374, align 4
  %idx.ext.i = trunc i64 %offset_codepush.0 to i32
  %add.ptr.i375 = getelementptr i8, ptr %33, i32 %idx.ext.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i375, i32 %31) #11, !srcloc !469
  br i1 %cmp, label %if.then70, label %do.end68.do.body106.sink.split_crit_edge

do.end68.do.body106.sink.split_crit_edge:         ; preds = %do.end68
  br label %do.body106.sink.split

if.then70:                                        ; preds = %do.end68
  %call71 = call fastcc i32 @bcm_vk_wait(ptr noundef %vk, i64 noundef 1028, i32 noundef 131078, i32 noundef 131078, i32 noundef 5000)
  %34 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i374, align 4
  %add.ptr.i377 = getelementptr i8, ptr %35, i32 1028
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i377) #11, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp73 = icmp ne i32 %36, -1
  %37 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool74 = icmp ne i32 %37, 0
  %38 = and i1 %cmp73, %tobool74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool76.not = icmp eq i32 %call71, 0
  %brmerge = select i1 %tobool76.not, i1 true, i1 %38
  br i1 %brmerge, label %if.else82, label %do.end81

do.end81:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93, i32 noundef 5000, i32 noundef %call71) #14
  br label %err_buf_out.thread397

if.else82:                                        ; preds = %if.then70
  br i1 %38, label %if.then84, label %if.else82.err_buf_out.thread397_crit_edge

if.else82.err_buf_out.thread397_crit_edge:        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_buf_out.thread397

if.then84:                                        ; preds = %if.else82
  %39 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i374, align 4
  %add.ptr.i379 = getelementptr i8, ptr %40, i32 1056
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i379) #11, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %42 = and i32 %41, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %42)
  %cmp87 = icmp eq i32 %42, 6291456
  br i1 %cmp87, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.96) #14
  br label %err_buf_out.thread397

cleanup:                                          ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.99, i32 noundef 5000) #14
  br label %err_buf_out.thread397

do.body106.sink.split:                            ; preds = %do.end183, %do.end68.do.body106.sink.split_crit_edge
  %offset.0.ph = phi i32 [ %add143, %do.end183 ], [ 0, %do.end68.do.body106.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add185 = add i32 %43, 100
  br label %do.body106

do.body106:                                       ; preds = %if.end139.do.body106_crit_edge, %do.body106.sink.split
  %call107 = call fastcc i32 @bcm_vk_wait(ptr noundef %vk, i64 noundef 1028, i32 noundef 1048576, i32 noundef 1048576, i32 noundef 1)
  %44 = zext i32 %call107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %call107, label %if.end133 [
    i32 0, label %do.body110
    i32 -14, label %do.end131
  ]

do.body110:                                       ; preds = %do.body106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_load_image_by_type, %if.then122)) #11
          to label %do.end195 [label %if.then122], !srcloc !465

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.101) #11
  br label %do.end195

do.end131:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.103) #14
  br label %err_buf_out

if.end133:                                        ; preds = %do.body106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add185, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp134 = icmp slt i32 %sub, 0
  br i1 %cmp134, label %do.end138, label %if.end139

do.end138:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.106) #14
  br label %err_buf_out

if.end139:                                        ; preds = %if.end133
  %call140 = call fastcc i32 @bcm_vk_wait(ptr noundef %vk, i64 noundef %offset_codepush.0, i32 noundef %codepush.0, i32 noundef 0, i32 noundef 1)
  %46 = zext i32 %call140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %call140, label %if.end139.do.body106_crit_edge [
    i32 0, label %if.then142
    i32 -14, label %do.end191
  ]

if.end139.do.body106_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body106

if.then142:                                       ; preds = %if.end139
  %add143 = add i32 %offset.0.ph, %max_buf.0
  %call144 = call i32 @request_partial_firmware_into_buf(ptr noundef nonnull %fw, ptr noundef %filename, ptr noundef %dev1, ptr noundef %bufp.0, i32 noundef %max_buf.0, i32 noundef %add143) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %do.body151, label %do.end149

do.end149:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.109, i32 noundef %call144, ptr noundef %filename, i32 noundef %add143) #14
  br label %err_buf_out

do.body151:                                       ; preds = %if.then142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_load_image_by_type, %if.then163)) #11
          to label %do.body168 [label %if.then163], !srcloc !465

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.90, i32 noundef %50) #11
  br label %do.body168

do.body168:                                       ; preds = %if.then163, %do.body151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_load_image_by_type, %if.then180)) #11
          to label %do.end183 [label %if.then180], !srcloc !465

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.91, i32 noundef %codepush.0, i64 noundef %offset_codepush.0) #11
  br label %do.end183

do.end183:                                        ; preds = %if.then180, %do.body168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i374, align 4
  %add.ptr.i382 = getelementptr i8, ptr %52, i32 %idx.ext.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382, i32 %31) #11, !srcloc !469
  br label %do.body106.sink.split

do.end191:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.112) #14
  br label %err_buf_out

do.end195:                                        ; preds = %if.then122, %do.body110
  %call196 = call fastcc i32 @bcm_vk_wait(ptr noundef %vk, i64 noundef 1052, i32 noundef 1020, i32 noundef 1020, i32 noundef 10000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %do.end201, label %if.end202

do.end201:                                        ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.115, i32 noundef %call196) #14
  br label %err_buf_out

if.end202:                                        ; preds = %do.end195
  %53 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i374, align 4
  %add.ptr.i384 = getelementptr i8, ptr %54, i32 1028
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i384) #11, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %56 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool205.not = icmp eq i32 %56, 0
  br i1 %tobool205.not, label %if.then208, label %if.end202.err_buf_out_crit_edge

if.end202.err_buf_out_crit_edge:                  ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_buf_out

if.then208:                                       ; preds = %if.end202
  %call209 = call fastcc i32 @bcm_vk_intf_ver_chk(ptr noundef %vk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end215, label %do.end214

do.end214:                                        ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.118) #14
  br label %err_buf_out

if.end215:                                        ; preds = %if.then208
  %call216 = call i32 @bcm_vk_sync_msgq(ptr noundef %vk, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end222, label %do.end221

do.end221:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.121) #14
  br label %err_buf_out

if.end222:                                        ; preds = %if.end215
  %call223 = call fastcc i32 @bcm_vk_sync_card_info(ptr noundef %vk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end222.err_buf_out_crit_edge, label %do.end228

if.end222.err_buf_out_crit_edge:                  ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_buf_out

do.end228:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.124) #14
  br label %err_buf_out

err_buf_out.thread397:                            ; preds = %cleanup, %cleanup.thread, %if.else82.err_buf_out.thread397_crit_edge, %do.end81, %do.end38
  %ret.5.ph = phi i32 [ 0, %cleanup.thread ], [ %call71, %if.else82.err_buf_out.thread397_crit_edge ], [ %call71, %do.end81 ], [ -22, %cleanup ], [ %call33, %do.end38 ]
  %57 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %58) #11
  br label %if.then237

err_buf_out:                                      ; preds = %do.end228, %if.end222.err_buf_out_crit_edge, %do.end221, %do.end214, %if.end202.err_buf_out_crit_edge, %do.end201, %do.end191, %do.end149, %do.end138, %do.end131
  %ret.5 = phi i32 [ %call196, %do.end201 ], [ %call209, %do.end214 ], [ -5, %do.end221 ], [ %call223, %do.end228 ], [ -14, %do.end131 ], [ -110, %do.end138 ], [ %call144, %do.end149 ], [ -14, %do.end191 ], [ 0, %if.end222.err_buf_out_crit_edge ], [ 0, %if.end202.err_buf_out_crit_edge ]
  %59 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %60) #11
  %tobool236.not = icmp eq ptr %bufp.0, null
  br i1 %tobool236.not, label %err_buf_out.cleanup239_crit_edge, label %err_buf_out.if.then237_crit_edge

err_buf_out.if.then237_crit_edge:                 ; preds = %err_buf_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then237

err_buf_out.cleanup239_crit_edge:                 ; preds = %err_buf_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup239

if.then237:                                       ; preds = %err_buf_out.if.then237_crit_edge, %err_buf_out.thread397
  %ret.5400 = phi i32 [ %ret.5.ph, %err_buf_out.thread397 ], [ %ret.5, %err_buf_out.if.then237_crit_edge ]
  %61 = ptrtoint ptr %boot_dma_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %boot_dma_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %max_buf.0, ptr noundef nonnull %bufp.0, i32 noundef %62, i32 noundef 0) #11
  br label %cleanup239

cleanup239:                                       ; preds = %if.then237, %err_buf_out.cleanup239_crit_edge, %do.end30, %do.end25, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ %ret.5400, %if.then237 ], [ %ret.5, %err_buf_out.cleanup239_crit_edge ], [ -22, %do.end30 ], [ -12, %do.end25 ], [ %call13, %do.end18 ], [ -12, %do.end9 ], [ %call2, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_dma_addr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_release_data(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -2088
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_release_data.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_release_data, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !465

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %devid = getelementptr i8, ptr %kref, i32 -1320
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_release_data.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %3, ptr noundef %add.ptr) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pci_dev_put(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci_driver, ptr noundef null, ptr noundef nonnull @.str.20) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_partial_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_wait(ptr nocapture noundef readonly %vk, i64 noundef %offset, i32 noundef %mask, i32 noundef %value, i32 noundef %timeout_ms) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #11
  %add = add i32 %call2.i, %2
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %idx.ext.i = trunc i64 %offset to i32
  br label %do.body

do.body:                                          ; preds = %do.end24.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %idx.ext.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_wait.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_wait, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !465

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_wait.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.127, i32 noundef 0, i64 noundef %offset, i32 noundef %6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %8, i32 1028
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #11, !srcloc !463
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %and = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr exact i32 %and, 4
  %and14 = and i32 %10, 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %11, %2
  %call15 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.128, i32 noundef %shr, i32 noundef %and14, i32 noundef %call15) #14
  br label %cleanup

if.end16:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub17 = sub i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp = icmp slt i32 %sub17, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %do.end24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end24:                                         ; preds = %if.end16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !471
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !472
  tail call void @__might_resched(ptr noundef nonnull @.str.17, i32 noundef 368, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %and32 = and i32 %6, %mask
  %cmp33.not = icmp eq i32 %and32, %value
  br i1 %cmp33.not, label %do.end24.cleanup_crit_edge, label %do.end24.do.body_crit_edge

do.end24.do.body_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ -14, %do.end12 ], [ 0, %do.end24.cleanup_crit_edge ], [ -110, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_intf_ver_chk(ptr noundef %vk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1148
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %shr = lshr i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not = icmp ult i32 %5, 65536
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.129, i32 noundef 0, i32 noundef %5, i32 noundef 1, i32 noundef 0) #14
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 1
  br i1 %cmp.not, label %do.body15, label %do.end11

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = and i32 %5, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.132, i32 noundef %shr, i32 noundef %conv13, i32 noundef 1, i32 noundef 0) #14
  tail call void @bcm_vk_set_host_alert(ptr noundef %vk, i32 noundef 8192) #11
  br label %if.end26

do.body15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_intf_ver_chk.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_intf_ver_chk, %if.then20)) #11
          to label %if.end26 [label %if.then20], !srcloc !465

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %conv22 = and i32 %5, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_intf_ver_chk.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.134, i32 noundef 1, i32 noundef %conv22, i32 noundef 1, i32 noundef 0) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body15, %do.end11, %do.end
  %ret.0 = phi i32 [ -96, %do.end11 ], [ 0, %if.then20 ], [ 0, %do.end ], [ 0, %do.body15 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_sync_msgq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_sync_card_info(ptr noundef %vk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %arrayidx.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 1052
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %6 = and i32 %5, -66912256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66912256, i32 %6)
  %cmp.i = icmp eq i32 %6, -66912256
  br i1 %cmp.i, label %bcm_vk_msgq_marker_valid.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

bcm_vk_msgq_marker_valid.exit:                    ; preds = %entry
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %8, i32 24768
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20254786, i32 %9)
  %phi.cmp.i = icmp eq i32 %9, -20254786
  br i1 %phi.cmp.i, label %if.end, label %bcm_vk_msgq_marker_valid.exit.if.then_crit_edge

bcm_vk_msgq_marker_valid.exit.if.then_crit_edge:  ; preds = %bcm_vk_msgq_marker_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %bcm_vk_msgq_marker_valid.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20271650, i32 %2)
  %cmp = icmp eq i32 %2, -20271650
  %cond = select i1 %cmp, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %bcm_vk_msgq_marker_valid.exit
  %tdma_addr = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 29
  %10 = ptrtoint ptr %tdma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tdma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %13, i32 25072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #11, !srcloc !469
  %14 = ptrtoint ptr %tdma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tdma_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 25076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %16) #11, !srcloc !469
  %19 = load i32, ptr @nr_scratch_pages, align 4
  %mul = shl i32 %19, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %mul) #11
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %22, i32 25080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %20) #11, !srcloc !469
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call fastcc void @bcm_vk_get_card_info(ptr noundef %vk)
  %23 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vk, align 4
  %peerlog_off.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 37
  %25 = ptrtoint ptr %peerlog_off.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %peerlog_off.i, align 4
  %add.i = add i32 %26, 8
  %arrayidx.i.i22 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %28, i32 %add.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #11, !srcloc !463
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %31 = ptrtoint ptr %peerlog_off.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %peerlog_off.i, align 4
  %add3.i = add i32 %30, 16
  %add4.i = add i32 %add3.i, %32
  %33 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i22, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %34, i32 %add4.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #11, !srcloc !463
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %add7.i = add i32 %add4.i, 4
  %37 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i22, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %38, i32 %add7.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %cmp.i24 = icmp ugt i32 %36, 8
  br i1 %cmp.i24, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.139, i32 noundef %36, i32 noundef 8) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %proc_mon_info.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 4
  %41 = ptrtoint ptr %proc_mon_info.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %36, ptr %proc_mon_info.i, align 4
  %entry_size12.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %entry_size12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %entry_size12.i, align 4
  %proc_mon_off.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 39
  %43 = ptrtoint ptr %proc_mon_off.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add4.i, ptr %proc_mon_off.i, align 4
  %entries.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 4, i32 2
  %add13.i = add i32 %add4.i, 8
  %44 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i22, align 4
  %add.ptr.i25 = getelementptr i8, ptr %45, i32 %add13.i
  %mul.i = mul i32 %40, %36
  tail call void @mmiocpy(ptr noundef %entries.i, ptr noundef %add.ptr.i25, i32 noundef %mul.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_set_host_alert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_get_card_info(ptr noundef %vk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %card_info = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %6 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vk, align 4
  %end = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 4, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %9, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %and = and i32 %cond, %5
  %arrayidx.i127 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end
  %offset.0133 = phi i32 [ %and, %cond.end ], [ %inc, %for.body.for.body_crit_edge ]
  %i.0132 = phi i32 [ 0, %cond.end ], [ %inc13, %for.body.for.body_crit_edge ]
  %dst.0131 = phi ptr [ %card_info, %cond.end ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %inc = add i32 %offset.0133, 1
  %12 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %13, i32 %offset.0133
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i128) #11, !srcloc !466
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !467
  %incdec.ptr = getelementptr i8, ptr %dst.0131, i32 1
  %15 = ptrtoint ptr %dst.0131 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %dst.0131, align 1
  %inc13 = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc13, 160
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_get_card_info.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_get_card_info, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !465

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %card_info, align 4
  %os_tag = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 1
  %cmpt_tag = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 2
  %cpu_freq_mhz = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %cpu_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu_freq_mhz, align 4
  %cpu_scale = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %cpu_scale to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu_scale, align 4
  %arrayidx20 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20, align 4
  %ddr_freq_mhz = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %ddr_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ddr_freq_mhz, align 4
  %ddr_size_MB = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %ddr_size_MB to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ddr_size_MB, align 4
  %video_core_freq_mhz = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3, i32 7
  %28 = ptrtoint ptr %video_core_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %video_core_freq_mhz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_get_card_info.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.136, i32 noundef %17, ptr noundef %os_tag, ptr noundef %cmpt_tag, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %peerlog_off = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 37
  %30 = ptrtoint ptr %peerlog_off to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc, ptr %peerlog_off, align 4
  %peerlog_info = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38
  %31 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i127, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %inc
  tail call void @mmiocpy(ptr noundef %peerlog_info, ptr noundef %add.ptr, i32 noundef 16) #11
  %buf_size = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 2
  %33 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %34)
  %cmp24 = icmp ugt i32 %34, 16384
  br i1 %cmp24, label %do.end.do.end47_crit_edge, label %lor.lhs.false

do.end.do.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

lor.lhs.false:                                    ; preds = %do.end
  %mask = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 3
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask, align 4
  %sub29 = add nsw i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %sub29)
  %cmp30.not = icmp eq i32 %36, %sub29
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false.do.end47_crit_edge

lor.lhs.false.do.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %peerlog_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %peerlog_info, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp36 = icmp ugt i32 %38, %36
  br i1 %cmp36, label %lor.lhs.false32.do.end47_crit_edge, label %lor.lhs.false38

lor.lhs.false32.do.end47_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %wr_idx = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 1
  %39 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wr_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %36)
  %cmp42 = icmp ugt i32 %40, %36
  br i1 %cmp42, label %lor.lhs.false38.do.end47_crit_edge, label %do.body57

lor.lhs.false38.do.end47_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.end47:                                         ; preds = %lor.lhs.false38.do.end47_crit_edge, %lor.lhs.false32.do.end47_crit_edge, %lor.lhs.false.do.end47_crit_edge, %do.end.do.end47_crit_edge
  %mask51 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 3
  %41 = ptrtoint ptr %mask51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask51, align 4
  %43 = ptrtoint ptr %peerlog_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %peerlog_info, align 4
  %wr_idx55 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38, i32 1
  %45 = ptrtoint ptr %wr_idx55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wr_idx55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.137, i32 noundef %34, i32 noundef %42, i32 noundef %44, i32 noundef %46) #14
  %47 = call ptr @memset(ptr %peerlog_info, i32 0, i32 16)
  br label %if.end81

do.body57:                                        ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_get_card_info.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_get_card_info, %if.then69)) #11
          to label %if.end81 [label %if.then69], !srcloc !465

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf_size, align 4
  %50 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask, align 4
  %52 = ptrtoint ptr %peerlog_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %peerlog_info, align 4
  %54 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wr_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_get_card_info.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.138, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then69, %do.body57, %do.end47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_vk_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #11
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19196, i32 noundef 3520, i32 noundef 3) #15
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %1 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %kref, align 8
  %2 = load i32, ptr @nr_ib_sgl_blk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %2)
  %cmp = icmp ugt i32 %2, 24
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.141, i32 noundef %2, i32 noundef 24) #14
  store i32 24, ptr @nr_ib_sgl_blk, align 4
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %3 = load i32, ptr @nr_ib_sgl_blk, align 4
  %mul = shl i32 %3, 4
  %ib_sgl_size = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 31
  %4 = ptrtoint ptr %ib_sgl_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %ib_sgl_size, align 16
  %mutex = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.143, ptr noundef nonnull @bcm_vk_probe.__key) #11
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.145) #14
  br label %err_free_exit

if.end13:                                         ; preds = %if.end3
  %call14 = tail call ptr @pci_dev_get(ptr noundef %pdev) #11
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %call1.i.i.i, align 4096
  %call16 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end22, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.148) #14
  br label %err_disable_pdev

if.end22:                                         ; preds = %if.end13
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end30, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.151) #14
  br label %err_disable_pdev

if.end30:                                         ; preds = %if.end22
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #11
  %6 = load i32, ptr @nr_scratch_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool31.not = icmp eq i32 %6, 0
  br i1 %tobool31.not, label %if.end30.if.end39_crit_edge, label %if.then32

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then32:                                        ; preds = %if.end30
  %mul33 = shl i32 %6, 12
  %tdma_addr = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 29
  %call.i406 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %mul33, ptr noundef %tdma_addr, i32 noundef 3264, i32 noundef 0) #11
  %tdma_vaddr = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 28
  %7 = ptrtoint ptr %tdma_vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i406, ptr %tdma_vaddr, align 4
  %tobool36.not = icmp eq ptr %call.i406, null
  br i1 %tobool36.not, label %if.then32.err_disable_pdev_crit_edge, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then32.err_disable_pdev_crit_edge:             ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_pdev

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %call.i407 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 6, i32 noundef 6, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i407)
  %cmp41 = icmp slt i32 %call.i407, 4
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.154, i32 noundef 4, i32 noundef %call.i407) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i407)
  %cmp46 = icmp sgt i32 %call.i407, -1
  %spec.select = select i1 %cmp46, i32 -22, i32 %call.i407
  br label %err_disable_pdev

if.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i407)
  %cmp48.not = icmp eq i32 %call.i407, 6
  br i1 %cmp48.not, label %if.end47.if.end53_crit_edge, label %do.end52

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.157, i32 noundef %call.i407, i32 noundef 6) #14
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %if.end47.if.end53_crit_edge
  %call56 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #11
  %arrayidx = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call56, ptr %arrayidx, align 4
  %tobool59.not = icmp eq ptr %call56, null
  br i1 %tobool59.not, label %if.end53.do.end63_crit_edge, label %for.inc

if.end53.do.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

do.end63:                                         ; preds = %for.inc.1.do.end63_crit_edge, %for.inc.do.end63_crit_edge, %if.end53.do.end63_crit_edge
  %i.0418.lcssa = phi i32 [ 0, %if.end53.do.end63_crit_edge ], [ 1, %for.inc.do.end63_crit_edge ], [ 2, %for.inc.1.do.end63_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.160, i32 noundef %i.0418.lcssa) #14
  br label %err_iounmap

for.inc:                                          ; preds = %if.end53
  %call56.1 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 2) #11
  %arrayidx.1 = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call56.1, ptr %arrayidx.1, align 8
  %tobool59.not.1 = icmp eq ptr %call56.1, null
  br i1 %tobool59.not.1, label %for.inc.do.end63_crit_edge, label %for.inc.1

for.inc.do.end63_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

for.inc.1:                                        ; preds = %for.inc
  %call56.2 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 4) #11
  %arrayidx.2 = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call56.2, ptr %arrayidx.2, align 4
  %tobool59.not.2 = icmp eq ptr %call56.2, null
  br i1 %tobool59.not.2, label %for.inc.1.do.end63_crit_edge, label %for.inc.2

for.inc.1.do.end63_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

for.inc.2:                                        ; preds = %for.inc.1
  %num_irqs = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_irqs, align 16
  br label %for.body68

for.body68:                                       ; preds = %for.inc82.for.body68_crit_edge, %for.inc.2
  %storemerge419 = phi i32 [ 0, %for.inc.2 ], [ %inc84, %for.inc82.for.body68_crit_edge ]
  %call70 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %storemerge419) #11
  %call.i408 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call70, ptr noundef nonnull @bcm_vk_msgq_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.39, ptr noundef %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408)
  %tobool72.not = icmp eq i32 %call.i408, 0
  br i1 %tobool72.not, label %for.inc82, label %do.end76

do.end76:                                         ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #13
  %irq77 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %13 = ptrtoint ptr %irq77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq77, align 4
  %15 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_irqs, align 16
  %add = add i32 %16, %14
  %add80 = add i32 %16, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.163, i32 noundef %add, i32 noundef %add80) #14
  br label %err_irq

for.inc82:                                        ; preds = %for.body68
  %17 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_irqs, align 16
  %inc84 = add i32 %18, 1
  store i32 %inc84, ptr %num_irqs, align 16
  %cmp67 = icmp slt i32 %inc84, 3
  br i1 %cmp67, label %for.inc82.for.body68_crit_edge, label %for.end85

for.inc82.for.body68_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body68

for.end85:                                        ; preds = %for.inc82
  %call87 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %inc84) #11
  %call.i409 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call87, ptr noundef nonnull @bcm_vk_notf_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.39, ptr noundef %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i409)
  %tobool89.not = icmp eq i32 %call.i409, 0
  br i1 %tobool89.not, label %for.cond102.preheader, label %do.end93

for.cond102.preheader:                            ; preds = %for.end85
  %19 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %19)
  %storemerge405.in420 = load i32, ptr %num_irqs, align 16
  %storemerge405421 = add i32 %storemerge405.in420, 1
  store i32 %storemerge405421, ptr %num_irqs, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge405421, i32 %call.i407)
  %cmp105422 = icmp slt i32 %storemerge405421, %call.i407
  br i1 %cmp105422, label %for.body106, label %for.cond102.preheader.for.end125_crit_edge

for.cond102.preheader.for.end125_crit_edge:       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end125

do.end93:                                         ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #13
  %irq94 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %20 = ptrtoint ptr %irq94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq94, align 4
  %22 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_irqs, align 16
  %add96 = add i32 %23, %21
  %add98 = add i32 %23, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.166, i32 noundef %add96, i32 noundef %add98) #14
  br label %err_irq

for.body106:                                      ; preds = %for.cond102.preheader
  %call108 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %storemerge405421) #11
  %call.i410 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call108, ptr noundef nonnull @bcm_vk_tty_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.39, ptr noundef %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool110.not = icmp eq i32 %call.i410, 0
  br i1 %tobool110.not, label %if.end120, label %for.body106.do.end114_crit_edge

for.body106.do.end114_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end114

do.end114:                                        ; preds = %for.body106.1.do.end114_crit_edge, %for.body106.do.end114_crit_edge
  %call.i410.lcssa = phi i32 [ %call.i410, %for.body106.do.end114_crit_edge ], [ %call.i410.1, %for.body106.1.do.end114_crit_edge ]
  %irq115 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %24 = ptrtoint ptr %irq115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq115, align 4
  %26 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_irqs, align 16
  %add117 = add i32 %27, %25
  %add119 = add i32 %27, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.169, i32 noundef %add117, i32 noundef %add119) #14
  br label %err_irq

if.end120:                                        ; preds = %for.body106
  %irq_enabled.i = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 11, i32 0, i32 8
  %28 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %irq_enabled.i, align 4
  %29 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %29)
  %storemerge405.in = load i32, ptr %num_irqs, align 16
  %storemerge405 = add i32 %storemerge405.in, 1
  store i32 %storemerge405, ptr %num_irqs, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge405, i32 %call.i407)
  %cmp105 = icmp slt i32 %storemerge405, %call.i407
  br i1 %cmp105, label %for.body106.1, label %if.end120.for.end125_crit_edge

if.end120.for.end125_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end125

for.body106.1:                                    ; preds = %if.end120
  %call108.1 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %storemerge405) #11
  %call.i410.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call108.1, ptr noundef nonnull @bcm_vk_tty_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.39, ptr noundef %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410.1)
  %tobool110.not.1 = icmp eq i32 %call.i410.1, 0
  br i1 %tobool110.not.1, label %if.end120.1, label %for.body106.1.do.end114_crit_edge

for.body106.1.do.end114_crit_edge:                ; preds = %for.body106.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end114

if.end120.1:                                      ; preds = %for.body106.1
  call void @__sanitizer_cov_trace_pc() #13
  %irq_enabled.i.1 = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 11, i32 1, i32 8
  %30 = ptrtoint ptr %irq_enabled.i.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %irq_enabled.i.1, align 4
  %31 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %storemerge405.in.1 = load i32, ptr %num_irqs, align 16
  %storemerge405.1 = add i32 %storemerge405.in.1, 1
  store i32 %storemerge405.1, ptr %num_irqs, align 16
  br label %for.end125

for.end125:                                       ; preds = %if.end120.1, %if.end120.for.end125_crit_edge, %for.cond102.preheader.for.end125_crit_edge
  %call126 = tail call i32 @ida_alloc_range(ptr noundef nonnull @bcm_vk_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then128, label %if.end132

if.then128:                                       ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.172) #14
  br label %err_irq

if.end132:                                        ; preds = %for.end125
  %devid = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call126, ptr %devid, align 256
  %call133 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.174, i32 noundef %call126)
  %miscdev = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 255, ptr %miscdev, align 8
  %call135 = call noalias ptr @kstrdup(ptr noundef nonnull %name, i32 noundef 3264) #11
  %name136 = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %name136 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call135, ptr %name136, align 4
  %tobool138.not = icmp eq ptr %call135, null
  br i1 %tobool138.not, label %if.end132.err_ida_remove_crit_edge, label %if.end140

if.end132.err_ida_remove_crit_edge:               ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ida_remove

if.end140:                                        ; preds = %if.end132
  %fops = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @bcm_vk_fops, ptr %fops, align 32
  %call141 = call i32 @misc_register(ptr noundef %miscdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.body148, label %do.end146

do.end146:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.176) #14
  br label %err_kfree_name

do.body148:                                       ; preds = %if.end140
  %wq_work = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 26
  call void @__init_work(ptr noundef %wq_work, i32 noundef 0) #11
  %36 = ptrtoint ptr %wq_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %wq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 26, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.179, ptr noundef nonnull @bcm_vk_probe.__key.178, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry152 = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 26, i32 1
  %37 = ptrtoint ptr %entry152 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry152, ptr %entry152, align 16
  %prev.i = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 26, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry152, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 26, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @bcm_vk_wq_handler, ptr %func, align 8
  %call157 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.55, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %name) #11
  %wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 25
  %40 = ptrtoint ptr %wq_thread to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call157, ptr %wq_thread, align 8
  %tobool159.not = icmp eq ptr %call157, null
  br i1 %tobool159.not, label %do.end163, label %if.end164

do.end163:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.181) #14
  br label %err_misc_deregister

if.end164:                                        ; preds = %do.body148
  %call165 = call i32 @bcm_vk_msg_init(ptr noundef nonnull %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end171, label %do.end170

do.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.184) #14
  br label %err_destroy_workqueue

if.end171:                                        ; preds = %if.end164
  %call172 = call fastcc i32 @bcm_vk_sync_card_info(ptr noundef nonnull %call1.i.i.i)
  %panic_nb = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 30
  %41 = ptrtoint ptr %panic_nb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bcm_vk_on_panic, ptr %panic_nb, align 4
  %call174 = call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end180, label %do.end179

do.end179:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.187) #14
  br label %err_destroy_workqueue

if.end180:                                        ; preds = %if.end171
  %call182 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.189, i32 noundef %call126)
  %call184 = call i32 @bcm_vk_tty_init(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.end180.err_unregister_panic_notifier_crit_edge

if.end180.err_unregister_panic_notifier_crit_edge: ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unregister_panic_notifier

if.end187:                                        ; preds = %if.end180
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 1028
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  %45 = call i32 @llvm.bswap.i32(i32 %44) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %46 = load i8, ptr @auto_load, align 1, !range !473
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool189.not = icmp eq i8 %46, 0
  br i1 %tobool189.not, label %if.end187.if.end201_crit_edge, label %if.then190

if.end187.if.end201_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

if.then190:                                       ; preds = %if.end187
  %and = and i32 %45, -2883585
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %and)
  %cmp191 = icmp eq i32 %and, 65542
  br i1 %cmp191, label %if.then192, label %do.end199

if.then192:                                       ; preds = %if.then190
  %wq_offload.i = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 27
  %call.i411 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %wq_offload.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i411)
  %cmp.not.i = icmp eq i32 %call.i411, 0
  br i1 %cmp.not.i, label %bcm_vk_trigger_autoload.exit.thread, label %err_bcm_vk_tty_exit

bcm_vk_trigger_autoload.exit.thread:              ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 1, ptr noundef %wq_offload.i) #11
  %47 = ptrtoint ptr %wq_thread to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wq_thread, align 8
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %wq_work) #11
  br label %if.end201

do.end199:                                        ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.191, i32 noundef %45) #14
  br label %if.end201

if.end201:                                        ; preds = %do.end199, %bcm_vk_trigger_autoload.exit.thread, %if.end187.if.end201_crit_edge
  call void @bcm_vk_hb_init(ptr noundef nonnull %call1.i.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_probe.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_probe, %if.then207)) #11
          to label %cleanup [label %if.then207], !srcloc !465

if.then207:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_probe.__UNIQUE_ID_ddebug257, ptr noundef %dev1, ptr noundef nonnull @.str.193, i32 noundef %call126) #11
  br label %cleanup

err_bcm_vk_tty_exit:                              ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  call void @bcm_vk_tty_exit(ptr noundef nonnull %call1.i.i.i) #11
  br label %err_unregister_panic_notifier

err_unregister_panic_notifier:                    ; preds = %err_bcm_vk_tty_exit, %if.end180.err_unregister_panic_notifier_crit_edge
  %err.0 = phi i32 [ %call184, %if.end180.err_unregister_panic_notifier_crit_edge ], [ -1, %err_bcm_vk_tty_exit ]
  %call212 = call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_nb) #11
  br label %err_destroy_workqueue

err_destroy_workqueue:                            ; preds = %err_unregister_panic_notifier, %do.end179, %do.end170
  %err.1 = phi i32 [ %call165, %do.end170 ], [ %call174, %do.end179 ], [ %err.0, %err_unregister_panic_notifier ]
  %49 = ptrtoint ptr %wq_thread to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq_thread, align 8
  call void @destroy_workqueue(ptr noundef %50) #11
  br label %err_misc_deregister

err_misc_deregister:                              ; preds = %err_destroy_workqueue, %do.end163
  %err.2 = phi i32 [ %err.1, %err_destroy_workqueue ], [ -12, %do.end163 ]
  call void @misc_deregister(ptr noundef %miscdev) #11
  br label %err_kfree_name

err_kfree_name:                                   ; preds = %err_misc_deregister, %do.end146
  %err.3 = phi i32 [ %call141, %do.end146 ], [ %err.2, %err_misc_deregister ]
  %51 = ptrtoint ptr %name136 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name136, align 4
  call void @kfree(ptr noundef %52) #11
  %53 = ptrtoint ptr %name136 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %name136, align 4
  br label %err_ida_remove

err_ida_remove:                                   ; preds = %err_kfree_name, %if.end132.err_ida_remove_crit_edge
  %err.4 = phi i32 [ %err.3, %err_kfree_name ], [ -12, %if.end132.err_ida_remove_crit_edge ]
  call void @ida_free(ptr noundef nonnull @bcm_vk_ida, i32 noundef %call126) #11
  br label %err_irq

err_irq:                                          ; preds = %err_ida_remove, %if.then128, %do.end114, %do.end93, %do.end76
  %err.5 = phi i32 [ %call.i408, %do.end76 ], [ %call.i409, %do.end93 ], [ %call.i410.lcssa, %do.end114 ], [ %call126, %if.then128 ], [ %err.4, %err_ida_remove ]
  %54 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_irqs, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp218425 = icmp sgt i32 %55, 0
  br i1 %cmp218425, label %err_irq.for.body219_crit_edge, label %err_irq.for.end223_crit_edge

err_irq.for.end223_crit_edge:                     ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end223

err_irq.for.body219_crit_edge:                    ; preds = %err_irq
  br label %for.body219

for.body219:                                      ; preds = %for.body219.for.body219_crit_edge, %err_irq.for.body219_crit_edge
  %i.2426 = phi i32 [ %inc222, %for.body219.for.body219_crit_edge ], [ 0, %err_irq.for.body219_crit_edge ]
  %call220 = call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %i.2426) #11
  call void @devm_free_irq(ptr noundef %dev1, i32 noundef %call220, ptr noundef nonnull %call1.i.i.i) #11
  %inc222 = add nuw nsw i32 %i.2426, 1
  %56 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_irqs, align 16
  %cmp218 = icmp slt i32 %inc222, %57
  br i1 %cmp218, label %for.body219.for.body219_crit_edge, label %for.body219.for.end223_crit_edge

for.body219.for.end223_crit_edge:                 ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end223

for.body219.for.body219_crit_edge:                ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body219

for.end223:                                       ; preds = %for.body219.for.end223_crit_edge, %err_irq.for.end223_crit_edge
  call void @pci_disable_msix(ptr noundef %pdev) #11
  call void @pci_disable_msi(ptr noundef %pdev) #11
  br label %err_iounmap

err_iounmap:                                      ; preds = %for.end223, %do.end63
  %err.6 = phi i32 [ -12, %do.end63 ], [ %err.5, %for.end223 ]
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %tobool229.not = icmp eq ptr %59, null
  br i1 %tobool229.not, label %err_iounmap.for.inc234_crit_edge, label %if.then230

err_iounmap.for.inc234_crit_edge:                 ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc234

if.then230:                                       ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %59) #11
  br label %for.inc234

for.inc234:                                       ; preds = %if.then230, %err_iounmap.for.inc234_crit_edge
  %arrayidx228.1 = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx228.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx228.1, align 8
  %tobool229.not.1 = icmp eq ptr %61, null
  br i1 %tobool229.not.1, label %for.inc234.for.inc234.1_crit_edge, label %if.then230.1

for.inc234.for.inc234.1_crit_edge:                ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc234.1

if.then230.1:                                     ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %61) #11
  br label %for.inc234.1

for.inc234.1:                                     ; preds = %if.then230.1, %for.inc234.for.inc234.1_crit_edge
  %arrayidx228.2 = getelementptr %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx228.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx228.2, align 4
  %tobool229.not.2 = icmp eq ptr %63, null
  br i1 %tobool229.not.2, label %for.inc234.1.for.inc234.2_crit_edge, label %if.then230.2

for.inc234.1.for.inc234.2_crit_edge:              ; preds = %for.inc234.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc234.2

if.then230.2:                                     ; preds = %for.inc234.1
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %63) #11
  br label %for.inc234.2

for.inc234.2:                                     ; preds = %if.then230.2, %for.inc234.1.for.inc234.2_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %for.inc234.2, %do.end45, %if.then32.err_disable_pdev_crit_edge, %do.end29, %do.end21
  %err.7 = phi i32 [ %call16, %do.end21 ], [ %call.i, %do.end29 ], [ %spec.select, %do.end45 ], [ %err.6, %for.inc234.2 ], [ -12, %if.then32.err_disable_pdev_crit_edge ]
  %tdma_vaddr237 = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 28
  %64 = ptrtoint ptr %tdma_vaddr237 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tdma_vaddr237, align 4
  %tobool238.not = icmp eq ptr %65, null
  br i1 %tobool238.not, label %err_disable_pdev.if.end244_crit_edge, label %if.then239

err_disable_pdev.if.end244_crit_edge:             ; preds = %err_disable_pdev
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

if.then239:                                       ; preds = %err_disable_pdev
  call void @__sanitizer_cov_trace_pc() #13
  %66 = load i32, ptr @nr_scratch_pages, align 4
  %mul241 = shl i32 %66, 12
  %tdma_addr243 = getelementptr inbounds %struct.bcm_vk, ptr %call1.i.i.i, i32 0, i32 29
  %67 = ptrtoint ptr %tdma_addr243 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tdma_addr243, align 32
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %mul241, ptr noundef nonnull %65, i32 noundef %68, i32 noundef 0) #11
  br label %if.end244

if.end244:                                        ; preds = %if.then239, %err_disable_pdev.if.end244_crit_edge
  call void @pci_free_irq_vectors(ptr noundef %pdev) #11
  call void @pci_disable_device(ptr noundef %pdev) #11
  call void @pci_dev_put(ptr noundef %pdev) #11
  br label %err_free_exit

err_free_exit:                                    ; preds = %if.end244, %do.end12
  %err.8 = phi i32 [ %call7, %do.end12 ], [ %err.7, %if.end244 ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_exit, %if.then207, %if.end201, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.8, %err_free_exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then207 ], [ 0, %if.end201 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 7
  tail call void @bcm_vk_hb_deinit(ptr noundef %1) #11
  %call1 = tail call fastcc i32 @bcm_vk_trigger_reset(ptr noundef %1)
  tail call void @usleep_range_state(i32 noundef 100000, i32 noundef 150000, i32 noundef 2) #11
  %panic_nb = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 30
  %call2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_nb) #11
  tail call void @bcm_vk_msg_remove(ptr noundef %1) #11
  tail call void @bcm_vk_tty_exit(ptr noundef %1) #11
  %tdma_vaddr = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %tdma_vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tdma_vaddr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = load i32, ptr @nr_scratch_pages, align 4
  %mul = shl i32 %4, 12
  %tdma_addr = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %tdma_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tdma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %3, i32 noundef %6, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @misc_deregister(ptr noundef %miscdev) #11
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %10) #11
  %devid = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devid, align 4
  tail call void @ida_free(ptr noundef nonnull @bcm_vk_ida, i32 noundef %12) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %num_irqs = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp69 = icmp sgt i32 %14, 0
  br i1 %cmp69, label %for.body.lr.ph, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call9 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef %i.070) #11
  tail call void @devm_free_irq(ptr noundef %dev8, i32 noundef %call9, ptr noundef %1) #11
  %inc = add nuw nsw i32 %i.070, 1
  %15 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_irqs, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  tail call void @pci_disable_msix(ptr noundef %pdev) #11
  tail call void @pci_disable_msi(ptr noundef %pdev) #11
  %wq_work = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 26
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wq_work) #11
  %wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 25
  %17 = ptrtoint ptr %wq_thread to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wq_thread, align 4
  tail call void @destroy_workqueue(ptr noundef %18) #11
  tail call void @bcm_vk_tty_wq_exit(ptr noundef %1) #11
  %arrayidx = getelementptr %struct.bcm_vk, ptr %1, i32 0, i32 1, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %for.end.for.inc19_crit_edge, label %if.then15

for.end.for.inc19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %20) #11
  br label %for.inc19

for.inc19:                                        ; preds = %if.then15, %for.end.for.inc19_crit_edge
  %arrayidx.1 = getelementptr %struct.bcm_vk, ptr %1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1, align 4
  %tobool14.not.1 = icmp eq ptr %22, null
  br i1 %tobool14.not.1, label %for.inc19.for.inc19.1_crit_edge, label %if.then15.1

for.inc19.for.inc19.1_crit_edge:                  ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.1

if.then15.1:                                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %22) #11
  br label %for.inc19.1

for.inc19.1:                                      ; preds = %if.then15.1, %for.inc19.for.inc19.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bcm_vk, ptr %1, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2, align 4
  %tobool14.not.2 = icmp eq ptr %24, null
  br i1 %tobool14.not.2, label %for.inc19.1.for.inc19.2_crit_edge, label %if.then15.2

for.inc19.1.for.inc19.2_crit_edge:                ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19.2

if.then15.2:                                      ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %24) #11
  br label %for.inc19.2

for.inc19.2:                                      ; preds = %if.then15.2, %for.inc19.1.for.inc19.2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_remove.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_remove, %if.then26)) #11
          to label %do.end [label %if.then26], !srcloc !465

if.then26:                                        ; preds = %for.inc19.2
  call void @__sanitizer_cov_trace_pc() #13
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %devid28 = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %devid28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devid28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_remove.__UNIQUE_ID_ddebug259, ptr noundef %dev27, ptr noundef nonnull @.str.234, i32 noundef %26) #11
  br label %do.end

do.end:                                           ; preds = %if.then26, %for.inc19.2
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  %kref = getelementptr inbounds %struct.bcm_vk, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !474
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !475
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !476

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !477
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_release_data.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_remove, %if.then.i.i)) #11
          to label %bcm_vk_release_data.exit.i [label %if.then.i.i], !srcloc !465

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %devid.i.i = getelementptr %struct.bcm_vk, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devid.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_release_data.__UNIQUE_ID_ddebug258, ptr noundef %dev.i.i, ptr noundef nonnull @.str.34, i32 noundef %31, ptr noundef %1) #11
  br label %bcm_vk_release_data.exit.i

bcm_vk_release_data.exit.i:                       ; preds = %if.then.i.i, %if.then.i
  tail call void @pci_dev_put(ptr noundef %29) #11
  tail call void @kfree(ptr noundef %1) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %bcm_vk_release_data.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  %lnksta = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !463
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %and = and i32 %5, -2883585
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %and, label %entry.if.end11_crit_edge [
    i32 131078, label %if.then
    i32 65538, label %if.then4
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @bcm_vk_trigger_reset(ptr noundef %1)
  br label %if.end11

if.then4:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lnksta) #11
  %7 = ptrtoint ptr %lnksta to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %lnksta, align 2, !annotation !470
  %call5 = call i32 @pcie_capability_read_word(ptr noundef %pdev, i32 noundef 18, ptr noundef nonnull %lnksta) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then4
  %8 = ptrtoint ptr %lnksta to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lnksta, align 2
  %10 = and i16 %9, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp7.not = icmp eq i16 %10, 1
  br i1 %cmp7.not, label %land.lhs.true.if.end_crit_edge, label %if.then9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %5, 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  %11 = call i32 @llvm.bswap.i32(i32 %or) #11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %13, i32 1028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %11) #11, !srcloc !469
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true.if.end_crit_edge, %if.then4.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lnksta) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_msgq_irqhandler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_tty_irqhandler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_wq_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -18988
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %wq_offload = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %wq_offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %wq_offload, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %wq_offload) #11
  tail call void @bcm_vk_handle_notf(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %wq_offload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %wq_offload, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @bcm_vk_auto_load_all_images(ptr noundef %add.ptr)
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %wq_offload) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %wq_offload) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @bcm_to_h_msg_dequeue(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_wq_handler.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_wq_handler, %if.then22)) #11
          to label %if.end27 [label %if.then22], !srcloc !465

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_wq_handler.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.232) #11
  br label %if.end27

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp24 = icmp slt i32 %call15, 0
  br i1 %cmp24, label %if.then25, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bcm_vk_blk_drv_access(ptr noundef %add.ptr)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.else.if.end27_crit_edge, %if.then22, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_msg_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_vk_on_panic(ptr nocapture noundef readonly %nb, i32 noundef %e, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %arrayidx.i.i = getelementptr i8, ptr %nb, i32 -19040
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -33554433) #11, !srcloc !469
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_tty_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_hb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_tty_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_poll(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_vk_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %reset.i = alloca %struct.vk_reset, align 4
  %image.i = alloca %struct.vk_image, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -728
  %4 = inttoptr i32 %arg to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_ioctl.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_ioctl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !465

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_ioctl.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.196, i32 noundef %cmd, i32 noundef %arg) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr i8, ptr %3, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %cmd, label %do.end.sw.epilog_crit_edge [
    i32 1078222338, label %sw.bb
    i32 1074290180, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %image.i) #11
  %10 = call ptr @memset(ptr %image.i, i32 255, i32 68)
  tail call void @__might_fault(ptr noundef nonnull @.str.213, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 68, i32 -1226833920) #16, !srcloc !478
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !476

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %image.i, i32 noundef 68) #11
  %12 = call i32 @llvm.read_register.i32(metadata !453) #11
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !479
  %and.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !480
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %image.i, ptr noundef %4, i32 noundef 68) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !480
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !476

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i87.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 68, %sw.bb.if.then11.i.i.i_crit_edge ], [ 68, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 68, %res.0.i.i87.i
  %add.ptr.i.i.i = getelementptr i8, ptr %image.i, i32 %sub.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i87.i)
  br label %bcm_vk_load_image.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %16 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %image.i, align 4
  %.off.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.197, i32 noundef %17) #14
  br label %bcm_vk_load_image.exit

if.end6.i:                                        ; preds = %if.end.i
  %arrayidx.i.i.i = getelementptr i8, ptr %3, i32 -724
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i79.i = getelementptr i8, ptr %19, i32 1028
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.i) #11, !srcloc !463
  %21 = call i32 @llvm.bswap.i32(i32 %20) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %23, i32 1052
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #11, !srcloc !463
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.i = icmp eq i32 %20, -1
  %and.i.i = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %cmp.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663808, i32 %20)
  %cmp2.i.i = icmp eq i32 %20, 100663808
  %spec.select.i.i = select i1 %cmp2.i.i, i32 2, i32 0
  %load_type.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i.i, i32 1
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.72, i32 noundef %21, i32 noundef %25) #14
  %28 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %image.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %load_type.0.i.i, i32 %29)
  %cmp9.not.i = icmp eq i32 %load_type.0.i.i, %29
  br i1 %cmp9.not.i, label %if.end15.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.200, i32 noundef %load_type.0.i.i, i32 noundef %29) #14
  br label %bcm_vk_load_image.exit

if.end15.i:                                       ; preds = %if.end6.i
  %wq_offload.i = getelementptr i8, ptr %3, i32 18304
  %call16.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %wq_offload.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.203) #14
  br label %bcm_vk_load_image.exit

if.end22.i:                                       ; preds = %if.end15.i
  %filename.i = getelementptr inbounds %struct.vk_image, ptr %image.i, i32 0, i32 1
  %30 = ptrtoint ptr %filename.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %filename.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp24.i = icmp eq i8 %31, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %if.end22.i
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device.i.i, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.240)
  switch i16 %35, label %get_soc_idx.exit.thread93.i [
    i16 24199, label %sw.bb.i.i
    i16 24200, label %if.then26.i.if.end31.i_crit_edge
  ]

if.then26.i.if.end31.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

sw.bb.i.i:                                        ; preds = %if.then26.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %38, i32 1096
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.i) #11, !srcloc !463
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %40 = lshr i32 %39, 12
  %and.i82.i = and i32 %40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i82.i)
  %cmp.i83.i = icmp ult i32 %and.i82.i, 2
  br i1 %cmp.i83.i, label %get_soc_idx.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i84.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i84.i, ptr noundef nonnull @.str.57, i32 noundef %and.i82.i, i32 noundef 0) #14
  br label %if.end31.i

get_soc_idx.exit.thread93.i:                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i16 %35 to i32
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i.i, ptr noundef nonnull @.str.61, i32 noundef %conv.i.i) #14
  br label %err_idx.i

get_soc_idx.exit.i:                               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr [2 x i32], ptr @get_soc_idx.vk_soc_tab, i32 0, i32 %and.i82.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %get_soc_idx.exit.i, %if.else.i.i, %if.then26.i.if.end31.i_crit_edge
  %idx.0.i92.i = phi i32 [ %42, %get_soc_idx.exit.i ], [ 2, %if.then26.i.if.end31.i_crit_edge ], [ 0, %if.else.i.i ]
  %43 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %image.i, align 4
  %sub.i = add i32 %44, -1
  %arrayidx34.i = getelementptr [3 x [2 x %struct.load_image_entry]], ptr @image_tab, i32 0, i32 %idx.0.i92.i, i32 %sub.i
  %call35.i = call fastcc ptr @get_load_fw_name(ptr noundef %add.ptr, ptr noundef %arrayidx34.i) #11
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %do.end40.i, label %if.end31.i.if.end45.i_crit_edge

if.end31.i.if.end45.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

do.end40.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %image.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.206, i32 noundef %46) #14
  br label %err_idx.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx44.i = getelementptr inbounds %struct.vk_image, ptr %image.i, i32 0, i32 1, i32 63
  %47 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx44.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.end31.i.if.end45.i_crit_edge
  %image_name.0.i = phi ptr [ %call35.i, %if.end31.i.if.end45.i_crit_edge ], [ %filename.i, %if.else.i ]
  %48 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %image.i, align 4
  %call47.i = call fastcc i32 @bcm_vk_load_image_by_type(ptr noundef %add.ptr, i32 noundef %49, ptr noundef %image_name.0.i) #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.209, ptr noundef %image_name.0.i, i32 noundef %call47.i) #14
  br label %err_idx.i

err_idx.i:                                        ; preds = %if.end45.i, %do.end40.i, %get_soc_idx.exit.thread93.i
  %ret.0.i = phi i32 [ %call47.i, %if.end45.i ], [ -2, %do.end40.i ], [ -1, %get_soc_idx.exit.thread93.i ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %wq_offload.i) #11
  br label %bcm_vk_load_image.exit

bcm_vk_load_image.exit:                           ; preds = %err_idx.i, %do.end21.i, %do.end13.i, %do.end.i, %if.then11.i.i.i
  %retval.0.i15 = phi i32 [ -1, %do.end.i ], [ -1, %do.end13.i ], [ -1, %do.end21.i ], [ %ret.0.i, %err_idx.i ], [ -13, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %image.i) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %dev1.i16 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset.i) #11
  %52 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %reset.i, align 4, !annotation !470
  %53 = getelementptr inbounds %struct.vk_reset, ptr %reset.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %53, align 4, !annotation !470
  tail call void @__might_fault(ptr noundef nonnull @.str.213, i32 noundef 156) #11
  %call.i.i.i17 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i17, label %sw.bb5.if.then11.i.i.i31_crit_edge, label %land.lhs.true.i.i.i20

sw.bb5.if.then11.i.i.i31_crit_edge:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i31

land.lhs.true.i.i.i20:                            ; preds = %sw.bb5
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1226833920) #16
  %asmresult.i.i.i18 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i18)
  %cmp.i6.i.i19 = icmp eq i32 %asmresult.i.i.i18, 0
  br i1 %cmp.i6.i.i19, label %if.end.i.i.i28, label %land.lhs.true.i.i.i20.if.then11.i.i.i31_crit_edge, !prof !476

land.lhs.true.i.i.i20.if.then11.i.i.i31_crit_edge: ; preds = %land.lhs.true.i.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i31

if.end.i.i.i28:                                   ; preds = %land.lhs.true.i.i.i20
  %call.i.i.i.i21 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reset.i, i32 noundef 8) #11
  %56 = call i32 @llvm.read_register.i32(metadata !453) #11
  %and.i.i.i.i.i.i.i22 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i.i22 to ptr
  %cpu_domain.i.i.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i23) #9, !srcloc !479
  %and.i.i.i.i.i24 = and i32 %58, -13
  %or.i.i.i.i.i25 = or i32 %and.i.i.i.i.i24, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i25) #11, !srcloc !480
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  %call1.i.i.i.i26 = call i32 @arm_copy_from_user(ptr noundef nonnull %reset.i, ptr noundef %4, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #11, !srcloc !480
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i26)
  %tobool4.not.i.i.i27 = icmp eq i32 %call1.i.i.i.i26, 0
  br i1 %tobool4.not.i.i.i27, label %if.end.i33, label %if.end.i.i.i28.if.then11.i.i.i31_crit_edge, !prof !476

if.end.i.i.i28.if.then11.i.i.i31_crit_edge:       ; preds = %if.end.i.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i31

if.then11.i.i.i31:                                ; preds = %if.end.i.i.i28.if.then11.i.i.i31_crit_edge, %land.lhs.true.i.i.i20.if.then11.i.i.i31_crit_edge, %sw.bb5.if.then11.i.i.i31_crit_edge
  %res.0.i.i65.i = phi i32 [ %call1.i.i.i.i26, %if.end.i.i.i28.if.then11.i.i.i31_crit_edge ], [ 8, %sw.bb5.if.then11.i.i.i31_crit_edge ], [ 8, %land.lhs.true.i.i.i20.if.then11.i.i.i31_crit_edge ]
  %sub.i.i.i29 = sub i32 8, %res.0.i.i65.i
  %add.ptr.i.i.i30 = getelementptr i8, ptr %reset.i, i32 %sub.i.i.i29
  %59 = call ptr @memset(ptr %add.ptr.i.i.i30, i32 0, i32 %res.0.i.i65.i)
  br label %bcm_vk_reset.exit

if.end.i33:                                       ; preds = %if.end.i.i.i28
  %wq_offload.i32 = getelementptr i8, ptr %3, i32 18304
  %call2.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %wq_offload.i32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.end4.i, label %do.end.i34

do.end.i34:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.214) #14
  br label %bcm_vk_reset.exit

if.end4.i:                                        ; preds = %if.end.i33
  %peer_alert.i = getelementptr i8, ptr %3, i32 18436
  %60 = ptrtoint ptr %peer_alert.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %peer_alert.i, align 4
  %62 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool8.not.i = icmp eq i16 %62, 0
  %cond.i = select i1 %tobool8.not.i, ptr @.str.70, ptr @.str.219
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i16, ptr noundef nonnull @.str.217, ptr noundef nonnull %cond.i) #14
  %call9.i = call i32 @bcm_vk_send_shutdown_msg(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  %ctx_lock.i = getelementptr i8, ptr %3, i32 1924
  call void @_raw_spin_lock(ptr noundef %ctx_lock.i) #11
  %reset_pid.i = getelementptr i8, ptr %3, i32 17712
  %63 = ptrtoint ptr %reset_pid.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reset_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool10.not.i = icmp eq i32 %64, 0
  br i1 %tobool10.not.i, label %if.end23.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i16, ptr noundef nonnull @.str.221, i32 noundef %64) #14
  call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #11
  br label %err_exit.i

if.end23.i:                                       ; preds = %if.end4.i
  %65 = call i32 @llvm.read_register.i32(metadata !453) #11
  %and.i.i35 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i35 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid.i.i, align 8
  %71 = ptrtoint ptr %reset_pid.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %reset_pid.i, align 4
  call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #11
  call void @bcm_vk_blk_drv_access(ptr noundef %add.ptr) #11
  %call24.i = call fastcc i32 @bcm_vk_trigger_reset(ptr noundef %add.ptr) #11
  call void @msleep(i32 noundef 2000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.else31.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  %72 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call24.i, ptr %53, align 4
  call void @__might_fault(ptr noundef nonnull @.str.213, i32 noundef 174) #11
  %call.i.i58.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i58.i, label %if.then.i.i.err_exit.i_crit_edge, label %copy_to_user.exit.i

if.then.i.i.err_exit.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_exit.i

copy_to_user.exit.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i61.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reset.i, i32 noundef 8) #11
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %reset.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool28.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool28.not.i, i32 0, i32 -14
  br label %err_exit.i

if.else31.i:                                      ; preds = %if.end23.i
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 4
  %dev1.i37 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %arrayidx.i.i38 = getelementptr i8, ptr %3, i32 -724
  %75 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i38, align 4
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 1052
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !463
  %78 = call i32 @llvm.bswap.i32(i32 %77) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp.i = icmp eq i32 %77, -1
  br i1 %cmp.i, label %do.end.i39, label %if.end.i43

do.end.i39:                                       ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i37, ptr noundef nonnull @.str.228) #14
  br label %do.body11.i

if.end.i43:                                       ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %78, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %78)
  %cmp3.i = icmp ugt i32 %78, -268435457
  %or.cond.i = or i1 %cmp3.i, %cmp2.i
  %ret.0.i40 = select i1 %or.cond.i, i32 0, i32 -11
  %and6.i = and i32 %78, 125829120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp ne i32 %and6.i, 0
  %and7.i = and i32 %78, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i41 = icmp eq i32 %and7.i, 0
  %or.cond28.i = and i1 %tobool.not.i, %tobool8.not.i41
  %spec.select.i42 = select i1 %or.cond28.i, i32 -11, i32 %ret.0.i40
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.end.i43, %do.end.i39
  %ret.1.i44 = phi i32 [ -11, %do.end.i39 ], [ %spec.select.i42, %if.end.i43 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_reset_successful.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_ioctl, %if.then16.i)) #11
          to label %err_exit.i [label %if.then16.i], !srcloc !465

if.then16.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_reset_successful.__UNIQUE_ID_ddebug255, ptr noundef %dev1.i37, ptr noundef nonnull @.str.230, i32 noundef %78, i32 noundef %ret.1.i44) #11
  br label %err_exit.i

err_exit.i:                                       ; preds = %if.then16.i, %do.body11.i, %copy_to_user.exit.i, %if.then.i.i.err_exit.i_crit_edge, %if.end19.i
  %ret.1.i = phi i32 [ -13, %if.end19.i ], [ -14, %if.then.i.i.err_exit.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %ret.1.i44, %do.body11.i ], [ %ret.1.i44, %if.then16.i ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %wq_offload.i32) #11
  br label %bcm_vk_reset.exit

bcm_vk_reset.exit:                                ; preds = %err_exit.i, %do.end.i34, %if.then11.i.i.i31
  %retval.0.i36 = phi i32 [ -1, %do.end.i34 ], [ %ret.1.i, %err_exit.i ], [ -14, %if.then11.i.i.i31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %bcm_vk_reset.exit, %bcm_vk_load_image.exit, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end.sw.epilog_crit_edge ], [ %retval.0.i36, %bcm_vk_reset.exit ], [ %retval.0.i15, %bcm_vk_load_image.exit ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_vk_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -728
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %end = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 4, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %7, %9
  %phi.bo = lshr i32 %sub, 12
  %phi.bo40 = add nuw nsw i32 %phi.bo, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo40, %cond.false ], [ 1048576, %entry.cond.end_crit_edge ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %12 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_end.i, align 4
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %13, %15
  %shr.i = lshr i32 %sub.i, 12
  %add10 = add i32 %shr.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %cond)
  %cmp11 = icmp ugt i32 %add10, %cond
  br i1 %cmp11, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 8
  %shr16 = lshr i32 %17, 12
  %add18 = add i32 %shr16, %11
  %18 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add18, ptr %vm_pgoff, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %19 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %20, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %15, i32 noundef %add18, i32 noundef %sub.i, i32 noundef %and) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_send_shutdown_msg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_trigger_reset(ptr noundef %vk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bcm_vk_drain_msg_on_reset(ptr noundef %vk) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %3, i32 25008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %5, i32 25088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %7, i32 25160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i91.1 = getelementptr i8, ptr %9, i32 25168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.1, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i93.1 = getelementptr i8, ptr %11, i32 25240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.1, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i91.2 = getelementptr i8, ptr %13, i32 25248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.2, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i93.2 = getelementptr i8, ptr %15, i32 25320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.2, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i91.3 = getelementptr i8, ptr %17, i32 25328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.3, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i93.3 = getelementptr i8, ptr %19, i32 25400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.3, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %21, i32 25408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i95.1 = getelementptr i8, ptr %23, i32 25424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.1, i32 0) #11, !srcloc !469
  %card_info = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 3
  %peerlog_info = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 38
  %24 = call ptr @memset(ptr %peerlog_info, i32 0, i32 16)
  %alert_cnts = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 36
  %25 = ptrtoint ptr %alert_cnts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %alert_cnts, align 4
  %arrayidx.i96 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %26 = call ptr @memset(ptr %card_info, i32 0, i32 296)
  %27 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i97 = getelementptr i8, ptr %28, i32 1028
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #11, !srcloc !463
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %and = and i32 %30, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vk, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.223, i32 noundef %30) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i99 = getelementptr i8, ptr %34, i32 1024
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #11, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  %36 = and i32 %35, 15794175
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %value.0 = phi i32 [ 0, %do.end ], [ %37, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %38 = tail call i32 @llvm.bswap.i32(i32 %value.0) #11
  %39 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i101 = getelementptr i8, ptr %40, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %38) #11, !srcloc !469
  %peer_alert = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 35
  %41 = ptrtoint ptr %peer_alert to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %peer_alert, align 4
  %43 = and i16 %42, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool25.not = icmp eq i16 %43, 0
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i103 = getelementptr i8, ptr %45, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 160) #11, !srcloc !469
  br label %cleanup

if.else27:                                        ; preds = %if.end
  %and19 = and i32 %30, -2883585
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048582, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 1048582
  %and17 = and i32 %30, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %brmerge = or i1 %tobool18.not, %cmp20
  br i1 %brmerge, label %if.end38, label %do.end34

do.end34:                                         ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vk, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.226) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 1180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -33554433) #11, !srcloc !469
  br label %cleanup

if.end38:                                         ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i105 = getelementptr i8, ptr %51, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 16) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %53, i32 1180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i107, i32 -1) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i109 = getelementptr i8, ptr %55, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i109.1 = getelementptr i8, ptr %57, i32 1148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.1, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i109.2 = getelementptr i8, ptr %59, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.2, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i109.3 = getelementptr i8, ptr %61, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.3, i32 0) #11, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i96, align 4
  %add.ptr.i109.4 = getelementptr i8, ptr %63, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.4, i32 0) #11, !srcloc !469
  %host_alert = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 34
  %64 = ptrtoint ptr %host_alert to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %host_alert, align 4
  %65 = ptrtoint ptr %peer_alert to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %peer_alert, align 4
  %bmap = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 17
  %66 = call ptr @memset(ptr %bmap, i32 0, i32 512)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end34, %if.then26
  %retval.0 = phi i32 [ -1610612736, %if.then26 ], [ 0, %if.end38 ], [ -3, %do.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_drain_msg_on_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_to_h_msg_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_hb_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_msg_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_tty_wq_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !93, !95, !96, !97, !98, !99, !101, !102, !104, !105, !107, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !144, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !292, !293, !295, !297, !299, !300, !301, !302, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !349, !350, !351, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !370, !371, !372, !374, !375, !377, !378, !380, !382, !383, !384, !386, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !410, !412, !414, !415, !416, !417, !419, !420, !421, !422, !424, !425, !426, !428, !430, !431, !432, !433, !435, !436, !437, !439, !440, !441, !442, !444, !445, !447, !448, !449, !451, !452}
!llvm.named.register.sp = !{!453}
!llvm.module.flags = !{!454, !455, !456, !457, !458, !459, !460, !461}
!llvm.ident = !{!462}

!0 = !{ptr @__param_auto_load, !1, !"__param_auto_load", i1 false, i1 false}
!1 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 100, i32 1}
!2 = !{ptr @__UNIQUE_ID_auto_loadtype236, !1, !"__UNIQUE_ID_auto_loadtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_auto_load237, !4, !"__UNIQUE_ID_auto_load237", i1 false, i1 false}
!4 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 101, i32 1}
!5 = !{ptr @__param_nr_scratch_pages, !6, !"__param_nr_scratch_pages", i1 false, i1 false}
!6 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 104, i32 1}
!7 = !{ptr @__UNIQUE_ID_nr_scratch_pagestype238, !6, !"__UNIQUE_ID_nr_scratch_pagestype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nr_scratch_pages239, !9, !"__UNIQUE_ID_nr_scratch_pages239", i1 false, i1 false}
!9 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 105, i32 1}
!10 = !{ptr @__param_nr_ib_sgl_blk, !11, !"__param_nr_ib_sgl_blk", i1 false, i1 false}
!11 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 108, i32 1}
!12 = !{ptr @__UNIQUE_ID_nr_ib_sgl_blktype240, !11, !"__UNIQUE_ID_nr_ib_sgl_blktype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nr_ib_sgl_blk241, !14, !"__UNIQUE_ID_nr_ib_sgl_blk241", i1 false, i1 false}
!14 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 109, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 116, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 117, i32 41}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 118, i32 41}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 119, i32 49}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 120, i32 47}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 121, i32 41}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 122, i32 37}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 124, i32 3}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 125, i32 51}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 126, i32 49}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 127, i32 29}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 128, i32 37}
!39 = !{ptr @bcm_vk_peer_err, !40, !"bcm_vk_peer_err", i1 false, i1 false}
!40 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 115, i32 27}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 133, i32 49}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 134, i32 47}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 135, i32 55}
!47 = !{ptr @bcm_vk_host_err, !48, !"bcm_vk_host_err", i1 false, i1 false}
!48 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 132, i32 27}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 143, i32 3}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bcm_vk_notf_irqhandler._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm_vk_notf_irqhandler._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 522, i32 5}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bcm_vk_blk_drv_access.__UNIQUE_ID_ddebug247, !58, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 870, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm_vk_auto_load_all_images.__UNIQUE_ID_ddebug253, !63, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 877, i32 5}
!68 = !{ptr @bcm_vk_auto_load_all_images._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @bcm_vk_auto_load_all_images._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 884, i32 4}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bcm_vk_auto_load_all_images._entry.26, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @bcm_vk_auto_load_all_images._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 888, i32 5}
!77 = !{ptr @bcm_vk_auto_load_all_images._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @bcm_vk_auto_load_all_images._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1539, i32 2}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @bcm_vk_release_data.__UNIQUE_ID_ddebug258, !80, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!83 = !{ptr @__initcall__kmod_bcm_vk__260_1648_pci_driver_init6, !84, !"__initcall__kmod_bcm_vk__260_1648_pci_driver_init6", i1 false, i1 false}
!84 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1648, i32 1}
!85 = !{ptr @__exitcall_pci_driver_exit, !84, !"__exitcall_pci_driver_exit", i1 false, i1 false}
!86 = !{ptr @__UNIQUE_ID_description261, !87, !"__UNIQUE_ID_description261", i1 false, i1 false}
!87 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1650, i32 1}
!88 = !{ptr @__UNIQUE_ID_author262, !89, !"__UNIQUE_ID_author262", i1 false, i1 false}
!89 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1651, i32 1}
!90 = !{ptr @__UNIQUE_ID_file263, !91, !"__UNIQUE_ID_file263", i1 false, i1 false}
!91 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1652, i32 1}
!92 = !{ptr @__UNIQUE_ID_license264, !91, !"__UNIQUE_ID_license264", i1 false, i1 false}
!93 = !{ptr @__UNIQUE_ID_version265, !94, !"__UNIQUE_ID_version265", i1 false, i1 false}
!94 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1653, i32 1}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__modver_attr, !94, !"__modver_attr", i1 false, i1 false}
!98 = !{ptr @__param_str_auto_load, !1, !"__param_str_auto_load", i1 false, i1 false}
!99 = !{ptr @auto_load, !100, !"auto_load", i1 false, i1 false}
!100 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 99, i32 13}
!101 = !{ptr @__param_str_nr_scratch_pages, !6, !"__param_str_nr_scratch_pages", i1 false, i1 false}
!102 = !{ptr @nr_scratch_pages, !103, !"nr_scratch_pages", i1 false, i1 false}
!103 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 103, i32 13}
!104 = !{ptr @__param_str_nr_ib_sgl_blk, !11, !"__param_str_nr_ib_sgl_blk", i1 false, i1 false}
!105 = !{ptr @nr_ib_sgl_blk, !106, !"nr_ib_sgl_blk", i1 false, i1 false}
!106 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 107, i32 13}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 217, i32 5}
!109 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @bcm_vk_log_notf._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @bcm_vk_log_notf._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 229, i32 5}
!115 = !{ptr @bcm_vk_log_notf._entry.40, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @bcm_vk_log_notf._entry_ptr.42, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 235, i32 4}
!119 = !{ptr @bcm_vk_log_notf._entry.43, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @bcm_vk_log_notf._entry_ptr.45, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 253, i32 2}
!125 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @bcm_vk_dump_peer_log.__UNIQUE_ID_ddebug243, !124, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 257, i32 3}
!129 = !{ptr @bcm_vk_dump_peer_log._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @bcm_vk_dump_peer_log._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 266, i32 3}
!133 = !{ptr @bcm_vk_dump_peer_log._entry.51, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @bcm_vk_dump_peer_log._entry_ptr.53, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 282, i32 4}
!137 = !{ptr @bcm_vk_dump_peer_log._entry.54, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @bcm_vk_dump_peer_log._entry_ptr.56, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @get_soc_idx.vk_soc_tab, !140, !"vk_soc_tab", i1 false, i1 false}
!140 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 807, i32 28}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 818, i32 4}
!143 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @get_soc_idx._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @get_soc_idx._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 829, i32 3}
!149 = !{ptr @get_soc_idx._entry.60, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @get_soc_idx._entry_ptr.62, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 49, i32 26}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 49, i32 45}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 50, i32 26}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 50, i32 45}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 53, i32 26}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 54, i32 26}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 58, i32 26}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 58, i32 42}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 59, i32 26}
!169 = !{ptr @image_tab, !170, !"image_tab", i1 false, i1 false}
!170 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 47, i32 38}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 795, i32 2}
!173 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @bcm_vk_next_boot_image._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @bcm_vk_next_boot_image._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 577, i32 4}
!178 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @bcm_vk_load_image_by_type._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @bcm_vk_load_image_by_type._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 586, i32 4}
!183 = !{ptr @bcm_vk_load_image_by_type._entry.76, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.78, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 598, i32 4}
!187 = !{ptr @bcm_vk_load_image_by_type._entry.79, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.81, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @bcm_vk_load_image_by_type._entry.82, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 608, i32 4}
!191 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.83, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 615, i32 3}
!194 = !{ptr @bcm_vk_load_image_by_type._entry.84, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.86, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 624, i32 3}
!198 = !{ptr @bcm_vk_load_image_by_type._entry.87, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.89, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 628, i32 2}
!202 = !{ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug248, !201, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 634, i32 2}
!205 = !{ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug249, !204, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!206 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 650, i32 4}
!208 = !{ptr @bcm_vk_load_image_by_type._entry.92, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.94, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 660, i32 5}
!212 = !{ptr @bcm_vk_load_image_by_type._entry.95, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.97, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 663, i32 5}
!216 = !{ptr @bcm_vk_load_image_by_type._entry.98, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.100, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 686, i32 5}
!220 = !{ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug250, !219, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 689, i32 5}
!223 = !{ptr @bcm_vk_load_image_by_type._entry.102, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.104, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 695, i32 5}
!227 = !{ptr @bcm_vk_load_image_by_type._entry.105, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.107, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 713, i32 6}
!231 = !{ptr @bcm_vk_load_image_by_type._entry.108, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.110, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug251, !234, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!234 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 718, i32 5}
!235 = !{ptr @bcm_vk_load_image_by_type.__UNIQUE_ID_ddebug252, !236, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!236 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 719, i32 5}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 726, i32 5}
!239 = !{ptr @bcm_vk_load_image_by_type._entry.111, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.113, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 737, i32 4}
!243 = !{ptr @bcm_vk_load_image_by_type._entry.114, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.116, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 746, i32 5}
!247 = !{ptr @bcm_vk_load_image_by_type._entry.117, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.119, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 756, i32 5}
!251 = !{ptr @bcm_vk_load_image_by_type._entry.120, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.122, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 764, i32 5}
!255 = !{ptr @bcm_vk_load_image_by_type._entry.123, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @bcm_vk_load_image_by_type._entry_ptr.125, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 351, i32 3}
!259 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @bcm_vk_wait.__UNIQUE_ID_ddebug244, !258, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 357, i32 4}
!263 = !{ptr @bcm_vk_wait._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @bcm_vk_wait._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 173, i32 3}
!267 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @bcm_vk_intf_ver_chk._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @bcm_vk_intf_ver_chk._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.132, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 176, i32 3}
!272 = !{ptr @bcm_vk_intf_ver_chk._entry.131, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @bcm_vk_intf_ver_chk._entry_ptr.133, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 182, i32 3}
!276 = !{ptr @bcm_vk_intf_ver_chk.__UNIQUE_ID_ddebug242, !275, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 399, i32 2}
!279 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @bcm_vk_get_card_info.__UNIQUE_ID_ddebug245, !278, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 422, i32 3}
!283 = !{ptr @bcm_vk_get_card_info._entry, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @bcm_vk_get_card_info._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.138, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 429, i32 3}
!287 = !{ptr @bcm_vk_get_card_info.__UNIQUE_ID_ddebug246, !286, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!288 = !{ptr @.str.139, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 457, i32 3}
!290 = !{ptr @.str.140, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @bcm_vk_get_proc_mon_info._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @bcm_vk_get_proc_mon_info._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @pci_driver, !294, !"pci_driver", i1 false, i1 false}
!294 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1641, i32 26}
!295 = !{ptr @bcm_vk_ids, !296, !"bcm_vk_ids", i1 false, i1 false}
!296 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1634, i32 35}
!297 = !{ptr @.str.141, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1298, i32 3}
!299 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @bcm_vk_probe._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @bcm_vk_probe._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @bcm_vk_probe.__key, !303, !"__key", i1 false, i1 false}
!303 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1303, i32 2}
!304 = !{ptr @.str.143, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.145, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1307, i32 3}
!307 = !{ptr @bcm_vk_probe._entry.144, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @bcm_vk_probe._entry_ptr.146, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.148, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1314, i32 3}
!311 = !{ptr @bcm_vk_probe._entry.147, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @bcm_vk_probe._entry_ptr.149, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.151, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1322, i32 3}
!315 = !{ptr @bcm_vk_probe._entry.150, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @bcm_vk_probe._entry_ptr.152, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.154, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1347, i32 3}
!319 = !{ptr @bcm_vk_probe._entry.153, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @bcm_vk_probe._entry_ptr.155, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1354, i32 3}
!323 = !{ptr @bcm_vk_probe._entry.156, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @bcm_vk_probe._entry_ptr.158, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.160, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1361, i32 4}
!327 = !{ptr @bcm_vk_probe._entry.159, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @bcm_vk_probe._entry_ptr.161, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.163, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1374, i32 4}
!331 = !{ptr @bcm_vk_probe._entry.162, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @bcm_vk_probe._entry_ptr.164, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1384, i32 3}
!335 = !{ptr @bcm_vk_probe._entry.165, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @bcm_vk_probe._entry_ptr.167, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.169, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1397, i32 4}
!339 = !{ptr @bcm_vk_probe._entry.168, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @bcm_vk_probe._entry_ptr.170, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.172, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1407, i32 3}
!343 = !{ptr @bcm_vk_probe._entry.171, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @bcm_vk_probe._entry_ptr.173, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.174, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1412, i32 31}
!347 = !{ptr @.str.176, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1424, i32 3}
!349 = !{ptr @bcm_vk_probe._entry.175, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @bcm_vk_probe._entry_ptr.177, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @bcm_vk_probe.__key.178, !352, !"__key", i1 false, i1 false}
!352 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1428, i32 2}
!353 = !{ptr @.str.179, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.181, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1433, i32 3}
!356 = !{ptr @bcm_vk_probe._entry.180, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @bcm_vk_probe._entry_ptr.182, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.184, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1440, i32 3}
!360 = !{ptr @bcm_vk_probe._entry.183, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @bcm_vk_probe._entry_ptr.185, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.187, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1452, i32 3}
!364 = !{ptr @bcm_vk_probe._entry.186, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @bcm_vk_probe._entry_ptr.188, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.189, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1456, i32 31}
!368 = !{ptr @.str.191, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1472, i32 4}
!370 = !{ptr @bcm_vk_probe._entry.190, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @bcm_vk_probe._entry_ptr.192, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.193, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1481, i32 2}
!374 = !{ptr @bcm_vk_probe.__UNIQUE_ID_ddebug257, !373, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!375 = !{ptr @.str.194, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 25, i32 8}
!377 = !{ptr @bcm_vk_ida, !376, !"bcm_vk_ida", i1 false, i1 false}
!378 = !{ptr @bcm_vk_fops, !379, !"bcm_vk_fops", i1 false, i1 false}
!379 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1258, i32 37}
!380 = !{ptr @.str.195, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1234, i32 2}
!382 = !{ptr @.str.196, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @bcm_vk_ioctl.__UNIQUE_ID_ddebug256, !381, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!384 = !{ptr @.str.197, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 961, i32 3}
!386 = !{ptr @.str.198, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @bcm_vk_load_image._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @bcm_vk_load_image._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.200, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 967, i32 3}
!391 = !{ptr @bcm_vk_load_image._entry.199, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @bcm_vk_load_image._entry_ptr.201, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.203, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 978, i32 3}
!395 = !{ptr @bcm_vk_load_image._entry.202, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @bcm_vk_load_image._entry_ptr.204, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.206, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 993, i32 4}
!399 = !{ptr @bcm_vk_load_image._entry.205, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @bcm_vk_load_image._entry_ptr.207, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.209, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1003, i32 2}
!403 = !{ptr @bcm_vk_load_image._entry.208, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @bcm_vk_load_image._entry_ptr.210, !402, !"_entry_ptr", i1 false, i1 false}
!405 = distinct !{null, !406, !"__already_done", i1 false, i1 false}
!406 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!407 = distinct !{null, !406, !"<string literal>", i1 false, i1 false}
!408 = distinct !{null, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!410 = !{ptr @.str.213, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!412 = !{ptr @.str.214, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1152, i32 3}
!414 = !{ptr @.str.215, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @bcm_vk_reset._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @bcm_vk_reset._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.217, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1157, i32 2}
!419 = !{ptr @bcm_vk_reset._entry.216, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @bcm_vk_reset._entry_ptr.218, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.219, !418, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.221, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1173, i32 3}
!424 = !{ptr @bcm_vk_reset._entry.220, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @bcm_vk_reset._entry_ptr.222, !423, !"_entry_ptr", i1 false, i1 false}
!426 = distinct !{null, !427, !"bar0_reg_clr_list", i1 false, i1 false}
!427 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1063, i32 19}
!428 = !{ptr @.str.223, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1097, i32 3}
!430 = !{ptr @.str.224, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @bcm_vk_trigger_reset._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @bcm_vk_trigger_reset._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.226, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1119, i32 3}
!435 = !{ptr @bcm_vk_trigger_reset._entry.225, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @bcm_vk_trigger_reset._entry_ptr.227, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.228, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1030, i32 3}
!439 = !{ptr @.str.229, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @bcm_vk_reset_successful._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @bcm_vk_reset_successful._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.230, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1048, i32 2}
!444 = !{ptr @bcm_vk_reset_successful.__UNIQUE_ID_ddebug255, !443, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!445 = !{ptr @.str.231, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 940, i32 3}
!447 = !{ptr @.str.232, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @bcm_vk_wq_handler.__UNIQUE_ID_ddebug254, !446, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!449 = !{ptr @.str.233, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/misc/bcm-vk/bcm_vk_dev.c", i32 1593, i32 2}
!451 = !{ptr @.str.234, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @bcm_vk_remove.__UNIQUE_ID_ddebug259, !450, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!453 = !{!"sp"}
!454 = !{i32 1, !"wchar_size", i32 2}
!455 = !{i32 1, !"min_enum_size", i32 4}
!456 = !{i32 8, !"branch-target-enforcement", i32 0}
!457 = !{i32 8, !"sign-return-address", i32 0}
!458 = !{i32 8, !"sign-return-address-all", i32 0}
!459 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!460 = !{i32 7, !"uwtable", i32 1}
!461 = !{i32 7, !"frame-pointer", i32 2}
!462 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!463 = !{i64 6268227}
!464 = !{i64 2154741817}
!465 = !{i64 2148800013, i64 2148800018, i64 2148800031, i64 2148800075, i64 2148800109, i64 2148800130}
!466 = !{i64 6268007}
!467 = !{i64 2154742800}
!468 = !{i64 2154742206}
!469 = !{i64 6267809}
!470 = !{!"auto-init"}
!471 = !{i64 2154789934}
!472 = !{i64 2154789776}
!473 = !{i8 0, i8 2}
!474 = !{i64 2148321879}
!475 = !{i64 2148236343, i64 2148236375, i64 2148236404, i64 2148236438, i64 2148236469, i64 2148236492}
!476 = !{!"branch_weights", i32 2000, i32 1}
!477 = !{i64 2149600597}
!478 = !{i64 2153263685, i64 2153263710}
!479 = !{i64 5759240}
!480 = !{i64 5759437}
!481 = !{i64 2153244670}
