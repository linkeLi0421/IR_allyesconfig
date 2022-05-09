; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/habanalabs_ioctl.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/habanalabs_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hl_ioctl_desc = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.99, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.99 = type { %struct.dynamic_fw_load_mgr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.75 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hl_debug_args = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.hl_debug_params = type { ptr, ptr, i32, i32, i32, i8 }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_info_razwi_event = type { i64, i64, i16, i16, i8, i8, [2 x i8] }
%struct.hl_info_cs_timeout_event = type { i64, i64 }
%struct.hl_info_last_err_open_dev_time = type { i64 }
%struct.hl_open_stats_info = type { i64, i64 }
%struct.hl_info_sync_manager = type { i32, i32, i32, i32 }
%struct.hl_info_clk_throttle = type { i32, i32, [2 x i64], [2 x i64] }
%struct.hl_info_cs_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hl_info_reset_count = type { i32, i32 }
%struct.hl_info_device_status = type { i32, i32 }
%struct.hl_info_hw_ip_info = type { i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i8, i8, [2 x i8], [128 x i8], [16 x i8], i64, i64 }
%struct.hl_info_args = type { i64, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.hl_info_dram_usage = type { i64, i64 }
%struct.hl_info_hw_idle = type { i32, i32, [2 x i64] }
%struct.hl_info_device_utilization = type { i32, i32 }
%struct.hl_info_clk_rate = type { i32, i32 }
%struct.hl_info_time_sync = type { i64, i64 }
%struct.hl_info_pci_counters = type { i64, i64, i64 }
%struct.hl_info_energy = type { i64 }
%struct.hl_pll_frequency_info = type { [4 x i16] }
%struct.hl_power_info = type { i64 }
%struct.cpucp_hbm_row_info = type { i8, i8, i8, i8, i16, i8, i8 }

@hl_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hl_ioctl = private unnamed_addr constant [9 x i8] c"hl_ioctl\00", align 1
@hl_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.hl_ioctl, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013habanalabs: Sending ioctl after device was removed! Please close FD\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/misc/habanalabs/common/habanalabs_ioctl.c\00", [46 x i8] zeroinitializer }, align 32
@hl_ioctl._entry_ptr = internal global ptr @hl_ioctl._entry, section ".printk_index", align 4
@hl_ioctls = internal constant { [7 x %struct.hl_ioctl_desc], [40 x i8] } { [7 x %struct.hl_ioctl_desc] [%struct.hl_ioctl_desc zeroinitializer, %struct.hl_ioctl_desc { i32 -1072150527, ptr @hl_info_ioctl }, %struct.hl_ioctl_desc { i32 -1072150526, ptr @hl_cb_ioctl }, %struct.hl_ioctl_desc { i32 -1070577661, ptr @hl_cs_ioctl }, %struct.hl_ioctl_desc { i32 -1071101948, ptr @hl_wait_ioctl }, %struct.hl_ioctl_desc { i32 -1071101947, ptr @hl_mem_ioctl }, %struct.hl_ioctl_desc { i32 -1071101946, ptr @hl_debug_ioctl }], [40 x i8] zeroinitializer }, align 32
@hl_ioctl._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.hl_ioctl, ptr @.str.2, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid ioctl: pid=%d, nr=0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_ioctl._entry_ptr.7 = internal global ptr @hl_ioctl._entry.3, section ".printk_index", align 4
@hl_ioctl_control._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_ioctl_control = private unnamed_addr constant [17 x i8] c"hl_ioctl_control\00", align 1
@hl_ioctl_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.hl_ioctl_control, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hl_ioctl_control._entry_ptr = internal global ptr @hl_ioctl_control._entry, section ".printk_index", align 4
@hl_ioctls_control = internal constant { [2 x %struct.hl_ioctl_desc], [16 x i8] } { [2 x %struct.hl_ioctl_desc] [%struct.hl_ioctl_desc zeroinitializer, %struct.hl_ioctl_desc { i32 -1072150527, ptr @hl_info_ioctl_control }], [16 x i8] zeroinitializer }, align 32
@hl_ioctl_control._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.hl_ioctl_control, ptr @.str.2, i32 878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hl_ioctl_control._entry_ptr.9 = internal global ptr @hl_ioctl_control._entry.8, section ".printk_index", align 4
@_hl_info_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__._hl_info_ioctl = private unnamed_addr constant [15 x i8] c"_hl_info_ioctl\00", align 1
@_hl_info_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__._hl_info_ioctl, ptr @.str.2, i32 651, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device is %s. Can't execute INFO IOCTL\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@_hl_info_ioctl._entry_ptr = internal global ptr @_hl_info_ioctl._entry, section ".printk_index", align 4
@_hl_info_ioctl._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__._hl_info_ioctl, ptr @.str.2, i32 695, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid request %d\0A\00", [44 x i8] zeroinitializer }, align 32
@_hl_info_ioctl._entry_ptr.14 = internal global ptr @_hl_info_ioctl._entry.12, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hl_debug_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hl_debug_ioctl = private unnamed_addr constant [15 x i8] c"hl_debug_ioctl\00", align 1
@hl_debug_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.hl_debug_ioctl, ptr @.str.2, i32 724, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device is %s. Can't execute DEBUG IOCTL\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_debug_ioctl._entry_ptr = internal global ptr @hl_debug_ioctl._entry, section ".printk_index", align 4
@hl_debug_ioctl._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_debug_ioctl._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.hl_debug_ioctl, ptr @.str.2, i32 738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Rejecting debug configuration request because device not in debug mode\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_debug_ioctl._entry_ptr.22 = internal global ptr @hl_debug_ioctl._entry.20, section ".printk_index", align 4
@hl_debug_struct_size = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 24, i32 24, i32 24, i32 0, i32 48, i32 88, i32 0], [36 x i8] zeroinitializer }, align 32
@hl_debug_ioctl._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.hl_debug_ioctl, ptr @.str.2, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hl_debug_ioctl._entry_ptr.24 = internal global ptr @hl_debug_ioctl._entry.23, section ".printk_index", align 4
@debug_coresight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to copy input debug data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"debug_coresight\00", [16 x i8] zeroinitializer }, align 32
@debug_coresight._entry_ptr = internal global ptr @debug_coresight._entry, section ".printk_index", align 4
@debug_coresight._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"debug coresight operation failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@debug_coresight._entry_ptr.29 = internal global ptr @debug_coresight._entry.27, section ".printk_index", align 4
@debug_coresight._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"copy to user failed in debug ioctl\0A\00", [60 x i8] zeroinitializer }, align 32
@debug_coresight._entry_ptr.32 = internal global ptr @debug_coresight._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_hl_ioctl.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_hl_ioctl\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no function\0A\00", [19 x i8] zeroinitializer }, align 32
@_hl_ioctl.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.2, ptr @.str.36, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error in ioctl: pid=%d, cmd=0x%02x, nr=0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.37 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 4, i64 7, i64 9, i64 11, i64 13, i64 14, i64 18, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.38 = internal global [13 x i64] [i64 11, i64 32, i64 2, i64 3, i64 6, i64 8, i64 10, i64 12, i64 15, i64 16, i64 17, i64 21, i64 22]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 847, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"hl_ioctls\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 761, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 854, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 870, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"hl_ioctls_control\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 770, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 877, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 649, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 695, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 230, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 214, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 174, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 722, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 737, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"hl_debug_struct_size\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 18, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 750, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 185, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 205, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 212, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 790, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [53 x i8] c"../drivers/misc/habanalabs/common/habanalabs_ioctl.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 830, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @_hl_info_ioctl._entry, ptr @_hl_info_ioctl._entry.12, ptr @_hl_info_ioctl._entry_ptr, ptr @_hl_info_ioctl._entry_ptr.14, ptr @debug_coresight._entry, ptr @debug_coresight._entry.27, ptr @debug_coresight._entry.30, ptr @debug_coresight._entry_ptr, ptr @debug_coresight._entry_ptr.29, ptr @debug_coresight._entry_ptr.32, ptr @hl_debug_ioctl._entry, ptr @hl_debug_ioctl._entry.20, ptr @hl_debug_ioctl._entry.23, ptr @hl_debug_ioctl._entry_ptr, ptr @hl_debug_ioctl._entry_ptr.22, ptr @hl_debug_ioctl._entry_ptr.24, ptr @hl_ioctl._entry, ptr @hl_ioctl._entry.3, ptr @hl_ioctl._entry_ptr, ptr @hl_ioctl._entry_ptr.7, ptr @hl_ioctl_control._entry, ptr @hl_ioctl_control._entry.8, ptr @hl_ioctl_control._entry_ptr, ptr @hl_ioctl_control._entry_ptr.9, ptr @hl_ioctl._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hl_ioctls, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hl_ioctl_control._rs, ptr @hl_ioctls_control, ptr @_hl_info_ioctl._rs, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hl_debug_ioctl._rs, ptr @.str.18, ptr @hl_debug_ioctl._rs.19, ptr @.str.21, ptr @hl_debug_struct_size, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctls to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctl._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctl_control._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctl_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctls_control to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_ioctl_control._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_info_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_info_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_hl_info_ioctl._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_ioctl._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_ioctl._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_struct_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_debug_ioctl._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_coresight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_coresight._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_coresight._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_ioctl(ptr nocapture noundef readonly %filep, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %and = and i32 %cmd, 255
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hl_ioctl._rs, ptr noundef nonnull @__func__.hl_ioctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %4 = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %if.then7, label %do.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [7 x %struct.hl_ioctl_desc], ptr @hl_ioctls, i32 0, i32 %and
  %dev14 = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev14, align 4
  %call15 = tail call fastcc i32 @_hl_ioctl(ptr noundef %filep, i32 noundef %cmd, i32 noundef %arg, ptr noundef %arrayidx, ptr noundef %7)
  br label %cleanup

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %and) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.then7, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then7 ], [ -25, %do.end10 ], [ -19, %do.end ], [ -19, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_hl_ioctl(ptr nocapture noundef readonly %filep, i32 noundef %cmd, i32 noundef %arg, ptr nocapture noundef readonly %ioctl, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %stack_kdata = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %and = and i32 %cmd, 255
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack_kdata) #8
  %2 = call ptr @memset(ptr %stack_kdata, i32 0, i32 128)
  %func1 = getelementptr inbounds %struct.hl_ioctl_desc, ptr %ioctl, i32 0, i32 1
  %3 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body, label %if.end13, !prof !91

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_ioctl.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_ioctl, %if.then12)) #8
          to label %out_err [label %if.then12], !srcloc !92

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_ioctl.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.35) #8
  br label %do.body55

if.end13:                                         ; preds = %entry
  %5 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ioctl, align 4
  %shr15 = lshr i32 %6, 16
  %and16 = and i32 %shr15, 16383
  %shr17 = lshr i32 %cmd, 16
  %and18 = and i32 %shr17, 16383
  %7 = tail call i32 @llvm.umax.i32(i32 %and16, i32 %and18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %6)
  %tobool23.not = icmp ult i32 %6, 1073741824
  br i1 %tobool23.not, label %if.end13.if.end32_crit_edge, label %if.then24

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %7)
  %cmp25 = icmp ult i32 %7, 129
  br i1 %cmp25, label %if.then24.if.end32_crit_edge, label %if.end8.i.i124

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end8.i.i124:                                   ; preds = %if.then24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  %tobool28.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool28.not, label %if.end8.i.i124.do.body55_crit_edge, label %if.end8.i.i124.if.end32_crit_edge

if.end8.i.i124.if.end32_crit_edge:                ; preds = %if.end8.i.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end8.i.i124.do.body55_crit_edge:               ; preds = %if.end8.i.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end32:                                         ; preds = %if.end8.i.i124.if.end32_crit_edge, %if.then24.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %kdata.0 = phi ptr [ %call9.i.i, %if.end8.i.i124.if.end32_crit_edge ], [ null, %if.end13.if.end32_crit_edge ], [ %stack_kdata, %if.then24.if.end32_crit_edge ]
  %and33 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else40, label %if.then35

if.then35:                                        ; preds = %if.end32
  %8 = inttoptr i32 %arg to ptr
  call void @__check_object_size(ptr noundef %kdata.0, i32 noundef %and18, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then35.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then35.if.end.i.i_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then35
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %and18, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !94

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kdata.0, i32 noundef %and18) #8
  %10 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !95
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %kdata.0, ptr noundef %8, i32 noundef %and18) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then35.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %and18, %if.then35.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %and18, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end45, label %if.then11.i.i, !prof !94

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %and18, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kdata.0, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.body55

if.else40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool42.not = icmp sgt i32 %6, -1
  br i1 %tobool42.not, label %if.end45.thread, label %if.end45.thread130

if.end45.thread:                                  ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %call46128 = call i32 %4(ptr noundef %1, ptr noundef %kdata.0) #8
  br label %out_err

if.end45.thread130:                               ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memset(ptr %kdata.0, i32 0, i32 %and18)
  %call46131 = call i32 %4(ptr noundef %1, ptr noundef %kdata.0) #8
  %.pre = inttoptr i32 %arg to ptr
  br label %if.then.i.i.i109

