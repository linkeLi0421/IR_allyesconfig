; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/device.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hl_eq = type { ptr, ptr, i32, i32, i32, i8 }
%struct.asic_fixed_properties = type { ptr, %struct.cpucp_info, [128 x i8], [128 x i8], %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_mmu_properties, %struct.hl_hints_range, %struct.hl_hints_range, %struct.hl_hints_range, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x i16], [4 x i16], i16, [4 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpucp_info = type { [128 x %struct.cpucp_sensor], [128 x i8], i32, i32, i32, i32, i32, [128 x i8], [128 x i8], [128 x i8], i32, i64, [16 x i8], i64, i64, i8, i8, i8, i8, i8, [3 x i8], %struct.cpucp_security_info, i32, [16 x i8], i64 }
%struct.cpucp_sensor = type { i32, i32 }
%struct.cpucp_security_info = type { i8, i8, i8, i8 }
%struct.hl_mmu_properties = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8 }
%struct.hl_hints_range = type { i64, i64 }
%struct.hl_vm = type { ptr, %struct.kref, %struct.spinlock, %struct.idr, i8 }
%struct.hl_dbg_device_entry = type { ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.debugfs_blob_wrapper, [5 x ptr], %struct.rw_semaphore, i64, i64, i64, i32, i32, i8, i8, i8, i8 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.77, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.77 = type { %struct.dynamic_fw_load_mgr }
%struct.dynamic_fw_load_mgr = type { %struct.fw_response, %struct.lkd_fw_comms_desc, ptr, i32, i32, i8 }
%struct.fw_response = type { i32, i8, i8 }
%struct.lkd_fw_comms_desc = type { %struct.comms_desc_header, %struct.cpu_dyn_regs, [128 x i8], [128 x i8], [128 x i8], i64 }
%struct.comms_desc_header = type { i32, i32, i16, i8, [5 x i8] }
%struct.cpu_dyn_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x i32] }
%struct.fw_image_props = type { ptr, i32, i32 }
%struct.pci_mem_region = type { i64, i64, i64, i64, i8, i8 }
%struct.hl_state_dump_specs = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], %struct.hl_state_dump_specs_funcs, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_cq = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.atomic_t }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@hl_device_set_debug_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 637, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Failed to disable debug mode because device was not in debug mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hl_device_set_debug_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/misc/habanalabs/common/device.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_device_set_debug_mode._entry_ptr = internal global ptr @hl_device_set_debug_mode._entry, section ".printk_index", align 4
@hl_device_set_debug_mode._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 655, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed to enable debug mode because device is already in debug mode\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_device_set_debug_mode._entry_ptr.7 = internal global ptr @hl_device_set_debug_mode._entry.5, section ".printk_index", align 4
@hl_device_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't suspend while in reset\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_device_suspend\00", [46 x i8] zeroinitializer }, align 32
@hl_device_suspend._entry_ptr = internal global ptr @hl_device_suspend._entry, section ".printk_index", align 4
@hl_device_suspend._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable PCI access of device CPU\0A\00", [52 x i8] zeroinitializer }, align 32
@hl_device_suspend._entry_ptr.12 = internal global ptr @hl_device_suspend._entry.10, section ".printk_index", align 4
@hl_device_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 769, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable PCI device in resume\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_device_resume\00", [47 x i8] zeroinitializer }, align 32
@hl_device_resume._entry_ptr = internal global ptr @hl_device_resume._entry, section ".printk_index", align 4
@hl_device_resume._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 777, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to resume device after suspend\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_device_resume._entry_ptr.17 = internal global ptr @hl_device_resume._entry.15, section ".printk_index", align 4
@hl_device_resume._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to reset device during resume\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_device_resume._entry_ptr.20 = internal global ptr @hl_device_resume._entry.18, section ".printk_index", align 4
@hl_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 987, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't reset before initialization is done\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_device_reset\00", [16 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr = internal global ptr @hl_device_reset._entry, section ".printk_index", align 4
@hl_device_reset._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1003, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Aborting reset because hard-reset is mutually exclusive with reset-on-device-release\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.26 = internal global ptr @hl_device_reset._entry.23, section ".printk_index", align 4
@hl_device_reset.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.2, ptr @.str.28, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Doing hard-reset instead of soft-reset\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_device_reset._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 1054, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Going to reset device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.32 = internal global ptr @hl_device_reset._entry.29, section ".printk_index", align 4
@hl_device_reset._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str.2, i32 1056, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Going to reset device after release by user\0A\00", [51 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.35 = internal global ptr @hl_device_reset._entry.33, section ".printk_index", align 4
@hl_device_reset._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.22, ptr @.str.2, i32 1058, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Going to reset engines of inference device\0A\00", [52 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.38 = internal global ptr @hl_device_reset._entry.36, section ".printk_index", align 4
@hl_device_reset._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.22, ptr @.str.2, i32 1092, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to kill all open processes, stopping hard reset\0A\00", [40 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.41 = internal global ptr @hl_device_reset._entry.39, section ".printk_index", align 4
@hl_device_reset._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.22, ptr @.str.2, i32 1102, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.43 = internal global ptr @hl_device_reset._entry.42, section ".printk_index", align 4
@hl_device_reset._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.22, ptr @.str.2, i32 1153, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Consecutive FW fatal errors received, stopping hard reset\0A\00", [37 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.46 = internal global ptr @hl_device_reset._entry.44, section ".printk_index", align 4
@hl_device_reset._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.22, ptr @.str.2, i32 1160, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"kernel ctx was alive during hard reset, something is terribly wrong\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.49 = internal global ptr @hl_device_reset._entry.47, section ".printk_index", align 4
@hl_device_reset._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.22, ptr @.str.2, i32 1168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to initialize MMU S/W after hard reset\0A\00", [49 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.52 = internal global ptr @hl_device_reset._entry.50, section ".printk_index", align 4
@hl_device_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.2, i32 1186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to init kernel ctx in hard reset\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.55 = internal global ptr @hl_device_reset._entry.53, section ".printk_index", align 4
@hl_device_reset._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.22, ptr @.str.2, i32 1202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to initialize the H/W after reset\0A\00", [54 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.58 = internal global ptr @hl_device_reset._entry.56, section ".printk_index", align 4
@hl_device_reset._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.22, ptr @.str.2, i32 1210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"device is not idle (mask 0x%llx_%llx) after reset\0A\00", [45 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.61 = internal global ptr @hl_device_reset._entry.59, section ".printk_index", align 4
@hl_device_reset._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.22, ptr @.str.2, i32 1218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to detect if device is alive after reset\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.64 = internal global ptr @hl_device_reset._entry.62, section ".printk_index", align 4
@hl_device_reset._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.22, ptr @.str.2, i32 1225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed late init after hard reset\0A\00", [61 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.67 = internal global ptr @hl_device_reset._entry.65, section ".printk_index", align 4
@hl_device_reset._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.22, ptr @.str.2, i32 1231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to init memory module after hard reset\0A\00", [49 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.70 = internal global ptr @hl_device_reset._entry.68, section ".printk_index", align 4
@hl_device_reset._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.22, ptr @.str.2, i32 1241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed late init in reset after device release\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.73 = internal global ptr @hl_device_reset._entry.71, section ".printk_index", align 4
@hl_device_reset._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.22, ptr @.str.2, i32 1243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed late init after soft reset\0A\00", [61 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.76 = internal global ptr @hl_device_reset._entry.74, section ".printk_index", align 4
@hl_device_reset._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.22, ptr @.str.2, i32 1264, ptr @.str.79, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Successfully finished resetting the device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.80 = internal global ptr @hl_device_reset._entry.77, section ".printk_index", align 4
@hl_device_reset._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.22, ptr @.str.2, i32 1280, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Performing hard reset scheduled during soft reset\0A\00", [45 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.83 = internal global ptr @hl_device_reset._entry.81, section ".printk_index", align 4
@hl_device_reset._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.22, ptr @.str.2, i32 1296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to reset! Device is NOT usable\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.86 = internal global ptr @hl_device_reset._entry.84, section ".printk_index", align 4
@hl_device_reset._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.22, ptr @.str.2, i32 1299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to reset device after user release\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.89 = internal global ptr @hl_device_reset._entry.87, section ".printk_index", align 4
@hl_device_reset._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.22, ptr @.str.2, i32 1303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to do soft-reset\0A\00", [39 x i8] zeroinitializer }, align 32
@hl_device_reset._entry_ptr.92 = internal global ptr @hl_device_reset._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hl%d\00", [27 x i8] zeroinitializer }, align 32
@hl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hl_ioctl, ptr @hl_ioctl, ptr @hl_mmap, i32 0, ptr @hl_device_open, ptr null, ptr @hl_device_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_controlD%d\00", [18 x i8] zeroinitializer }, align 32
@hl_ctrl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hl_ioctl_control, ptr @hl_ioctl_control, ptr null, i32 0, ptr @hl_device_open_ctrl, ptr null, ptr @hl_device_release_ctrl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hl_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize kernel queues\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_device_init\00", [17 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr = internal global ptr @hl_device_init._entry, section ".printk_index", align 4
@hl_device_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 1414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate completion queues\0A\00", [58 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.99 = internal global ptr @hl_device_init._entry.97, section ".printk_index", align 4
@hl_device_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.2, i32 1425, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize completion queue\0A\00", [57 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.102 = internal global ptr @hl_device_init._entry.100, section ".printk_index", align 4
@hl_device_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.2, i32 1438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize event queue\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.105 = internal global ptr @hl_device_init._entry.103, section ".printk_index", align 4
@hl_device_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.2, i32 1445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize MMU S/W structures\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.108 = internal global ptr @hl_device_init._entry.106, section ".printk_index", align 4
@hl_device_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.96, ptr @.str.2, i32 1467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize kernel context\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.111 = internal global ptr @hl_device_init._entry.109, section ".printk_index", align 4
@hl_device_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.96, ptr @.str.2, i32 1474, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize CB pool\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.114 = internal global ptr @hl_device_init._entry.112, section ".printk_index", align 4
@hl_device_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.96, ptr @.str.2, i32 1493, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize the H/W\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.117 = internal global ptr @hl_device_init._entry.115, section ".printk_index", align 4
@hl_device_init._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.96, ptr @.str.2, i32 1501, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to detect if device is alive\0A\00", [59 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.120 = internal global ptr @hl_device_init._entry.118, section ".printk_index", align 4
@hl_device_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.96, ptr @.str.2, i32 1508, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed late initialization\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.123 = internal global ptr @hl_device_init._entry.121, section ".printk_index", align 4
@hl_device_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.96, ptr @.str.2, i32 1515, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found %s device with %lluGB DRAM\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.126 = internal global ptr @hl_device_init._entry.124, section ".printk_index", align 4
@hl_device_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.96, ptr @.str.2, i32 1519, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize memory module\0A\00", [60 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.129 = internal global ptr @hl_device_init._entry.127, section ".printk_index", align 4
@hl_device_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.96, ptr @.str.2, i32 1533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to add char devices and sysfs nodes\0A\00", [52 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.132 = internal global ptr @hl_device_init._entry.130, section ".printk_index", align 4
@hl_device_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.96, ptr @.str.2, i32 1551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to initialize hwmon\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.135 = internal global ptr @hl_device_init._entry.133, section ".printk_index", align 4
@hl_device_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.96, ptr @.str.2, i32 1557, ptr @.str.79, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Successfully added device to habanalabs driver\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.138 = internal global ptr @hl_device_init._entry.136, section ".printk_index", align 4
@hl_device_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.96, ptr @.str.2, i32 1573, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"kernel ctx is still alive on initialization failure\0A\00", [43 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.141 = internal global ptr @hl_device_init._entry.139, section ".printk_index", align 4
@hl_device_init._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.96, ptr @.str.2, i32 1603, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to initialize hl%d. Device is NOT usable !\0A\00", [45 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.144 = internal global ptr @hl_device_init._entry.142, section ".printk_index", align 4
@hl_device_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.96, ptr @.str.2, i32 1606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013habanalabs: Failed to initialize hl%d. Device is NOT usable !\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_device_init._entry_ptr.147 = internal global ptr @hl_device_init._entry.145, section ".printk_index", align 4
@hl_device_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1625, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Removing device\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_device_fini\00", [17 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr = internal global ptr @hl_device_fini._entry, section ".printk_index", align 4
@hl_device_fini._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 1662, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Failed to remove device because reset function did not finish\0A\00", [33 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr.152 = internal global ptr @hl_device_fini._entry.150, section ".printk_index", align 4
@hl_device_fini._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.2, i32 1693, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Waiting for all processes to exit (timeout of %u seconds)\00", [38 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr.155 = internal global ptr @hl_device_fini._entry.153, section ".printk_index", align 4
@hl_device_fini._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.149, ptr @.str.2, i32 1697, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to kill all open processes\0A\00", [61 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr.158 = internal global ptr @hl_device_fini._entry.156, section ".printk_index", align 4
@hl_device_fini._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.149, ptr @.str.2, i32 1703, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to kill all control device open processes\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr.161 = internal global ptr @hl_device_fini._entry.159, section ".printk_index", align 4
@hl_device_fini._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.149, ptr @.str.2, i32 1716, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel ctx is still alive\0A\00", [37 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr.164 = internal global ptr @hl_device_fini._entry.162, section ".printk_index", align 4
@hl_device_fini._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.149, ptr @.str.2, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016habanalabs: removed device successfully\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_device_fini._entry_ptr.167 = internal global ptr @hl_device_fini._entry.165, section ".printk_index", align 4
@hpriv_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"device not idle after user context is closed (0x%llx_%llx)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hpriv_release\00", [18 x i8] zeroinitializer }, align 32
@hpriv_release._entry_ptr = internal global ptr @hpriv_release._entry, section ".printk_index", align 4
@handle_reset_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 958, ptr @.str.172, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable PCI access by F/W\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_reset_trigger\00", [43 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@handle_reset_trigger._entry_ptr = internal global ptr @handle_reset_trigger._entry, section ".printk_index", align 4
@device_kill_open_processes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 841, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Killing user process pid=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device_kill_open_processes\00", [37 x i8] zeroinitializer }, align 32
@device_kill_open_processes._entry_ptr = internal global ptr @device_kill_open_processes._entry, section ".printk_index", align 4
@device_kill_open_processes._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.2, i32 848, ptr @.str.172, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Can't get task struct for PID so giving up on killing process\0A\00", [33 x i8] zeroinitializer }, align 32
@device_kill_open_processes._entry_ptr.177 = internal global ptr @device_kill_open_processes._entry.175, section ".printk_index", align 4
@device_kill_open_processes.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.174, ptr @.str.2, ptr @.str.178, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Waiting for all unmap operations to finish before hard reset\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@device_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed late initialization for the H/W\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device_late_init\00", [47 x i8] zeroinitializer }, align 32
@device_late_init._entry_ptr = internal global ptr @device_late_init._entry, section ".printk_index", align 4
@device_late_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&hdev->work_heartbeat)->work)\00", [46 x i8] zeroinitializer }, align 32
@device_late_init.__key.182 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.183 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&hdev->work_heartbeat)->timer\00", [32 x i8] zeroinitializer }, align 32
@hl_device_heartbeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device heartbeat failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_device_heartbeat\00", [44 x i8] zeroinitializer }, align 32
@hl_device_heartbeat._entry_ptr = internal global ptr @hl_device_heartbeat._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@hl_mmap._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.187, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hl_mmap = private unnamed_addr constant [8 x i8] c"hl_mmap\00", align 1
@hl_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @__func__.hl_mmap, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013habanalabs: Trying to mmap after device was removed! Please close FD\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_mmap._entry_ptr = internal global ptr @hl_mmap._entry, section ".printk_index", align 4
@hl_device_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\012habanalabs: Closing FD after device was removed. Memory leak will occur and it is advised to reboot.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_device_release\00", [46 x i8] zeroinitializer }, align 32
@hl_device_release._entry_ptr = internal global ptr @hl_device_release._entry, section ".printk_index", align 4
@hl_device_release._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.2, i32 152, ptr @.str.79, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"User process closed FD but device still in use\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_device_release._entry_ptr.193 = internal global ptr @hl_device_release._entry.191, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hl_device_release_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013habanalabs: Closing FD after device was removed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hl_device_release_ctrl\00", [41 x i8] zeroinitializer }, align 32
@hl_device_release_ctrl._entry_ptr = internal global ptr @hl_device_release_ctrl._entry, section ".printk_index", align 4
@.str.196 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GOYA\00", [27 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GAUDI\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GAUDI SEC\00", [22 x i8] zeroinitializer }, align 32
@device_early_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unrecognized ASIC type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_early_init\00", [46 x i8] zeroinitializer }, align 32
@device_early_init._entry_ptr = internal global ptr @device_early_init._entry, section ".printk_index", align 4
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl-free-jobs-%u\00", [16 x i8] zeroinitializer }, align 32
@device_early_init._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.200, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate CQ workqueue\0A\00", [63 x i8] zeroinitializer }, align 32
@device_early_init._entry_ptr.204 = internal global ptr @device_early_init._entry.202, section ".printk_index", align 4
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hl-events\00", [22 x i8] zeroinitializer }, align 32
@device_early_init._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.200, ptr @.str.2, i32 408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate EQ workqueue\0A\00", [63 x i8] zeroinitializer }, align 32
@device_early_init._entry_ptr.208 = internal global ptr @device_early_init._entry.206, section ".printk_index", align 4
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hl-sob-reset\00", [19 x i8] zeroinitializer }, align 32
@device_early_init._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.200, ptr @.str.2, i32 416, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate SOB reset workqueue\0A\00", [56 x i8] zeroinitializer }, align 32
@device_early_init._entry_ptr.212 = internal global ptr @device_early_init._entry.210, section ".printk_index", align 4
@device_early_init._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.200, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create device reset WQ\0A\00", [62 x i8] zeroinitializer }, align 32
@device_early_init._entry_ptr.215 = internal global ptr @device_early_init._entry.213, section ".printk_index", align 4
@device_early_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.216 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"(work_completion)(&(&hdev->device_reset_work.reset_work)->work)\00", [32 x i8] zeroinitializer }, align 32
@device_early_init.__key.217 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.218 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"&(&hdev->device_reset_work.reset_work)->timer\00", [50 x i8] zeroinitializer }, align 32
@device_early_init.__key.219 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.220 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&hdev->send_cpu_message_lock\00", [35 x i8] zeroinitializer }, align 32
@device_early_init.__key.221 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hdev->debug_lock\00", [46 x i8] zeroinitializer }, align 32
@device_early_init.__key.223 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hdev->cs_mirror_lock\00", [42 x i8] zeroinitializer }, align 32
@device_early_init.__key.225 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&hdev->reset_info.lock\00", [41 x i8] zeroinitializer }, align 32
@device_early_init.__key.227 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&hdev->fpriv_list_lock\00", [41 x i8] zeroinitializer }, align 32
@device_early_init.__key.229 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.230 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&hdev->fpriv_ctrl_list_lock\00", [36 x i8] zeroinitializer }, align 32
@device_early_init.__key.231 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.232 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&hdev->clk_throttling.lock\00", [37 x i8] zeroinitializer }, align 32
@device_hard_reset_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 338, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Could not reset device. will try again in %u seconds\00", [43 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"device_hard_reset_pending\00", [38 x i8] zeroinitializer }, align 32
@device_hard_reset_pending._entry_ptr = internal global ptr @device_hard_reset_pending._entry, section ".printk_index", align 4
@device_cdev_sysfs_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to add a char device to the system\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device_cdev_sysfs_add\00", [42 x i8] zeroinitializer }, align 32
@device_cdev_sysfs_add._entry_ptr = internal global ptr @device_cdev_sysfs_add._entry, section ".printk_index", align 4
@device_cdev_sysfs_add._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.236, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to add a control char device to the system\0A\00", [45 x i8] zeroinitializer }, align 32
@device_cdev_sysfs_add._entry_ptr.239 = internal global ptr @device_cdev_sysfs_add._entry.237, section ".printk_index", align 4
@device_cdev_sysfs_add._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.236, ptr @.str.2, i32 295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to initialize sysfs\0A\00", [36 x i8] zeroinitializer }, align 32
@device_cdev_sysfs_add._entry_ptr.242 = internal global ptr @device_cdev_sysfs_add._entry.240, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 636, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 654, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 728, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 741, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 768, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 777, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 789, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 987, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1002, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1018, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1054, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1056, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1058, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1091, i32 5 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1101, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1152, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1159, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1167, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1185, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1202, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1209, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1218, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1225, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1231, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1240, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1243, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1264, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1280, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1296, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1299, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1303, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1329, i32 31 }
@___asan_gen_.460 = private unnamed_addr constant [7 x i8] c"hl_ops\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 217, i32 37 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1344, i32 31 }
@___asan_gen_.466 = private unnamed_addr constant [12 x i8] c"hl_ctrl_ops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 226, i32 37 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1396, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1413, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1424, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1438, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1445, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1467, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1474, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1493, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1501, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1508, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1513, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1519, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1532, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1551, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1556, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1572, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1601, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1605, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1625, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1661, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1691, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1697, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1703, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1716, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 1741, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 76, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 957, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 840, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 847, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 867, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 569, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 578, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 530, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 269, i32 21 }
@___asan_gen_.697 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 199, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 137, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 151, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 168, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 362, i32 28 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 366, i32 28 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 370, i32 28 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 373, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 397, i32 28 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 400, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 406, i32 32 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 408, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 413, i32 39 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 415, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 438, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 442, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 447, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 448, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 450, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 451, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 454, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 455, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 456, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 336, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 280, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 287, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.865 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.866 = private constant [43 x i8] c"../drivers/misc/habanalabs/common/device.c\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 295, i32 3 }
@llvm.compiler.used = appending global [282 x ptr] [ptr @device_cdev_sysfs_add._entry, ptr @device_cdev_sysfs_add._entry.237, ptr @device_cdev_sysfs_add._entry.240, ptr @device_cdev_sysfs_add._entry_ptr, ptr @device_cdev_sysfs_add._entry_ptr.239, ptr @device_cdev_sysfs_add._entry_ptr.242, ptr @device_early_init._entry, ptr @device_early_init._entry.202, ptr @device_early_init._entry.206, ptr @device_early_init._entry.210, ptr @device_early_init._entry.213, ptr @device_early_init._entry_ptr, ptr @device_early_init._entry_ptr.204, ptr @device_early_init._entry_ptr.208, ptr @device_early_init._entry_ptr.212, ptr @device_early_init._entry_ptr.215, ptr @device_hard_reset_pending._entry, ptr @device_hard_reset_pending._entry_ptr, ptr @device_kill_open_processes._entry, ptr @device_kill_open_processes._entry.175, ptr @device_kill_open_processes._entry_ptr, ptr @device_kill_open_processes._entry_ptr.177, ptr @device_late_init._entry, ptr @device_late_init._entry_ptr, ptr @handle_reset_trigger._entry, ptr @handle_reset_trigger._entry_ptr, ptr @hl_device_fini._entry, ptr @hl_device_fini._entry.150, ptr @hl_device_fini._entry.153, ptr @hl_device_fini._entry.156, ptr @hl_device_fini._entry.159, ptr @hl_device_fini._entry.162, ptr @hl_device_fini._entry.165, ptr @hl_device_fini._entry_ptr, ptr @hl_device_fini._entry_ptr.152, ptr @hl_device_fini._entry_ptr.155, ptr @hl_device_fini._entry_ptr.158, ptr @hl_device_fini._entry_ptr.161, ptr @hl_device_fini._entry_ptr.164, ptr @hl_device_fini._entry_ptr.167, ptr @hl_device_heartbeat._entry, ptr @hl_device_heartbeat._entry_ptr, ptr @hl_device_init._entry, ptr @hl_device_init._entry.100, ptr @hl_device_init._entry.103, ptr @hl_device_init._entry.106, ptr @hl_device_init._entry.109, ptr @hl_device_init._entry.112, ptr @hl_device_init._entry.115, ptr @hl_device_init._entry.118, ptr @hl_device_init._entry.121, ptr @hl_device_init._entry.124, ptr @hl_device_init._entry.127, ptr @hl_device_init._entry.130, ptr @hl_device_init._entry.133, ptr @hl_device_init._entry.136, ptr @hl_device_init._entry.139, ptr @hl_device_init._entry.142, ptr @hl_device_init._entry.145, ptr @hl_device_init._entry.97, ptr @hl_device_init._entry_ptr, ptr @hl_device_init._entry_ptr.102, ptr @hl_device_init._entry_ptr.105, ptr @hl_device_init._entry_ptr.108, ptr @hl_device_init._entry_ptr.111, ptr @hl_device_init._entry_ptr.114, ptr @hl_device_init._entry_ptr.117, ptr @hl_device_init._entry_ptr.120, ptr @hl_device_init._entry_ptr.123, ptr @hl_device_init._entry_ptr.126, ptr @hl_device_init._entry_ptr.129, ptr @hl_device_init._entry_ptr.132, ptr @hl_device_init._entry_ptr.135, ptr @hl_device_init._entry_ptr.138, ptr @hl_device_init._entry_ptr.141, ptr @hl_device_init._entry_ptr.144, ptr @hl_device_init._entry_ptr.147, ptr @hl_device_init._entry_ptr.99, ptr @hl_device_release._entry, ptr @hl_device_release._entry.191, ptr @hl_device_release._entry_ptr, ptr @hl_device_release._entry_ptr.193, ptr @hl_device_release_ctrl._entry, ptr @hl_device_release_ctrl._entry_ptr, ptr @hl_device_reset._entry, ptr @hl_device_reset._entry.23, ptr @hl_device_reset._entry.29, ptr @hl_device_reset._entry.33, ptr @hl_device_reset._entry.36, ptr @hl_device_reset._entry.39, ptr @hl_device_reset._entry.42, ptr @hl_device_reset._entry.44, ptr @hl_device_reset._entry.47, ptr @hl_device_reset._entry.50, ptr @hl_device_reset._entry.53, ptr @hl_device_reset._entry.56, ptr @hl_device_reset._entry.59, ptr @hl_device_reset._entry.62, ptr @hl_device_reset._entry.65, ptr @hl_device_reset._entry.68, ptr @hl_device_reset._entry.71, ptr @hl_device_reset._entry.74, ptr @hl_device_reset._entry.77, ptr @hl_device_reset._entry.81, ptr @hl_device_reset._entry.84, ptr @hl_device_reset._entry.87, ptr @hl_device_reset._entry.90, ptr @hl_device_reset._entry_ptr, ptr @hl_device_reset._entry_ptr.26, ptr @hl_device_reset._entry_ptr.32, ptr @hl_device_reset._entry_ptr.35, ptr @hl_device_reset._entry_ptr.38, ptr @hl_device_reset._entry_ptr.41, ptr @hl_device_reset._entry_ptr.43, ptr @hl_device_reset._entry_ptr.46, ptr @hl_device_reset._entry_ptr.49, ptr @hl_device_reset._entry_ptr.52, ptr @hl_device_reset._entry_ptr.55, ptr @hl_device_reset._entry_ptr.58, ptr @hl_device_reset._entry_ptr.61, ptr @hl_device_reset._entry_ptr.64, ptr @hl_device_reset._entry_ptr.67, ptr @hl_device_reset._entry_ptr.70, ptr @hl_device_reset._entry_ptr.73, ptr @hl_device_reset._entry_ptr.76, ptr @hl_device_reset._entry_ptr.80, ptr @hl_device_reset._entry_ptr.83, ptr @hl_device_reset._entry_ptr.86, ptr @hl_device_reset._entry_ptr.89, ptr @hl_device_reset._entry_ptr.92, ptr @hl_device_resume._entry, ptr @hl_device_resume._entry.15, ptr @hl_device_resume._entry.18, ptr @hl_device_resume._entry_ptr, ptr @hl_device_resume._entry_ptr.17, ptr @hl_device_resume._entry_ptr.20, ptr @hl_device_set_debug_mode._entry, ptr @hl_device_set_debug_mode._entry.5, ptr @hl_device_set_debug_mode._entry_ptr, ptr @hl_device_set_debug_mode._entry_ptr.7, ptr @hl_device_suspend._entry, ptr @hl_device_suspend._entry.10, ptr @hl_device_suspend._entry_ptr, ptr @hl_device_suspend._entry_ptr.12, ptr @hl_mmap._entry, ptr @hl_mmap._entry_ptr, ptr @hpriv_release._entry, ptr @hpriv_release._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @hl_ops, ptr @.str.94, ptr @hl_ctrl_ops, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @device_late_init.__key, ptr @.str.181, ptr @device_late_init.__key.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @hl_mmap._rs, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.211, ptr @.str.214, ptr @device_early_init.__key, ptr @.str.216, ptr @device_early_init.__key.217, ptr @.str.218, ptr @device_early_init.__key.219, ptr @.str.220, ptr @device_early_init.__key.221, ptr @.str.222, ptr @device_early_init.__key.223, ptr @.str.224, ptr @device_early_init.__key.225, ptr @.str.226, ptr @device_early_init.__key.227, ptr @.str.228, ptr @device_early_init.__key.229, ptr @.str.230, ptr @device_early_init.__key.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.238, ptr @.str.241], section "llvm.metadata"
@0 = internal global [208 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_set_debug_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_set_debug_mode._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_suspend._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_resume._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_resume._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_reset._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ctrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_fini._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpriv_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_reset_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_kill_open_processes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_kill_open_processes._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_late_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_late_init.__key.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_heartbeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmap._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_release._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_release_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_early_init.__key.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_hard_reset_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_cdev_sysfs_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_cdev_sysfs_add._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_cdev_sysfs_add._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hl_device_status(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %0 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else:                                          ; preds = %entry
  %needs_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 6
  %2 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else4, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else4:                                         ; preds = %if.else
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.else7, label %if.else4.if.end13_crit_edge

if.else4.if.end13_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  %init_done = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 86
  %6 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %init_done, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  %. = select i1 %tobool8.not, i32 4, i32 0
  br label %if.end13

if.end13:                                         ; preds = %if.else7, %if.else4.if.end13_crit_edge, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  %status.0 = phi i32 [ 1, %entry.if.end13_crit_edge ], [ 3, %if.else.if.end13_crit_edge ], [ 2, %if.else4.if.end13_crit_edge ], [ %., %if.else7 ]
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hl_device_operational(ptr nocapture noundef readonly %hdev, ptr noundef writeonly %status) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_reset.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %0 = ptrtoint ptr %in_reset.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_reset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hl_device_status.exit_crit_edge

entry.hl_device_status.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_device_status.exit

if.else.i:                                        ; preds = %entry
  %needs_reset.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 6
  %2 = ptrtoint ptr %needs_reset.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.hl_device_status.exit_crit_edge

if.else.i.hl_device_status.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_device_status.exit

if.else4.i:                                       ; preds = %if.else.i
  %disabled.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %4 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not.i = icmp eq i8 %5, 0
  br i1 %tobool5.not.i, label %if.else7.i, label %if.else4.i.hl_device_status.exit_crit_edge

if.else4.i.hl_device_status.exit_crit_edge:       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hl_device_status.exit

if.else7.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  %init_done.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 86
  %6 = ptrtoint ptr %init_done.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %init_done.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not.i = icmp eq i8 %7, 0
  %..i = select i1 %tobool8.not.i, i32 4, i32 0
  br label %hl_device_status.exit

hl_device_status.exit:                            ; preds = %if.else7.i, %if.else4.i.hl_device_status.exit_crit_edge, %if.else.i.hl_device_status.exit_crit_edge, %entry.hl_device_status.exit_crit_edge
  %status.0.i = phi i32 [ 1, %entry.hl_device_status.exit_crit_edge ], [ 3, %if.else.i.hl_device_status.exit_crit_edge ], [ 2, %if.else4.i.hl_device_status.exit_crit_edge ], [ %..i, %if.else7.i ]
  %tobool.not = icmp eq ptr %status, null
  br i1 %tobool.not, label %hl_device_status.exit.if.end_crit_edge, label %if.then

hl_device_status.exit.if.end_crit_edge:           ; preds = %hl_device_status.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %hl_device_status.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %status.0.i, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hl_device_status.exit.if.end_crit_edge
  %9 = add nsw i32 %status.0.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %9)
  %switch = icmp ult i32 %9, -3
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hpriv_get(ptr noundef %hpriv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !390
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !391

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !392

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_hpriv_put(ptr noundef %hpriv) local_unnamed_addr #3 align 64 {
entry:
  %idle_mask.i.i = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #12, !srcloc !394
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !392

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !395
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idle_mask.i.i) #12
  %1 = call ptr @memset(ptr %idle_mask.i.i, i32 0, i32 16)
  %2 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpriv, align 4
  %taskpid.i.i = getelementptr %struct.hl_fpriv, ptr %hpriv, i32 0, i32 2
  %4 = ptrtoint ptr %taskpid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %taskpid.i.i, align 4
  tail call void @put_pid(ptr noundef %5) #12
  tail call void @hl_debugfs_remove_file(ptr noundef %hpriv) #12
  %restore_phase_mutex.i.i = getelementptr %struct.hl_fpriv, ptr %hpriv, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %restore_phase_mutex.i.i) #12
  %pldm.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %pldm.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pldm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 34
  %10 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs.i.i, align 8
  %is_device_idle.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %is_device_idle.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is_device_idle.i.i, align 4
  %call.i.i = call zeroext i1 %13(ptr noundef %3, ptr noundef nonnull %idle_mask.i.i, i8 noundef zeroext 2, ptr noundef null) #12
  br i1 %call.i.i, label %land.lhs.true3.i.i.if.end.i.i_crit_edge, label %do.end.i.i