if.end45:                                         ; preds = %if.end.i.i
  %call46 = call i32 %4(ptr noundef %1, ptr noundef %kdata.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool48.not = icmp sgt i32 %6, -1
  br i1 %tobool48.not, label %if.end45.out_err_crit_edge, label %if.end45.if.then.i.i.i109_crit_edge

if.end45.if.then.i.i.i109_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i109

if.end45.out_err_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.then.i.i.i109:                                 ; preds = %if.end45.if.then.i.i.i109_crit_edge, %if.end45.thread130
  %.pre-phi = phi ptr [ %.pre, %if.end45.thread130 ], [ %8, %if.end45.if.then.i.i.i109_crit_edge ]
  %call46133 = phi i32 [ %call46131, %if.end45.thread130 ], [ %call46, %if.end45.if.then.i.i.i109_crit_edge ]
  call void @__check_object_size(ptr noundef %kdata.0, i32 noundef %and18, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i110 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i110, label %if.then.i.i.i109.copy_to_user.exit_crit_edge, label %if.end.i.i114

if.then.i.i.i109.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i114:                                    ; preds = %if.then.i.i.i109
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %.pre-phi, i32 %and18, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i112 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i112)
  %cmp.i6.i113 = icmp eq i32 %asmresult.i.i112, 0
  br i1 %cmp.i6.i113, label %if.then2.i.i, label %if.end.i.i114.copy_to_user.exit_crit_edge

if.end.i.i114.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i115 = call zeroext i1 @__kasan_check_read(ptr noundef %kdata.0, i32 noundef %and18) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %.pre-phi, ptr noundef %kdata.0, i32 noundef %and18) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i114.copy_to_user.exit_crit_edge, %if.then.i.i.i109.copy_to_user.exit_crit_edge
  %n.addr.0.i116 = phi i32 [ %and18, %if.then.i.i.i109.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %and18, %if.end.i.i114.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i116)
  %tobool50.not = icmp eq i32 %n.addr.0.i116, 0
  br i1 %tobool50.not, label %copy_to_user.exit.out_err_crit_edge, label %copy_to_user.exit.do.body55_crit_edge

copy_to_user.exit.do.body55_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

copy_to_user.exit.out_err_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

out_err:                                          ; preds = %copy_to_user.exit.out_err_crit_edge, %if.end45.out_err_crit_edge, %if.end45.thread, %do.body
  %retcode.0 = phi i32 [ %call46, %if.end45.out_err_crit_edge ], [ -25, %do.body ], [ %call46128, %if.end45.thread ], [ %call46133, %copy_to_user.exit.out_err_crit_edge ]
  %kdata.1 = phi ptr [ %kdata.0, %if.end45.out_err_crit_edge ], [ null, %do.body ], [ %kdata.0, %if.end45.thread ], [ %kdata.0, %copy_to_user.exit.out_err_crit_edge ]
  %cmd.addr.0 = phi i32 [ %6, %if.end45.out_err_crit_edge ], [ %cmd, %do.body ], [ %6, %if.end45.thread ], [ %6, %copy_to_user.exit.out_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retcode.0)
  %tobool53.not = icmp eq i32 %retcode.0, 0
  br i1 %tobool53.not, label %out_err.if.end73_crit_edge, label %out_err.do.body55_crit_edge

out_err.do.body55_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

out_err.if.end73_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.body55:                                        ; preds = %out_err.do.body55_crit_edge, %copy_to_user.exit.do.body55_crit_edge, %if.then11.i.i, %if.end8.i.i124.do.body55_crit_edge, %if.then12
  %cmd.addr.0142 = phi i32 [ %cmd.addr.0, %out_err.do.body55_crit_edge ], [ %6, %copy_to_user.exit.do.body55_crit_edge ], [ %6, %if.end8.i.i124.do.body55_crit_edge ], [ %cmd, %if.then12 ], [ %6, %if.then11.i.i ]
  %kdata.1140 = phi ptr [ %kdata.1, %out_err.do.body55_crit_edge ], [ %kdata.0, %copy_to_user.exit.do.body55_crit_edge ], [ null, %if.end8.i.i124.do.body55_crit_edge ], [ null, %if.then12 ], [ %kdata.0, %if.then11.i.i ]
  %retcode.0138 = phi i32 [ %retcode.0, %out_err.do.body55_crit_edge ], [ -14, %copy_to_user.exit.do.body55_crit_edge ], [ -12, %if.end8.i.i124.do.body55_crit_edge ], [ -25, %if.then12 ], [ -14, %if.then11.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hl_ioctl.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hl_ioctl, %if.then67)) #8
          to label %if.end73 [label %if.then67], !srcloc !92

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %16 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_hl_ioctl.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %21, i32 noundef %cmd.addr.0142, i32 noundef %and) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %do.body55, %out_err.if.end73_crit_edge
  %kdata.1141 = phi ptr [ %kdata.1140, %if.then67 ], [ %kdata.1, %out_err.if.end73_crit_edge ], [ %kdata.1140, %do.body55 ]
  %retcode.0139 = phi i32 [ %retcode.0138, %if.then67 ], [ 0, %out_err.if.end73_crit_edge ], [ %retcode.0138, %do.body55 ]
  %cmp75.not = icmp eq ptr %kdata.1141, %stack_kdata
  br i1 %cmp75.not, label %if.end73.if.end77_crit_edge, label %if.then76

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %kdata.1141) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end73.if.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack_kdata) #8
  ret i32 %retcode.0139
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_ioctl_control(ptr nocapture noundef readonly %filep, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %and = and i32 %cmd, 255
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hl_ioctl_control._rs, ptr noundef nonnull @__func__.hl_ioctl_control) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %dev_ctrl13 = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dev_ctrl13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_ctrl13, align 8
  br i1 %cmp, label %if.then6, label %do.end9

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call fastcc i32 @_hl_ioctl(ptr noundef %filep, i32 noundef %cmd, i32 noundef %arg, ptr noundef getelementptr inbounds ([2 x %struct.hl_ioctl_desc], ptr @hl_ioctls_control, i32 0, i32 1), ptr noundef %5)
  br label %cleanup

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %and) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.then6, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then6 ], [ -25, %do.end9 ], [ -19, %do.end ], [ -19, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_info_ioctl(ptr nocapture noundef readonly %hpriv, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call fastcc i32 @_hl_info_ioctl(ptr noundef %hpriv, ptr noundef %data, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cb_ioctl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_cs_ioctl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_wait_ioctl(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mem_ioctl(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_debug_ioctl(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef %data) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !99
  %call = call zeroext i1 @hl_device_operational(ptr noundef %1, ptr noundef nonnull %status) #8
  br i1 %call, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call i32 @___ratelimit(ptr noundef nonnull @hl_debug_ioctl._rs, ptr noundef nonnull @__func__.hl_debug_ioctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %1, i32 0, i32 11, i32 %6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %arrayidx) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %op = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end33 [
    i32 0, label %if.end8.sw.bb_crit_edge
    i32 1, label %if.end8.sw.bb_crit_edge57
    i32 2, label %if.end8.sw.bb_crit_edge58
    i32 3, label %if.end8.sw.bb_crit_edge59
    i32 4, label %if.end8.sw.bb_crit_edge60
    i32 5, label %if.end8.sw.bb_crit_edge61
    i32 6, label %if.end8.sw.bb_crit_edge62
    i32 7, label %sw.bb27
  ]

if.end8.sw.bb_crit_edge62:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge61:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge60:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge59:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge58:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge57:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end8.sw.bb_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end8.sw.bb_crit_edge, %if.end8.sw.bb_crit_edge57, %if.end8.sw.bb_crit_edge58, %if.end8.sw.bb_crit_edge59, %if.end8.sw.bb_crit_edge60, %if.end8.sw.bb_crit_edge61, %if.end8.sw.bb_crit_edge62
  %in_debug = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 89
  %10 = ptrtoint ptr %in_debug to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_debug, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %do.body11, label %if.end22

do.body11:                                        ; preds = %sw.bb
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @hl_debug_ioctl._rs.19, ptr noundef nonnull @__func__.hl_debug_ioctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.end17

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end22:                                         ; preds = %sw.bb
  %input_size = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %input_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input_size, align 8
  %arrayidx24 = getelementptr [7 x i32], ptr @hl_debug_struct_size, i32 0, i32 %8
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %18 = call i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = ptrtoint ptr %input_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %input_size, align 8
  %ctx = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 24) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.end.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %reg_idx.i = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 5
  %23 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_idx.i, align 4
  %reg_idx1.i = getelementptr inbounds %struct.hl_debug_params, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %reg_idx1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %reg_idx1.i, align 4
  %enable.i = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 6
  %26 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.i = icmp ne i32 %27, 0
  %enable3.i = getelementptr inbounds %struct.hl_debug_params, ptr %call7.i.i.i, i32 0, i32 5
  %frombool.i = zext i1 %tobool2.i to i8
  %28 = ptrtoint ptr %enable3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool.i, ptr %enable3.i, align 4
  %29 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %op, align 8
  %op4.i = getelementptr inbounds %struct.hl_debug_params, ptr %call7.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %op4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %op4.i, align 8
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool5.not.i = icmp eq i64 %33, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %34 = ptrtoint ptr %input_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %input_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not.i = icmp eq i32 %35, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %if.end8.i.i121.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end8.i.i121.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr [7 x i32], ptr @hl_debug_struct_size, i32 0, i32 %30
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #12
  %tobool10.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.i121.i.out.i_crit_edge, label %if.end12.i

if.end8.i.i121.i.out.i_crit_edge:                 ; preds = %if.end8.i.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end12.i:                                       ; preds = %if.end8.i.i121.i
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data, align 8
  %conv15.i = trunc i64 %39 to i32
  %40 = inttoptr i32 %conv15.i to ptr
  %41 = ptrtoint ptr %input_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %input_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp9.i.i.i = icmp slt i32 %42, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end12.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.then19.i_crit_edge, label %if.then27.i.i.i, !prof !94

land.rhs16.i.i.i.if.then19.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %if.then19.i

if.then.i.i.i.i:                                  ; preds = %if.end12.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %42, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 %42, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !94

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef %42) #8
  %44 = call i32 @llvm.read_register.i32(metadata !81) #8
  %and.i.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !95
  %and.i.i.i.i.i = and i32 %46, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i.i, ptr noundef %40, i32 noundef %42) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %42, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %42, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end20.i, label %if.then11.i.i.i, !prof !94

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %42, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub.i.i.i
  %47 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.then19.i

if.then19.i:                                      ; preds = %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then19.i_crit_edge
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.25) #11
  br label %out.i

if.end20.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9.i.i.i, ptr %call7.i.i.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end20.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %input.0.i = phi ptr [ %call9.i.i.i, %if.end20.i ], [ null, %land.lhs.true.i.if.end22.i_crit_edge ], [ null, %if.end.i.if.end22.i_crit_edge ]
  %output_ptr.i = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 1
  %51 = ptrtoint ptr %output_ptr.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %output_ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %tobool23.not.i = icmp eq i64 %52, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end35.i_crit_edge, label %land.lhs.true24.i

if.end22.i.if.end35.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true24.i:                                ; preds = %if.end22.i
  %output_size.i = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 3
  %53 = ptrtoint ptr %output_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %output_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool25.not.i = icmp eq i32 %54, 0
  br i1 %tobool25.not.i, label %land.lhs.true24.i.if.end35.i_crit_edge, label %if.end8.i.i148.i

land.lhs.true24.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end8.i.i148.i:                                 ; preds = %land.lhs.true24.i
  %call9.i.i147.i = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 3520) #12
  %tobool29.not.i = icmp eq ptr %call9.i.i147.i, null
  br i1 %tobool29.not.i, label %if.end8.i.i148.i.out.i_crit_edge, label %if.end31.i

if.end8.i.i148.i.out.i_crit_edge:                 ; preds = %if.end8.i.i148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end31.i:                                       ; preds = %if.end8.i.i148.i
  call void @__sanitizer_cov_trace_pc() #10
  %output32.i = getelementptr inbounds %struct.hl_debug_params, ptr %call7.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %output32.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i.i147.i, ptr %output32.i, align 4
  %56 = ptrtoint ptr %output_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %output_size.i, align 4
  %output_size34.i = getelementptr inbounds %struct.hl_debug_params, ptr %call7.i.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %output_size34.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %output_size34.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end31.i, %land.lhs.true24.i.if.end35.i_crit_edge, %if.end22.i.if.end35.i_crit_edge
  %output.0.i = phi ptr [ %call9.i.i147.i, %if.end31.i ], [ null, %land.lhs.true24.i.if.end35.i_crit_edge ], [ null, %if.end22.i.if.end35.i_crit_edge ]
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %59 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %asic_funcs.i, align 8
  %debug_coresight.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %60, i32 0, i32 47
  %61 = ptrtoint ptr %debug_coresight.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %debug_coresight.i, align 4
  %call36.i = call i32 %62(ptr noundef %1, ptr noundef %21, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev42.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev42.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.28, i32 noundef %call36.i) #11
  br label %out.i

if.end43.i:                                       ; preds = %if.end35.i
  %tobool44.not.i = icmp eq ptr %output.0.i, null
  br i1 %tobool44.not.i, label %if.end43.i.out.i_crit_edge, label %land.lhs.true45.i