land.lhs.true3.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %arrayidx.i.i = getelementptr inbounds [2 x i64], ptr %idle_mask.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.i, align 8
  %18 = ptrtoint ptr %idle_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %idle_mask.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.168, i64 noundef %17, i64 noundef %19) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.lhs.true3.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %device_is_idle.0.off0.i.i = phi i1 [ true, %if.then.i.if.end.i.i_crit_edge ], [ true, %land.lhs.true3.i.i.if.end.i.i_crit_edge ], [ false, %do.end.i.i ], [ true, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %fpriv_list_lock.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 48
  call void @mutex_lock_nested(ptr noundef %fpriv_list_lock.i.i, i32 noundef 0) #12
  %dev_node.i.i = getelementptr %struct.hl_fpriv, ptr %hpriv, i32 0, i32 7
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_node.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr %struct.hl_fpriv, ptr %hpriv, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %dev_node.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %26 = ptrtoint ptr %dev_node.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_node.i.i, align 4
  %prev.i.i.i = getelementptr %struct.hl_fpriv, ptr %hpriv, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %fpriv_list_lock.i.i) #12
  %reset_if_device_not_idle.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 120
  %28 = ptrtoint ptr %reset_if_device_not_idle.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reset_if_device_not_idle.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool6.not.i.i = icmp eq i8 %29, 0
  %brmerge.i.i = or i1 %device_is_idle.0.off0.i.i, %tobool6.not.i.i
  br i1 %brmerge.i.i, label %lor.lhs.false.i.i, label %list_del.exit.i.i.if.then11.i.i_crit_edge

list_del.exit.i.i.if.then11.i.i_crit_edge:        ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

lor.lhs.false.i.i:                                ; preds = %list_del.exit.i.i
  %reset_upon_device_release.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 119
  %30 = ptrtoint ptr %reset_upon_device_release.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reset_upon_device_release.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool10.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool10.not.i.i, label %lor.lhs.false.i.i.hpriv_release.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then11.i.i_crit_edge

lor.lhs.false.i.i.if.then11.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

lor.lhs.false.i.i.hpriv_release.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hpriv_release.exit.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then11.i.i_crit_edge, %list_del.exit.i.i.if.then11.i.i_crit_edge
  %call12.i.i = call i32 @hl_device_reset(ptr noundef %3, i32 noundef 16) #12
  br label %hpriv_release.exit.i

hpriv_release.exit.i:                             ; preds = %if.then11.i.i, %lor.lhs.false.i.i.hpriv_release.exit.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %fpriv_list_lock.i.i, i32 noundef 0) #12
  %is_compute_ctx_active.i.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 104
  %32 = ptrtoint ptr %is_compute_ctx_active.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %is_compute_ctx_active.i.i, align 4
  call void @mutex_unlock(ptr noundef %fpriv_list_lock.i.i) #12
  call void @kfree(ptr noundef %hpriv) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idle_mask.i.i) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %hpriv_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %hpriv_release.exit.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_utilization(ptr noundef %hdev, ptr nocapture noundef writeonly %utilization) local_unnamed_addr #3 align 64 {
entry:
  %curr_power = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %curr_power) #12
  %0 = ptrtoint ptr %curr_power to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %curr_power, align 8, !annotation !396
  %max_power_default = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 18
  %1 = ptrtoint ptr %max_power_default to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %max_power_default, align 8
  %dc_power_default = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 19
  %3 = ptrtoint ptr %dc_power_default to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %dc_power_default, align 8
  %call = call i32 @hl_fw_cpucp_power_get(ptr noundef %hdev, ptr noundef nonnull %curr_power) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %curr_power to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %curr_power, align 8
  %7 = call i64 @llvm.umax.i64(i64 %6, i64 %4)
  %8 = call i64 @llvm.umin.i64(i64 %7, i64 %2)
  %sub = sub i64 %8, %4
  %mul = mul i64 %sub, 100
  %sub8 = sub i64 %2, %4
  %conv = trunc i64 %sub8 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !392

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %mul) #16, !srcloc !397
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t28 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t28, %if.else174.i.i ]
  %10 = ptrtoint ptr %utilization to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dividend.addr.0.i.i.off0, ptr %utilization, align 4
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %curr_power) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_cpucp_power_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_set_debug_mode(ptr noundef %hdev, ptr noundef %ctx, i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %debug_lock, i32 noundef 0) #12
  %in_debug14 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 89
  %0 = ptrtoint ptr %in_debug14 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_debug14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool15.not = icmp eq i8 %1, 0
  br i1 %enable, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool15.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #15
  br label %out

if.end:                                           ; preds = %if.then
  %hard_reset_pending = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 7
  %4 = ptrtoint ptr %hard_reset_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hard_reset_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %in_debug14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %in_debug14, align 1
  br label %out

if.end5:                                          ; preds = %if.end
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %7 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic_funcs, align 8
  %halt_coresight = getelementptr inbounds %struct.hl_asic_funcs, ptr %8, i32 0, i32 59
  %9 = ptrtoint ptr %halt_coresight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %halt_coresight, align 4
  tail call void %10(ptr noundef %hdev, ptr noundef %ctx) #12
  %11 = ptrtoint ptr %hard_reset_pending to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %hard_reset_pending, align 1
  %12 = ptrtoint ptr %in_debug14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %in_debug14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool9.not = icmp eq i8 %.pr, 0
  br i1 %tobool9.not, label %if.then10, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs, align 8
  %set_clock_gating = getelementptr inbounds %struct.hl_asic_funcs, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %set_clock_gating to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_clock_gating, align 4
  tail call void %16(ptr noundef %hdev) #12
  br label %out

if.end13:                                         ; preds = %entry
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6) #15
  br label %out

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %asic_funcs22 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %19 = ptrtoint ptr %asic_funcs22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs22, align 8
  %disable_clock_gating = getelementptr inbounds %struct.hl_asic_funcs, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %disable_clock_gating to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disable_clock_gating, align 4
  tail call void %22(ptr noundef %hdev) #12
  %23 = ptrtoint ptr %in_debug14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %in_debug14, align 1
  br label %out