if.end43.i.out.i_crit_edge:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

land.lhs.true45.i:                                ; preds = %if.end43.i
  %65 = ptrtoint ptr %output_ptr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %output_ptr.i, align 8
  %conv47.i = trunc i64 %66 to i32
  %67 = inttoptr i32 %conv47.i to ptr
  %output_size48.i = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 3
  %68 = ptrtoint ptr %output_size48.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %output_size48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp9.i.i100.i = icmp slt i32 %69, 0
  br i1 %cmp9.i.i100.i, label %land.rhs16.i.i103.i, label %if.then.i.i.i106.i

land.rhs16.i.i103.i:                              ; preds = %land.lhs.true45.i
  %.b71.i.i102.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i102.i, label %land.rhs16.i.i103.i.do.end54.i_crit_edge, label %if.then27.i.i104.i, !prof !94

land.rhs16.i.i103.i.do.end54.i_crit_edge:         ; preds = %land.rhs16.i.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54.i

if.then27.i.i104.i:                               ; preds = %land.rhs16.i.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %do.end54.i

if.then.i.i.i106.i:                               ; preds = %land.lhs.true45.i
  call void @__check_object_size(ptr noundef nonnull %output.0.i, i32 noundef %69, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i107.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i107.i, label %if.then.i.i.i106.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i111.i

if.then.i.i.i106.i.copy_to_user.exit.i_crit_edge: ; preds = %if.then.i.i.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.end.i.i111.i:                                  ; preds = %if.then.i.i.i106.i
  %70 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %67, i32 %69, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i109.i = extractvalue { i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109.i)
  %cmp.i6.i110.i = icmp eq i32 %asmresult.i.i109.i, 0
  br i1 %cmp.i6.i110.i, label %if.then2.i.i.i, label %if.end.i.i111.i.copy_to_user.exit.i_crit_edge

if.end.i.i111.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i112.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %output.0.i, i32 noundef %69) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %67, ptr noundef nonnull %output.0.i, i32 noundef %69) #8
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i111.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i106.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i113.i = phi i32 [ %69, %if.then.i.i.i106.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %69, %if.end.i.i111.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i113.i)
  %tobool50.not.i = icmp eq i32 %n.addr.0.i113.i, 0
  br i1 %tobool50.not.i, label %copy_to_user.exit.i.out.i_crit_edge, label %copy_to_user.exit.i.do.end54.i_crit_edge

copy_to_user.exit.i.do.end54.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54.i

copy_to_user.exit.i.out.i_crit_edge:              ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.end54.i:                                       ; preds = %copy_to_user.exit.i.do.end54.i_crit_edge, %if.then27.i.i104.i, %land.rhs16.i.i103.i.do.end54.i_crit_edge
  %dev55.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev55.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.31) #11
  br label %out.i

out.i:                                            ; preds = %do.end54.i, %copy_to_user.exit.i.out.i_crit_edge, %if.end43.i.out.i_crit_edge, %do.end41.i, %if.end8.i.i148.i.out.i_crit_edge, %if.then19.i, %if.end8.i.i121.i.out.i_crit_edge
  %input.1.i = phi ptr [ %call9.i.i.i, %if.then19.i ], [ %input.0.i, %do.end41.i ], [ %input.0.i, %do.end54.i ], [ %input.0.i, %copy_to_user.exit.i.out.i_crit_edge ], [ %input.0.i, %if.end43.i.out.i_crit_edge ], [ null, %if.end8.i.i121.i.out.i_crit_edge ], [ %input.0.i, %if.end8.i.i148.i.out.i_crit_edge ]
  %output.1.i = phi ptr [ null, %if.then19.i ], [ %output.0.i, %do.end41.i ], [ %output.0.i, %do.end54.i ], [ %output.0.i, %copy_to_user.exit.i.out.i_crit_edge ], [ null, %if.end43.i.out.i_crit_edge ], [ null, %if.end8.i.i121.i.out.i_crit_edge ], [ null, %if.end8.i.i148.i.out.i_crit_edge ]
  %rc.0.i = phi i32 [ -14, %if.then19.i ], [ %call36.i, %do.end41.i ], [ -14, %do.end54.i ], [ 0, %copy_to_user.exit.i.out.i_crit_edge ], [ 0, %if.end43.i.out.i_crit_edge ], [ -12, %if.end8.i.i121.i.out.i_crit_edge ], [ -12, %if.end8.i.i148.i.out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @kfree(ptr noundef %output.1.i) #8
  call void @kfree(ptr noundef %input.1.i) #8
  br label %cleanup

sw.bb27:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %ctx28 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %73 = ptrtoint ptr %ctx28 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx28, align 4
  %enable = getelementptr inbounds %struct.hl_debug_args, ptr %data, i32 0, i32 6
  %75 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool29 = icmp ne i32 %76, 0
  %call30 = call i32 @hl_device_set_debug_mode(ptr noundef %1, ptr noundef %74, i1 noundef zeroext %tobool29) #8
  br label %cleanup

do.end33:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.13, i32 noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %sw.bb27, %out.i, %if.end22.cleanup_crit_edge, %do.end17, %do.body11.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -14, %do.end17 ], [ -14, %do.body11.cleanup_crit_edge ], [ -22, %do.end33 ], [ %call30, %sw.bb27 ], [ %rc.0.i, %out.i ], [ -12, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_hl_info_ioctl(ptr nocapture noundef readonly %hpriv, ptr noundef readonly %data, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %info.i269 = alloca %struct.hl_info_razwi_event, align 8
  %info.i248 = alloca %struct.hl_info_cs_timeout_event, align 8
  %info.i = alloca %struct.hl_info_last_err_open_dev_time, align 8
  %open_stats_info.i = alloca %struct.hl_open_stats_info, align 8
  %sm_info.i = alloca %struct.hl_info_sync_manager, align 4
  %clk_throttle.i = alloca %struct.hl_info_clk_throttle, align 8
  %cs_counters.i = alloca %struct.hl_info_cs_counters, align 8
  %reset_count.i = alloca %struct.hl_info_reset_count, align 8
  %dev_stat.i = alloca %struct.hl_info_device_status, align 8
  %hw_ip.i = alloca %struct.hl_info_hw_ip_info, align 8
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !99
  %1 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hpriv, align 4
  %op = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %op, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb2
    i32 9, label %sw.bb4
    i32 1, label %sw.bb6
    i32 7, label %sw.bb8
    i32 11, label %sw.bb10
    i32 13, label %sw.bb12
    i32 14, label %sw.bb14
    i32 18, label %sw.bb16
    i32 23, label %sw.bb18
    i32 24, label %sw.bb20
    i32 25, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %hw_ip.i) #8
  %6 = call ptr @memset(ptr %hw_ip.i, i32 0, i32 232)
  %return_size.i = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %return_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %return_size.i, align 8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %data, align 8
  %conv.i = trunc i64 %10 to i32
  %11 = inttoptr i32 %conv.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool1.not.i = icmp eq i32 %conv.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %sw.bb.hw_ip_info.exit_crit_edge, label %if.end.i

sw.bb.hw_ip_info.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %hw_ip_info.exit

if.end.i:                                         ; preds = %sw.bb
  %sram_user_base_address.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 12
  %12 = ptrtoint ptr %sram_user_base_address.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sram_user_base_address.i, align 8
  %sram_base_address.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 10
  %14 = ptrtoint ptr %sram_base_address.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sram_base_address.i, align 8
  %sub.neg.i = sub i64 %15, %13
  %dram_user_base_address.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 15
  %16 = ptrtoint ptr %dram_user_base_address.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dram_user_base_address.i, align 8
  %dram_base_address.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 13
  %18 = ptrtoint ptr %dram_base_address.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dram_base_address.i, align 8
  %sub2.neg.i = sub i64 %19, %17
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 34
  %20 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs.i, align 8
  %get_pci_id.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %21, i32 0, i32 52
  %22 = ptrtoint ptr %get_pci_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_pci_id.i, align 4
  %call.i = tail call i32 %23(ptr noundef %2) #8
  %device_id.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 5
  %24 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i, ptr %device_id.i, align 8
  %25 = ptrtoint ptr %sram_user_base_address.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sram_user_base_address.i, align 8
  %27 = ptrtoint ptr %hw_ip.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %hw_ip.i, align 8
  %mmu_enable.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 107
  %28 = ptrtoint ptr %mmu_enable.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mmu_enable.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool6.not.i = icmp eq i8 %29, 0
  br i1 %tobool6.not.i, label %if.end.i.cond.end.i_crit_edge, label %land.lhs.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dram_supports_virtual_memory.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 71
  %30 = ptrtoint ptr %dram_supports_virtual_memory.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dram_supports_virtual_memory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool8.not.i = icmp eq i8 %31, 0
  %dmmu.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 4
  %spec.select.i = select i1 %tobool8.not.i, ptr %dram_user_base_address.i, ptr %dmmu.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %land.lhs.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.in.i = phi ptr [ %dram_user_base_address.i, %if.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %32 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %cond.i = load i64, ptr %cond.in.i, align 8
  %dram_base_address10.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 1
  %33 = ptrtoint ptr %dram_base_address10.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %cond.i, ptr %dram_base_address10.i, align 8
  %tpc_enabled_mask.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 66
  %34 = ptrtoint ptr %tpc_enabled_mask.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tpc_enabled_mask.i, align 2
  %tpc_enabled_mask11.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 15
  %36 = ptrtoint ptr %tpc_enabled_mask11.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tpc_enabled_mask11.i, align 4
  %sram_size.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 37
  %37 = ptrtoint ptr %sram_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sram_size.i, align 4
  %39 = trunc i64 %sub.neg.i to i32
  %conv14.i = add i32 %38, %39
  %sram_size15.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 3
  %40 = ptrtoint ptr %sram_size15.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv14.i, ptr %sram_size15.i, align 8
  %dram_size217.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 16
  %41 = ptrtoint ptr %dram_size217.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dram_size217.i, align 8
  %sub218.i = add i64 %42, %sub2.neg.i
  br i1 %tobool6.not.i, label %cond.end.i.if.end220.i_crit_edge, label %if.then18.i

cond.end.i.if.end220.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220.i

if.then18.i:                                      ; preds = %cond.end.i
  %dram_page_size.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 35
  %43 = ptrtoint ptr %dram_page_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dram_page_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub218.i)
  %cmp195.i = icmp ult i64 %sub218.i, 4294967296
  br i1 %cmp195.i, label %if.then199.i, label %if.else205.i, !prof !94

if.then199.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv200.i = trunc i64 %sub218.i to i32
  %div203.i = udiv i32 %conv200.i, %44
  %conv204.i = zext i32 %div203.i to i64
  br label %if.end209.i

if.else205.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %sub218.i) #13, !srcloc !100
  %asmresult1.i.i = extractvalue { i64, i64 } %45, 1
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.else205.i, %if.then199.i
  %_tmp.0.i = phi i64 [ %conv204.i, %if.then199.i ], [ %asmresult1.i.i, %if.else205.i ]
  %conv213.i = zext i32 %44 to i64
  %mul214.i = mul i64 %_tmp.0.i, %conv213.i
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.end209.i, %cond.end.i.if.end220.i_crit_edge
  %sub218.sink.i = phi i64 [ %mul214.i, %if.end209.i ], [ %sub218.i, %cond.end.i.if.end220.i_crit_edge ]
  %dram_size219.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 2
  %46 = ptrtoint ptr %dram_size219.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %sub218.sink.i, ptr %dram_size219.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %sub218.sink.i)
  %cmp222.i = icmp ugt i64 %sub218.sink.i, 4096
  br i1 %cmp222.i, label %if.then224.i, label %if.end220.i.if.end225.i_crit_edge

if.end220.i.if.end225.i_crit_edge:                ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225.i

if.then224.i:                                     ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #10
  %dram_enabled.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 16
  %47 = ptrtoint ptr %dram_enabled.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %dram_enabled.i, align 1
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then224.i, %if.end220.i.if.end225.i_crit_edge
  %dram_page_size226.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 35
  %48 = ptrtoint ptr %dram_page_size226.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dram_page_size226.i, align 4
  %conv227.i = zext i32 %49 to i64
  %dram_page_size228.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 21
  %50 = ptrtoint ptr %dram_page_size228.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv227.i, ptr %dram_page_size228.i, align 8
  %num_of_events.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 39
  %51 = ptrtoint ptr %num_of_events.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_of_events.i, align 4
  %num_of_events229.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 4
  %53 = ptrtoint ptr %num_of_events229.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_of_events229.i, align 4
  %cpucp_version.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 18
  %cpucp_version230.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 1, i32 9
  %54 = call ptr @memcpy(ptr %cpucp_version.i, ptr %cpucp_version230.i, i32 128)
  %card_name.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 19
  %card_name234.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 1, i32 12
  %55 = call ptr @memcpy(ptr %card_name.i, ptr %card_name234.i, i32 16)
  %cpld_version.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 1, i32 5
  %56 = ptrtoint ptr %cpld_version.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpld_version.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %cpld_version237.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 10
  %59 = ptrtoint ptr %cpld_version237.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %cpld_version237.i, align 8
  %card_location.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 1, i32 4
  %60 = ptrtoint ptr %card_location.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %card_location.i, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  %module_id.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 6
  %63 = ptrtoint ptr %module_id.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %module_id.i, align 4
  %psoc_pci_pll_nr.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 40
  %64 = ptrtoint ptr %psoc_pci_pll_nr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %psoc_pci_pll_nr.i, align 8
  %psoc_pci_pll_nr239.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 11
  %66 = ptrtoint ptr %psoc_pci_pll_nr239.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %psoc_pci_pll_nr239.i, align 4
  %psoc_pci_pll_nf.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 41
  %67 = ptrtoint ptr %psoc_pci_pll_nf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %psoc_pci_pll_nf.i, align 4
  %psoc_pci_pll_nf240.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 12
  %69 = ptrtoint ptr %psoc_pci_pll_nf240.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %psoc_pci_pll_nf240.i, align 8
  %psoc_pci_pll_od.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 42
  %70 = ptrtoint ptr %psoc_pci_pll_od.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %psoc_pci_pll_od.i, align 8
  %psoc_pci_pll_od241.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 13
  %72 = ptrtoint ptr %psoc_pci_pll_od241.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %psoc_pci_pll_od241.i, align 4
  %psoc_pci_pll_div_factor.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 43
  %73 = ptrtoint ptr %psoc_pci_pll_div_factor.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %psoc_pci_pll_div_factor.i, align 4
  %psoc_pci_pll_div_factor242.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 14
  %75 = ptrtoint ptr %psoc_pci_pll_div_factor242.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %psoc_pci_pll_div_factor242.i, align 8
  %first_available_user_msix_interrupt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 62
  %76 = ptrtoint ptr %first_available_user_msix_interrupt.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %first_available_user_msix_interrupt.i, align 8
  %first_available_interrupt_id.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 8
  %78 = ptrtoint ptr %first_available_interrupt_id.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %first_available_interrupt_id.i, align 4
  %server_type.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 65
  %79 = ptrtoint ptr %server_type.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %server_type.i, align 4
  %server_type243.i = getelementptr inbounds %struct.hl_info_hw_ip_info, ptr %hw_ip.i, i32 0, i32 9
  %81 = ptrtoint ptr %server_type243.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %server_type243.i, align 2
  %82 = tail call i32 @llvm.umin.i32(i32 %8, i32 232) #8
  call void @__check_object_size(ptr noundef nonnull %hw_ip.i, i32 noundef %82, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end225.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.end225.i.copy_to_user.exit.i_crit_edge:        ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.end225.i
  %83 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %82, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hw_ip.i, i32 noundef %82) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %hw_ip.i, i32 noundef %82) #8
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.end225.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %82, %if.end225.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %82, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool252.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %cond253.i = select i1 %tobool252.not.i, i32 0, i32 -14
  br label %hw_ip_info.exit

hw_ip_info.exit:                                  ; preds = %copy_to_user.exit.i, %sw.bb.hw_ip_info.exit_crit_edge
  %retval.0.i = phi i32 [ %cond253.i, %copy_to_user.exit.i ], [ -22, %sw.bb.hw_ip_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %hw_ip.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dev_stat.i) #8
  %84 = ptrtoint ptr %dev_stat.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %dev_stat.i, align 8
  %return_size.i114 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %85 = ptrtoint ptr %return_size.i114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %return_size.i114, align 8
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %data, align 8
  %conv.i115 = trunc i64 %88 to i32
  %89 = inttoptr i32 %conv.i115 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i116 = icmp eq i32 %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i115)
  %tobool1.not.i117 = icmp eq i32 %conv.i115, 0
  %or.cond.i118 = select i1 %tobool.not.i116, i1 true, i1 %tobool1.not.i117
  br i1 %or.cond.i118, label %sw.bb2.device_status_info.exit_crit_edge, label %if.end.i120

sw.bb2.device_status_info.exit_crit_edge:         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %device_status_info.exit

if.end.i120:                                      ; preds = %sw.bb2
  %call.i119 = tail call i32 @hl_device_status(ptr noundef %2) #8
  %90 = ptrtoint ptr %dev_stat.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call.i119, ptr %dev_stat.i, align 8
  %91 = tail call i32 @llvm.umin.i32(i32 %86, i32 8) #8
  call void @__check_object_size(ptr noundef nonnull %dev_stat.i, i32 noundef %91, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i122 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i122, label %if.end.i120.copy_to_user.exit.i131_crit_edge, label %if.end.i.i.i126

if.end.i120.copy_to_user.exit.i131_crit_edge:     ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i131

if.end.i.i.i126:                                  ; preds = %if.end.i120
  %92 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %89, i32 %91, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i124 = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i124)
  %cmp.i6.i.i125 = icmp eq i32 %asmresult.i.i.i124, 0
  br i1 %cmp.i6.i.i125, label %if.then2.i.i.i129, label %if.end.i.i.i126.copy_to_user.exit.i131_crit_edge

if.end.i.i.i126.copy_to_user.exit.i131_crit_edge: ; preds = %if.end.i.i.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i131

if.then2.i.i.i129:                                ; preds = %if.end.i.i.i126
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i127 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %dev_stat.i, i32 noundef %91) #8
  %call.i12.i.i.i128 = call i32 @arm_copy_to_user(ptr noundef %89, ptr noundef nonnull %dev_stat.i, i32 noundef %91) #8
  br label %copy_to_user.exit.i131

copy_to_user.exit.i131:                           ; preds = %if.then2.i.i.i129, %if.end.i.i.i126.copy_to_user.exit.i131_crit_edge, %if.end.i120.copy_to_user.exit.i131_crit_edge
  %n.addr.0.i.i130 = phi i32 [ %91, %if.end.i120.copy_to_user.exit.i131_crit_edge ], [ %call.i12.i.i.i128, %if.then2.i.i.i129 ], [ %91, %if.end.i.i.i126.copy_to_user.exit.i131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i130)
  %tobool4.not.i = icmp eq i32 %n.addr.0.i.i130, 0
  %cond5.i = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %device_status_info.exit

device_status_info.exit:                          ; preds = %copy_to_user.exit.i131, %sw.bb2.device_status_info.exit_crit_edge
  %retval.0.i132 = phi i32 [ %cond5.i, %copy_to_user.exit.i131 ], [ -22, %sw.bb2.device_status_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dev_stat.i) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reset_count.i) #8
  %return_size.i133 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %93 = ptrtoint ptr %return_size.i133 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %return_size.i133, align 8
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %data, align 8
  %conv.i134 = trunc i64 %96 to i32
  %97 = inttoptr i32 %conv.i134 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i135 = icmp eq i32 %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i134)
  %tobool1.not.i136 = icmp eq i32 %conv.i134, 0
  %or.cond.i137 = select i1 %tobool.not.i135, i1 true, i1 %tobool1.not.i136
  br i1 %or.cond.i137, label %sw.bb4.get_reset_count.exit_crit_edge, label %if.end.i138

sw.bb4.get_reset_count.exit_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_reset_count.exit

if.end.i138:                                      ; preds = %sw.bb4
  %hard_reset_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 59, i32 2
  %98 = ptrtoint ptr %hard_reset_cnt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hard_reset_cnt.i, align 8
  %100 = ptrtoint ptr %reset_count.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %reset_count.i, align 8
  %soft_reset_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 59, i32 1
  %101 = ptrtoint ptr %soft_reset_cnt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %soft_reset_cnt.i, align 4
  %soft_reset_cnt4.i = getelementptr inbounds %struct.hl_info_reset_count, ptr %reset_count.i, i32 0, i32 1
  %103 = ptrtoint ptr %soft_reset_cnt4.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %soft_reset_cnt4.i, align 4
  %104 = tail call i32 @llvm.umin.i32(i32 %94, i32 8) #8
  call void @__check_object_size(ptr noundef nonnull %reset_count.i, i32 noundef %104, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i140 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i140, label %if.end.i138.copy_to_user.exit.i150_crit_edge, label %if.end.i.i.i144

if.end.i138.copy_to_user.exit.i150_crit_edge:     ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i150

if.end.i.i.i144:                                  ; preds = %if.end.i138
  %105 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %97, i32 %104, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i142 = extractvalue { i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i142)
  %cmp.i6.i.i143 = icmp eq i32 %asmresult.i.i.i142, 0
  br i1 %cmp.i6.i.i143, label %if.then2.i.i.i147, label %if.end.i.i.i144.copy_to_user.exit.i150_crit_edge

if.end.i.i.i144.copy_to_user.exit.i150_crit_edge: ; preds = %if.end.i.i.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i150

if.then2.i.i.i147:                                ; preds = %if.end.i.i.i144
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reset_count.i, i32 noundef %104) #8
  %call.i12.i.i.i146 = call i32 @arm_copy_to_user(ptr noundef %97, ptr noundef nonnull %reset_count.i, i32 noundef %104) #8
  br label %copy_to_user.exit.i150

copy_to_user.exit.i150:                           ; preds = %if.then2.i.i.i147, %if.end.i.i.i144.copy_to_user.exit.i150_crit_edge, %if.end.i138.copy_to_user.exit.i150_crit_edge
  %n.addr.0.i.i148 = phi i32 [ %104, %if.end.i138.copy_to_user.exit.i150_crit_edge ], [ %call.i12.i.i.i146, %if.then2.i.i.i147 ], [ %104, %if.end.i.i.i144.copy_to_user.exit.i150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i148)
  %tobool6.not.i149 = icmp eq i32 %n.addr.0.i.i148, 0
  %cond7.i = select i1 %tobool6.not.i149, i32 0, i32 -14
  br label %get_reset_count.exit

get_reset_count.exit:                             ; preds = %copy_to_user.exit.i150, %sw.bb4.get_reset_count.exit_crit_edge
  %retval.0.i151 = phi i32 [ %cond7.i, %copy_to_user.exit.i150 ], [ -22, %sw.bb4.get_reset_count.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reset_count.i) #8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @hw_events_info(ptr noundef %2, i1 noundef zeroext false, ptr noundef %data)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @hw_events_info(ptr noundef %2, i1 noundef zeroext true, ptr noundef %data)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %data, align 8
  %conv.i152 = trunc i64 %107 to i32
  %108 = inttoptr i32 %conv.i152 to ptr
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %cs_counters.i) #8
  %109 = getelementptr inbounds i8, ptr %cs_counters.i, i32 8
  %110 = call ptr @memset(ptr %109, i32 0, i32 88)
  %return_size.i153 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %111 = ptrtoint ptr %return_size.i153 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %return_size.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i154 = icmp eq i32 %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i152)
  %tobool2.not.i = icmp eq i32 %conv.i152, 0
  %or.cond.i155 = select i1 %tobool.not.i154, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i155, label %sw.bb10.cs_counters_info.exit_crit_edge, label %if.end.i158

sw.bb10.cs_counters_info.exit_crit_edge:          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs_counters_info.exit

if.end.i158:                                      ; preds = %sw.bb10
  %aggregated_cs_counters.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50
  %call.i.i.i156 = tail call zeroext i1 @__kasan_check_read(ptr noundef %aggregated_cs_counters.i, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %aggregated_cs_counters.i) #8
  %113 = ptrtoint ptr %cs_counters.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %call.i.i, ptr %cs_counters.i, align 8
  %parsing_drop_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 1
  %call.i.i62.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %parsing_drop_cnt.i, i32 noundef 8) #8
  %call.i63.i = tail call i64 @generic_atomic64_read(ptr noundef %parsing_drop_cnt.i) #8
  %total_parsing_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 2
  %114 = ptrtoint ptr %total_parsing_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %call.i63.i, ptr %total_parsing_drop_cnt.i, align 8
  %queue_full_drop_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 2
  %call.i.i64.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queue_full_drop_cnt.i, i32 noundef 8) #8
  %call.i65.i = tail call i64 @generic_atomic64_read(ptr noundef %queue_full_drop_cnt.i) #8
  %total_queue_full_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 4
  %115 = ptrtoint ptr %total_queue_full_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %call.i65.i, ptr %total_queue_full_drop_cnt.i, align 8
  %device_in_reset_drop_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 3
  %call.i.i66.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %device_in_reset_drop_cnt.i, i32 noundef 8) #8
  %call.i67.i = tail call i64 @generic_atomic64_read(ptr noundef %device_in_reset_drop_cnt.i) #8
  %total_device_in_reset_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 6
  %116 = ptrtoint ptr %total_device_in_reset_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %call.i67.i, ptr %total_device_in_reset_drop_cnt.i, align 8
  %max_cs_in_flight_drop_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 4
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cs_in_flight_drop_cnt.i, i32 noundef 8) #8
  %call.i69.i = tail call i64 @generic_atomic64_read(ptr noundef %max_cs_in_flight_drop_cnt.i) #8
  %total_max_cs_in_flight_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 8
  %117 = ptrtoint ptr %total_max_cs_in_flight_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %call.i69.i, ptr %total_max_cs_in_flight_drop_cnt.i, align 8
  %validation_drop_cnt.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 50, i32 5
  %call.i.i70.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %validation_drop_cnt.i, i32 noundef 8) #8
  %call.i71.i = tail call i64 @generic_atomic64_read(ptr noundef %validation_drop_cnt.i) #8
  %total_validation_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 10
  %118 = ptrtoint ptr %total_validation_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %call.i71.i, ptr %total_validation_drop_cnt.i, align 8
  %ctx.i = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %119 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ctx.i, align 4
  %tobool8.not.i157 = icmp eq ptr %120, null
  br i1 %tobool8.not.i157, label %if.end.i158.if.end34.i_crit_edge, label %if.then9.i