out:                                              ; preds = %if.end21, %do.end19, %if.then10, %if.end5.out_crit_edge, %if.end5.thread, %do.end
  %rc.0 = phi i32 [ -14, %do.end19 ], [ 0, %if.end21 ], [ 0, %if.end5.out_crit_edge ], [ 0, %if.then10 ], [ -14, %do.end ], [ 0, %if.end5.thread ]
  tail call void @mutex_unlock(ptr noundef %debug_lock) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_suspend(ptr noundef %hdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call = tail call i32 @pci_save_state(ptr noundef %1) #12
  %reset_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59
  tail call void @_raw_spin_lock(ptr noundef %reset_info) #12
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %2 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %reset_info) #12
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %in_reset, align 8
  tail call void @_raw_spin_unlock(ptr noundef %reset_info) #12
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %7 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %disabled, align 2
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %8 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs.i, align 8
  %hw_queues_lock.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %hw_queues_lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_queues_lock.i, align 4
  tail call void %11(ptr noundef %hdev) #12
  %12 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs.i, align 8
  %hw_queues_unlock.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %13, i32 0, i32 51
  %14 = ptrtoint ptr %hw_queues_unlock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_queues_unlock.i, align 4
  tail call void %15(ptr noundef %hdev) #12
  %send_cpu_message_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %send_cpu_message_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %send_cpu_message_lock.i) #12
  %fpriv_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %fpriv_list_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %fpriv_list_lock.i) #12
  %fpriv_ctrl_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %fpriv_ctrl_list_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock.i) #12
  %16 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_funcs.i, align 8
  %suspend = getelementptr inbounds %struct.hl_asic_funcs, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %suspend, align 4
  %call8 = tail call i32 %19(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %do.end13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev14 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %20 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11) #15
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end.if.end15_crit_edge
  %22 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdev, align 8
  tail call void @pci_disable_device(ptr noundef %23) #12
  %24 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev, align 8
  %call18 = tail call i32 @pci_set_power_state(ptr noundef %25, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_resume(ptr noundef %hdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call = tail call i32 @pci_set_power_state(ptr noundef %1, i32 noundef 0) #12
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 8
  tail call void @pci_restore_state(ptr noundef %3) #12
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 8
  %call3 = tail call i32 @pci_enable_device_mem(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  tail call void @pci_set_master(ptr noundef %9) #12
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %10 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs, align 8
  %resume = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume, align 4
  %call5 = tail call i32 %13(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %if.end.disable_device_crit_edge

if.end.disable_device_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_device

if.end12:                                         ; preds = %if.end
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %14 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %in_reset, align 8
  %call13 = tail call i32 @hl_device_reset(ptr noundef %hdev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end12.disable_device_crit_edge

if.end12.disable_device_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_device

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

disable_device:                                   ; preds = %if.end12.disable_device_crit_edge, %if.end.disable_device_crit_edge
  %.str.19.sink = phi ptr [ @.str.16, %if.end.disable_device_crit_edge ], [ @.str.19, %if.end12.disable_device_crit_edge ]
  %rc.0 = phi i32 [ %call5, %if.end.disable_device_crit_edge ], [ %call13, %if.end12.disable_device_crit_edge ]
  %dev19 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.19.sink) #15
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 8
  tail call void @pci_clear_master(ptr noundef %18) #12
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 8
  tail call void @pci_disable_device(ptr noundef %20) #12
  br label %cleanup

cleanup:                                          ; preds = %disable_device, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %rc.0, %disable_device ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_reset(ptr noundef %hdev, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  %idle_mask = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idle_mask) #12
  %0 = call ptr @memset(ptr %idle_mask, i32 0, i32 16)
  %init_done = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 86
  %1 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %init_done, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and8 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool1.not, label %if.end16, label %if.end16.thread

if.end16:                                         ; preds = %if.end
  %supports_soft_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 79
  %5 = ptrtoint ptr %supports_soft_reset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %supports_soft_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  %reset_upon_device_release17 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 119
  %7 = ptrtoint ptr %reset_upon_device_release17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reset_upon_device_release17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  %and20 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = or i1 %tobool21.not, %tobool18.not
  br i1 %or.cond, label %if.end30, label %if.then22

if.end16.thread:                                  ; preds = %if.end
  %reset_upon_device_release17603 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 119
  %9 = ptrtoint ptr %reset_upon_device_release17603 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reset_upon_device_release17603, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool18.not604 = icmp eq i8 %10, 0
  %and20605 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20605)
  %tobool21.not606 = icmp eq i32 %and20605, 0
  %or.cond607 = or i1 %tobool21.not606, %tobool18.not604
  br i1 %or.cond607, label %if.end16.thread.do_reset_crit_edge, label %if.end16.thread.do.end27_crit_edge

if.end16.thread.do.end27_crit_edge:               ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end16.thread.do_reset_crit_edge:               ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_reset

if.then22:                                        ; preds = %if.end16
  br i1 %tobool14.not, label %if.then22.do.end27_crit_edge, label %if.then22.do_reset_crit_edge

if.then22.do_reset_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_reset

if.then22.do.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end27:                                         ; preds = %if.then22.do.end27_crit_edge, %if.end16.thread.do.end27_crit_edge
  %dev28 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %12, ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  br i1 %tobool14.not, label %if.end30.do.body39_crit_edge, label %land.lhs.true32

if.end30.do.body39_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

land.lhs.true32:                                  ; preds = %if.end30
  %allow_inference_soft_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 80
  %13 = ptrtoint ptr %allow_inference_soft_reset to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %allow_inference_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool34.not = icmp eq i8 %14, 0
  %spec.select541 = select i1 %tobool34.not, i1 true, i1 %tobool14.not
  br i1 %spec.select541, label %land.lhs.true32.do.body39_crit_edge, label %land.lhs.true32.do_reset_crit_edge

land.lhs.true32.do_reset_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_reset

land.lhs.true32.do.body39_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

do.body39:                                        ; preds = %land.lhs.true32.do.body39_crit_edge, %if.end30.do.body39_crit_edge
  %hard_reset.1.off0547 = phi i1 [ %tobool34.not, %land.lhs.true32.do.body39_crit_edge ], [ true, %if.end30.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_device_reset.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_device_reset, %if.then45)) #12
          to label %do_reset [label %if.then45], !srcloc !398

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %dev46 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_device_reset.__UNIQUE_ID_ddebug304, ptr noundef %16, ptr noundef nonnull @.str.28) #12
  br label %do_reset

do_reset:                                         ; preds = %if.then45, %do.body39, %land.lhs.true32.do_reset_crit_edge, %if.then22.do_reset_crit_edge, %if.end16.thread.do_reset_crit_edge
  %or.cond611 = phi i1 [ true, %if.then45 ], [ false, %if.then22.do_reset_crit_edge ], [ true, %land.lhs.true32.do_reset_crit_edge ], [ true, %do.body39 ], [ true, %if.end16.thread.do_reset_crit_edge ]
  %hard_reset.2.off0 = phi i1 [ %hard_reset.1.off0547, %if.then45 ], [ false, %if.then22.do_reset_crit_edge ], [ false, %land.lhs.true32.do_reset_crit_edge ], [ %hard_reset.1.off0547, %do.body39 ], [ true, %if.end16.thread.do_reset_crit_edge ]
  br i1 %tobool4.not, label %if.then59.critedge, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %do_reset
  %process_kill_trial_cnt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 98
  %17 = ptrtoint ptr %process_kill_trial_cnt to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %process_kill_trial_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool55.not = icmp eq i8 %18, 0
  br i1 %tobool55.not, label %land.lhs.true53.again_crit_edge, label %kill_processes

land.lhs.true53.again_crit_edge:                  ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %again

if.then59.critedge:                               ; preds = %do_reset
  %reset_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59
  tail call void @_raw_spin_lock(ptr noundef %reset_info) #12
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %19 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool61.not = icmp eq i8 %20, 0
  br i1 %tobool61.not, label %if.end74, label %if.then62

if.then62:                                        ; preds = %if.then59.critedge
  br i1 %hard_reset.2.off0, label %land.lhs.true65, label %if.then62.if.end71_crit_edge

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true65:                                  ; preds = %if.then62
  %is_in_soft_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %21 = ptrtoint ptr %is_in_soft_reset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_in_soft_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool68.not = icmp eq i8 %22, 0
  br i1 %tobool68.not, label %land.lhs.true65.if.end71_crit_edge, label %if.then69

land.lhs.true65.if.end71_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #14
  %hard_reset_schedule_flags = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 3
  %23 = ptrtoint ptr %hard_reset_schedule_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %flags, ptr %hard_reset_schedule_flags, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %land.lhs.true65.if.end71_crit_edge, %if.then62.if.end71_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reset_info) #12
  br label %cleanup

if.end74:                                         ; preds = %if.then59.critedge
  %24 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %in_reset, align 8
  tail call void @_raw_spin_unlock(ptr noundef %reset_info) #12
  %and.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %curr_reset_cause.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %25 = ptrtoint ptr %curr_reset_cause.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %curr_reset_cause.i, align 4
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end74
  %and1.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %curr_reset_cause5.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %26 = ptrtoint ptr %curr_reset_cause5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %curr_reset_cause5.i, align 4
  br label %if.end16.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %and7.i = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %curr_reset_cause14.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %27 = ptrtoint ptr %curr_reset_cause14.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %curr_reset_cause14.i, align 4
  %..i = select i1 %tobool8.not.i, i32 255, i32 64
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else6.i, %if.then3.i, %if.then.i
  %cur_reset_trigger.0.i = phi i32 [ 4, %if.then.i ], [ 8, %if.then3.i ], [ %..i, %if.else6.i ]
  %prev_reset_trigger.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 9
  %28 = ptrtoint ptr %prev_reset_trigger.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %prev_reset_trigger.i, align 1
  %conv.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_reset_trigger.0.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %cur_reset_trigger.0.i, %conv.i
  br i1 %cmp.not.i, label %if.end16.i.if.end27.i_crit_edge, label %if.then19.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv20.i = trunc i32 %cur_reset_trigger.0.i to i8
  %30 = ptrtoint ptr %prev_reset_trigger.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv20.i, ptr %prev_reset_trigger.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end27.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then19.i ], [ 1, %if.end16.i.if.end27.i_crit_edge ]
  %31 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 10
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink.i, ptr %31, align 2
  %33 = and i32 %flags, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %if.then32.i, label %if.end27.i.handle_reset_trigger.exit_crit_edge

if.end27.i.handle_reset_trigger.exit_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_reset_trigger.exit

if.then32.i:                                      ; preds = %if.end27.i
  %call.i = tail call i32 @hl_fw_send_pci_access_msg(ptr noundef %hdev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool33.not.i, label %if.then32.i.handle_reset_trigger.exit_crit_edge, label %do.end.i

if.then32.i.handle_reset_trigger.exit_crit_edge:  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_reset_trigger.exit

do.end.i:                                         ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.170) #15
  br label %handle_reset_trigger.exit

handle_reset_trigger.exit:                        ; preds = %do.end.i, %if.then32.i.handle_reset_trigger.exit_crit_edge, %if.end27.i.handle_reset_trigger.exit_crit_edge
  %lnot80 = xor i1 %hard_reset.2.off0, true
  %conv82 = zext i1 %lnot80 to i8
  %is_in_soft_reset84 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %37 = ptrtoint ptr %is_in_soft_reset84 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv82, ptr %is_in_soft_reset84, align 1
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %38 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %disabled, align 2
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %39 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asic_funcs.i, align 8
  %hw_queues_lock.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %40, i32 0, i32 50
  %41 = ptrtoint ptr %hw_queues_lock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_queues_lock.i, align 4
  tail call void %42(ptr noundef %hdev) #12
  %43 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic_funcs.i, align 8
  %hw_queues_unlock.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %44, i32 0, i32 51
  %45 = ptrtoint ptr %hw_queues_unlock.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_queues_unlock.i, align 4
  tail call void %46(ptr noundef %hdev) #12
  %send_cpu_message_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %send_cpu_message_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %send_cpu_message_lock.i) #12
  %fpriv_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %fpriv_list_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %fpriv_list_lock.i) #12
  %fpriv_ctrl_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %fpriv_ctrl_list_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock.i) #12
  %dev90 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %47 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev90, align 4
  br i1 %hard_reset.2.off0, label %do.end89, label %if.else

do.end89:                                         ; preds = %handle_reset_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.30) #15
  br label %again

if.else:                                          ; preds = %handle_reset_trigger.exit
  br i1 %or.cond611, label %do.end100, label %do.end95

do.end95:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.34) #15
  br label %again

do.end100:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.37) #15
  br label %again

again:                                            ; preds = %do.end349, %do.end344, %do.end319, %do.end100, %do.end95, %do.end89, %land.lhs.true53.again_crit_edge
  %or.cond617 = phi i1 [ false, %do.end344 ], [ true, %do.end349 ], [ %or.cond614, %do.end319 ], [ %or.cond611, %do.end89 ], [ false, %do.end95 ], [ true, %do.end100 ], [ %or.cond611, %land.lhs.true53.again_crit_edge ]
  %hard_reset.3.off0 = phi i1 [ true, %do.end344 ], [ true, %do.end349 ], [ true, %do.end319 ], [ true, %do.end89 ], [ false, %do.end95 ], [ false, %do.end100 ], [ %hard_reset.2.off0, %land.lhs.true53.again_crit_edge ]
  %schedule_hard_reset.0.off0 = phi i1 [ %schedule_hard_reset.1.off0552566, %do.end344 ], [ %schedule_hard_reset.1.off0552566, %do.end349 ], [ true, %do.end319 ], [ false, %do.end89 ], [ false, %do.end95 ], [ false, %do.end100 ], [ false, %land.lhs.true53.again_crit_edge ]
  %flags.addr.0 = phi i32 [ %flags.addr.1556563, %do.end344 ], [ %flags.addr.1556563, %do.end349 ], [ %174, %do.end319 ], [ %flags, %do.end89 ], [ %flags, %do.end95 ], [ %flags, %do.end100 ], [ %flags, %land.lhs.true53.again_crit_edge ]
  %brmerge.demorgan = and i1 %tobool4.not, %hard_reset.3.off0
  br i1 %brmerge.demorgan, label %if.then109, label %if.end116

if.then109:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  %hard_reset_pending = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 7
  %49 = ptrtoint ptr %hard_reset_pending to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %hard_reset_pending, align 1
  %process_kill_trial_cnt111 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 98
  %50 = ptrtoint ptr %process_kill_trial_cnt111 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %process_kill_trial_cnt111, align 2
  %device_reset_work = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9
  %flags112 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %flags112 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %flags.addr.0, ptr %flags112, align 4
  %52 = ptrtoint ptr %device_reset_work to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_reset_work, align 8
  %reset_work = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1
  %call.i542 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %reset_work, i32 noundef 0) #12
  br label %cleanup

if.end116:                                        ; preds = %again
  br i1 %hard_reset.3.off0, label %if.then.i543, label %if.end139.thread.critedge

if.then.i543:                                     ; preds = %if.end116
  %late_init_done.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 79
  %54 = ptrtoint ptr %late_init_done.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %late_init_done.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %if.then120.critedge, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i543
  %heartbeat.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 81
  %56 = ptrtoint ptr %heartbeat.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %heartbeat.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %work_heartbeat.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8
  %call.i.i544 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_heartbeat.i.i) #12
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %58 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asic_funcs.i.i, align 8
  %late_fini.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %late_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %late_fini.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %61, null
  br i1 %tobool4.not.i.i, label %if.then120.critedge595, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %61(ptr noundef %hdev) #12
  %62 = ptrtoint ptr %late_init_done.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %late_init_done.i.i, align 1
  br label %if.then120.sink.split

kill_processes:                                   ; preds = %land.lhs.true53
  br i1 %hard_reset.2.off0, label %kill_processes.if.then120_crit_edge, label %kill_processes.if.end139.thread_crit_edge

kill_processes.if.end139.thread_crit_edge:        ; preds = %kill_processes
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.thread

kill_processes.if.then120_crit_edge:              ; preds = %kill_processes
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then120

if.then120.critedge:                              ; preds = %if.then.i543
  call void @__sanitizer_cov_trace_pc() #14
  %asic_funcs.i545.c590 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  br label %if.then120.sink.split

if.then120.critedge595:                           ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %late_init_done.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %late_init_done.i.i, align 1
  br label %if.then120.sink.split

if.then120.sink.split:                            ; preds = %if.then120.critedge595, %if.then120.critedge, %if.then5.i.i
  %asic_funcs.i.i.sink = phi ptr [ %asic_funcs.i.i, %if.then120.critedge595 ], [ %asic_funcs.i.i, %if.then5.i.i ], [ %asic_funcs.i545.c590, %if.then120.critedge ]
  %64 = ptrtoint ptr %asic_funcs.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %asic_funcs.i.i.sink, align 8
  %halt_engines.i.c597 = getelementptr inbounds %struct.hl_asic_funcs, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %halt_engines.i.c597 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %halt_engines.i.c597, align 4
  call void %67(ptr noundef %hdev, i1 noundef zeroext true, i1 noundef zeroext %tobool9) #12
  call void @hl_cs_rollback_all(ptr noundef %hdev) #12
  call void @hl_release_pending_user_interrupts(ptr noundef %hdev) #12
  br label %if.then120

if.then120:                                       ; preds = %if.then120.sink.split, %kill_processes.if.then120_crit_edge
  %or.cond616 = phi i1 [ %or.cond611, %kill_processes.if.then120_crit_edge ], [ %or.cond617, %if.then120.sink.split ]
  %flags.addr.1557 = phi i32 [ %flags, %kill_processes.if.then120_crit_edge ], [ %flags.addr.0, %if.then120.sink.split ]
  %schedule_hard_reset.1.off0553 = phi i1 [ false, %kill_processes.if.then120_crit_edge ], [ %schedule_hard_reset.0.off0, %if.then120.sink.split ]
  %call121 = call fastcc i32 @device_kill_open_processes(ptr noundef %hdev, i32 noundef 0, i1 noundef zeroext false)
  %68 = zext i32 %call121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call121, label %do.end136 [
    i32 -16, label %if.then123
    i32 0, label %if.then143
  ]

if.then123:                                       ; preds = %if.then120
  %device_fini_pending = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 99
  %69 = ptrtoint ptr %device_fini_pending to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %device_fini_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool124.not = icmp eq i8 %70, 0
  br i1 %tobool124.not, label %if.then123.cleanup_crit_edge, label %do.end128

if.then123.cleanup_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end128:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  %dev129 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %71 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev129, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %72, ptr noundef nonnull @.str.40) #15
  br label %out_err.thread

do.end136:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  %dev137 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %73 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev137, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %74, ptr noundef nonnull @.str.40) #15
  br label %out_err.thread

if.end139.thread.critedge:                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %asic_funcs.i545.c = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %75 = ptrtoint ptr %asic_funcs.i545.c to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %asic_funcs.i545.c, align 8
  %halt_engines.i.c = getelementptr inbounds %struct.hl_asic_funcs, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %halt_engines.i.c to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %halt_engines.i.c, align 4
  call void %78(ptr noundef %hdev, i1 noundef zeroext false, i1 noundef zeroext %tobool9) #12
  call void @hl_cs_rollback_all(ptr noundef %hdev) #12
  call void @hl_release_pending_user_interrupts(ptr noundef %hdev) #12
  br label %if.end139.thread

if.end139.thread:                                 ; preds = %if.end139.thread.critedge, %kill_processes.if.end139.thread_crit_edge
  %or.cond615 = phi i1 [ %or.cond611, %kill_processes.if.end139.thread_crit_edge ], [ %or.cond617, %if.end139.thread.critedge ]
  %flags.addr.1556.ph = phi i32 [ %flags, %kill_processes.if.end139.thread_crit_edge ], [ %flags.addr.0, %if.end139.thread.critedge ]
  %schedule_hard_reset.1.off0552.ph = phi i1 [ false, %kill_processes.if.end139.thread_crit_edge ], [ %schedule_hard_reset.0.off0, %if.end139.thread.critedge ]
  %asic_funcs561 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %79 = ptrtoint ptr %asic_funcs561 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %asic_funcs561, align 8
  %hw_fini562 = getelementptr inbounds %struct.hl_asic_funcs, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %hw_fini562 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_fini562, align 4
  call void %82(ptr noundef %hdev, i1 noundef zeroext false, i1 noundef zeroext %tobool9) #12
  br label %if.end153

if.then143:                                       ; preds = %if.then120
  %eq_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 17
  %83 = ptrtoint ptr %eq_wq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eq_wq, align 4
  call void @flush_workqueue(ptr noundef %84) #12
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %85 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %asic_funcs, align 8
  %hw_fini = getelementptr inbounds %struct.hl_asic_funcs, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %hw_fini to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw_fini, align 4
  call void %88(ptr noundef %hdev, i1 noundef zeroext true, i1 noundef zeroext %tobool9) #12
  %fw_comp_loaded = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 8
  %89 = ptrtoint ptr %fw_comp_loaded to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %fw_comp_loaded, align 1
  %kernel_ctx = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 19
  %90 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kernel_ctx, align 4
  %tobool144.not = icmp eq ptr %91, null
  br i1 %tobool144.not, label %if.then143.if.end152_crit_edge, label %land.lhs.true145

if.then143.if.end152_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

land.lhs.true145:                                 ; preds = %if.then143
  %call147 = call i32 @hl_ctx_put(ptr noundef nonnull %91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call147)
  %cmp148 = icmp eq i32 %call147, 1
  br i1 %cmp148, label %if.then150, label %land.lhs.true145.if.end152_crit_edge

land.lhs.true145.if.end152_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then150:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %kernel_ctx, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %land.lhs.true145.if.end152_crit_edge, %if.then143.if.end152_crit_edge
  call void @hl_vm_fini(ptr noundef %hdev) #12
  call void @hl_mmu_fini(ptr noundef %hdev) #12
  %event_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 24
  call void @hl_eq_reset(ptr noundef %hdev, ptr noundef %event_queue) #12
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end139.thread
  %or.cond614 = phi i1 [ %or.cond615, %if.end139.thread ], [ %or.cond616, %if.end152 ]
  %asic_funcs568 = phi ptr [ %asic_funcs561, %if.end139.thread ], [ %asic_funcs, %if.end152 ]
  %hard_reset.4.off0549567 = phi i1 [ false, %if.end139.thread ], [ true, %if.end152 ]
  %schedule_hard_reset.1.off0552566 = phi i1 [ %schedule_hard_reset.1.off0552.ph, %if.end139.thread ], [ %schedule_hard_reset.1.off0553, %if.end152 ]
  %flags.addr.1556563 = phi i32 [ %flags.addr.1556.ph, %if.end139.thread ], [ %flags.addr.1557, %if.end152 ]
  call void @hl_hw_queue_reset(ptr noundef %hdev, i1 noundef zeroext %hard_reset.4.off0549567) #12
  %completion_queues_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 67
  %93 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %completion_queues_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp157599.not = icmp eq i8 %94, 0
  br i1 %cmp157599.not, label %if.end153.for.end_crit_edge, label %for.body.lr.ph

if.end153.for.end_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end153
  %completion_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0600 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %95 = ptrtoint ptr %completion_queue to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %completion_queue, align 4
  %arrayidx = getelementptr %struct.hl_cq, ptr %96, i32 %i.0600
  call void @hl_cq_reset(ptr noundef %hdev, ptr noundef %arrayidx) #12
  %inc = add nuw nsw i32 %i.0600, 1
  %97 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %completion_queues_count, align 1
  %conv156 = zext i8 %98 to i32
  %cmp157 = icmp ult i32 %inc, %conv156
  br i1 %cmp157, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end153.for.end_crit_edge
  %call159 = call ptr @hl_get_compute_ctx(ptr noundef %hdev) #12
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %tobool160.not, label %for.end.if.end163_crit_edge, label %if.then161

for.end.if.end163_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then161:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %thread_ctx_switch_token = getelementptr inbounds %struct.hl_ctx, ptr %call159, i32 0, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %thread_ctx_switch_token, i32 noundef 4) #12
  %99 = ptrtoint ptr %thread_ctx_switch_token to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 1, ptr %thread_ctx_switch_token, align 4
  %thread_ctx_switch_wait_token = getelementptr inbounds %struct.hl_ctx, ptr %call159, i32 0, i32 20
  %100 = ptrtoint ptr %thread_ctx_switch_wait_token to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %thread_ctx_switch_wait_token, align 4
  %call162 = call i32 @hl_ctx_put(ptr noundef nonnull %call159) #12
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %for.end.if.end163_crit_edge
  br i1 %hard_reset.4.off0549567, label %if.then165, label %if.end163.if.end215_crit_edge

if.end163.if.end215_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

if.then165:                                       ; preds = %if.end163
  %device_cpu_disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 87
  %101 = ptrtoint ptr %device_cpu_disabled to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %device_cpu_disabled, align 1
  %hard_reset_pending167 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 7
  %102 = ptrtoint ptr %hard_reset_pending167 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %hard_reset_pending167, align 1
  %reset_trigger_repeated = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 10
  %103 = ptrtoint ptr %reset_trigger_repeated to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %reset_trigger_repeated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool170.not = icmp eq i8 %104, 0
  br i1 %tobool170.not, label %if.then165.if.end181_crit_edge, label %land.lhs.true171

if.then165.if.end181_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

land.lhs.true171:                                 ; preds = %if.then165
  %prev_reset_trigger = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 9
  %105 = ptrtoint ptr %prev_reset_trigger to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %prev_reset_trigger, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %106)
  %cmp174 = icmp eq i8 %106, 64
  br i1 %cmp174, label %do.end179, label %land.lhs.true171.if.end181_crit_edge

land.lhs.true171.if.end181_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

do.end179:                                        ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #14
  %dev180 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %107 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev180, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %108, ptr noundef nonnull @.str.45) #15
  br label %out_err.thread

if.end181:                                        ; preds = %land.lhs.true171.if.end181_crit_edge, %if.then165.if.end181_crit_edge
  %kernel_ctx182 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 19
  %109 = ptrtoint ptr %kernel_ctx182 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %kernel_ctx182, align 4
  %tobool183.not = icmp eq ptr %110, null
  br i1 %tobool183.not, label %if.end189, label %do.end187

do.end187:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  %dev188 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %111 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev188, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %112, ptr noundef nonnull @.str.48) #15
  br label %out_err.thread

if.end189:                                        ; preds = %if.end181
  %call190 = call i32 @hl_mmu_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end197, label %do.end195

do.end195:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  %dev196 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %113 = ptrtoint ptr %dev196 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev196, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.51) #15
  br label %out_err.thread

if.end197:                                        ; preds = %if.end189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %115 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %115, i32 noundef 3520, i32 noundef 1584) #17
  %116 = ptrtoint ptr %kernel_ctx182 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call7.i.i, ptr %kernel_ctx182, align 4
  %tobool201.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool201.not, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  call void @hl_mmu_fini(ptr noundef %hdev) #12
  br label %out_err.thread

if.end203:                                        ; preds = %if.end197
  %is_compute_ctx_active = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 104
  %117 = ptrtoint ptr %is_compute_ctx_active to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %is_compute_ctx_active, align 4
  %call205 = call i32 @hl_ctx_init(ptr noundef %hdev, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end203.if.end215_crit_edge, label %do.end210

if.end203.if.end215_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

do.end210:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  %dev211 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %118 = ptrtoint ptr %dev211 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev211, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.54) #15
  %120 = ptrtoint ptr %kernel_ctx182 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %kernel_ctx182, align 4
  call void @kfree(ptr noundef %121) #12
  %122 = ptrtoint ptr %kernel_ctx182 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %kernel_ctx182, align 4
  call void @hl_mmu_fini(ptr noundef %hdev) #12
  br label %out_err.thread

if.end215:                                        ; preds = %if.end203.if.end215_crit_edge, %if.end163.if.end215_crit_edge
  %disabled216 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %123 = ptrtoint ptr %disabled216 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %disabled216, align 2
  %124 = ptrtoint ptr %asic_funcs568 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %asic_funcs568, align 8
  %hw_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw_init, align 4
  %call218 = call i32 %127(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end225, label %do.end223

do.end223:                                        ; preds = %if.end215
  %dev224 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %128 = ptrtoint ptr %dev224 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev224, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.57) #15
  %130 = ptrtoint ptr %disabled216 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %disabled216, align 2
  %is_in_soft_reset329587 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %131 = ptrtoint ptr %is_in_soft_reset329587 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %is_in_soft_reset329587, align 1
  br i1 %hard_reset.4.off0549567, label %do.end223.do.end334_crit_edge, label %do.end223.if.else339_crit_edge

do.end223.if.else339_crit_edge:                   ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else339

do.end223.do.end334_crit_edge:                    ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end334

if.end225:                                        ; preds = %if.end215
  %132 = ptrtoint ptr %asic_funcs568 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %asic_funcs568, align 8
  %is_device_idle = getelementptr inbounds %struct.hl_asic_funcs, ptr %133, i32 0, i32 48
  %134 = ptrtoint ptr %is_device_idle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %is_device_idle, align 4
  %call227 = call zeroext i1 %135(ptr noundef %hdev, ptr noundef nonnull %idle_mask, i8 noundef zeroext 2, ptr noundef null) #12
  br i1 %call227, label %if.end235, label %out_err

if.end235:                                        ; preds = %if.end225
  %136 = ptrtoint ptr %asic_funcs568 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %asic_funcs568, align 8
  %test_queues = getelementptr inbounds %struct.hl_asic_funcs, ptr %137, i32 0, i32 18
  %138 = ptrtoint ptr %test_queues to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %test_queues, align 4
  %call237 = call i32 %139(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end244, label %do.end242

do.end242:                                        ; preds = %if.end235
  %dev243 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %140 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev243, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.63) #15
  %142 = ptrtoint ptr %disabled216 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %disabled216, align 2
  %is_in_soft_reset329589 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %143 = ptrtoint ptr %is_in_soft_reset329589 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %is_in_soft_reset329589, align 1
  br i1 %hard_reset.4.off0549567, label %do.end242.do.end334_crit_edge, label %do.end242.if.else339_crit_edge

do.end242.if.else339_crit_edge:                   ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else339

do.end242.do.end334_crit_edge:                    ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end334

if.end244:                                        ; preds = %if.end235
  br i1 %hard_reset.4.off0549567, label %if.then246, label %if.else263

if.then246:                                       ; preds = %if.end244
  %call247 = call fastcc i32 @device_late_init(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end254, label %do.end252

do.end252:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #14
  %dev253 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %144 = ptrtoint ptr %dev253 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev253, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.66) #15
  br label %out_err.thread

if.end254:                                        ; preds = %if.then246
  %call255 = call i32 @hl_vm_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %if.end262, label %do.end260

do.end260:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  %dev261 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %146 = ptrtoint ptr %dev261 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev261, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.69) #15
  br label %out_err.thread

if.end262:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  call void @hl_set_max_power(ptr noundef %hdev) #12
  br label %if.end281

if.else263:                                       ; preds = %if.end244
  %148 = ptrtoint ptr %asic_funcs568 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %asic_funcs568, align 8
  %non_hard_reset_late_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %149, i32 0, i32 49
  %150 = ptrtoint ptr %non_hard_reset_late_init to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %non_hard_reset_late_init, align 4
  %call265 = call i32 %151(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.else263.if.end281_crit_edge, label %if.then267

if.else263.if.end281_crit_edge:                   ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

if.then267:                                       ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #14
  %dev278 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %152 = ptrtoint ptr %dev278 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev278, align 4
  %.str.75..str.72 = select i1 %or.cond614, ptr @.str.75, ptr @.str.72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull %.str.75..str.72) #15
  %154 = ptrtoint ptr %disabled216 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %disabled216, align 2
  %is_in_soft_reset329583 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %155 = ptrtoint ptr %is_in_soft_reset329583 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %is_in_soft_reset329583, align 1
  br label %if.else339

if.end281:                                        ; preds = %if.else263.if.end281_crit_edge, %if.end262
  %reset_info282 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59
  call void @_raw_spin_lock(ptr noundef %reset_info282) #12
  %is_in_soft_reset285 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %156 = ptrtoint ptr %is_in_soft_reset285 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %is_in_soft_reset285, align 1
  br i1 %hard_reset.4.off0549567, label %if.end281.if.else292_crit_edge, label %land.lhs.true287

if.end281.if.else292_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else292

land.lhs.true287:                                 ; preds = %if.end281
  %hard_reset_schedule_flags289 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 3
  %157 = ptrtoint ptr %hard_reset_schedule_flags289 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hard_reset_schedule_flags289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool290.not = icmp eq i32 %158, 0
  br i1 %tobool290.not, label %land.lhs.true287.if.else292_crit_edge, label %land.lhs.true287.if.end295_crit_edge

land.lhs.true287.if.end295_crit_edge:             ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

land.lhs.true287.if.else292_crit_edge:            ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else292

if.else292:                                       ; preds = %land.lhs.true287.if.else292_crit_edge, %if.end281.if.else292_crit_edge
  %in_reset294 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %159 = ptrtoint ptr %in_reset294 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %in_reset294, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.else292, %land.lhs.true287.if.end295_crit_edge
  %schedule_hard_reset.2.off0 = phi i1 [ %schedule_hard_reset.1.off0552566, %if.else292 ], [ true, %land.lhs.true287.if.end295_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %reset_info282) #12
  %needs_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 6
  %160 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %needs_reset, align 2
  %dev302 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %161 = ptrtoint ptr %dev302 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev302, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %162, ptr noundef nonnull @.str.78) #15
  br i1 %hard_reset.4.off0549567, label %if.then304, label %if.else308

if.then304:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #14
  %hard_reset_cnt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 2
  %163 = ptrtoint ptr %hard_reset_cnt to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hard_reset_cnt, align 8
  %inc306 = add i32 %164, 1
  store i32 %inc306, ptr %hard_reset_cnt, align 8
  %165 = ptrtoint ptr %asic_funcs568 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %asic_funcs568, align 8
  %enable_events_from_fw = getelementptr inbounds %struct.hl_asic_funcs, ptr %166, i32 0, i32 81
  %167 = ptrtoint ptr %enable_events_from_fw to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %enable_events_from_fw, align 4
  call void %168(ptr noundef %hdev) #12
  br label %if.end314

if.else308:                                       ; preds = %if.end295
  br i1 %or.cond614, label %if.then310, label %if.else308.if.end314_crit_edge

if.else308.if.end314_crit_edge:                   ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end314

if.then310:                                       ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #14
  %soft_reset_cnt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 1
  %169 = ptrtoint ptr %soft_reset_cnt to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %soft_reset_cnt, align 4
  %inc312 = add i32 %170, 1
  store i32 %inc312, ptr %soft_reset_cnt, align 4
  br label %if.end314

if.end314:                                        ; preds = %if.then310, %if.else308.if.end314_crit_edge, %if.then304
  br i1 %schedule_hard_reset.2.off0, label %do.end319, label %if.end314.cleanup_crit_edge

if.end314.cleanup_crit_edge:                      ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end319:                                        ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %dev302 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev302, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %172, ptr noundef nonnull @.str.82) #15
  %hard_reset_schedule_flags322 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 3
  %173 = ptrtoint ptr %hard_reset_schedule_flags322 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %hard_reset_schedule_flags322, align 4
  store i32 0, ptr %hard_reset_schedule_flags322, align 4
  %175 = ptrtoint ptr %disabled216 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %disabled216, align 2
  call fastcc void @handle_reset_trigger(ptr noundef %hdev, i32 noundef %174)
  br label %again

out_err.thread:                                   ; preds = %do.end260, %do.end252, %do.end210, %if.then202, %do.end195, %do.end187, %do.end179, %do.end136, %do.end128
  %rc.0.ph = phi i32 [ -12, %if.then202 ], [ %call255, %do.end260 ], [ %call247, %do.end252 ], [ %call205, %do.end210 ], [ %call190, %do.end195 ], [ -16, %do.end187 ], [ -5, %do.end179 ], [ %call121, %do.end136 ], [ -16, %do.end128 ]
  %disabled327573 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %176 = ptrtoint ptr %disabled327573 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %disabled327573, align 2
  %is_in_soft_reset329574 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %177 = ptrtoint ptr %is_in_soft_reset329574 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %is_in_soft_reset329574, align 1
  br label %do.end334

out_err:                                          ; preds = %if.end225
  %dev232 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %178 = ptrtoint ptr %dev232 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev232, align 4
  %arrayidx233 = getelementptr inbounds [2 x i64], ptr %idle_mask, i32 0, i32 1
  %180 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx233, align 8
  %182 = ptrtoint ptr %idle_mask to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %idle_mask, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.60, i64 noundef %181, i64 noundef %183) #15
  %184 = ptrtoint ptr %disabled216 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %disabled216, align 2
  %is_in_soft_reset329 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 5
  %185 = ptrtoint ptr %is_in_soft_reset329 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %is_in_soft_reset329, align 1
  br i1 %hard_reset.4.off0549567, label %out_err.do.end334_crit_edge, label %out_err.if.else339_crit_edge

out_err.if.else339_crit_edge:                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else339

out_err.do.end334_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end334

do.end334:                                        ; preds = %out_err.do.end334_crit_edge, %out_err.thread, %do.end242.do.end334_crit_edge, %do.end223.do.end334_crit_edge
  %rc.0575 = phi i32 [ %rc.0.ph, %out_err.thread ], [ -5, %out_err.do.end334_crit_edge ], [ %call218, %do.end223.do.end334_crit_edge ], [ %call237, %do.end242.do.end334_crit_edge ]
  %dev335 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %186 = ptrtoint ptr %dev335 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev335, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.85) #15
  %hard_reset_cnt337 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 2
  %188 = ptrtoint ptr %hard_reset_cnt337 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %hard_reset_cnt337, align 8
  %inc338 = add i32 %189, 1
  store i32 %inc338, ptr %hard_reset_cnt337, align 8
  %in_reset356 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %190 = ptrtoint ptr %in_reset356 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %in_reset356, align 8
  br label %cleanup

if.else339:                                       ; preds = %out_err.if.else339_crit_edge, %if.then267, %do.end242.if.else339_crit_edge, %do.end223.if.else339_crit_edge
  %dev350 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %191 = ptrtoint ptr %dev350 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev350, align 4
  br i1 %or.cond614, label %do.end349, label %do.end344

do.end344:                                        ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.88) #15
  br label %again

do.end349:                                        ; preds = %if.else339
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.91) #15
  %soft_reset_cnt352 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 1
  %193 = ptrtoint ptr %soft_reset_cnt352 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %soft_reset_cnt352, align 4
  %inc353 = add i32 %194, 1
  store i32 %inc353, ptr %soft_reset_cnt352, align 4
  br label %again