if.end.i158.if.end34.i_crit_edge:                 ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then9.i:                                       ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #10
  %cs_counters11.i = getelementptr inbounds %struct.hl_ctx, ptr %120, i32 0, i32 12
  %call.i.i72.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cs_counters11.i, i32 noundef 8) #8
  %call.i73.i = tail call i64 @generic_atomic64_read(ptr noundef %cs_counters11.i) #8
  %121 = ptrtoint ptr %109 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %call.i73.i, ptr %109, align 8
  %122 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx.i, align 4
  %parsing_drop_cnt16.i = getelementptr inbounds %struct.hl_ctx, ptr %123, i32 0, i32 12, i32 1
  %call.i.i74.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %parsing_drop_cnt16.i, i32 noundef 8) #8
  %call.i75.i = tail call i64 @generic_atomic64_read(ptr noundef %parsing_drop_cnt16.i) #8
  %ctx_parsing_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 3
  %124 = ptrtoint ptr %ctx_parsing_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %call.i75.i, ptr %ctx_parsing_drop_cnt.i, align 8
  %125 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ctx.i, align 4
  %queue_full_drop_cnt20.i = getelementptr inbounds %struct.hl_ctx, ptr %126, i32 0, i32 12, i32 2
  %call.i.i76.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queue_full_drop_cnt20.i, i32 noundef 8) #8
  %call.i77.i = tail call i64 @generic_atomic64_read(ptr noundef %queue_full_drop_cnt20.i) #8
  %ctx_queue_full_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 5
  %127 = ptrtoint ptr %ctx_queue_full_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %call.i77.i, ptr %ctx_queue_full_drop_cnt.i, align 8
  %128 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctx.i, align 4
  %device_in_reset_drop_cnt24.i = getelementptr inbounds %struct.hl_ctx, ptr %129, i32 0, i32 12, i32 3
  %call.i.i78.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %device_in_reset_drop_cnt24.i, i32 noundef 8) #8
  %call.i79.i = tail call i64 @generic_atomic64_read(ptr noundef %device_in_reset_drop_cnt24.i) #8
  %ctx_device_in_reset_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 7
  %130 = ptrtoint ptr %ctx_device_in_reset_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %call.i79.i, ptr %ctx_device_in_reset_drop_cnt.i, align 8
  %131 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ctx.i, align 4
  %max_cs_in_flight_drop_cnt28.i = getelementptr inbounds %struct.hl_ctx, ptr %132, i32 0, i32 12, i32 4
  %call.i.i80.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cs_in_flight_drop_cnt28.i, i32 noundef 8) #8
  %call.i81.i = tail call i64 @generic_atomic64_read(ptr noundef %max_cs_in_flight_drop_cnt28.i) #8
  %ctx_max_cs_in_flight_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 9
  %133 = ptrtoint ptr %ctx_max_cs_in_flight_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %call.i81.i, ptr %ctx_max_cs_in_flight_drop_cnt.i, align 8
  %134 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctx.i, align 4
  %validation_drop_cnt32.i = getelementptr inbounds %struct.hl_ctx, ptr %135, i32 0, i32 12, i32 5
  %call.i.i82.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %validation_drop_cnt32.i, i32 noundef 8) #8
  %call.i83.i = tail call i64 @generic_atomic64_read(ptr noundef %validation_drop_cnt32.i) #8
  %ctx_validation_drop_cnt.i = getelementptr inbounds %struct.hl_info_cs_counters, ptr %cs_counters.i, i32 0, i32 11
  %136 = ptrtoint ptr %ctx_validation_drop_cnt.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %call.i83.i, ptr %ctx_validation_drop_cnt.i, align 8
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then9.i, %if.end.i158.if.end34.i_crit_edge
  %137 = tail call i32 @llvm.umin.i32(i32 %112, i32 96) #8
  call void @__check_object_size(ptr noundef nonnull %cs_counters.i, i32 noundef %137, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i84.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i84.i, label %if.end34.i.copy_to_user.exit.i169_crit_edge, label %if.end.i.i.i163

if.end34.i.copy_to_user.exit.i169_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i169

if.end.i.i.i163:                                  ; preds = %if.end34.i
  %138 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %108, i32 %137, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i161 = extractvalue { i32, i32 } %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i161)
  %cmp.i6.i.i162 = icmp eq i32 %asmresult.i.i.i161, 0
  br i1 %cmp.i6.i.i162, label %if.then2.i.i.i166, label %if.end.i.i.i163.copy_to_user.exit.i169_crit_edge

if.end.i.i.i163.copy_to_user.exit.i169_crit_edge: ; preds = %if.end.i.i.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i169

if.then2.i.i.i166:                                ; preds = %if.end.i.i.i163
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i164 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cs_counters.i, i32 noundef %137) #8
  %call.i12.i.i.i165 = call i32 @arm_copy_to_user(ptr noundef %108, ptr noundef nonnull %cs_counters.i, i32 noundef %137) #8
  br label %copy_to_user.exit.i169

copy_to_user.exit.i169:                           ; preds = %if.then2.i.i.i166, %if.end.i.i.i163.copy_to_user.exit.i169_crit_edge, %if.end34.i.copy_to_user.exit.i169_crit_edge
  %n.addr.0.i.i167 = phi i32 [ %137, %if.end34.i.copy_to_user.exit.i169_crit_edge ], [ %call.i12.i.i.i165, %if.then2.i.i.i166 ], [ %137, %if.end.i.i.i163.copy_to_user.exit.i169_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i167)
  %tobool37.not.i = icmp eq i32 %n.addr.0.i.i167, 0
  %cond38.i168 = select i1 %tobool37.not.i, i32 0, i32 -14
  br label %cs_counters_info.exit

cs_counters_info.exit:                            ; preds = %copy_to_user.exit.i169, %sw.bb10.cs_counters_info.exit_crit_edge
  %retval.0.i170 = phi i32 [ %cond38.i168, %copy_to_user.exit.i169 ], [ -22, %sw.bb10.cs_counters_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %cs_counters.i) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %139 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %data, align 8
  %conv.i171 = trunc i64 %140 to i32
  %141 = inttoptr i32 %conv.i171 to ptr
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %clk_throttle.i) #8
  %142 = call ptr @memset(ptr %clk_throttle.i, i32 0, i32 40)
  %return_size.i172 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %143 = ptrtoint ptr %return_size.i172 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %return_size.i172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i173 = icmp eq i32 %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i171)
  %tobool2.not.i174 = icmp eq i32 %conv.i171, 0
  %or.cond.i175 = select i1 %tobool.not.i173, i1 true, i1 %tobool2.not.i174
  br i1 %or.cond.i175, label %sw.bb12.clk_throttle_info.exit_crit_edge, label %if.end.i177

sw.bb12.clk_throttle_info.exit_crit_edge:         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_throttle_info.exit

if.end.i177:                                      ; preds = %sw.bb12
  %clk_throttling.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 57
  %lock.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 57, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %current_reason.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 57, i32 2
  %145 = ptrtoint ptr %current_reason.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %current_reason.i, align 4
  %147 = ptrtoint ptr %clk_throttle.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %clk_throttle.i, align 8
  %aggregated_reason.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 57, i32 3
  %148 = ptrtoint ptr %aggregated_reason.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %aggregated_reason.i, align 8
  %and.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i176 = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i176, label %if.end.i177.for.inc.i_crit_edge, label %if.end8.i

if.end.i177.for.inc.i_crit_edge:                  ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i177
  %150 = ptrtoint ptr %clk_throttling.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %clk_throttling.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %151)
  %cmp8.i.i.i = icmp slt i64 %151, 0
  %152 = tail call i64 @llvm.abs.i64(i64 %151, i1 false) #8
  %153 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %152, i32 0) #13, !srcloc !101
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %153, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %153, 1
  %154 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %152, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !102
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %154, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %arrayidx11.i = getelementptr inbounds %struct.hl_info_clk_throttle, ptr %clk_throttle.i, i32 0, i32 2, i32 0
  %155 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %cond213.i.i.i, ptr %arrayidx11.i, align 8
  %end.i = getelementptr %struct.hl_device, ptr %2, i32 0, i32 57, i32 0, i32 0, i32 1
  %156 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %157)
  %cmp3.not.i.not.i = icmp eq i64 %157, 0
  br i1 %cmp3.not.i.not.i, label %if.else.i, label %if.end8.i.if.end23.i_crit_edge

if.end8.i.if.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = tail call i64 @ktime_get() #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.end8.i.if.end23.i_crit_edge
  %end_time.0.i = phi i64 [ %call22.i, %if.else.i ], [ %157, %if.end8.i.if.end23.i_crit_edge ]
  %158 = ptrtoint ptr %clk_throttling.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %clk_throttling.i, align 8
  %sub.i = sub i64 %end_time.0.i, %159
  %arrayidx29.i = getelementptr inbounds %struct.hl_info_clk_throttle, ptr %clk_throttle.i, i32 0, i32 3, i32 0
  %160 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %sub.i, ptr %arrayidx29.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i, %if.end.i177.for.inc.i_crit_edge
  %161 = ptrtoint ptr %aggregated_reason.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %aggregated_reason.i, align 8
  %and.1.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool6.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool6.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end8.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end8.1.i:                                      ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.hl_device, ptr %2, i32 0, i32 57, i32 0, i32 1
  %163 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %164)
  %cmp8.i.i.1.i = icmp slt i64 %164, 0
  %165 = tail call i64 @llvm.abs.i64(i64 %164, i1 false) #8
  %166 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %165, i32 0) #13, !srcloc !101
  %asmresult.i.i.i.1.i = extractvalue { i64, i32 } %166, 0
  %asmresult4.i.i.i.1.i = extractvalue { i64, i32 } %166, 1
  %167 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %165, i64 %asmresult.i.i.i.1.i, i32 %asmresult4.i.i.i.1.i) #13, !srcloc !102
  %asmresult10.i.i.i.1.i = extractvalue { i64, i32 } %167, 0
  %tmp.0.i.i.1.i = lshr i64 %asmresult10.i.i.i.1.i, 9
  %sub210.i.i.1.i = sub nsw i64 0, %tmp.0.i.i.1.i
  %cond213.i.i.1.i = select i1 %cmp8.i.i.1.i, i64 %sub210.i.i.1.i, i64 %tmp.0.i.i.1.i
  %arrayidx11.1.i = getelementptr inbounds %struct.hl_info_clk_throttle, ptr %clk_throttle.i, i32 0, i32 2, i32 1
  %168 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %cond213.i.i.1.i, ptr %arrayidx11.1.i, align 8
  %end.1.i = getelementptr %struct.hl_device, ptr %2, i32 0, i32 57, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %end.1.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %end.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %170)
  %cmp3.not.i.not.1.i = icmp eq i64 %170, 0
  br i1 %cmp3.not.i.not.1.i, label %if.else.1.i, label %if.end8.1.i.if.end23.1.i_crit_edge

if.end8.1.i.if.end23.1.i_crit_edge:               ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.1.i

if.else.1.i:                                      ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.1.i = tail call i64 @ktime_get() #8
  br label %if.end23.1.i

if.end23.1.i:                                     ; preds = %if.else.1.i, %if.end8.1.i.if.end23.1.i_crit_edge
  %end_time.0.1.i = phi i64 [ %call22.1.i, %if.else.1.i ], [ %170, %if.end8.1.i.if.end23.1.i_crit_edge ]
  %171 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %arrayidx.1.i, align 8
  %sub.1.i = sub i64 %end_time.0.1.i, %172
  %arrayidx29.1.i = getelementptr inbounds %struct.hl_info_clk_throttle, ptr %clk_throttle.i, i32 0, i32 3, i32 1
  %173 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %sub.1.i, ptr %arrayidx29.1.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end23.1.i, %for.inc.i.for.inc.1.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %174 = tail call i32 @llvm.umin.i32(i32 %144, i32 40) #8
  call void @__check_object_size(ptr noundef nonnull %clk_throttle.i, i32 noundef %174, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i179 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i179, label %for.inc.1.i.copy_to_user.exit.i188_crit_edge, label %if.end.i.i.i183

for.inc.1.i.copy_to_user.exit.i188_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i188

if.end.i.i.i183:                                  ; preds = %for.inc.1.i
  %175 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %141, i32 %174, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i181 = extractvalue { i32, i32 } %175, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i181)
  %cmp.i6.i.i182 = icmp eq i32 %asmresult.i.i.i181, 0
  br i1 %cmp.i6.i.i182, label %if.then2.i.i.i186, label %if.end.i.i.i183.copy_to_user.exit.i188_crit_edge

if.end.i.i.i183.copy_to_user.exit.i188_crit_edge: ; preds = %if.end.i.i.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i188