cleanup:                                          ; preds = %do.end334, %if.end314.cleanup_crit_edge, %if.then123.cleanup_crit_edge, %if.then109, %if.end71, %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ %rc.0575, %do.end334 ], [ 0, %if.then109 ], [ 0, %if.end71 ], [ 0, %do.end ], [ -16, %if.then123.cleanup_crit_edge ], [ 0, %if.end314.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idle_mask) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_reset_trigger(ptr noundef %hdev, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %curr_reset_cause = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %0 = ptrtoint ptr %curr_reset_cause to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %curr_reset_cause, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %and1 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else6, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %curr_reset_cause5 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %1 = ptrtoint ptr %curr_reset_cause5 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %curr_reset_cause5, align 4
  br label %if.end16

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and7 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %curr_reset_cause14 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 8
  %2 = ptrtoint ptr %curr_reset_cause14 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %curr_reset_cause14, align 4
  %. = select i1 %tobool8.not, i32 255, i32 64
  br label %if.end16

if.end16:                                         ; preds = %if.else6, %if.then3, %if.then
  %cur_reset_trigger.0 = phi i32 [ 4, %if.then ], [ 8, %if.then3 ], [ %., %if.else6 ]
  %prev_reset_trigger = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 9
  %3 = ptrtoint ptr %prev_reset_trigger to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %prev_reset_trigger, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_reset_trigger.0, i32 %conv)
  %cmp.not = icmp eq i32 %cur_reset_trigger.0, %conv
  br i1 %cmp.not, label %if.end16.if.end27_crit_edge, label %if.then19

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %conv20 = trunc i32 %cur_reset_trigger.0 to i8
  %5 = ptrtoint ptr %prev_reset_trigger to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv20, ptr %prev_reset_trigger, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end16.if.end27_crit_edge
  %.sink = phi i8 [ 0, %if.then19 ], [ 1, %if.end16.if.end27_crit_edge ]
  %6 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %6, align 2
  %8 = and i32 %flags, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %if.then32, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then32:                                        ; preds = %if.end27
  %call = tail call i32 @hl_fw_send_pci_access_msg(ptr noundef %hdev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool33.not = icmp eq i32 %call, 0
  br i1 %tobool33.not, label %if.then32.if.end36_crit_edge, label %do.end

if.then32.if.end36_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.170) #15
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.then32.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_kill_open_processes(ptr noundef %hdev, i32 noundef %timeout, i1 noundef zeroext %control_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpriv_ctrl_list_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 49
  %fpriv_list_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  %cond = select i1 %control_dev, ptr %fpriv_ctrl_list_lock, ptr %fpriv_list_lock
  %fpriv_ctrl_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 47
  %fpriv_list = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 46
  %cond5 = select i1 %control_dev, ptr %fpriv_ctrl_list, ptr %fpriv_list
  %0 = ptrtoint ptr %cond5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cond5, align 4
  %cmp.i.not = icmp eq ptr %1, %cond5
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 1000) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool7.not = icmp eq i32 %timeout, 0
  br i1 %tobool7.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else:                                          ; preds = %if.end
  %process_kill_trial_cnt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 98
  %2 = ptrtoint ptr %process_kill_trial_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %process_kill_trial_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %if.else.if.end13_crit_edge, label %if.else.wait_for_processes_crit_edge

if.else.wait_for_processes_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_for_processes

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %pending_cnt.0 = phi i32 [ %timeout, %if.end.if.end13_crit_edge ], [ 10, %if.else.if.end13_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %cond, i32 noundef 0) #12
  %4 = ptrtoint ptr %cond5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn88 = load ptr, ptr %cond5, align 4
  %cmp.not89 = icmp eq ptr %.pn88, %cond5
  br i1 %cmp.not89, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %put_task_struct.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn90 = phi ptr [ %.pn88, %for.body.lr.ph ], [ %.pn, %put_task_struct.exit.for.body_crit_edge ]
  %taskpid = getelementptr i8, ptr %.pn90, i32 -272
  %5 = ptrtoint ptr %taskpid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %taskpid, align 4
  %call14 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #12
  %tobool15.not = icmp eq ptr %call14, null
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br i1 %tobool15.not, label %do.end22, label %do.end

do.end:                                           ; preds = %for.body
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %call14, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.173, i32 noundef %10) #15
  %call18 = tail call i32 @send_sig(i32 noundef 9, ptr noundef nonnull %call14, i32 noundef 1) #12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #12
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call14, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !393
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !394
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !392

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #12
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @__put_task_struct(ptr noundef nonnull %call14) #12
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %12 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp.not = icmp eq ptr %.pn, %cond5
  br i1 %cmp.not, label %put_task_struct.exit.for.end_crit_edge, label %put_task_struct.exit.for.body_crit_edge

put_task_struct.exit.for.body_crit_edge:          ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

put_task_struct.exit.for.end_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.176) #15
  tail call void @mutex_unlock(ptr noundef %cond) #12
  br label %cleanup

for.end:                                          ; preds = %put_task_struct.exit.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cond) #12
  br label %wait_for_processes

wait_for_processes:                               ; preds = %for.end, %if.else.wait_for_processes_crit_edge
  %pending_cnt.1 = phi i32 [ %pending_cnt.0, %for.end ], [ 1, %if.else.wait_for_processes_crit_edge ]
  %13 = ptrtoint ptr %cond5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cond5, align 4
  %cmp.i8391 = icmp eq ptr %14, %cond5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_cnt.1)
  %tobool32.not92 = icmp eq i32 %pending_cnt.1, 0
  %or.cond93 = or i1 %cmp.i8391, %tobool32.not92
  br i1 %or.cond93, label %wait_for_processes.while.end_crit_edge, label %do.body33.lr.ph

wait_for_processes.while.end_crit_edge:           ; preds = %wait_for_processes
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body33.lr.ph:                                  ; preds = %wait_for_processes
  %dev42 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  br label %do.body33

do.body33:                                        ; preds = %do.end45.do.body33_crit_edge, %do.body33.lr.ph
  %pending_cnt.294 = phi i32 [ %pending_cnt.1, %do.body33.lr.ph ], [ %dec, %do.end45.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_kill_open_processes.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_kill_open_processes, %if.then41)) #12
          to label %do.end45 [label %if.then41], !srcloc !398

if.then41:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @device_kill_open_processes.__UNIQUE_ID_ddebug303, ptr noundef %16, ptr noundef nonnull @.str.178) #12
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body33
  %dec = add i32 %pending_cnt.294, -1
  tail call void @msleep(i32 noundef 1000) #12
  %17 = ptrtoint ptr %cond5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %cond5, align 4
  %cmp.i83 = icmp eq ptr %18, %cond5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool32.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.i83, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %do.end45.while.end_crit_edge, label %do.end45.do.body33_crit_edge

do.end45.do.body33_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.end45.while.end_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end45.while.end_crit_edge, %wait_for_processes.while.end_crit_edge
  %19 = ptrtoint ptr %cond5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %cond5, align 4
  %cmp.i85.not = icmp eq ptr %20, %cond5
  br i1 %cmp.i85.not, label %while.end.cleanup_crit_edge, label %if.end49

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %while.end
  %process_kill_trial_cnt50 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 98
  %21 = ptrtoint ptr %process_kill_trial_cnt50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %process_kill_trial_cnt50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %22)
  %cmp51 = icmp eq i8 %22, 60
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end54

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i8 %22, 1
  %23 = ptrtoint ptr %process_kill_trial_cnt50 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %inc, ptr %process_kill_trial_cnt50, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.end22
  %retval.0 = phi i32 [ -62, %do.end22 ], [ -16, %if.end54 ], [ 0, %while.end.cleanup_crit_edge ], [ -62, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_vm_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_mmu_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_eq_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_queue_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cq_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hl_get_compute_ctx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_late_init(ptr noundef %hdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 8
  %late_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %late_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %late_init, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.179) #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %high_pll = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 45
  %6 = ptrtoint ptr %high_pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %high_pll, align 4
  %high_pll6 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 74
  %8 = ptrtoint ptr %high_pll6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %high_pll6, align 8
  %heartbeat = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 81
  %9 = ptrtoint ptr %heartbeat to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %heartbeat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.end5.if.end31_crit_edge, label %do.body10

if.end5.if.end31_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.body10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %work_heartbeat = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work_heartbeat, i32 noundef 0) #12
  %11 = ptrtoint ptr %work_heartbeat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %work_heartbeat, align 4
  %lockdep_map = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.181, ptr noundef nonnull @device_late_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry17 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8, i32 0, i32 1
  %12 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hl_device_heartbeat, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.183, ptr noundef nonnull @device_late_init.__key.182) #12
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 5000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work_heartbeat, i32 noundef %spec.select.i) #12
  br label %if.end31

if.end31:                                         ; preds = %do.body10, %if.end5.if.end31_crit_edge
  %late_init_done = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 79
  %16 = ptrtoint ptr %late_init_done to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %late_init_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_vm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_set_max_power(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_init(ptr noundef %hdev, ptr noundef %hclass) local_unnamed_addr #3 align 64 {
entry:
  %workq_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 75
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %2 = lshr i16 %1, 1
  %div = zext i16 %2 to i32
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.93, i32 noundef %div) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_disabled.thread_crit_edge, label %if.end

entry.out_disabled.thread_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_disabled.thread

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id, align 4
  %cdev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @hl_ops) #12
  %owner.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 928) #17
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %device_init_cdev.exit, label %if.end6

device_init_cdev.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %out_disabled.thread

if.end6:                                          ; preds = %if.end
  %conv2 = zext i16 %4 to i32
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #12
  %major.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 73
  %8 = ptrtoint ptr %major.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %major.i, align 4
  %shl.i = shl i32 %9, 20
  %or.i = or i32 %shl.i, %conv2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %devt.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %devt.i, align 8
  %13 = load ptr, ptr %dev, align 4
  %class.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hclass, ptr %class.i, align 4
  %15 = load ptr, ptr %dev, align 4
  %release.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @device_release_func, ptr %release.i, align 4
  %17 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hdev, ptr %driver_data.i.i, align 4
  %19 = load ptr, ptr %dev, align 4
  %call1.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %19, ptr noundef nonnull @.str.186, ptr noundef nonnull %call) #12
  tail call void @kfree(ptr noundef nonnull %call) #12
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %id, align 4
  %22 = lshr i16 %21, 1
  %div9 = zext i16 %22 to i32
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.94, i32 noundef %div9) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.free_dev_crit_edge, label %if.end13

if.end6.free_dev_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_dev

if.end13:                                         ; preds = %if.end6
  %id_control = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 76
  %23 = ptrtoint ptr %id_control to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id_control, align 2
  %cdev_ctrl = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 5
  %dev_ctrl = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %cdev_ctrl, ptr noundef nonnull @hl_ctrl_ops) #12
  %owner.i352 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %owner.i352 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %owner.i352, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i353 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 928) #17
  %27 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i353, ptr %dev_ctrl, align 4
  %tobool.not.i354 = icmp eq ptr %call7.i.i.i353, null
  br i1 %tobool.not.i354, label %device_init_cdev.exit365, label %if.end18

device_init_cdev.exit365:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call10) #12
  br label %free_dev

if.end18:                                         ; preds = %if.end13
  %conv14 = zext i16 %24 to i32
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i353) #12
  %28 = ptrtoint ptr %major.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %major.i, align 4
  %shl.i356 = shl i32 %29, 20
  %or.i357 = or i32 %shl.i356, %conv14
  %30 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_ctrl, align 4
  %devt.i358 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 29
  %32 = ptrtoint ptr %devt.i358 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i357, ptr %devt.i358, align 8
  %33 = load ptr, ptr %dev_ctrl, align 4
  %class.i359 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %class.i359 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %hclass, ptr %class.i359, align 4
  %35 = load ptr, ptr %dev_ctrl, align 4
  %release.i360 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 35
  %36 = ptrtoint ptr %release.i360 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @device_release_func, ptr %release.i360, align 4
  %37 = load ptr, ptr %dev_ctrl, align 4
  %driver_data.i.i361 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i361 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %hdev, ptr %driver_data.i.i361, align 4
  %39 = load ptr, ptr %dev_ctrl, align 4
  %call1.i362 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %39, ptr noundef nonnull @.str.186, ptr noundef nonnull %call10) #12
  tail call void @kfree(ptr noundef nonnull %call10) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %workq_name.i) #12
  %asic_type.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 12
  %40 = call ptr @memset(ptr %workq_name.i, i32 255, i32 32)
  %41 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %asic_type.i, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %42, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @goya_set_asic_funcs(ptr noundef %hdev) #12
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gaudi_set_asic_funcs(ptr noundef %hdev) #12
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gaudi_set_asic_funcs(ptr noundef %hdev) #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.199, i32 noundef %42) #15
  br label %device_early_init.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %.str.198.sink.i = phi ptr [ @.str.198, %sw.bb5.i ], [ @.str.197, %sw.bb1.i ], [ @.str.196, %sw.bb.i ]
  %asic_name6.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 10
  %call8.i = tail call i32 @strscpy(ptr noundef %asic_name6.i, ptr noundef nonnull %.str.198.sink.i, i32 noundef 32) #12
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %46 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic_funcs.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call10.i = tail call i32 %49(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i366 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i366, label %if.end.i367, label %sw.epilog.i.device_early_init.exit.thread_crit_edge

sw.epilog.i.device_early_init.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_early_init.exit.thread

if.end.i367:                                      ; preds = %sw.epilog.i
  %call11.i = tail call i32 @hl_asid_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i367.early_fini.i_crit_edge

if.end.i367.early_fini.i_crit_edge:               ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #14
  br label %early_fini.i

if.end14.i:                                       ; preds = %if.end.i367
  %completion_queues_count.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 67
  %50 = ptrtoint ptr %completion_queues_count.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %completion_queues_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool15.not.i = icmp eq i8 %51, 0
  br i1 %tobool15.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end7.i.i.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end7.i.i.i:                                    ; preds = %if.end14.i
  %conv.i = zext i8 %51 to i32
  %52 = shl nuw nsw i32 %conv.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #18
  %cq_wq.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 16
  %53 = ptrtoint ptr %cq_wq.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i.i, ptr %cq_wq.i, align 8
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end7.i.i.i.asid_fini.i_crit_edge, label %if.end24.i

if.end7.i.i.i.asid_fini.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %asid_fini.i

if.end24.i:                                       ; preds = %if.end7.i.i.i
  %54 = ptrtoint ptr %completion_queues_count.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %.pr.i = load i8, ptr %completion_queues_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp252.not.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp252.not.i, label %if.end24.i.for.end.i_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  br label %for.body.i

if.end24.i.for.end.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0253.i, 1
  %55 = ptrtoint ptr %completion_queues_count.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %completion_queues_count.i, align 1
  %conv27.i = zext i8 %56 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv27.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end24.i.for.body.i_crit_edge
  %i.0253.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end24.i.for.body.i_crit_edge ]
  %call30.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %workq_name.i, i32 noundef 32, ptr noundef nonnull @.str.201, i32 noundef %i.0253.i) #12
  %call32.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.186, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %workq_name.i) #12
  %57 = ptrtoint ptr %cq_wq.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cq_wq.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %58, i32 %i.0253.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call32.i, ptr %arrayidx.i, align 4
  %60 = load ptr, ptr %cq_wq.i, align 8
  %arrayidx35.i = getelementptr ptr, ptr %60, i32 %i.0253.i
  %61 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx35.i, align 4
  %cmp36.i = icmp eq ptr %62, null
  br i1 %cmp36.i, label %do.end41.i, label %for.cond.i

do.end41.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.203) #15
  br label %free_cq_wq.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end24.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %call44.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.205, i32 noundef 2, i32 noundef 0) #12
  %eq_wq.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 17
  %65 = ptrtoint ptr %eq_wq.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call44.i, ptr %eq_wq.i, align 4
  %cmp46.i = icmp eq ptr %call44.i, null
  br i1 %cmp46.i, label %do.end51.i, label %if.end53.i

do.end51.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.207) #15
  br label %free_cq_wq.i

if.end53.i:                                       ; preds = %for.end.i
  %call54.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.209, i32 noundef 2, i32 noundef 0) #12
  %sob_reset_wq.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 18
  %68 = ptrtoint ptr %sob_reset_wq.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call54.i, ptr %sob_reset_wq.i, align 8
  %tobool56.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool56.not.i, label %do.end60.i, label %if.end62.i

do.end60.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.211) #15
  br label %free_eq_wq.i

if.end62.i:                                       ; preds = %if.end53.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i368 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 8) #17
  %hl_chip_info.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 38
  %72 = ptrtoint ptr %hl_chip_info.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i368, ptr %hl_chip_info.i, align 8
  %tobool65.not.i = icmp eq ptr %call7.i.i.i368, null
  br i1 %tobool65.not.i, label %if.end62.i.free_sob_reset_wq.i_crit_edge, label %if.end67.i

if.end62.i.free_sob_reset_wq.i_crit_edge:         ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_sob_reset_wq.i

if.end67.i:                                       ; preds = %if.end62.i
  %call68.i = call i32 @hl_mmu_if_set_funcs(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.end67.i.free_chip_info.i_crit_edge

if.end67.i.free_chip_info.i_crit_edge:            ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_chip_info.i

if.end71.i:                                       ; preds = %if.end67.i
  %kernel_cb_mgr.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 23
  call void @hl_cb_mgr_init(ptr noundef %kernel_cb_mgr.i) #12
  %call72.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.186, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.22) #12
  %device_reset_work.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9
  %73 = ptrtoint ptr %device_reset_work.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call72.i, ptr %device_reset_work.i, align 8
  %tobool75.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool75.not.i, label %if.then76.i, label %device_early_init.exit.thread412

if.then76.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.214) #15
  call void @hl_cb_mgr_fini(ptr noundef %hdev, ptr noundef %kernel_cb_mgr.i) #12
  br label %free_chip_info.i

device_early_init.exit.thread412:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  %reset_work.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1
  call void @__init_work(ptr noundef %reset_work.i, i32 noundef 0) #12
  %76 = ptrtoint ptr %reset_work.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %reset_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.216, ptr noundef nonnull @device_early_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry94.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1, i32 0, i32 1
  %77 = ptrtoint ptr %entry94.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry94.i, ptr %entry94.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry94.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1, i32 0, i32 2
  %79 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @device_hard_reset_pending, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.218, ptr noundef nonnull @device_early_init.__key.217) #12
  %hdev108.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 2
  %80 = ptrtoint ptr %hdev108.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %hdev, ptr %hdev108.i, align 8
  %device_fini_pending.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 99
  %81 = ptrtoint ptr %device_fini_pending.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %device_fini_pending.i, align 1
  %send_cpu_message_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 31
  call void @__mutex_init(ptr noundef %send_cpu_message_lock.i, ptr noundef nonnull @.str.220, ptr noundef nonnull @device_early_init.__key.219) #12
  %debug_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 32
  call void @__mutex_init(ptr noundef %debug_lock.i, ptr noundef nonnull @.str.222, ptr noundef nonnull @device_early_init.__key.221) #12
  %cs_mirror_list.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 21
  %82 = ptrtoint ptr %cs_mirror_list.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %cs_mirror_list.i, ptr %cs_mirror_list.i, align 4
  %prev.i245.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 21, i32 1
  %83 = ptrtoint ptr %prev.i245.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %cs_mirror_list.i, ptr %prev.i245.i, align 4
  %cs_mirror_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 22
  call void @__raw_spin_lock_init(ptr noundef %cs_mirror_lock.i, ptr noundef nonnull @.str.224, ptr noundef nonnull @device_early_init.__key.223, i16 noundef signext 3) #12
  %reset_info.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59
  call void @__raw_spin_lock_init(ptr noundef %reset_info.i, ptr noundef nonnull @.str.226, ptr noundef nonnull @device_early_init.__key.225, i16 noundef signext 3) #12
  %fpriv_list.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 46
  %84 = ptrtoint ptr %fpriv_list.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %fpriv_list.i, ptr %fpriv_list.i, align 4
  %prev.i246.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 46, i32 1
  %85 = ptrtoint ptr %prev.i246.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %fpriv_list.i, ptr %prev.i246.i, align 4
  %fpriv_ctrl_list.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 47
  %86 = ptrtoint ptr %fpriv_ctrl_list.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %fpriv_ctrl_list.i, ptr %fpriv_ctrl_list.i, align 4
  %prev.i247.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 47, i32 1
  %87 = ptrtoint ptr %prev.i247.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %fpriv_ctrl_list.i, ptr %prev.i247.i, align 4
  %fpriv_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  call void @__mutex_init(ptr noundef %fpriv_list_lock.i, ptr noundef nonnull @.str.228, ptr noundef nonnull @device_early_init.__key.227) #12
  %fpriv_ctrl_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 49
  call void @__mutex_init(ptr noundef %fpriv_ctrl_list_lock.i, ptr noundef nonnull @.str.230, ptr noundef nonnull @device_early_init.__key.229) #12
  %lock130.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 57, i32 1
  call void @__mutex_init(ptr noundef %lock130.i, ptr noundef nonnull @.str.232, ptr noundef nonnull @device_early_init.__key.231) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workq_name.i) #12
  br label %if.end22

free_chip_info.i:                                 ; preds = %if.then76.i, %if.end67.i.free_chip_info.i_crit_edge
  %rc.0.i = phi i32 [ %call68.i, %if.end67.i.free_chip_info.i_crit_edge ], [ -12, %if.then76.i ]
  %88 = ptrtoint ptr %hl_chip_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hl_chip_info.i, align 8
  call void @kfree(ptr noundef %89) #12
  br label %free_sob_reset_wq.i

free_sob_reset_wq.i:                              ; preds = %free_chip_info.i, %if.end62.i.free_sob_reset_wq.i_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %free_chip_info.i ], [ -12, %if.end62.i.free_sob_reset_wq.i_crit_edge ]
  %90 = ptrtoint ptr %sob_reset_wq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sob_reset_wq.i, align 8
  call void @destroy_workqueue(ptr noundef %91) #12
  br label %free_eq_wq.i

free_eq_wq.i:                                     ; preds = %free_sob_reset_wq.i, %do.end60.i
  %rc.2.i = phi i32 [ %rc.1.i, %free_sob_reset_wq.i ], [ -12, %do.end60.i ]
  %92 = ptrtoint ptr %eq_wq.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %eq_wq.i, align 4
  call void @destroy_workqueue(ptr noundef %93) #12
  br label %free_cq_wq.i

free_cq_wq.i:                                     ; preds = %free_eq_wq.i, %do.end51.i, %do.end41.i
  %rc.3.i = phi i32 [ -12, %do.end41.i ], [ -12, %do.end51.i ], [ %rc.2.i, %free_eq_wq.i ]
  %94 = ptrtoint ptr %completion_queues_count.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %completion_queues_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp141255.not.i = icmp eq i8 %95, 0
  br i1 %cmp141255.not.i, label %free_cq_wq.i.for.end153.i_crit_edge, label %for.body143.lr.ph.i

free_cq_wq.i.for.end153.i_crit_edge:              ; preds = %free_cq_wq.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end153.i

for.body143.lr.ph.i:                              ; preds = %free_cq_wq.i
  %cq_wq144.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 16
  br label %for.body143.i

for.body143.i:                                    ; preds = %for.inc151.i.for.body143.i_crit_edge, %for.body143.lr.ph.i
  %i.1256.i = phi i32 [ 0, %for.body143.lr.ph.i ], [ %inc152.i, %for.inc151.i.for.body143.i_crit_edge ]
  %96 = ptrtoint ptr %cq_wq144.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cq_wq144.i, align 8
  %arrayidx145.i = getelementptr ptr, ptr %97, i32 %i.1256.i
  %98 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx145.i, align 4
  %tobool146.not.i = icmp eq ptr %99, null
  br i1 %tobool146.not.i, label %for.body143.i.for.inc151.i_crit_edge, label %if.then147.i

for.body143.i.for.inc151.i_crit_edge:             ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc151.i

if.then147.i:                                     ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @destroy_workqueue(ptr noundef nonnull %99) #12
  br label %for.inc151.i

for.inc151.i:                                     ; preds = %if.then147.i, %for.body143.i.for.inc151.i_crit_edge
  %inc152.i = add nuw nsw i32 %i.1256.i, 1
  %100 = ptrtoint ptr %completion_queues_count.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %completion_queues_count.i, align 1
  %conv140.i = zext i8 %101 to i32
  %cmp141.i = icmp ult i32 %inc152.i, %conv140.i
  br i1 %cmp141.i, label %for.inc151.i.for.body143.i_crit_edge, label %for.inc151.i.for.end153.i_crit_edge

for.inc151.i.for.end153.i_crit_edge:              ; preds = %for.inc151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end153.i

for.inc151.i.for.body143.i_crit_edge:             ; preds = %for.inc151.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body143.i

for.end153.i:                                     ; preds = %for.inc151.i.for.end153.i_crit_edge, %free_cq_wq.i.for.end153.i_crit_edge
  %cq_wq154.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 16
  %102 = ptrtoint ptr %cq_wq154.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cq_wq154.i, align 8
  call void @kfree(ptr noundef %103) #12
  br label %asid_fini.i

asid_fini.i:                                      ; preds = %for.end153.i, %if.end7.i.i.i.asid_fini.i_crit_edge
  %rc.4.i = phi i32 [ %rc.3.i, %for.end153.i ], [ -12, %if.end7.i.i.i.asid_fini.i_crit_edge ]
  call void @hl_asid_fini(ptr noundef %hdev) #12
  br label %early_fini.i

early_fini.i:                                     ; preds = %asid_fini.i, %if.end.i367.early_fini.i_crit_edge
  %rc.5.i = phi i32 [ %call11.i, %if.end.i367.early_fini.i_crit_edge ], [ %rc.4.i, %asid_fini.i ]
  %104 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %asic_funcs.i, align 8
  %early_fini156.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %early_fini156.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %early_fini156.i, align 4
  %tobool157.not.i = icmp eq ptr %107, null
  br i1 %tobool157.not.i, label %early_fini.i.device_early_init.exit_crit_edge, label %if.then158.i

early_fini.i.device_early_init.exit_crit_edge:    ; preds = %early_fini.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_early_init.exit

if.then158.i:                                     ; preds = %early_fini.i
  call void @__sanitizer_cov_trace_pc() #14
  %call161.i = call i32 %107(ptr noundef %hdev) #12
  br label %device_early_init.exit

device_early_init.exit.thread:                    ; preds = %sw.epilog.i.device_early_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i369.ph = phi i32 [ %call10.i, %sw.epilog.i.device_early_init.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workq_name.i) #12
  br label %free_dev_ctrl

device_early_init.exit:                           ; preds = %if.then158.i, %early_fini.i.device_early_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %workq_name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.5.i)
  %tobool20.not = icmp eq i32 %rc.5.i, 0
  br i1 %tobool20.not, label %device_early_init.exit.if.end22_crit_edge, label %device_early_init.exit.free_dev_ctrl_crit_edge

device_early_init.exit.free_dev_ctrl_crit_edge:   ; preds = %device_early_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_dev_ctrl

device_early_init.exit.if.end22_crit_edge:        ; preds = %device_early_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %device_early_init.exit.if.end22_crit_edge, %device_early_init.exit.thread412
  %user_interrupt_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 64
  %108 = ptrtoint ptr %user_interrupt_count to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %user_interrupt_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool24.not = icmp eq i16 %109, 0
  br i1 %tobool24.not, label %if.end22.if.end31_crit_edge, label %if.end7.i.i

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end7.i.i:                                      ; preds = %if.end22
  %conv23 = zext i16 %109 to i32
  %110 = mul nuw nsw i32 %conv23, 60
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %110, i32 noundef 3520) #18
  %user_interrupt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 14
  %111 = ptrtoint ptr %user_interrupt to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call8.i.i, ptr %user_interrupt, align 8
  %tobool28.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool28.not, label %if.end7.i.i.early_fini_crit_edge, label %if.end7.i.i.if.end31_crit_edge

if.end7.i.i.if.end31_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end7.i.i.early_fini_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %early_fini

if.end31:                                         ; preds = %if.end7.i.i.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %112 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %asic_funcs.i, align 8
  %sw_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %sw_init to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sw_init, align 4
  %call32 = call i32 %115(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.user_interrupts_fini_crit_edge

if.end31.user_interrupts_fini_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %user_interrupts_fini

if.end35:                                         ; preds = %if.end31
  call void @hl_multi_cs_completion_init(ptr noundef %hdev) #12
  %call36 = call i32 @hl_hw_queues_create(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %do.end

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.95) #15
  br label %sw_fini

if.end40:                                         ; preds = %if.end35
  %completion_queues_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 67
  %118 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %completion_queues_count, align 1
  %conv42 = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool43.not = icmp eq i8 %119, 0
  br i1 %tobool43.not, label %if.end40.for.end_crit_edge, label %if.end7.i.i401

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end7.i.i401:                                   ; preds = %if.end40
  %120 = shl nuw nsw i32 %conv42, 5
  %call8.i.i400 = call noalias align 128 ptr @__kmalloc(i32 noundef %120, i32 noundef 3520) #18
  %completion_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  %121 = ptrtoint ptr %completion_queue to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call8.i.i400, ptr %completion_queue, align 4
  %tobool47.not = icmp eq ptr %call8.i.i400, null
  br i1 %tobool47.not, label %do.end51, label %for.body.lr.ph

do.end51:                                         ; preds = %if.end7.i.i401
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.98) #15
  br label %hw_queues_destroy

for.body.lr.ph:                                   ; preds = %if.end7.i.i401
  %completion_queue56 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.body.lr.ph
  %cq_ready_cnt.0433 = phi i32 [ 0, %for.body.lr.ph ], [ %inc69, %if.end66.for.body_crit_edge ]
  %124 = ptrtoint ptr %completion_queue56 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %completion_queue56, align 4
  %arrayidx = getelementptr %struct.hl_cq, ptr %125, i32 %cq_ready_cnt.0433
  %126 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %asic_funcs.i, align 8
  %get_queue_id_for_cq = getelementptr inbounds %struct.hl_asic_funcs, ptr %127, i32 0, i32 63
  %128 = ptrtoint ptr %get_queue_id_for_cq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_queue_id_for_cq, align 4
  %call58 = call i32 %129(ptr noundef %hdev, i32 noundef %cq_ready_cnt.0433) #12
  %call59 = call i32 @hl_cq_init(ptr noundef %hdev, ptr noundef %arrayidx, i32 noundef %call58) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.101) #15
  br label %cq_fini

if.end66:                                         ; preds = %for.body
  %132 = ptrtoint ptr %completion_queue56 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %completion_queue56, align 4
  %cq_idx = getelementptr %struct.hl_cq, ptr %133, i32 %cq_ready_cnt.0433, i32 3
  %134 = ptrtoint ptr %cq_idx to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %cq_ready_cnt.0433, ptr %cq_idx, align 4
  %inc69 = add nuw nsw i32 %cq_ready_cnt.0433, 1
  %exitcond.not = icmp eq i32 %inc69, %conv42
  br i1 %exitcond.not, label %if.end66.for.end_crit_edge, label %if.end66.for.body_crit_edge

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end66.for.end_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end66.for.end_crit_edge, %if.end40.for.end_crit_edge
  %event_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 24
  %call70 = call i32 @hl_eq_init(ptr noundef %hdev, ptr noundef %event_queue) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.104) #15
  br label %cq_fini

if.end77:                                         ; preds = %for.end
  %call78 = call i32 @hl_mmu_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.107) #15
  br label %eq_fini

if.end85:                                         ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3520, i32 noundef 1584) #17
  %kernel_ctx = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 19
  %140 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i, ptr %kernel_ctx, align 4
  %tobool88.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool88.not, label %if.end85.mmu_fini_crit_edge, label %if.end90

if.end85.mmu_fini_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmu_fini

if.end90:                                         ; preds = %if.end85
  %is_compute_ctx_active = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 104
  %141 = ptrtoint ptr %is_compute_ctx_active to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %is_compute_ctx_active, align 4
  %142 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %asic_funcs.i, align 8
  %state_dump_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %143, i32 0, i32 86
  %144 = ptrtoint ptr %state_dump_init to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %state_dump_init, align 4
  call void %145(ptr noundef %hdev) #12
  call void @hl_debugfs_add_device(ptr noundef %hdev) #12
  %146 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %kernel_ctx, align 4
  %call93 = call i32 @hl_ctx_init(ptr noundef %hdev, ptr noundef %147, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end101, label %do.end98

do.end98:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.110) #15
  %150 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %kernel_ctx, align 4
  call void @kfree(ptr noundef %151) #12
  br label %remove_device_from_debugfs

if.end101:                                        ; preds = %if.end90
  %call102 = call i32 @hl_cb_pool_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end109, label %do.end107

do.end107:                                        ; preds = %if.end101
  %152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.113) #15
  %154 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %kernel_ctx, align 4
  %call172 = call i32 @hl_ctx_put(ptr noundef %155) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call172)
  %cmp173.not = icmp eq i32 %call172, 1
  br i1 %cmp173.not, label %do.end107.remove_device_from_debugfs_crit_edge, label %do.end178

do.end107.remove_device_from_debugfs_crit_edge:   ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_device_from_debugfs

if.end109:                                        ; preds = %if.end101
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %156 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %disabled, align 2
  %157 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %asic_funcs.i, align 8
  %hw_init = getelementptr inbounds %struct.hl_asic_funcs, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hw_init, align 4
  %call111 = call i32 %160(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end118, label %do.end116

do.end116:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.116) #15
  br label %if.then200

if.end118:                                        ; preds = %if.end109
  %163 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %asic_funcs.i, align 8
  %test_queues = getelementptr inbounds %struct.hl_asic_funcs, ptr %164, i32 0, i32 18
  %165 = ptrtoint ptr %test_queues to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %test_queues, align 4
  %call120 = call i32 %166(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end127, label %do.end125

do.end125:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.119) #15
  br label %if.then200

if.end127:                                        ; preds = %if.end118
  %call128 = call fastcc i32 @device_late_init(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  %169 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev, align 4
  br i1 %tobool129.not, label %do.end138, label %do.end133

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.122) #15
  br label %if.then200

do.end138:                                        ; preds = %if.end127
  %dram_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 16
  %171 = ptrtoint ptr %dram_size to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %dram_size, align 8
  %div141351 = lshr i64 %172, 30
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.125, ptr noundef %asic_name6.i, i64 noundef %div141351) #15
  %call142 = call i32 @hl_vm_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end149, label %do.end147

do.end147:                                        ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.128) #15
  br label %if.then200

if.end149:                                        ; preds = %do.end138
  %call150 = call fastcc i32 @device_cdev_sysfs_add(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end157, label %do.end155

do.end155:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.131) #15
  br label %out_disabled.thread

if.end157:                                        ; preds = %if.end149
  call void @hl_set_max_power(ptr noundef %hdev) #12
  %call158 = call i32 @hl_hwmon_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  %177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev, align 4
  br i1 %tobool159.not, label %do.end168, label %do.end163

do.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.134) #15
  br label %out_disabled.thread

do.end168:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %178, ptr noundef nonnull @.str.137) #15
  %init_done = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 86
  %179 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %init_done, align 2
  %180 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %asic_funcs.i, align 8
  %enable_events_from_fw = getelementptr inbounds %struct.hl_asic_funcs, ptr %181, i32 0, i32 81
  %182 = ptrtoint ptr %enable_events_from_fw to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %enable_events_from_fw, align 4
  call void %183(ptr noundef %hdev) #12
  br label %cleanup

do.end178:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  %184 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.140) #15
  br label %remove_device_from_debugfs

remove_device_from_debugfs:                       ; preds = %do.end178, %do.end107.remove_device_from_debugfs_crit_edge, %do.end98
  %rc.0 = phi i32 [ %call93, %do.end98 ], [ %call102, %do.end178 ], [ %call102, %do.end107.remove_device_from_debugfs_crit_edge ]
  call void @hl_debugfs_remove_device(ptr noundef %hdev) #12
  br label %mmu_fini

mmu_fini:                                         ; preds = %remove_device_from_debugfs, %if.end85.mmu_fini_crit_edge
  %rc.1 = phi i32 [ %rc.0, %remove_device_from_debugfs ], [ -12, %if.end85.mmu_fini_crit_edge ]
  call void @hl_mmu_fini(ptr noundef %hdev) #12
  br label %eq_fini

eq_fini:                                          ; preds = %mmu_fini, %do.end83
  %rc.2 = phi i32 [ %call78, %do.end83 ], [ %rc.1, %mmu_fini ]
  call void @hl_eq_fini(ptr noundef %hdev, ptr noundef %event_queue) #12
  br label %cq_fini

cq_fini:                                          ; preds = %eq_fini, %do.end75, %do.end64
  %cq_ready_cnt.0430 = phi i32 [ %cq_ready_cnt.0433, %do.end64 ], [ %conv42, %do.end75 ], [ %conv42, %eq_fini ]
  %rc.3 = phi i32 [ %call59, %do.end64 ], [ %call70, %do.end75 ], [ %rc.2, %eq_fini ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cq_ready_cnt.0430)
  %cmp183434.not = icmp eq i32 %cq_ready_cnt.0430, 0
  br i1 %cmp183434.not, label %cq_fini.for.end190_crit_edge, label %for.body185.lr.ph

cq_fini.for.end190_crit_edge:                     ; preds = %cq_fini
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end190

for.body185.lr.ph:                                ; preds = %cq_fini
  %completion_queue186 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  br label %for.body185

for.body185:                                      ; preds = %for.body185.for.body185_crit_edge, %for.body185.lr.ph
  %i.1435 = phi i32 [ 0, %for.body185.lr.ph ], [ %inc189, %for.body185.for.body185_crit_edge ]
  %186 = ptrtoint ptr %completion_queue186 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %completion_queue186, align 4
  %arrayidx187 = getelementptr %struct.hl_cq, ptr %187, i32 %i.1435
  call void @hl_cq_fini(ptr noundef %hdev, ptr noundef %arrayidx187) #12
  %inc189 = add nuw nsw i32 %i.1435, 1
  %exitcond438.not = icmp eq i32 %inc189, %cq_ready_cnt.0430
  br i1 %exitcond438.not, label %for.body185.for.end190_crit_edge, label %for.body185.for.body185_crit_edge

for.body185.for.body185_crit_edge:                ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body185

for.body185.for.end190_crit_edge:                 ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end190

for.end190:                                       ; preds = %for.body185.for.end190_crit_edge, %cq_fini.for.end190_crit_edge
  %completion_queue191 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  %188 = ptrtoint ptr %completion_queue191 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %completion_queue191, align 4
  call void @kfree(ptr noundef %189) #12
  br label %hw_queues_destroy

hw_queues_destroy:                                ; preds = %for.end190, %do.end51
  %rc.4 = phi i32 [ %rc.3, %for.end190 ], [ -12, %do.end51 ]
  call void @hl_hw_queues_destroy(ptr noundef %hdev) #12
  br label %sw_fini

sw_fini:                                          ; preds = %hw_queues_destroy, %do.end
  %rc.5 = phi i32 [ %call36, %do.end ], [ %rc.4, %hw_queues_destroy ]
  %190 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %asic_funcs.i, align 8
  %sw_fini193 = getelementptr inbounds %struct.hl_asic_funcs, ptr %191, i32 0, i32 5
  %192 = ptrtoint ptr %sw_fini193 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sw_fini193, align 4
  %call194 = call i32 %193(ptr noundef %hdev) #12
  br label %user_interrupts_fini

user_interrupts_fini:                             ; preds = %sw_fini, %if.end31.user_interrupts_fini_crit_edge
  %rc.6 = phi i32 [ %call32, %if.end31.user_interrupts_fini_crit_edge ], [ %rc.5, %sw_fini ]
  %user_interrupt195 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 14
  %194 = ptrtoint ptr %user_interrupt195 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %user_interrupt195, align 8
  call void @kfree(ptr noundef %195) #12
  br label %early_fini

early_fini:                                       ; preds = %user_interrupts_fini, %if.end7.i.i.early_fini_crit_edge
  %rc.7 = phi i32 [ %rc.6, %user_interrupts_fini ], [ -12, %if.end7.i.i.early_fini_crit_edge ]
  call fastcc void @device_early_fini(ptr noundef %hdev)
  br label %free_dev_ctrl