if.then2.i.i.i186:                                ; preds = %if.end.i.i.i183
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %clk_throttle.i, i32 noundef %174) #8
  %call.i12.i.i.i185 = call i32 @arm_copy_to_user(ptr noundef %141, ptr noundef nonnull %clk_throttle.i, i32 noundef %174) #8
  br label %copy_to_user.exit.i188

copy_to_user.exit.i188:                           ; preds = %if.then2.i.i.i186, %if.end.i.i.i183.copy_to_user.exit.i188_crit_edge, %for.inc.1.i.copy_to_user.exit.i188_crit_edge
  %n.addr.0.i.i187 = phi i32 [ %174, %for.inc.1.i.copy_to_user.exit.i188_crit_edge ], [ %call.i12.i.i.i185, %if.then2.i.i.i186 ], [ %174, %if.end.i.i.i183.copy_to_user.exit.i188_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i187)
  %tobool35.not.i = icmp eq i32 %n.addr.0.i.i187, 0
  %cond36.i = select i1 %tobool35.not.i, i32 0, i32 -14
  br label %clk_throttle_info.exit

clk_throttle_info.exit:                           ; preds = %copy_to_user.exit.i188, %sw.bb12.clk_throttle_info.exit_crit_edge
  %retval.0.i189 = phi i32 [ %cond36.i, %copy_to_user.exit.i188 ], [ -22, %sw.bb12.clk_throttle_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %clk_throttle.i) #8
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sm_info.i) #8
  %176 = getelementptr inbounds i8, ptr %sm_info.i, i32 12
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %176, align 4
  %return_size.i190 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %178 = ptrtoint ptr %return_size.i190 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %return_size.i190, align 8
  %180 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %data, align 8
  %conv.i191 = trunc i64 %181 to i32
  %182 = inttoptr i32 %conv.i191 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i192 = icmp eq i32 %179, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i191)
  %tobool2.not.i193 = icmp eq i32 %conv.i191, 0
  %or.cond.i194 = select i1 %tobool.not.i192, i1 true, i1 %tobool2.not.i193
  br i1 %or.cond.i194, label %sw.bb14.sync_manager_info.exit_crit_edge, label %if.end.i196

sw.bb14.sync_manager_info.exit_crit_edge:         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sync_manager_info.exit

if.end.i196:                                      ; preds = %sw.bb14
  %183 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 3
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %185)
  %cmp.i195 = icmp ugt i32 %185, 3
  br i1 %cmp.i195, label %if.end.i196.sync_manager_info.exit_crit_edge, label %if.end5.i

if.end.i196.sync_manager_info.exit_crit_edge:     ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %sync_manager_info.exit

if.end5.i:                                        ; preds = %if.end.i196
  %arrayidx.i = getelementptr %struct.hl_device, ptr %2, i32 0, i32 33, i32 60, i32 %185
  %186 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx.i, align 2
  %conv6.i = zext i16 %187 to i32
  %188 = ptrtoint ptr %sm_info.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv6.i, ptr %sm_info.i, align 4
  %arrayidx7.i = getelementptr %struct.hl_device, ptr %2, i32 0, i32 33, i32 61, i32 %185
  %189 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %190 to i32
  %first_available_monitor.i = getelementptr inbounds %struct.hl_info_sync_manager, ptr %sm_info.i, i32 0, i32 1
  %191 = ptrtoint ptr %first_available_monitor.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv8.i, ptr %first_available_monitor.i, align 4
  %arrayidx9.i = getelementptr %struct.hl_device, ptr %2, i32 0, i32 33, i32 63, i32 %185
  %192 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %193 to i32
  %first_available_cq11.i = getelementptr inbounds %struct.hl_info_sync_manager, ptr %sm_info.i, i32 0, i32 2
  %194 = ptrtoint ptr %first_available_cq11.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv10.i, ptr %first_available_cq11.i, align 4
  %195 = tail call i32 @llvm.umin.i32(i32 %179, i32 16) #8
  call void @__check_object_size(ptr noundef nonnull %sm_info.i, i32 noundef %195, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i198 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i198, label %if.end5.i.copy_to_user.exit.i207_crit_edge, label %if.end.i.i.i202

if.end5.i.copy_to_user.exit.i207_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i207

if.end.i.i.i202:                                  ; preds = %if.end5.i
  %196 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %182, i32 %195, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i200 = extractvalue { i32, i32 } %196, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i200)
  %cmp.i6.i.i201 = icmp eq i32 %asmresult.i.i.i200, 0
  br i1 %cmp.i6.i.i201, label %if.then2.i.i.i205, label %if.end.i.i.i202.copy_to_user.exit.i207_crit_edge

if.end.i.i.i202.copy_to_user.exit.i207_crit_edge: ; preds = %if.end.i.i.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i207

if.then2.i.i.i205:                                ; preds = %if.end.i.i.i202
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i203 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sm_info.i, i32 noundef %195) #8
  %call.i12.i.i.i204 = call i32 @arm_copy_to_user(ptr noundef %182, ptr noundef nonnull %sm_info.i, i32 noundef %195) #8
  br label %copy_to_user.exit.i207

copy_to_user.exit.i207:                           ; preds = %if.then2.i.i.i205, %if.end.i.i.i202.copy_to_user.exit.i207_crit_edge, %if.end5.i.copy_to_user.exit.i207_crit_edge
  %n.addr.0.i.i206 = phi i32 [ %195, %if.end5.i.copy_to_user.exit.i207_crit_edge ], [ %call.i12.i.i.i204, %if.then2.i.i.i205 ], [ %195, %if.end.i.i.i202.copy_to_user.exit.i207_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i206)
  %tobool14.not.i = icmp eq i32 %n.addr.0.i.i206, 0
  %cond15.i = select i1 %tobool14.not.i, i32 0, i32 -14
  br label %sync_manager_info.exit

sync_manager_info.exit:                           ; preds = %copy_to_user.exit.i207, %if.end.i196.sync_manager_info.exit_crit_edge, %sw.bb14.sync_manager_info.exit_crit_edge
  %retval.0.i208 = phi i32 [ %cond15.i, %copy_to_user.exit.i207 ], [ -22, %sw.bb14.sync_manager_info.exit_crit_edge ], [ -22, %if.end.i196.sync_manager_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sm_info.i) #8
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %return_size.i209 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %197 = ptrtoint ptr %return_size.i209 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %return_size.i209, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %open_stats_info.i) #8
  %199 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %data, align 8
  %conv.i210 = trunc i64 %200 to i32
  %201 = inttoptr i32 %conv.i210 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i211 = icmp eq i32 %198, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i210)
  %tobool2.not.i212 = icmp eq i32 %conv.i210, 0
  %or.cond.i213 = select i1 %tobool.not.i211, i1 true, i1 %tobool2.not.i212
  br i1 %or.cond.i213, label %sw.bb16.open_stats_info.exit_crit_edge, label %if.end.i215

sw.bb16.open_stats_info.exit_crit_edge:           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %open_stats_info.exit

if.end.i215:                                      ; preds = %sw.bb16
  %last_open_session_duration_jif.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 68
  %202 = ptrtoint ptr %last_open_session_duration_jif.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %last_open_session_duration_jif.i, align 8
  %call.i214 = tail call i64 @jiffies64_to_msecs(i64 noundef %203) #8
  %last_open_period_ms.i = getelementptr inbounds %struct.hl_open_stats_info, ptr %open_stats_info.i, i32 0, i32 1
  %204 = ptrtoint ptr %last_open_period_ms.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %call.i214, ptr %last_open_period_ms.i, align 8
  %open_counter.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 69
  %205 = ptrtoint ptr %open_counter.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %open_counter.i, align 8
  %207 = ptrtoint ptr %open_stats_info.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %206, ptr %open_stats_info.i, align 8
  %208 = tail call i32 @llvm.umin.i32(i32 %198, i32 16) #8
  call void @__check_object_size(ptr noundef nonnull %open_stats_info.i, i32 noundef %208, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i217 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i217, label %if.end.i215.copy_to_user.exit.i228_crit_edge, label %if.end.i.i.i221

if.end.i215.copy_to_user.exit.i228_crit_edge:     ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i228

if.end.i.i.i221:                                  ; preds = %if.end.i215
  %209 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %201, i32 %208, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i219 = extractvalue { i32, i32 } %209, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i219)
  %cmp.i6.i.i220 = icmp eq i32 %asmresult.i.i.i219, 0
  br i1 %cmp.i6.i.i220, label %if.then2.i.i.i224, label %if.end.i.i.i221.copy_to_user.exit.i228_crit_edge

if.end.i.i.i221.copy_to_user.exit.i228_crit_edge: ; preds = %if.end.i.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i228

if.then2.i.i.i224:                                ; preds = %if.end.i.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i222 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %open_stats_info.i, i32 noundef %208) #8
  %call.i12.i.i.i223 = call i32 @arm_copy_to_user(ptr noundef %201, ptr noundef nonnull %open_stats_info.i, i32 noundef %208) #8
  br label %copy_to_user.exit.i228

copy_to_user.exit.i228:                           ; preds = %if.then2.i.i.i224, %if.end.i.i.i221.copy_to_user.exit.i228_crit_edge, %if.end.i215.copy_to_user.exit.i228_crit_edge
  %n.addr.0.i.i225 = phi i32 [ %208, %if.end.i215.copy_to_user.exit.i228_crit_edge ], [ %call.i12.i.i.i223, %if.then2.i.i.i224 ], [ %208, %if.end.i.i.i221.copy_to_user.exit.i228_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i225)
  %tobool6.not.i226 = icmp eq i32 %n.addr.0.i.i225, 0
  %cond7.i227 = select i1 %tobool6.not.i226, i32 0, i32 -14
  br label %open_stats_info.exit

open_stats_info.exit:                             ; preds = %copy_to_user.exit.i228, %sw.bb16.open_stats_info.exit_crit_edge
  %retval.0.i229 = phi i32 [ %cond7.i227, %copy_to_user.exit.i228 ], [ -22, %sw.bb16.open_stats_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %open_stats_info.i) #8
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info.i) #8
  %return_size.i230 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %210 = ptrtoint ptr %return_size.i230 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %return_size.i230, align 8
  %212 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %data, align 8
  %conv.i231 = trunc i64 %213 to i32
  %214 = inttoptr i32 %conv.i231 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.i232 = icmp eq i32 %211, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i231)
  %tobool2.not.i233 = icmp eq i32 %conv.i231, 0
  %or.cond.i234 = select i1 %tobool.not.i232, i1 true, i1 %tobool2.not.i233
  br i1 %or.cond.i234, label %sw.bb18.last_err_open_dev_info.exit_crit_edge, label %if.end.i235

sw.bb18.last_err_open_dev_info.exit_crit_edge:    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %last_err_open_dev_info.exit

if.end.i235:                                      ; preds = %sw.bb18
  %last_error.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58
  %215 = ptrtoint ptr %last_error.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %last_error.i, align 8
  %217 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %216, ptr %info.i, align 8
  %218 = tail call i32 @llvm.umin.i32(i32 %211, i32 8) #8
  call void @__check_object_size(ptr noundef nonnull %info.i, i32 noundef %218, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i237 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i237, label %if.end.i235.copy_to_user.exit.i246_crit_edge, label %if.end.i.i.i241

if.end.i235.copy_to_user.exit.i246_crit_edge:     ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i246

if.end.i.i.i241:                                  ; preds = %if.end.i235
  %219 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %214, i32 %218, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i239 = extractvalue { i32, i32 } %219, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i239)
  %cmp.i6.i.i240 = icmp eq i32 %asmresult.i.i.i239, 0
  br i1 %cmp.i6.i.i240, label %if.then2.i.i.i244, label %if.end.i.i.i241.copy_to_user.exit.i246_crit_edge

if.end.i.i.i241.copy_to_user.exit.i246_crit_edge: ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i246

if.then2.i.i.i244:                                ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i242 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef %218) #8
  %call.i12.i.i.i243 = call i32 @arm_copy_to_user(ptr noundef %214, ptr noundef nonnull %info.i, i32 noundef %218) #8
  br label %copy_to_user.exit.i246

copy_to_user.exit.i246:                           ; preds = %if.then2.i.i.i244, %if.end.i.i.i241.copy_to_user.exit.i246_crit_edge, %if.end.i235.copy_to_user.exit.i246_crit_edge
  %n.addr.0.i.i245 = phi i32 [ %218, %if.end.i235.copy_to_user.exit.i246_crit_edge ], [ %call.i12.i.i.i243, %if.then2.i.i.i244 ], [ %218, %if.end.i.i.i241.copy_to_user.exit.i246_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i245)
  %tobool5.not.i = icmp eq i32 %n.addr.0.i.i245, 0
  %cond6.i = select i1 %tobool5.not.i, i32 0, i32 -14
  br label %last_err_open_dev_info.exit

last_err_open_dev_info.exit:                      ; preds = %copy_to_user.exit.i246, %sw.bb18.last_err_open_dev_info.exit_crit_edge
  %retval.0.i247 = phi i32 [ %cond6.i, %copy_to_user.exit.i246 ], [ -22, %sw.bb18.last_err_open_dev_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info.i) #8
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i248) #8
  %return_size.i249 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %220 = ptrtoint ptr %return_size.i249 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %return_size.i249, align 8
  %222 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %data, align 8
  %conv.i250 = trunc i64 %223 to i32
  %224 = inttoptr i32 %conv.i250 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i251 = icmp eq i32 %221, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i250)
  %tobool2.not.i252 = icmp eq i32 %conv.i250, 0
  %or.cond.i253 = select i1 %tobool.not.i251, i1 true, i1 %tobool2.not.i252
  br i1 %or.cond.i253, label %sw.bb20.cs_timeout_info.exit_crit_edge, label %if.end.i254

sw.bb20.cs_timeout_info.exit_crit_edge:           ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cs_timeout_info.exit

if.end.i254:                                      ; preds = %sw.bb20
  %cs_timeout_seq.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 5
  %225 = ptrtoint ptr %cs_timeout_seq.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %cs_timeout_seq.i, align 8
  %seq.i = getelementptr inbounds %struct.hl_info_cs_timeout_event, ptr %info.i248, i32 0, i32 1
  %227 = ptrtoint ptr %seq.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %226, ptr %seq.i, align 8
  %cs_timeout_timestamp.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 1
  %228 = ptrtoint ptr %cs_timeout_timestamp.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %cs_timeout_timestamp.i, align 8
  %230 = ptrtoint ptr %info.i248 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %info.i248, align 8
  %231 = tail call i32 @llvm.umin.i32(i32 %221, i32 16) #8
  call void @__check_object_size(ptr noundef nonnull %info.i248, i32 noundef %231, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i256 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i256, label %if.end.i254.copy_to_user.exit.i267_crit_edge, label %if.end.i.i.i260

if.end.i254.copy_to_user.exit.i267_crit_edge:     ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i267

if.end.i.i.i260:                                  ; preds = %if.end.i254
  %232 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %224, i32 %231, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i258 = extractvalue { i32, i32 } %232, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i258)
  %cmp.i6.i.i259 = icmp eq i32 %asmresult.i.i.i258, 0
  br i1 %cmp.i6.i.i259, label %if.then2.i.i.i263, label %if.end.i.i.i260.copy_to_user.exit.i267_crit_edge

if.end.i.i.i260.copy_to_user.exit.i267_crit_edge: ; preds = %if.end.i.i.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i267

if.then2.i.i.i263:                                ; preds = %if.end.i.i.i260
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i261 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i248, i32 noundef %231) #8
  %call.i12.i.i.i262 = call i32 @arm_copy_to_user(ptr noundef %224, ptr noundef nonnull %info.i248, i32 noundef %231) #8
  br label %copy_to_user.exit.i267

copy_to_user.exit.i267:                           ; preds = %if.then2.i.i.i263, %if.end.i.i.i260.copy_to_user.exit.i267_crit_edge, %if.end.i254.copy_to_user.exit.i267_crit_edge
  %n.addr.0.i.i264 = phi i32 [ %231, %if.end.i254.copy_to_user.exit.i267_crit_edge ], [ %call.i12.i.i.i262, %if.then2.i.i.i263 ], [ %231, %if.end.i.i.i260.copy_to_user.exit.i267_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i264)
  %tobool6.not.i265 = icmp eq i32 %n.addr.0.i.i264, 0
  %cond7.i266 = select i1 %tobool6.not.i265, i32 0, i32 -14
  br label %cs_timeout_info.exit

cs_timeout_info.exit:                             ; preds = %copy_to_user.exit.i267, %sw.bb20.cs_timeout_info.exit_crit_edge
  %retval.0.i268 = phi i32 [ %cond7.i266, %copy_to_user.exit.i267 ], [ -22, %sw.bb20.cs_timeout_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i248) #8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %return_size.i270 = getelementptr inbounds %struct.hl_info_args, ptr %data, i32 0, i32 1
  %233 = ptrtoint ptr %return_size.i270 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %return_size.i270, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i269) #8
  %235 = getelementptr inbounds i8, ptr %info.i269, i32 16
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 0, ptr %235, align 8
  %237 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %data, align 8
  %conv.i271 = trunc i64 %238 to i32
  %239 = inttoptr i32 %conv.i271 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i272 = icmp eq i32 %234, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i271)
  %tobool2.not.i273 = icmp eq i32 %conv.i271, 0
  %or.cond.i274 = select i1 %tobool.not.i272, i1 true, i1 %tobool2.not.i273
  br i1 %or.cond.i274, label %sw.bb22.razwi_info.exit_crit_edge, label %if.end.i275

sw.bb22.razwi_info.exit_crit_edge:                ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %razwi_info.exit

if.end.i275:                                      ; preds = %sw.bb22
  %razwi_timestamp.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 2
  %240 = ptrtoint ptr %razwi_timestamp.i to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %razwi_timestamp.i, align 8
  %242 = ptrtoint ptr %info.i269 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %info.i269, align 8
  %razwi_addr.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 6
  %243 = ptrtoint ptr %razwi_addr.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %razwi_addr.i, align 8
  %addr.i = getelementptr inbounds %struct.hl_info_razwi_event, ptr %info.i269, i32 0, i32 1
  %245 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %244, ptr %addr.i, align 8
  %razwi_engine_id_1.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 7
  %246 = ptrtoint ptr %razwi_engine_id_1.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %razwi_engine_id_1.i, align 8
  %248 = ptrtoint ptr %235 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %247, ptr %235, align 8
  %razwi_engine_id_2.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 8
  %249 = ptrtoint ptr %razwi_engine_id_2.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %razwi_engine_id_2.i, align 2
  %engine_id_2.i = getelementptr inbounds %struct.hl_info_razwi_event, ptr %info.i269, i32 0, i32 3
  %251 = ptrtoint ptr %engine_id_2.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %engine_id_2.i, align 2
  %razwi_non_engine_initiator.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 9
  %252 = ptrtoint ptr %razwi_non_engine_initiator.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %razwi_non_engine_initiator.i, align 4
  %no_engine_id.i = getelementptr inbounds %struct.hl_info_razwi_event, ptr %info.i269, i32 0, i32 4
  %254 = ptrtoint ptr %no_engine_id.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %no_engine_id.i, align 4
  %razwi_type.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 58, i32 10
  %255 = ptrtoint ptr %razwi_type.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %razwi_type.i, align 1
  %error_type.i = getelementptr inbounds %struct.hl_info_razwi_event, ptr %info.i269, i32 0, i32 5
  %257 = ptrtoint ptr %error_type.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %error_type.i, align 1
  %258 = tail call i32 @llvm.umin.i32(i32 %234, i32 24) #8
  call void @__check_object_size(ptr noundef nonnull %info.i269, i32 noundef %258, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i.i277 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i277, label %if.end.i275.copy_to_user.exit.i286_crit_edge, label %if.end.i.i.i281

if.end.i275.copy_to_user.exit.i286_crit_edge:     ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i286

if.end.i.i.i281:                                  ; preds = %if.end.i275
  %259 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %239, i32 %258, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i.i279 = extractvalue { i32, i32 } %259, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i279)
  %cmp.i6.i.i280 = icmp eq i32 %asmresult.i.i.i279, 0
  br i1 %cmp.i6.i.i280, label %if.then2.i.i.i284, label %if.end.i.i.i281.copy_to_user.exit.i286_crit_edge

if.end.i.i.i281.copy_to_user.exit.i286_crit_edge: ; preds = %if.end.i.i.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i286

if.then2.i.i.i284:                                ; preds = %if.end.i.i.i281
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i282 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i269, i32 noundef %258) #8
  %call.i12.i.i.i283 = call i32 @arm_copy_to_user(ptr noundef %239, ptr noundef nonnull %info.i269, i32 noundef %258) #8
  br label %copy_to_user.exit.i286

copy_to_user.exit.i286:                           ; preds = %if.then2.i.i.i284, %if.end.i.i.i281.copy_to_user.exit.i286_crit_edge, %if.end.i275.copy_to_user.exit.i286_crit_edge
  %n.addr.0.i.i285 = phi i32 [ %258, %if.end.i275.copy_to_user.exit.i286_crit_edge ], [ %call.i12.i.i.i283, %if.then2.i.i.i284 ], [ %258, %if.end.i.i.i281.copy_to_user.exit.i286_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i285)
  %tobool10.not.i = icmp eq i32 %n.addr.0.i.i285, 0
  %cond11.i = select i1 %tobool10.not.i, i32 0, i32 -14
  br label %razwi_info.exit

razwi_info.exit:                                  ; preds = %copy_to_user.exit.i286, %sw.bb22.razwi_info.exit_crit_edge
  %retval.0.i287 = phi i32 [ %cond11.i, %copy_to_user.exit.i286 ], [ -22, %sw.bb22.razwi_info.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i269) #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call24 = call zeroext i1 @hl_device_operational(ptr noundef %2, ptr noundef nonnull %status) #8
  br i1 %call24, label %if.end31, label %do.body

do.body:                                          ; preds = %sw.epilog
  %call25 = call i32 @___ratelimit(ptr noundef nonnull @_hl_info_ioctl._rs, ptr noundef nonnull @__func__._hl_info_ioctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %status, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %2, i32 0, i32 11, i32 %261
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %arrayidx) #11
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog
  %262 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %op, align 4
  %264 = zext i32 %263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %264, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %263, label %do.end58 [
    i32 2, label %sw.bb33
    i32 3, label %sw.bb35
    i32 6, label %sw.bb37
    i32 8, label %sw.bb39
    i32 10, label %sw.bb41
    i32 12, label %sw.bb43
    i32 15, label %sw.bb45
    i32 16, label %sw.bb47
    i32 17, label %sw.bb49
    i32 21, label %sw.bb51
    i32 22, label %sw.bb53
  ]

sw.bb33:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call fastcc i32 @dram_usage_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

sw.bb35:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call fastcc i32 @hw_idle(ptr noundef %2, ptr noundef %data)
  br label %cleanup

sw.bb37:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call fastcc i32 @device_utilization(ptr noundef %2, ptr noundef %data)
  br label %cleanup

sw.bb39:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = call fastcc i32 @get_clk_rate(ptr noundef %2, ptr noundef %data)
  br label %cleanup

sw.bb41:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call fastcc i32 @time_sync_info(ptr noundef %2, ptr noundef %data)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call fastcc i32 @pci_counters_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

sw.bb45:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = call fastcc i32 @total_energy_consumption_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

sw.bb47:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = call fastcc i32 @pll_frequency_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

sw.bb49:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call fastcc i32 @power_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

sw.bb51:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call fastcc i32 @dram_replaced_rows_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = call fastcc i32 @dram_pending_rows_info(ptr noundef %hpriv, ptr noundef %data)
  br label %cleanup