free_dev_ctrl:                                    ; preds = %early_fini, %device_early_init.exit.free_dev_ctrl_crit_edge, %device_early_init.exit.thread
  %rc.8 = phi i32 [ %rc.5.i, %device_early_init.exit.free_dev_ctrl_crit_edge ], [ %rc.7, %early_fini ], [ %retval.0.i369.ph, %device_early_init.exit.thread ]
  %196 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev_ctrl, align 8
  call void @put_device(ptr noundef %197) #12
  br label %free_dev

free_dev:                                         ; preds = %free_dev_ctrl, %device_init_cdev.exit365, %if.end6.free_dev_crit_edge
  %rc.9 = phi i32 [ -12, %device_init_cdev.exit365 ], [ %rc.8, %free_dev_ctrl ], [ -12, %if.end6.free_dev_crit_edge ]
  %198 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev, align 4
  call void @put_device(ptr noundef %199) #12
  br label %out_disabled.thread

out_disabled.thread:                              ; preds = %free_dev, %do.end163, %do.end155, %device_init_cdev.exit, %entry.out_disabled.thread_crit_edge
  %rc.10.ph = phi i32 [ -12, %entry.out_disabled.thread_crit_edge ], [ 0, %do.end163 ], [ 0, %do.end155 ], [ %rc.9, %free_dev ], [ -12, %device_init_cdev.exit ]
  %disabled198427 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %200 = ptrtoint ptr %disabled198427 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %disabled198427, align 2
  br label %if.end202

if.then200:                                       ; preds = %do.end147, %do.end133, %do.end125, %do.end116
  %201 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %disabled, align 2
  %call201 = call fastcc i32 @device_cdev_sysfs_add(ptr noundef %hdev)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %out_disabled.thread
  %rc.10428 = phi i32 [ %rc.10.ph, %out_disabled.thread ], [ 0, %if.then200 ]
  %202 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hdev, align 8
  %tobool203.not = icmp eq ptr %203, null
  br i1 %tobool203.not, label %do.end215, label %do.end207

do.end207:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  %dev209 = getelementptr inbounds %struct.pci_dev, ptr %203, i32 0, i32 44
  %204 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %id, align 4
  %206 = lshr i16 %205, 1
  %div212 = zext i16 %206 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev209, ptr noundef nonnull @.str.143, i32 noundef %div212) #15
  br label %cleanup

do.end215:                                        ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  %207 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %id, align 4
  %209 = lshr i16 %208, 1
  %div218 = zext i16 %209 to i32
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %div218) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end215, %do.end207, %do.end168
  %retval.0 = phi i32 [ 0, %do.end168 ], [ %rc.10428, %do.end215 ], [ %rc.10428, %do.end207 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_multi_cs_completion_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_hw_queues_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cq_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_eq_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cb_pool_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_cdev_sysfs_add(ptr noundef %hdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.235) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdev_ctrl = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 5
  %dev_ctrl = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 7
  %4 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_ctrl, align 8
  %call2 = tail call i32 @cdev_device_add(ptr noundef %cdev_ctrl, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.238) #15
  br label %delete_cdev_device

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @hl_sysfs_init(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.241) #15
  %10 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_ctrl, align 8
  tail call void @cdev_device_del(ptr noundef %cdev_ctrl, ptr noundef %11) #12
  br label %delete_cdev_device

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %cdev_sysfs_created = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 91
  %12 = ptrtoint ptr %cdev_sysfs_created to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cdev_sysfs_created, align 1
  br label %cleanup

delete_cdev_device:                               ; preds = %do.end15, %do.end7
  %rc.0 = phi i32 [ %call2, %do.end7 ], [ %call10, %do.end15 ]
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %14) #12
  br label %cleanup

cleanup:                                          ; preds = %delete_cdev_device, %if.end17, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %rc.0, %delete_cdev_device ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_hwmon_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_eq_fini(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cq_fini(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hw_queues_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @device_early_fini(ptr noundef %hdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 32
  tail call void @mutex_destroy(ptr noundef %debug_lock) #12
  %send_cpu_message_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 31
  tail call void @mutex_destroy(ptr noundef %send_cpu_message_lock) #12
  %fpriv_list_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  tail call void @mutex_destroy(ptr noundef %fpriv_list_lock) #12
  %fpriv_ctrl_list_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 49
  tail call void @mutex_destroy(ptr noundef %fpriv_ctrl_list_lock) #12
  %lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 57, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #12
  %kernel_cb_mgr = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 23
  tail call void @hl_cb_mgr_fini(ptr noundef %hdev, ptr noundef %kernel_cb_mgr) #12
  %hl_chip_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 38
  %0 = ptrtoint ptr %hl_chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hl_chip_info, align 8
  tail call void @kfree(ptr noundef %1) #12
  %sob_reset_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 18
  %2 = ptrtoint ptr %sob_reset_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sob_reset_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #12
  %eq_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 17
  %4 = ptrtoint ptr %eq_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eq_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #12
  %device_reset_work = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9
  %6 = ptrtoint ptr %device_reset_work to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_reset_work, align 8
  tail call void @destroy_workqueue(ptr noundef %7) #12
  %completion_queues_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 67
  %8 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %completion_queues_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25.not = icmp eq i8 %9, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cq_wq = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %cq_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cq_wq, align 8
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.026
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #12
  %inc = add nuw nsw i32 %i.026, 1
  %14 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %completion_queues_count, align 1
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cq_wq2 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 16
  %16 = ptrtoint ptr %cq_wq2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cq_wq2, align 8
  tail call void @kfree(ptr noundef %17) #12
  tail call void @hl_asid_fini(ptr noundef %hdev) #12
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %18 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs, align 8
  %early_fini = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %early_fini to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %early_fini, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %21(ptr noundef %hdev) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_device_fini(ptr noundef %hdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.148) #15
  %device_fini_pending = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 99
  %2 = ptrtoint ptr %device_fini_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %device_fini_pending, align 1
  %reset_work = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 9, i32 1
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef %reset_work) #12
  %pldm = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 111
  %3 = ptrtoint ptr %pldm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pldm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %call1 = tail call i64 @ktime_get() #12
  %mul.i = select i1 %tobool.not, i64 120000000000, i64 360000000000
  %add.i = add i64 %mul.i, %call1
  %reset_info = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59
  tail call void @_raw_spin_lock(ptr noundef %reset_info) #12
  %in_reset = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 4
  %5 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %entry.if.end11_crit_edge, label %if.then8

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %in_reset, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %entry.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reset_info) #12
  br label %while.cond

while.cond:                                       ; preds = %if.end27.while.cond_crit_edge, %if.end11
  %device_in_reset.0.in = phi i1 [ %tobool5, %if.end11 ], [ %tobool19, %if.end27.while.cond_crit_edge ]
  br i1 %device_in_reset.0.in, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #12
  tail call void @_raw_spin_lock(ptr noundef %reset_info) #12
  %8 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool19 = icmp ne i8 %9, 0
  br i1 %tobool19, label %while.body.if.end27_crit_edge, label %if.then24

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %in_reset, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %while.body.if.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reset_info) #12
  %call30 = tail call i64 @ktime_get() #12
  %cmp3.i = icmp sgt i64 %call30, %add.i
  br i1 %cmp3.i, label %do.end35, label %if.end27.while.cond_crit_edge

if.end27.while.cond_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %12, ptr noundef nonnull @.str.151) #15
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call38 = tail call i32 @hl_fw_send_pci_access_msg(ptr noundef %hdev, i32 noundef 1) #12
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %13 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %disabled, align 2
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %14 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_funcs.i, align 8
  %hw_queues_lock.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %hw_queues_lock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_queues_lock.i, align 4
  tail call void %17(ptr noundef %hdev) #12
  %18 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_funcs.i, align 8
  %hw_queues_unlock.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %19, i32 0, i32 51
  %20 = ptrtoint ptr %hw_queues_unlock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_queues_unlock.i, align 4
  tail call void %21(ptr noundef %hdev) #12
  %send_cpu_message_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %send_cpu_message_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %send_cpu_message_lock.i) #12
  %fpriv_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %fpriv_list_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %fpriv_list_lock.i) #12
  %fpriv_ctrl_list_lock.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %fpriv_ctrl_list_lock.i, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock.i) #12
  %hard_reset_pending = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 59, i32 7
  %22 = ptrtoint ptr %hard_reset_pending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %hard_reset_pending, align 1
  tail call void @hl_hwmon_fini(ptr noundef %hdev) #12
  %late_init_done.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 79
  %23 = ptrtoint ptr %late_init_done.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %late_init_done.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %while.end.cleanup_resources.exit_crit_edge, label %if.end.i.i

while.end.cleanup_resources.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_resources.exit

if.end.i.i:                                       ; preds = %while.end
  %heartbeat.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 81
  %25 = ptrtoint ptr %heartbeat.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %heartbeat.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %work_heartbeat.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_heartbeat.i.i) #12
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  %27 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic_funcs.i, align 8
  %late_fini.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %late_fini.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %late_fini.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %30, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %30(ptr noundef %hdev) #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end3.i.i.if.end8.i.i_crit_edge
  %31 = ptrtoint ptr %late_init_done.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %late_init_done.i.i, align 1
  br label %cleanup_resources.exit

cleanup_resources.exit:                           ; preds = %if.end8.i.i, %while.end.cleanup_resources.exit_crit_edge
  %32 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic_funcs.i, align 8
  %halt_engines.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %halt_engines.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %halt_engines.i, align 4
  tail call void %35(ptr noundef %hdev, i1 noundef zeroext true, i1 noundef zeroext false) #12
  tail call void @hl_cs_rollback_all(ptr noundef %hdev) #12
  tail call void @hl_release_pending_user_interrupts(ptr noundef %hdev) #12
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.154, i32 noundef 60) #15
  %call44 = tail call fastcc i32 @device_kill_open_processes(ptr noundef %hdev, i32 noundef 60, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup_resources.exit.if.end51_crit_edge, label %do.end49

cleanup_resources.exit.if.end51_crit_edge:        ; preds = %cleanup_resources.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end49:                                         ; preds = %cleanup_resources.exit
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %39, ptr noundef nonnull @.str.157) #15
  %fpriv_list.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %fpriv_list_lock.i, i32 noundef 0) #12
  %40 = ptrtoint ptr %fpriv_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn20.i = load ptr, ptr %fpriv_list.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %fpriv_list.i
  br i1 %cmp.not21.i, label %do.end49.device_disable_open_processes.exit_crit_edge, label %do.end49.for.body.i_crit_edge

do.end49.for.body.i_crit_edge:                    ; preds = %do.end49
  br label %for.body.i

do.end49.device_disable_open_processes.exit_crit_edge: ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_disable_open_processes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end49.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %do.end49.for.body.i_crit_edge ]
  %hpriv.0.i = getelementptr i8, ptr %.pn22.i, i32 -280
  %41 = ptrtoint ptr %hpriv.0.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %hpriv.0.i, align 4
  %42 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fpriv_list.i
  br i1 %cmp.not.i, label %for.body.i.device_disable_open_processes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.device_disable_open_processes.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_disable_open_processes.exit

device_disable_open_processes.exit:               ; preds = %for.body.i.device_disable_open_processes.exit_crit_edge, %do.end49.device_disable_open_processes.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %fpriv_list_lock.i) #12
  br label %if.end51

if.end51:                                         ; preds = %device_disable_open_processes.exit, %cleanup_resources.exit.if.end51_crit_edge
  %call52 = tail call fastcc i32 @device_kill_open_processes(ptr noundef %hdev, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %do.end57

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.end57:                                         ; preds = %if.end51
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %44, ptr noundef nonnull @.str.160) #15
  %fpriv_ctrl_list.i141 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %fpriv_ctrl_list_lock.i, i32 noundef 0) #12
  %45 = ptrtoint ptr %fpriv_ctrl_list.i141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn20.i143 = load ptr, ptr %fpriv_ctrl_list.i141, align 4
  %cmp.not21.i144 = icmp eq ptr %.pn20.i143, %fpriv_ctrl_list.i141
  br i1 %cmp.not21.i144, label %do.end57.device_disable_open_processes.exit150_crit_edge, label %do.end57.for.body.i149_crit_edge

do.end57.for.body.i149_crit_edge:                 ; preds = %do.end57
  br label %for.body.i149

do.end57.device_disable_open_processes.exit150_crit_edge: ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_disable_open_processes.exit150

for.body.i149:                                    ; preds = %for.body.i149.for.body.i149_crit_edge, %do.end57.for.body.i149_crit_edge
  %.pn22.i145 = phi ptr [ %.pn.i147, %for.body.i149.for.body.i149_crit_edge ], [ %.pn20.i143, %do.end57.for.body.i149_crit_edge ]
  %hpriv.0.i146 = getelementptr i8, ptr %.pn22.i145, i32 -280
  %46 = ptrtoint ptr %hpriv.0.i146 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %hpriv.0.i146, align 4
  %47 = ptrtoint ptr %.pn22.i145 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i147 = load ptr, ptr %.pn22.i145, align 4
  %cmp.not.i148 = icmp eq ptr %.pn.i147, %fpriv_ctrl_list.i141
  br i1 %cmp.not.i148, label %for.body.i149.device_disable_open_processes.exit150_crit_edge, label %for.body.i149.for.body.i149_crit_edge

for.body.i149.for.body.i149_crit_edge:            ; preds = %for.body.i149
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i149

for.body.i149.device_disable_open_processes.exit150_crit_edge: ; preds = %for.body.i149
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_disable_open_processes.exit150

device_disable_open_processes.exit150:            ; preds = %for.body.i149.device_disable_open_processes.exit150_crit_edge, %do.end57.device_disable_open_processes.exit150_crit_edge
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock.i) #12
  br label %if.end59

if.end59:                                         ; preds = %device_disable_open_processes.exit150, %if.end51.if.end59_crit_edge
  %call60 = tail call i32 @hl_cb_pool_fini(ptr noundef %hdev) #12
  %48 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %asic_funcs.i, align 8
  %hw_fini = getelementptr inbounds %struct.hl_asic_funcs, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %hw_fini to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_fini, align 4
  tail call void %51(ptr noundef %hdev, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %fw_comp_loaded = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 53, i32 8
  %52 = ptrtoint ptr %fw_comp_loaded to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %fw_comp_loaded, align 1
  %kernel_ctx = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 19
  %53 = ptrtoint ptr %kernel_ctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %kernel_ctx, align 4
  %tobool61.not = icmp eq ptr %54, null
  br i1 %tobool61.not, label %if.end59.if.end70_crit_edge, label %land.lhs.true

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end59
  %call63 = tail call i32 @hl_ctx_put(ptr noundef nonnull %54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 1
  br i1 %cmp64.not, label %land.lhs.true.if.end70_crit_edge, label %do.end68

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.end68:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.163) #15
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %land.lhs.true.if.end70_crit_edge, %if.end59.if.end70_crit_edge
  tail call void @hl_debugfs_remove_device(ptr noundef %hdev) #12
  tail call void @hl_vm_fini(ptr noundef %hdev) #12
  tail call void @hl_mmu_fini(ptr noundef %hdev) #12
  %event_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 24
  tail call void @hl_eq_fini(ptr noundef %hdev, ptr noundef %event_queue) #12
  %completion_queues_count = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 67
  %57 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %completion_queues_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp71152.not = icmp eq i8 %58, 0
  br i1 %cmp71152.not, label %if.end70.for.end_crit_edge, label %for.body.lr.ph

if.end70.for.end_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end70
  %completion_queue = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %59 = ptrtoint ptr %completion_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %completion_queue, align 4
  %arrayidx = getelementptr %struct.hl_cq, ptr %60, i32 %i.0153
  tail call void @hl_cq_fini(ptr noundef %hdev, ptr noundef %arrayidx) #12
  %inc = add nuw nsw i32 %i.0153, 1
  %61 = ptrtoint ptr %completion_queues_count to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %completion_queues_count, align 1
  %conv = zext i8 %62 to i32
  %cmp71 = icmp ult i32 %inc, %conv
  br i1 %cmp71, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end70.for.end_crit_edge
  %completion_queue73 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 13
  %63 = ptrtoint ptr %completion_queue73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %completion_queue73, align 4
  tail call void @kfree(ptr noundef %64) #12
  %user_interrupt = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 14
  %65 = ptrtoint ptr %user_interrupt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %user_interrupt, align 8
  tail call void @kfree(ptr noundef %66) #12
  tail call void @hl_hw_queues_destroy(ptr noundef %hdev) #12
  %67 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %asic_funcs.i, align 8
  %sw_fini = getelementptr inbounds %struct.hl_asic_funcs, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %sw_fini to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sw_fini, align 4
  %call75 = tail call i32 %70(ptr noundef %hdev) #12
  tail call fastcc void @device_early_fini(ptr noundef %hdev)
  %cdev_sysfs_created.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 91
  %71 = ptrtoint ptr %cdev_sysfs_created.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cdev_sysfs_created.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %for.end.device_cdev_sysfs_del.exit_crit_edge, label %if.end.i

for.end.device_cdev_sysfs_del.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_cdev_sysfs_del.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hl_sysfs_fini(ptr noundef %hdev) #12
  %cdev_ctrl.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 5
  %dev_ctrl.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 7
  %73 = ptrtoint ptr %dev_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_ctrl.i, align 8
  tail call void @cdev_device_del(ptr noundef %cdev_ctrl.i, ptr noundef %74) #12
  %cdev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 4
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  tail call void @cdev_device_del(ptr noundef %cdev.i, ptr noundef %76) #12
  br label %device_cdev_sysfs_del.exit

device_cdev_sysfs_del.exit:                       ; preds = %if.end.i, %for.end.device_cdev_sysfs_del.exit_crit_edge
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %78) #12
  %dev_ctrl2.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 7
  %79 = ptrtoint ptr %dev_ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_ctrl2.i, align 8
  tail call void @put_device(ptr noundef %80) #12
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #15
  br label %cleanup

cleanup:                                          ; preds = %device_cdev_sysfs_del.exit, %do.end35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_send_pci_access_msg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_hwmon_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cb_pool_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_rreg(ptr nocapture noundef readonly %hdev, i32 noundef %reg) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %rmmio = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 3
  %0 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !399
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_wreg(ptr nocapture noundef readonly %hdev, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %rmmio = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 3
  %1 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !402
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cs_rollback_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_release_pending_user_interrupts(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_device_heartbeat(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -412
  %in_reset.i.i = getelementptr i8, ptr %work, i32 7140
  %0 = ptrtoint ptr %in_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_reset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else.i.i:                                      ; preds = %entry
  %needs_reset.i.i = getelementptr i8, ptr %work, i32 7142
  %2 = ptrtoint ptr %needs_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_reset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i.i, label %if.else4.i.i, label %if.else.i.i.reschedule_crit_edge

if.else.i.i.reschedule_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %reschedule

if.else4.i.i:                                     ; preds = %if.else.i.i
  %disabled.i.i = getelementptr i8, ptr %work, i32 7262
  %4 = ptrtoint ptr %disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool5.not.i.i, label %if.end, label %if.else4.i.i.reschedule_crit_edge

if.else4.i.i.reschedule_crit_edge:                ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %reschedule

if.end:                                           ; preds = %if.else4.i.i
  %asic_funcs = getelementptr i8, ptr %work, i32 3652
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %send_heartbeat = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %send_heartbeat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_heartbeat, align 4
  %call1 = tail call i32 %9(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.reschedule_crit_edge, label %if.end3

if.end.reschedule_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %reschedule

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %in_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_reset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i23 = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i23, label %if.else.i.i26, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else.i.i26:                                    ; preds = %if.end3
  %12 = ptrtoint ptr %needs_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %needs_reset.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i.i25 = icmp eq i8 %13, 0
  br i1 %tobool2.not.i.i25, label %if.else4.i.i29, label %if.else.i.i26.if.end6_crit_edge

if.else.i.i26.if.end6_crit_edge:                  ; preds = %if.else.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else4.i.i29:                                   ; preds = %if.else.i.i26
  %14 = ptrtoint ptr %disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %disabled.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i.i28 = icmp eq i8 %15, 0
  br i1 %tobool5.not.i.i28, label %do.end, label %if.else4.i.i29.if.end6_crit_edge

if.else4.i.i29.if.end6_crit_edge:                 ; preds = %if.else4.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.else4.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %work, i32 -8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.184) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.else4.i.i29.if.end6_crit_edge, %if.else.i.i26.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %call7 = tail call i32 @hl_device_reset(ptr noundef %add.ptr, i32 noundef 5)
  br label %cleanup

reschedule:                                       ; preds = %if.end.reschedule_crit_edge, %if.else4.i.i.reschedule_crit_edge, %if.else.i.i.reschedule_crit_edge
  %18 = ptrtoint ptr %in_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %in_reset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool8.not = icmp eq i8 %.pr, 0
  br i1 %tobool8.not, label %if.then9, label %reschedule.if.end11_crit_edge

reschedule.if.end11_crit_edge:                    ; preds = %reschedule
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %reschedule
  call void @__sanitizer_cov_trace_pc() #14
  %prev_reset_trigger = getelementptr i8, ptr %work, i32 7145
  %19 = ptrtoint ptr %prev_reset_trigger to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %prev_reset_trigger, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %reschedule.if.end11_crit_edge, %entry.if.end11_crit_edge
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 5000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef %spec.select.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_release_func(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ioctl(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_mmap(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %vma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hl_mmap._rs, ptr noundef nonnull @__func__.hl_mmap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_open(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_device_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  store ptr null, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #15
  %taskpid = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %taskpid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %taskpid, align 4
  tail call void @put_pid(ptr noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @hl_release_pending_user_interrupts(ptr noundef %7) #12
  %cb_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 5
  tail call void @hl_cb_mgr_fini(ptr noundef nonnull %3, ptr noundef %cb_mgr) #12
  %ctx_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 4
  tail call void @hl_ctx_mgr_fini(ptr noundef nonnull %3, ptr noundef %ctx_mgr) #12
  %call4 = tail call i32 @hl_hpriv_put(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %9, ptr noundef nonnull @.str.192) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.end.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %10 to i64
  %last_successful_open_jif = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 67
  %11 = ptrtoint ptr %last_successful_open_jif to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_successful_open_jif, align 8
  %sub = sub i64 %conv, %12
  %last_open_session_duration_jif = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 68
  %13 = ptrtoint ptr %last_open_session_duration_jif to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub, ptr %last_open_session_duration_jif, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cb_mgr_fini(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_ctx_mgr_fini(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ioctl_control(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_open_ctrl(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_device_release_ctrl(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  store ptr null, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194) #15
  br label %out

if.end:                                           ; preds = %entry
  %fpriv_ctrl_list_lock = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %fpriv_ctrl_list_lock, i32 noundef 0) #12
  %dev_node = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_node) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %dev_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_node, align 4
  %prev.i = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock) #12
  br label %out

out:                                              ; preds = %list_del.exit, %do.end
  %taskpid = getelementptr inbounds %struct.hl_fpriv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %taskpid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %taskpid, align 4
  tail call void @put_pid(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @goya_set_asic_funcs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gaudi_set_asic_funcs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_asid_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_if_set_funcs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cb_mgr_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_hard_reset_pending(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %hdev1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %flags2 = getelementptr i8, ptr %work, i32 104
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 4
  %or = or i32 %3, 2
  %call = tail call i32 @hl_device_reset(ptr noundef %1, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call)
  %cmp = icmp eq i32 %call, -16
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device_fini_pending = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 99
  %4 = ptrtoint ptr %device_fini_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_fini_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.233, i32 noundef 10) #15
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 1000) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_asid_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_sysfs_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_sysfs_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 208)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 208)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !277, !279, !281, !283, !284, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !301, !302, !303, !304, !306, !308, !310, !312, !313, !314, !315, !317, !319, !320, !321, !323, !325, !326, !327, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !379, !380}
!llvm.module.flags = !{!381, !382, !383, !384, !385, !386, !387, !388}
!llvm.ident = !{!389}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/device.c", i32 636, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_device_set_debug_mode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_device_set_debug_mode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/device.c", i32 654, i32 3}
!10 = !{ptr @hl_device_set_debug_mode._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hl_device_set_debug_mode._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/device.c", i32 728, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hl_device_suspend._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @hl_device_suspend._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/habanalabs/common/device.c", i32 741, i32 3}
!19 = !{ptr @hl_device_suspend._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hl_device_suspend._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/habanalabs/common/device.c", i32 768, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hl_device_resume._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @hl_device_resume._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/habanalabs/common/device.c", i32 777, i32 3}
!28 = !{ptr @hl_device_resume._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hl_device_resume._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/habanalabs/common/device.c", i32 789, i32 3}
!32 = !{ptr @hl_device_resume._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hl_device_resume._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/habanalabs/common/device.c", i32 987, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hl_device_reset._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @hl_device_reset._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1002, i32 4}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hl_device_reset._entry.23, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hl_device_reset._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1018, i32 3}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hl_device_reset.__UNIQUE_ID_ddebug304, !45, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1054, i32 4}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hl_device_reset._entry.29, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hl_device_reset._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1056, i32 4}
!55 = !{ptr @hl_device_reset._entry.33, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hl_device_reset._entry_ptr.35, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1058, i32 4}
!59 = !{ptr @hl_device_reset._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hl_device_reset._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1091, i32 5}
!63 = !{ptr @hl_device_reset._entry.39, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hl_device_reset._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @hl_device_reset._entry.42, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1101, i32 4}
!67 = !{ptr @hl_device_reset._entry_ptr.43, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1152, i32 4}
!70 = !{ptr @hl_device_reset._entry.44, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @hl_device_reset._entry_ptr.46, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1159, i32 4}
!74 = !{ptr @hl_device_reset._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hl_device_reset._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.51, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1167, i32 4}
!78 = !{ptr @hl_device_reset._entry.50, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @hl_device_reset._entry_ptr.52, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1185, i32 4}
!82 = !{ptr @hl_device_reset._entry.53, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @hl_device_reset._entry_ptr.55, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.57, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1202, i32 3}
!86 = !{ptr @hl_device_reset._entry.56, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @hl_device_reset._entry_ptr.58, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.60, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1209, i32 3}
!90 = !{ptr @hl_device_reset._entry.59, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @hl_device_reset._entry_ptr.61, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.63, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1218, i32 3}
!94 = !{ptr @hl_device_reset._entry.62, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @hl_device_reset._entry_ptr.64, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.66, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1225, i32 4}
!98 = !{ptr @hl_device_reset._entry.65, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @hl_device_reset._entry_ptr.67, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.69, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1231, i32 4}
!102 = !{ptr @hl_device_reset._entry.68, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @hl_device_reset._entry_ptr.70, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.72, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1240, i32 5}
!106 = !{ptr @hl_device_reset._entry.71, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hl_device_reset._entry_ptr.73, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.75, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1243, i32 5}
!110 = !{ptr @hl_device_reset._entry.74, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @hl_device_reset._entry_ptr.76, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.78, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1264, i32 2}
!114 = !{ptr @.str.79, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @hl_device_reset._entry.77, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @hl_device_reset._entry_ptr.80, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.82, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1280, i32 3}
!119 = !{ptr @hl_device_reset._entry.81, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @hl_device_reset._entry_ptr.83, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.85, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1296, i32 3}
!123 = !{ptr @hl_device_reset._entry.84, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @hl_device_reset._entry_ptr.86, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.88, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1299, i32 3}
!127 = !{ptr @hl_device_reset._entry.87, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @hl_device_reset._entry_ptr.89, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.91, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1303, i32 3}
!131 = !{ptr @hl_device_reset._entry.90, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @hl_device_reset._entry_ptr.92, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.93, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1329, i32 31}
!135 = !{ptr @.str.94, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1344, i32 31}
!137 = !{ptr @.str.95, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1396, i32 3}
!139 = !{ptr @.str.96, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @hl_device_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @hl_device_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.98, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1413, i32 4}
!144 = !{ptr @hl_device_init._entry.97, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @hl_device_init._entry_ptr.99, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.101, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1424, i32 4}
!148 = !{ptr @hl_device_init._entry.100, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @hl_device_init._entry_ptr.102, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.104, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1438, i32 3}
!152 = !{ptr @hl_device_init._entry.103, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @hl_device_init._entry_ptr.105, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.107, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1445, i32 3}
!156 = !{ptr @hl_device_init._entry.106, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @hl_device_init._entry_ptr.108, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.110, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1467, i32 3}
!160 = !{ptr @hl_device_init._entry.109, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @hl_device_init._entry_ptr.111, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.113, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1474, i32 3}
!164 = !{ptr @hl_device_init._entry.112, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @hl_device_init._entry_ptr.114, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.116, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1493, i32 3}
!168 = !{ptr @hl_device_init._entry.115, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @hl_device_init._entry_ptr.117, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.119, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1501, i32 3}
!172 = !{ptr @hl_device_init._entry.118, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @hl_device_init._entry_ptr.120, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.122, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1508, i32 3}
!176 = !{ptr @hl_device_init._entry.121, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @hl_device_init._entry_ptr.123, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.125, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1513, i32 2}
!180 = !{ptr @hl_device_init._entry.124, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @hl_device_init._entry_ptr.126, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.128, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1519, i32 3}
!184 = !{ptr @hl_device_init._entry.127, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @hl_device_init._entry_ptr.129, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.131, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1532, i32 3}
!188 = !{ptr @hl_device_init._entry.130, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @hl_device_init._entry_ptr.132, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.134, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1551, i32 3}
!192 = !{ptr @hl_device_init._entry.133, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @hl_device_init._entry_ptr.135, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.137, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1556, i32 2}
!196 = !{ptr @hl_device_init._entry.136, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @hl_device_init._entry_ptr.138, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.140, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1572, i32 3}
!200 = !{ptr @hl_device_init._entry.139, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @hl_device_init._entry_ptr.141, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.143, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1601, i32 3}
!204 = !{ptr @hl_device_init._entry.142, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @hl_device_init._entry_ptr.144, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.146, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1605, i32 3}
!208 = !{ptr @hl_device_init._entry.145, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @hl_device_init._entry_ptr.147, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.148, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1625, i32 2}
!212 = !{ptr @.str.149, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @hl_device_fini._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @hl_device_fini._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.151, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1661, i32 4}
!217 = !{ptr @hl_device_fini._entry.150, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @hl_device_fini._entry_ptr.152, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.154, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1691, i32 2}
!221 = !{ptr @hl_device_fini._entry.153, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @hl_device_fini._entry_ptr.155, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.157, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1697, i32 3}
!225 = !{ptr @hl_device_fini._entry.156, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @hl_device_fini._entry_ptr.158, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.160, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1703, i32 3}
!229 = !{ptr @hl_device_fini._entry.159, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @hl_device_fini._entry_ptr.161, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.163, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1716, i32 3}
!233 = !{ptr @hl_device_fini._entry.162, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @hl_device_fini._entry_ptr.164, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.166, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/misc/habanalabs/common/device.c", i32 1741, i32 2}
!237 = !{ptr @hl_device_fini._entry.165, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @hl_device_fini._entry_ptr.167, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.168, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/misc/habanalabs/common/device.c", i32 76, i32 3}
!241 = !{ptr @.str.169, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @hpriv_release._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @hpriv_release._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.170, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/misc/habanalabs/common/device.c", i32 957, i32 4}
!246 = !{ptr @.str.171, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.172, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @handle_reset_trigger._entry, !245, !"_entry", i1 false, i1 false}
!249 = !{ptr @handle_reset_trigger._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.173, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/misc/habanalabs/common/device.c", i32 840, i32 4}
!252 = !{ptr @.str.174, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @device_kill_open_processes._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @device_kill_open_processes._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.176, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/misc/habanalabs/common/device.c", i32 847, i32 4}
!257 = !{ptr @device_kill_open_processes._entry.175, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @device_kill_open_processes._entry_ptr.177, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.178, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/misc/habanalabs/common/device.c", i32 867, i32 3}
!261 = !{ptr @device_kill_open_processes.__UNIQUE_ID_ddebug303, !260, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!262 = !{ptr @.str.179, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/misc/habanalabs/common/device.c", i32 569, i32 4}
!264 = !{ptr @.str.180, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @device_late_init._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @device_late_init._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @device_late_init.__key, !268, !"__key", i1 false, i1 false}
!268 = !{!"../drivers/misc/habanalabs/common/device.c", i32 578, i32 3}
!269 = !{ptr @.str.181, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @device_late_init.__key.182, !268, !"__key", i1 false, i1 false}
!271 = !{ptr @.str.183, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.184, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/misc/habanalabs/common/device.c", i32 530, i32 3}
!274 = !{ptr @.str.185, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @hl_device_heartbeat._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @hl_device_heartbeat._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.186, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/misc/habanalabs/common/device.c", i32 269, i32 21}
!279 = !{ptr @hl_ops, !280, !"hl_ops", i1 false, i1 false}
!280 = !{!"../drivers/misc/habanalabs/common/device.c", i32 217, i32 37}
!281 = !{ptr @.str.187, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/misc/habanalabs/common/device.c", i32 199, i32 3}
!283 = !{ptr @hl_mmap._rs, !282, !"_rs", i1 false, i1 false}
!284 = !{ptr @__func__.hl_mmap, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.188, !282, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @hl_mmap._entry, !282, !"_entry", i1 false, i1 false}
!287 = !{ptr @hl_mmap._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.189, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/misc/habanalabs/common/device.c", i32 137, i32 3}
!290 = !{ptr @.str.190, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @hl_device_release._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @hl_device_release._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.192, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/misc/habanalabs/common/device.c", i32 151, i32 3}
!295 = !{ptr @hl_device_release._entry.191, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @hl_device_release._entry_ptr.193, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @hl_ctrl_ops, !298, !"hl_ctrl_ops", i1 false, i1 false}
!298 = !{!"../drivers/misc/habanalabs/common/device.c", i32 226, i32 37}
!299 = !{ptr @.str.194, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/misc/habanalabs/common/device.c", i32 168, i32 3}
!301 = !{ptr @.str.195, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @hl_device_release_ctrl._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @hl_device_release_ctrl._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.196, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/misc/habanalabs/common/device.c", i32 362, i32 28}
!306 = !{ptr @.str.197, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/misc/habanalabs/common/device.c", i32 366, i32 28}
!308 = !{ptr @.str.198, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/misc/habanalabs/common/device.c", i32 370, i32 28}
!310 = !{ptr @.str.199, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/misc/habanalabs/common/device.c", i32 373, i32 3}
!312 = !{ptr @.str.200, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @device_early_init._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @device_early_init._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.201, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/misc/habanalabs/common/device.c", i32 397, i32 28}
!317 = !{ptr @.str.203, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/misc/habanalabs/common/device.c", i32 400, i32 4}
!319 = !{ptr @device_early_init._entry.202, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @device_early_init._entry_ptr.204, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.205, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/misc/habanalabs/common/device.c", i32 406, i32 32}
!323 = !{ptr @.str.207, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/misc/habanalabs/common/device.c", i32 408, i32 3}
!325 = !{ptr @device_early_init._entry.206, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @device_early_init._entry_ptr.208, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.209, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/misc/habanalabs/common/device.c", i32 413, i32 39}
!329 = !{ptr @.str.211, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/misc/habanalabs/common/device.c", i32 415, i32 3}
!331 = !{ptr @device_early_init._entry.210, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @device_early_init._entry_ptr.212, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.214, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/misc/habanalabs/common/device.c", i32 438, i32 3}
!335 = !{ptr @device_early_init._entry.213, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @device_early_init._entry_ptr.215, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @device_early_init.__key, !338, !"__key", i1 false, i1 false}
!338 = !{!"../drivers/misc/habanalabs/common/device.c", i32 442, i32 2}
!339 = !{ptr @.str.216, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @device_early_init.__key.217, !338, !"__key", i1 false, i1 false}
!341 = !{ptr @.str.218, !338, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @device_early_init.__key.219, !343, !"__key", i1 false, i1 false}
!343 = !{!"../drivers/misc/habanalabs/common/device.c", i32 447, i32 2}
!344 = !{ptr @.str.220, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @device_early_init.__key.221, !346, !"__key", i1 false, i1 false}
!346 = !{!"../drivers/misc/habanalabs/common/device.c", i32 448, i32 2}
!347 = !{ptr @.str.222, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @device_early_init.__key.223, !349, !"__key", i1 false, i1 false}
!349 = !{!"../drivers/misc/habanalabs/common/device.c", i32 450, i32 2}
!350 = !{ptr @.str.224, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @device_early_init.__key.225, !352, !"__key", i1 false, i1 false}
!352 = !{!"../drivers/misc/habanalabs/common/device.c", i32 451, i32 2}
!353 = !{ptr @.str.226, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @device_early_init.__key.227, !355, !"__key", i1 false, i1 false}
!355 = !{!"../drivers/misc/habanalabs/common/device.c", i32 454, i32 2}
!356 = !{ptr @.str.228, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @device_early_init.__key.229, !358, !"__key", i1 false, i1 false}
!358 = !{!"../drivers/misc/habanalabs/common/device.c", i32 455, i32 2}
!359 = !{ptr @.str.230, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @device_early_init.__key.231, !361, !"__key", i1 false, i1 false}
!361 = !{!"../drivers/misc/habanalabs/common/device.c", i32 456, i32 2}
!362 = !{ptr @.str.232, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.233, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/misc/habanalabs/common/device.c", i32 336, i32 3}
!365 = !{ptr @.str.234, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @device_hard_reset_pending._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @device_hard_reset_pending._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.235, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/misc/habanalabs/common/device.c", i32 280, i32 3}
!370 = !{ptr @.str.236, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @device_cdev_sysfs_add._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @device_cdev_sysfs_add._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.238, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/misc/habanalabs/common/device.c", i32 287, i32 3}
!375 = !{ptr @device_cdev_sysfs_add._entry.237, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @device_cdev_sysfs_add._entry_ptr.239, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.241, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/misc/habanalabs/common/device.c", i32 295, i32 3}
!379 = !{ptr @device_cdev_sysfs_add._entry.240, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @device_cdev_sysfs_add._entry_ptr.242, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{i32 1, !"wchar_size", i32 2}
!382 = !{i32 1, !"min_enum_size", i32 4}
!383 = !{i32 8, !"branch-target-enforcement", i32 0}
!384 = !{i32 8, !"sign-return-address", i32 0}
!385 = !{i32 8, !"sign-return-address-all", i32 0}
!386 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"uwtable", i32 1}
!388 = !{i32 7, !"frame-pointer", i32 2}
!389 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!390 = !{i64 2148594861, i64 2148594893, i64 2148594922, i64 2148594956, i64 2148594987, i64 2148595010}
!391 = !{!"branch_weights", i32 1, i32 2000}
!392 = !{!"branch_weights", i32 2000, i32 1}
!393 = !{i64 2148682862}
!394 = !{i64 2148597326, i64 2148597358, i64 2148597387, i64 2148597421, i64 2148597452, i64 2148597475}
!395 = !{i64 2150764515}
!396 = !{!"auto-init"}
!397 = !{i64 2148983865, i64 2148984145, i64 2148984479, i64 2148984813}
!398 = !{i64 2149075146, i64 2149075151, i64 2149075164, i64 2149075208, i64 2149075242, i64 2149075263}
!399 = !{i64 6264855}
!400 = !{i64 2156370504}
!401 = !{i64 2156370887}
!402 = !{i64 6264437}