do.end58:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %263) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %do.end, %do.body.cleanup_crit_edge, %razwi_info.exit, %cs_timeout_info.exit, %last_err_open_dev_info.exit, %open_stats_info.exit, %sync_manager_info.exit, %clk_throttle_info.exit, %cs_counters_info.exit, %sw.bb8, %sw.bb6, %get_reset_count.exit, %device_status_info.exit, %hw_ip_info.exit
  %retval.0 = phi i32 [ %call54, %sw.bb53 ], [ %call52, %sw.bb51 ], [ %call50, %sw.bb49 ], [ %call48, %sw.bb47 ], [ %call46, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %retval.0.i287, %razwi_info.exit ], [ %retval.0.i268, %cs_timeout_info.exit ], [ %retval.0.i247, %last_err_open_dev_info.exit ], [ %retval.0.i229, %open_stats_info.exit ], [ %retval.0.i208, %sync_manager_info.exit ], [ %retval.0.i189, %clk_throttle_info.exit ], [ %retval.0.i170, %cs_counters_info.exit ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %retval.0.i151, %get_reset_count.exit ], [ %retval.0.i132, %device_status_info.exit ], [ %retval.0.i, %hw_ip_info.exit ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -22, %do.end58 ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_events_info(ptr noundef %hdev, i1 noundef zeroext %aggregate, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !99
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %return_size, align 8
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %args, align 8
  %conv = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %get_events_stat = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 39
  %8 = ptrtoint ptr %get_events_stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_events_stat, align 4
  %call = call ptr %9(ptr noundef %hdev, i1 noundef zeroext %aggregate, ptr noundef nonnull %size) #8
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = call i32 @llvm.umin.i32(i32 %2, i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.i.i = icmp slt i32 %12, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !94

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  call void @__check_object_size(ptr noundef %call, i32 noundef %12, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %12, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef %12) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %call, i32 noundef %12) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %12, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %12, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool5.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dram_usage_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %dram_usage = alloca %struct.hl_info_dram_usage, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dram_usage) #8
  %2 = getelementptr inbounds i8, ptr %dram_usage, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %2, align 8
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %return_size, align 8
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %args, align 8
  %conv = trunc i64 %7 to i32
  %8 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dram_user_base_address = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 15
  %9 = ptrtoint ptr %dram_user_base_address to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dram_user_base_address, align 8
  %dram_base_address = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 13
  %11 = ptrtoint ptr %dram_base_address to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dram_base_address, align 8
  %dram_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 16
  %13 = ptrtoint ptr %dram_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dram_size, align 8
  %dram_used_mem = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 61
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dram_used_mem, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %dram_used_mem) #8
  %15 = add i64 %12, %14
  %16 = add i64 %10, %call.i
  %sub4 = sub i64 %15, %16
  %17 = ptrtoint ptr %dram_usage to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub4, ptr %dram_usage, align 8
  %ctx = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dram_phys_mem = getelementptr inbounds %struct.hl_ctx, ptr %19, i32 0, i32 18
  %call.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dram_phys_mem, i32 noundef 8) #8
  %call.i32 = tail call i64 @generic_atomic64_read(ptr noundef %dram_phys_mem) #8
  %ctx_dram_mem = getelementptr inbounds %struct.hl_info_dram_usage, ptr %dram_usage, i32 0, i32 1
  %20 = ptrtoint ptr %ctx_dram_mem to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i32, ptr %ctx_dram_mem, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %21 = tail call i32 @llvm.umin.i32(i32 %5, i32 16)
  call void @__check_object_size(ptr noundef nonnull %dram_usage, i32 noundef %21, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i33 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i33, label %if.end9.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end9.copy_to_user.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end9
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %21, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %dram_usage, i32 noundef %21) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %dram_usage, i32 noundef %21) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end9.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %21, %if.end9.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %21, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool12.not = icmp eq i32 %n.addr.0.i, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond13, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dram_usage) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_idle(ptr noundef %hdev, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %hw_idle = alloca %struct.hl_info_hw_idle, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hw_idle) #8
  %0 = call ptr @memset(ptr %hw_idle, i32 0, i32 24)
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %return_size, align 8
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %args, align 8
  %conv = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %is_device_idle = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %is_device_idle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_device_idle, align 4
  %busy_engines_mask_ext = getelementptr inbounds %struct.hl_info_hw_idle, ptr %hw_idle, i32 0, i32 2
  %call = call zeroext i1 %9(ptr noundef %hdev, ptr noundef %busy_engines_mask_ext, i8 noundef zeroext 2, ptr noundef null) #8
  %conv2 = zext i1 %call to i32
  %10 = ptrtoint ptr %hw_idle to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv2, ptr %hw_idle, align 8
  %11 = ptrtoint ptr %busy_engines_mask_ext to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %busy_engines_mask_ext, align 8
  %conv4 = trunc i64 %12 to i32
  %busy_engines_mask = getelementptr inbounds %struct.hl_info_hw_idle, ptr %hw_idle, i32 0, i32 1
  %13 = ptrtoint ptr %busy_engines_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4, ptr %busy_engines_mask, align 4
  %14 = call i32 @llvm.umin.i32(i32 %2, i32 24)
  call void @__check_object_size(ptr noundef nonnull %hw_idle, i32 noundef %14, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %14, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hw_idle, i32 noundef %14) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %hw_idle, i32 noundef %14) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %14, %if.end.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool7.not = icmp eq i32 %n.addr.0.i, 0
  %cond8 = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond8, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hw_idle) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @device_utilization(ptr noundef %hdev, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %device_util = alloca %struct.hl_info_device_utilization, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_util) #8
  %0 = ptrtoint ptr %device_util to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %device_util, align 8
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %return_size, align 8
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %args, align 8
  %conv = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @hl_device_utilization(ptr noundef %hdev, ptr noundef nonnull %device_util) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = call i32 @llvm.umin.i32(i32 %2, i32 8)
  call void @__check_object_size(ptr noundef nonnull %device_util, i32 noundef %6, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end4.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end4.copy_to_user.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end4
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %6, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %device_util, i32 noundef %6) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %device_util, i32 noundef %6) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end4.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %6, %if.end4.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %6, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool7.not = icmp eq i32 %n.addr.0.i, 0
  %cond8 = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond8, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_util) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_clk_rate(ptr noundef %hdev, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %clk_rate = alloca %struct.hl_info_clk_rate, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_rate) #8
  %0 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %clk_rate, align 8
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %return_size, align 8
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %args, align 8
  %conv = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 8
  %get_clk_rate = getelementptr inbounds %struct.hl_asic_funcs, ptr %7, i32 0, i32 62
  %8 = ptrtoint ptr %get_clk_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_clk_rate, align 4
  %max_clk_rate_mhz = getelementptr inbounds %struct.hl_info_clk_rate, ptr %clk_rate, i32 0, i32 1
  %call = call i32 %9(ptr noundef %hdev, ptr noundef nonnull %clk_rate, ptr noundef %max_clk_rate_mhz) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = call i32 @llvm.umin.i32(i32 %2, i32 8)
  call void @__check_object_size(ptr noundef nonnull %clk_rate, i32 noundef %10, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end4.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end4.copy_to_user.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end4
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %10, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %clk_rate, i32 noundef %10) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %clk_rate, i32 noundef %10) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end4.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %10, %if.end4.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %10, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool7.not = icmp eq i32 %n.addr.0.i, 0
  %cond8 = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond8, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @time_sync_info(ptr noundef %hdev, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %time_sync = alloca %struct.hl_info_time_sync, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time_sync) #8
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %return_size, align 8
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %args, align 8
  %conv = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %get_device_time = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 73
  %7 = ptrtoint ptr %get_device_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_device_time, align 4
  %call = tail call i64 %8(ptr noundef %hdev) #8
  %9 = ptrtoint ptr %time_sync to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call, ptr %time_sync, align 8
  %call.i = tail call i64 @ktime_get_raw() #8
  %host_time = getelementptr inbounds %struct.hl_info_time_sync, ptr %time_sync, i32 0, i32 1
  %10 = ptrtoint ptr %host_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i, ptr %host_time, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %1, i32 16)
  call void @__check_object_size(ptr noundef nonnull %time_sync, i32 noundef %11, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %11, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %time_sync, i32 noundef %11) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %time_sync, i32 noundef %11) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %11, %if.end.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %11, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool5.not = icmp eq i32 %n.addr.0.i, 0
  %cond6 = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond6, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time_sync) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_counters_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %pci_counters = alloca %struct.hl_info_pci_counters, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pci_counters) #8
  %2 = call ptr @memset(ptr %pci_counters, i32 0, i32 24)
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %return_size, align 8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args, align 8
  %conv = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @hl_fw_cpucp_pci_counters_get(ptr noundef %1, ptr noundef nonnull %pci_counters) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = call i32 @llvm.umin.i32(i32 %4, i32 24)
  call void @__check_object_size(ptr noundef nonnull %pci_counters, i32 noundef %8, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end5.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end5.copy_to_user.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end5
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %8, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pci_counters, i32 noundef %8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %pci_counters, i32 noundef %8) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end5.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.end5.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pci_counters) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @total_energy_consumption_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %total_energy = alloca %struct.hl_info_energy, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %total_energy) #8
  %2 = ptrtoint ptr %total_energy to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %total_energy, align 8
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %return_size, align 8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args, align 8
  %conv = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @hl_fw_cpucp_total_energy_get(ptr noundef %1, ptr noundef nonnull %total_energy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %total_energy, i32 noundef %8, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end5.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end5.copy_to_user.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end5
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %8, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %total_energy, i32 noundef %8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %total_energy, i32 noundef %8) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end5.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.end5.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %total_energy) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pll_frequency_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %freq_info = alloca %struct.hl_pll_frequency_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freq_info) #8
  %2 = ptrtoint ptr %freq_info to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %freq_info, align 8
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %return_size, align 8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args, align 8
  %conv = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %call = call i32 @hl_fw_cpucp_pll_info_get(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %freq_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = call i32 @llvm.umin.i32(i32 %4, i32 8)
  call void @__check_object_size(ptr noundef nonnull %freq_info, i32 noundef %11, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end5.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end5.copy_to_user.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end5
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %11, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %freq_info, i32 noundef %11) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %freq_info, i32 noundef %11) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end5.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %11, %if.end5.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %11, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freq_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @power_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %power_info = alloca %struct.hl_power_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %return_size, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %power_info) #8
  %4 = ptrtoint ptr %power_info to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %power_info, align 8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args, align 8
  %conv = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @hl_fw_cpucp_power_get(ptr noundef %1, ptr noundef nonnull %power_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = call i32 @llvm.umin.i32(i32 %3, i32 8)
  call void @__check_object_size(ptr noundef nonnull %power_info, i32 noundef %8, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end5.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end5.copy_to_user.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end5
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %8, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %power_info, i32 noundef %8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %power_info, i32 noundef %8) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end5.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.end5.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %power_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dram_replaced_rows_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cpucp_hbm_row_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %return_size, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %info, align 8
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args, align 8
  %conv = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @hl_fw_dram_replaced_row_get(ptr noundef %1, ptr noundef nonnull %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = call i32 @llvm.umin.i32(i32 %3, i32 8)
  call void @__check_object_size(ptr noundef nonnull %info, i32 noundef %8, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end5.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end5.copy_to_user.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end5
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %8, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef %8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %info, i32 noundef %8) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end5.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.end5.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dram_pending_rows_info(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  %pend_rows_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %return_size = getelementptr inbounds %struct.hl_info_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %return_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %return_size, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend_rows_num) #8
  %4 = ptrtoint ptr %pend_rows_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pend_rows_num, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args, align 8
  %conv = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool2.not = icmp eq i32 %conv, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @hl_fw_dram_pending_row_get(ptr noundef %1, ptr noundef nonnull %pend_rows_num) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = call i32 @llvm.umin.i32(i32 %3, i32 4)
  call void @__check_object_size(ptr noundef nonnull %pend_rows_num, i32 noundef %8, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end5.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end5.copy_to_user.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end5
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %8, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pend_rows_num, i32 noundef %8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %pend_rows_num, i32 noundef %8) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end5.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.end5.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool8.not = icmp eq i32 %n.addr.0.i, 0
  %cond9 = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %copy_to_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend_rows_num) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies64_to_msecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_utilization(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_cpucp_pci_counters_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_cpucp_total_energy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_cpucp_pll_info_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_cpucp_power_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_dram_replaced_row_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_fw_dram_pending_row_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_set_debug_mode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_info_ioctl_control(ptr nocapture noundef readonly %hpriv, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %dev_ctrl = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ctrl, align 8
  %call = tail call fastcc i32 @_hl_info_ioctl(ptr noundef %hpriv, ptr noundef %data, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 847, i32 3}
!2 = !{ptr @hl_ioctl._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.hl_ioctl, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hl_ioctl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hl_ioctl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 854, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hl_ioctl._entry.3, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @hl_ioctl._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @hl_ioctl_control._rs, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 870, i32 3}
!16 = !{ptr @__func__.hl_ioctl_control, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hl_ioctl_control._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @hl_ioctl_control._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @hl_ioctl_control._entry.8, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 877, i32 3}
!21 = !{ptr @hl_ioctl_control._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hl_ioctls, !23, !"hl_ioctls", i1 false, i1 false}
!23 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 761, i32 35}
!24 = !{ptr @_hl_info_ioctl._rs, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 649, i32 3}
!26 = !{ptr @__func__._hl_info_ioctl, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @_hl_info_ioctl._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @_hl_info_ioctl._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 695, i32 3}
!33 = !{ptr @_hl_info_ioctl._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @_hl_info_ioctl._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!42 = !{ptr @hl_debug_ioctl._rs, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 722, i32 3}
!44 = !{ptr @__func__.hl_debug_ioctl, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hl_debug_ioctl._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @hl_debug_ioctl._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @hl_debug_ioctl._rs.19, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 737, i32 4}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hl_debug_ioctl._entry.20, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hl_debug_ioctl._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @hl_debug_ioctl._entry.23, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 750, i32 3}
!55 = !{ptr @hl_debug_ioctl._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @hl_debug_struct_size, !57, !"hl_debug_struct_size", i1 false, i1 false}
!57 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 18, i32 12}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 185, i32 4}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @debug_coresight._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @debug_coresight._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 205, i32 3}
!65 = !{ptr @debug_coresight._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @debug_coresight._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 212, i32 3}
!69 = !{ptr @debug_coresight._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @debug_coresight._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 790, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @_hl_ioctl.__UNIQUE_ID_ddebug347, !72, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 830, i32 3}
!78 = !{ptr @_hl_ioctl.__UNIQUE_ID_ddebug348, !77, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!79 = !{ptr @hl_ioctls_control, !80, !"hl_ioctls_control", i1 false, i1 false}
!80 = !{!"../drivers/misc/habanalabs/common/habanalabs_ioctl.c", i32 770, i32 35}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2149052959, i64 2149052964, i64 2149052977, i64 2149053021, i64 2149053055, i64 2149053076}
!93 = !{i64 2152544163, i64 2152544188}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 5039718}
!96 = !{i64 5039915}
!97 = !{i64 2152525148}
!98 = !{i64 2152544844, i64 2152544869}
!99 = !{!"auto-init"}
!100 = !{i64 2148961678, i64 2148961958, i64 2148962292, i64 2148962626}
!101 = !{i64 1476134, i64 1476161, i64 1476183, i64 1476211}
!102 = !{i64 1476542, i64 1476569, i64 1476602, i64 1476623, i64 1476650, i64 1476676}
