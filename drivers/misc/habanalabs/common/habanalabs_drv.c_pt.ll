; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/habanalabs_drv.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/habanalabs_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
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
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_mmu_priv = type { %struct.hl_mmu_dr_priv, %struct.hl_mmu_hr_priv }
%struct.hl_mmu_dr_priv = type { ptr, ptr }
%struct.hl_mmu_hr_priv = type { ptr, ptr }
%struct.hl_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_load_mgr = type { %union.anon.100, %struct.fw_image_props, %struct.fw_image_props, i32, i32, i8, i8, i8, i8 }
%union.anon.100 = type { %struct.dynamic_fw_load_mgr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.98 = type { ptr }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author299 = internal constant [48 x i8] c"habanalabs.author=HabanaLabs Kernel Driver Team\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [63 x i8] c"habanalabs.description=Driver for HabanaLabs's AI Accelerators\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [51 x i8] c"habanalabs.file=drivers/misc/habanalabs/habanalabs\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [26 x i8] c"habanalabs.license=GPL v2\00", section ".modinfo", align 1
@__param_str_timeout_locked = internal constant [26 x i8] c"habanalabs.timeout_locked\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout_locked = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_timeout_locked = internal constant %struct.kernel_param { ptr @__param_str_timeout_locked, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.73 { ptr @timeout_locked } }, section "__param", align 4
@__UNIQUE_ID_timeout_lockedtype303 = internal constant [39 x i8] c"habanalabs.parmtype=timeout_locked:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout_locked304 = internal constant [92 x i8] c"habanalabs.parm=timeout_locked:Device lockup timeout in seconds (0 = disabled, default 30s)\00", section ".modinfo", align 1
@__param_str_reset_on_lockup = internal constant [27 x i8] c"habanalabs.reset_on_lockup\00", align 1
@reset_on_lockup = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_reset_on_lockup = internal constant %struct.kernel_param { ptr @__param_str_reset_on_lockup, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.73 { ptr @reset_on_lockup } }, section "__param", align 4
@__UNIQUE_ID_reset_on_lockuptype305 = internal constant [40 x i8] c"habanalabs.parmtype=reset_on_lockup:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_on_lockup306 = internal constant [89 x i8] c"habanalabs.parm=reset_on_lockup:Do device reset on lockup (0 = no, 1 = yes, default yes)\00", section ".modinfo", align 1
@__param_str_memory_scrub = internal constant [24 x i8] c"habanalabs.memory_scrub\00", align 1
@memory_scrub = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_memory_scrub = internal constant %struct.kernel_param { ptr @__param_str_memory_scrub, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.73 { ptr @memory_scrub } }, section "__param", align 4
@__UNIQUE_ID_memory_scrubtype307 = internal constant [37 x i8] c"habanalabs.parmtype=memory_scrub:int\00", section ".modinfo", align 1
@__UNIQUE_ID_memory_scrub308 = internal constant [97 x i8] c"habanalabs.parm=memory_scrub:Scrub device memory in various states (0 = no, 1 = yes, default no)\00", section ".modinfo", align 1
@__param_str_boot_error_status_mask = internal constant [34 x i8] c"habanalabs.boot_error_status_mask\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@boot_error_status_mask = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_boot_error_status_mask = internal constant %struct.kernel_param { ptr @__param_str_boot_error_status_mask, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.73 { ptr @boot_error_status_mask } }, section "__param", align 4
@__UNIQUE_ID_boot_error_status_masktype309 = internal constant [49 x i8] c"habanalabs.parmtype=boot_error_status_mask:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_boot_error_status_mask310 = internal constant [148 x i8] c"habanalabs.parm=boot_error_status_mask:Mask of the error status during device CPU boot (If bitX is cleared then error X is masked. Default all 1's)\00", section ".modinfo", align 1
@hl_devs_idr_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hl_devs_idr_lock, i64 52), ptr getelementptr (i8, ptr @hl_devs_idr_lock, i64 52) }, ptr @hl_devs_idr_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hl_devs_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@hl_device_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013habanalabs: Couldn't find device %d:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_device_open\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/misc/habanalabs/common/habanalabs_drv.c\00", [48 x i8] zeroinitializer }, align 32
@hl_device_open._entry_ptr = internal global ptr @hl_device_open._entry, section ".printk_index", align 4
@hl_device_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&hpriv->restore_phase_mutex\00", [36 x i8] zeroinitializer }, align 32
@hl_device_open._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@hl_device_open._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't open %s because it is %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_device_open._entry_ptr.9 = internal global ptr @hl_device_open._entry.5, section ".printk_index", align 4
@hl_device_open._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_device_open.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Can't open %s because another user is working on it\0A\00", [43 x i8] zeroinitializer }, align 32
@hl_device_open._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 166, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create context %d\0A\00", [35 x i8] zeroinitializer }, align 32
@hl_device_open._entry_ptr.15 = internal global ptr @hl_device_open._entry.13, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hl_device_open_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_device_open_ctrl\00", [44 x i8] zeroinitializer }, align 32
@hl_device_open_ctrl._entry_ptr = internal global ptr @hl_device_open_ctrl._entry, section ".printk_index", align 4
@hl_device_open_ctrl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hl_device_open_ctrl._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 232, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't open %s because it is disabled or in reset\0A\00", [46 x i8] zeroinitializer }, align 32
@hl_device_open_ctrl._entry_ptr.19 = internal global ptr @hl_device_open_ctrl._entry.17, section ".printk_index", align 4
@hl_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.11, ptr @ids, ptr @hl_pci_probe, ptr @hl_pci_remove, ptr null, ptr null, ptr @hl_pci_remove, ptr null, ptr null, ptr null, ptr @hl_pci_err_handler, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hl_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@hl_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hl_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hl_exit.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hl_exit\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"driver removed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"habanalabs: driver removed\0A\00", [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_habanalabs__315_657_hl_init6 = internal global ptr @hl_init, section ".initcall6.init", align 4
@__exitcall_hl_exit = internal global ptr @hl_exit, section ".exitcall.exit", align 4
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hl_devs_idr_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_devs_idr_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_devs_idr.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 7587, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7587, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7587, i32 4112, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hl_pci_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @hl_pci_err_detected, ptr null, ptr @hl_pci_err_slot_reset, ptr null, ptr null, ptr @hl_pci_err_resume }, [40 x i8] zeroinitializer }, align 32
@hl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hl_pmops_suspend, ptr @hl_pmops_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hl_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 453, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"habanalabs device found [%04x:%04x] (rev %x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hl_pci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hl_pci_probe._entry_ptr = internal global ptr @hl_pci_probe._entry, section ".printk_index", align 4
@hl_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.2, i32 465, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Fatal error during habanalabs device init\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_pci_probe._entry_ptr.31 = internal global ptr @hl_pci_probe._entry.29, section ".printk_index", align 4
@create_hdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 341, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unsupported ASIC\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_hdev\00", [20 x i8] zeroinitializer }, align 32
@create_hdev._entry_ptr = internal global ptr @create_hdev._entry, section ".printk_index", align 4
@create_hdev._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013habanalabs: too many devices in the system\0A\00", [50 x i8] zeroinitializer }, align 32
@create_hdev._entry_ptr.41 = internal global ptr @create_hdev._entry.39, section ".printk_index", align 4
@hl_pci_err_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 521, ptr @.str.44, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"frozen state error detected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hl_pci_err_detected\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_pci_err_detected._entry_ptr = internal global ptr @hl_pci_err_detected._entry, section ".printk_index", align 4
@hl_pci_err_detected._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 526, ptr @.str.44, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failure state error detected\0A\00", [34 x i8] zeroinitializer }, align 32
@hl_pci_err_detected._entry_ptr.47 = internal global ptr @hl_pci_err_detected._entry.45, section ".printk_index", align 4
@hl_pci_err_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 549, ptr @.str.44, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Resuming device after PCI slot reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hl_pci_err_resume\00", [46 x i8] zeroinitializer }, align 32
@hl_pci_err_resume._entry_ptr = internal global ptr @hl_pci_err_resume._entry, section ".printk_index", align 4
@hl_pmops_suspend.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_pmops_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Going to suspend PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"habanalabs: Going to suspend PCI device\0A\00", [55 x i8] zeroinitializer }, align 32
@hl_pmops_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013habanalabs: device pointer is NULL in suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@hl_pmops_suspend._entry_ptr = internal global ptr @hl_pmops_suspend._entry, section ".printk_index", align 4
@hl_pmops_resume.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hl_pmops_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Going to resume PCI device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"habanalabs: Going to resume PCI device\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_pmops_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013habanalabs: device pointer is NULL in resume\0A\00", [48 x i8] zeroinitializer }, align 32
@hl_pmops_resume._entry_ptr = internal global ptr @hl_pmops_resume._entry, section ".printk_index", align 4
@hl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016habanalabs: loading driver\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hl_init\00", [24 x i8] zeroinitializer }, align 32
@hl_init._entry_ptr = internal global ptr @hl_init._entry, section ".printk_index", align 4
@hl_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013habanalabs: unable to get major\0A\00", [61 x i8] zeroinitializer }, align 32
@hl_init._entry_ptr.62 = internal global ptr @hl_init._entry.60, section ".printk_index", align 4
@hl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hl_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013habanalabs: failed to allocate class\0A\00", [56 x i8] zeroinitializer }, align 32
@hl_init._entry_ptr.65 = internal global ptr @hl_init._entry.63, section ".printk_index", align 4
@hl_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013habanalabs: failed to register pci device\0A\00", [51 x i8] zeroinitializer }, align 32
@hl_init._entry_ptr.68 = internal global ptr @hl_init._entry.66, section ".printk_index", align 4
@hl_init.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.59, ptr @.str.2, ptr @.str.69, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver loaded\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"habanalabs: driver loaded\0A\00", [37 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"operational\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"in reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"disabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"needs reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"in device creation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 4096, i64 4112]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"timeout_locked\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 30, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"reset_on_lockup\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 31, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"memory_scrub\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 32, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [23 x i8] c"boot_error_status_mask\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 33, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"hl_devs_idr_lock\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"hl_devs_idr\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 125, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 137, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 149, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 157, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 166, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 208, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 230, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"hl_pci_driver\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 576, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"hl_class\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 26, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant [9 x i8] c"hl_major\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 25, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 654, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 28, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 27, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [4 x i8] c"ids\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 57, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant [19 x i8] c"hl_pci_err_handler\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 570, i32 40 }
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"hl_pm_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 565, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 451, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 465, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 341, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 367, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 521, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 526, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 549, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 412, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 415, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 426, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 429, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 598, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 602, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 608, i32 13 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 610, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 619, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [51 x i8] c"../drivers/misc/habanalabs/common/habanalabs_drv.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 623, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"str.71\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"str.72\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"str.73\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"str.74\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_boot_error_status_mask310, ptr @__UNIQUE_ID_boot_error_status_masktype309, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_memory_scrub308, ptr @__UNIQUE_ID_memory_scrubtype307, ptr @__UNIQUE_ID_reset_on_lockup306, ptr @__UNIQUE_ID_reset_on_lockuptype305, ptr @__UNIQUE_ID_timeout_locked304, ptr @__UNIQUE_ID_timeout_lockedtype303, ptr @__exitcall_hl_exit, ptr @__initcall__kmod_habanalabs__315_657_hl_init6, ptr @__param_boot_error_status_mask, ptr @__param_memory_scrub, ptr @__param_reset_on_lockup, ptr @__param_timeout_locked, ptr @create_hdev._entry, ptr @create_hdev._entry.39, ptr @create_hdev._entry_ptr, ptr @create_hdev._entry_ptr.41, ptr @hl_device_open._entry, ptr @hl_device_open._entry.13, ptr @hl_device_open._entry.5, ptr @hl_device_open._entry_ptr, ptr @hl_device_open._entry_ptr.15, ptr @hl_device_open._entry_ptr.9, ptr @hl_device_open_ctrl._entry, ptr @hl_device_open_ctrl._entry.17, ptr @hl_device_open_ctrl._entry_ptr, ptr @hl_device_open_ctrl._entry_ptr.19, ptr @hl_exit, ptr @hl_init._entry, ptr @hl_init._entry.60, ptr @hl_init._entry.63, ptr @hl_init._entry.66, ptr @hl_init._entry_ptr, ptr @hl_init._entry_ptr.62, ptr @hl_init._entry_ptr.65, ptr @hl_init._entry_ptr.68, ptr @hl_pci_err_detected._entry, ptr @hl_pci_err_detected._entry.45, ptr @hl_pci_err_detected._entry_ptr, ptr @hl_pci_err_detected._entry_ptr.47, ptr @hl_pci_err_resume._entry, ptr @hl_pci_err_resume._entry_ptr, ptr @hl_pci_probe._entry, ptr @hl_pci_probe._entry.29, ptr @hl_pci_probe._entry_ptr, ptr @hl_pci_probe._entry_ptr.31, ptr @hl_pmops_resume._entry, ptr @hl_pmops_resume._entry_ptr, ptr @hl_pmops_suspend._entry, ptr @hl_pmops_suspend._entry_ptr, ptr @timeout_locked, ptr @reset_on_lockup, ptr @memory_scrub, ptr @boot_error_status_mask, ptr @hl_devs_idr_lock, ptr @hl_devs_idr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hl_device_open.__key, ptr @.str.3, ptr @hl_device_open._rs, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hl_device_open._rs.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @hl_device_open_ctrl._rs, ptr @.str.18, ptr @hl_pci_driver, ptr @hl_class, ptr @hl_major, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ids, ptr @hl_pci_err_handler, ptr @hl_pm_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @hl_init.__key, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @str, ptr @str.71, ptr @str.72, ptr @str.73, ptr @str.74], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_locked to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_on_lockup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memory_scrub to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_error_status_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_devs_idr_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_devs_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open_ctrl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_device_open_ctrl._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_hdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_hdev._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_err_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_err_detected._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pci_err_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pmops_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pmops_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_open(ptr noundef %inode, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !197
  tail call void @mutex_lock_nested(ptr noundef nonnull @hl_devs_idr_lock, i32 noundef 0) #8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %1 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %2, 1048575
  %call1 = tail call ptr @idr_find(ptr noundef nonnull @hl_devs_idr, i32 noundef %and.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @hl_devs_idr_lock) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %4, 20
  %and.i121 = and i32 %4, 1048575
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shr.i, i32 noundef %and.i121) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 384) #12
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data, align 4
  %filp10 = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %filp10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %filp, ptr %filp10, align 4
  %restore_phase_mutex = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %restore_phase_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @hl_device_open.__key) #8
  %refcount = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcount, align 8
  %call14 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #8
  %cb_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 5
  tail call void @hl_cb_mgr_init(ptr noundef %cb_mgr) #8
  %ctx_mgr = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 4
  tail call void @hl_ctx_mgr_init(ptr noundef %ctx_mgr) #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !187) #8
  %and.i122 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i122 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %call16 = tail call ptr @get_task_pid(ptr noundef %13, i32 noundef 0) #8
  %taskpid = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %taskpid to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %taskpid, align 8
  %fpriv_list_lock = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %fpriv_list_lock, i32 noundef 0) #8
  %call17 = call zeroext i1 @hl_device_operational(ptr noundef nonnull %call1, ptr noundef nonnull %status) #8
  br i1 %call17, label %if.end32, label %do.body19

do.body19:                                        ; preds = %if.end8
  %call20 = call i32 @___ratelimit(ptr noundef nonnull @hl_device_open._rs, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body19.out_err_crit_edge, label %do.end25

do.body19.out_err_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.end25:                                         ; preds = %do.body19
  %dev = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end25.dev_name.exit_crit_edge

do.end25.dev_name.exit_crit_edge:                 ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end25.dev_name.exit_crit_edge
  %retval.0.i123 = phi ptr [ %20, %if.end.i ], [ %18, %do.end25.dev_name.exit_crit_edge ]
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %call1, i32 0, i32 11, i32 %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i123, ptr noundef %arrayidx) #11
  br label %out_err

if.end32:                                         ; preds = %if.end8
  %is_compute_ctx_active = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 104
  %23 = ptrtoint ptr %is_compute_ctx_active to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_compute_ctx_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  br i1 %tobool33.not, label %if.end50, label %do.body35

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_device_open.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_device_open, %land.lhs.true)) #8
          to label %out_err [label %land.lhs.true], !srcloc !198

land.lhs.true:                                    ; preds = %do.body35
  %call41 = call i32 @___ratelimit(ptr noundef nonnull @hl_device_open._rs.10, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true.out_err_crit_edge, label %if.then43

land.lhs.true.out_err_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.then43:                                        ; preds = %land.lhs.true
  %dev44 = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 6
  %25 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev44, align 4
  %init_name.i124 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i124 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i124, align 8
  %tobool.not.i125 = icmp eq ptr %28, null
  br i1 %tobool.not.i125, label %if.end.i126, label %if.then43.dev_name.exit128_crit_edge

if.then43.dev_name.exit128_crit_edge:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit128

if.end.i126:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit128

dev_name.exit128:                                 ; preds = %if.end.i126, %if.then43.dev_name.exit128_crit_edge
  %retval.0.i127 = phi ptr [ %30, %if.end.i126 ], [ %28, %if.then43.dev_name.exit128_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_device_open.descriptor, ptr noundef %26, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i127) #8
  br label %out_err

if.end50:                                         ; preds = %if.end32
  %call51 = call i32 @hl_ctx_create(ptr noundef nonnull %call1, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 6
  %31 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef %call51) #11
  br label %out_err

if.end58:                                         ; preds = %if.end50
  %dev_node = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 7
  %fpriv_list = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 46
  %33 = ptrtoint ptr %fpriv_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fpriv_list, align 4
  %call.i.i129 = call zeroext i1 @__list_add_valid(ptr noundef %dev_node, ptr noundef %fpriv_list, ptr noundef %34) #8
  br i1 %call.i.i129, label %if.end.i.i, label %if.end58.list_add.exit_crit_edge

if.end58.list_add.exit_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev_node, ptr %prev1.i.i, align 4
  %36 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %dev_node, align 8
  %prev3.i.i = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %fpriv_list, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %fpriv_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %dev_node, ptr %fpriv_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end58.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %fpriv_list_lock) #8
  call void @hl_debugfs_add_file(ptr noundef nonnull %call7.i.i) #8
  %cs_write_disable = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 58, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cs_write_disable, i32 noundef 4) #8
  %39 = ptrtoint ptr %cs_write_disable to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %cs_write_disable, align 4
  %razwi_write_disable = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 58, i32 4
  %call.i.i118 = call zeroext i1 @__kasan_check_write(ptr noundef %razwi_write_disable, i32 noundef 4) #8
  %40 = ptrtoint ptr %razwi_write_disable to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %razwi_write_disable, align 4
  %open_counter = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 69
  %41 = ptrtoint ptr %open_counter to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %open_counter, align 8
  %inc = add i64 %42, 1
  store i64 %inc, ptr %open_counter, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %43 to i64
  %last_successful_open_jif = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 67
  %44 = ptrtoint ptr %last_successful_open_jif to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv, ptr %last_successful_open_jif, align 8
  %call61 = call i64 @ktime_get() #8
  %last_successful_open_ktime = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 71
  %45 = ptrtoint ptr %last_successful_open_ktime to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %call61, ptr %last_successful_open_ktime, align 8
  br label %cleanup

out_err:                                          ; preds = %do.end56, %dev_name.exit128, %land.lhs.true.out_err_crit_edge, %do.body35, %dev_name.exit, %do.body19.out_err_crit_edge
  %rc.0 = phi i32 [ %call51, %do.end56 ], [ -1, %dev_name.exit ], [ -1, %do.body19.out_err_crit_edge ], [ -16, %dev_name.exit128 ], [ -16, %land.lhs.true.out_err_crit_edge ], [ -16, %do.body35 ]
  call void @mutex_unlock(ptr noundef %fpriv_list_lock) #8
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  call void @hl_cb_mgr_fini(ptr noundef %47, ptr noundef %cb_mgr) #8
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  call void @hl_ctx_mgr_fini(ptr noundef %49, ptr noundef %ctx_mgr) #8
  %50 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %private_data, align 4
  call void @mutex_destroy(ptr noundef %restore_phase_mutex) #8
  %51 = ptrtoint ptr %taskpid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %taskpid, align 8
  call void @put_pid(ptr noundef %52) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %list_add.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.0, %out_err ], [ 0, %list_add.exit ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cb_mgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_ctx_mgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_cb_mgr_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_ctx_mgr_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_device_open_ctrl(ptr noundef %inode, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @hl_devs_idr_lock, i32 noundef 0) #8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @idr_find(ptr noundef nonnull @hl_devs_idr, i32 noundef %and.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @hl_devs_idr_lock) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %3, 20
  %and.i58 = and i32 %3, 1048575
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shr.i, i32 noundef %and.i58) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 384) #12
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  %filp10 = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %filp10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %filp, ptr %filp10, align 4
  %call11 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #8
  %8 = tail call i32 @llvm.read_register.i32(metadata !187) #8
  %and.i59 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i59 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call13 = tail call ptr @find_get_pid(i32 noundef %13) #8
  %taskpid = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %taskpid to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %taskpid, align 8
  %fpriv_ctrl_list_lock = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %fpriv_ctrl_list_lock, i32 noundef 0) #8
  %call14 = tail call zeroext i1 @hl_device_operational(ptr noundef nonnull %call1, ptr noundef null) #8
  br i1 %call14, label %if.end28, label %do.body16

do.body16:                                        ; preds = %if.end8
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @hl_device_open_ctrl._rs, ptr noundef nonnull @.str.16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body16.do.end27_crit_edge, label %do.end22

do.body16.do.end27_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end22:                                         ; preds = %do.body16
  %dev_ctrl = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 7
  %15 = ptrtoint ptr %dev_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_ctrl, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end22.dev_name.exit_crit_edge

do.end22.dev_name.exit_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end22.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %do.end22.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i) #11
  br label %do.end27

do.end27:                                         ; preds = %dev_name.exit, %do.body16.do.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock) #8
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %private_data, align 4
  %22 = ptrtoint ptr %taskpid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %taskpid, align 8
  tail call void @put_pid(ptr noundef %23) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %dev_node = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 7
  %fpriv_ctrl_list = getelementptr inbounds %struct.hl_device, ptr %call1, i32 0, i32 47
  %24 = ptrtoint ptr %fpriv_ctrl_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fpriv_ctrl_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_node, ptr noundef %fpriv_ctrl_list, ptr noundef %25) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add.exit_crit_edge

if.end28.list_add.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev_node, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %dev_node, align 8
  %prev3.i.i = getelementptr inbounds %struct.hl_fpriv, ptr %call7.i.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fpriv_ctrl_list, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %fpriv_ctrl_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %dev_node, ptr %fpriv_ctrl_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end28.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %fpriv_ctrl_list_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end27, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -1, %do.end27 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hl_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @hl_pci_driver) #8
  tail call void @hl_debugfs_fini() #8
  %0 = load ptr, ptr @hl_class, align 4
  tail call void @class_destroy(ptr noundef %0) #8
  %1 = load i32, ptr @hl_major, align 4
  %shl = shl i32 %1, 20
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 256) #8
  tail call void @idr_destroy(ptr noundef nonnull @hl_devs_idr) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_exit.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_exit, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hl_exit.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_init() #4 section ".init.text" align 64 {
entry:
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !197
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #11
  %call1 = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 4
  %shr = lshr i32 %2, 20
  store i32 %shr, ptr @hl_major, align 4
  %call8 = call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @hl_init.__key) #8
  store ptr %call8, ptr @hl_class, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #11
  %3 = load ptr, ptr @hl_class, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %remove_major

if.end17:                                         ; preds = %if.end
  call void @hl_debugfs_init() #8
  %call18 = call i32 @__pci_register_driver(ptr noundef nonnull @hl_pci_driver, ptr noundef null, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %do.body26, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #11
  call void @hl_debugfs_fini() #8
  %5 = load ptr, ptr @hl_class, align 4
  call void @class_destroy(ptr noundef %5) #8
  br label %remove_major

do.body26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_init.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_init, %if.then32)) #8
          to label %cleanup [label %if.then32], !srcloc !198

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hl_init.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.70) #8
  br label %cleanup

remove_major:                                     ; preds = %do.end22, %do.end13
  %rc.0 = phi i32 [ %4, %do.end13 ], [ %call18, %do.end22 ]
  %6 = load i32, ptr @hl_major, align 4
  %shl = shl i32 %6, 20
  call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 256) #8
  br label %cleanup

cleanup:                                          ; preds = %remove_major, %if.then32, %do.body26, %do.end4
  %retval.0 = phi i32 [ %call1, %do.end4 ], [ %rc.0, %remove_major ], [ 0, %if.then32 ], [ 0, %do.body26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv1 = zext i16 %3 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  %conv2 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 7736) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call7.i.i.i, align 8
  %status.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 11
  %8 = call ptr @memcpy(ptr %status.i, ptr @str, i32 32)
  %arrayidx4.i = getelementptr %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %9 = call ptr @memcpy(ptr %arrayidx4.i, ptr @str.71, i32 32)
  %arrayidx8.i = getelementptr %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 11, i32 2
  %10 = call ptr @memcpy(ptr %arrayidx8.i, ptr @str.72, i32 32)
  %arrayidx12.i = getelementptr %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 11, i32 3
  %11 = call ptr @memcpy(ptr %arrayidx12.i, ptr @str.73, i32 32)
  %arrayidx16.i = getelementptr %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 11, i32 4
  %12 = call ptr @memcpy(ptr %arrayidx16.i, ptr @str.74, i32 32)
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %do.end.i [
    i16 1, label %if.end.i.if.end23.i_crit_edge
    i16 4096, label %sw.bb1.i.i
    i16 4112, label %sw.bb2.i.i
  ]

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %asic_type.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %asic_type.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %cleanup.sink.split

if.end23.i:                                       ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.if.end23.i_crit_edge
  %asic_type.0.i.ph.i = phi i32 [ 1, %if.end.i.if.end23.i_crit_edge ], [ 2, %sw.bb1.i.i ], [ 3, %sw.bb2.i.i ]
  %asic_type84.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %asic_type84.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %asic_type.0.i.ph.i, ptr %asic_type84.i, align 8
  %18 = load i32, ptr @hl_major, align 4
  %major.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 73
  %19 = ptrtoint ptr %major.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %major.i.i, align 4
  %20 = load i32, ptr @memory_scrub, align 4
  %conv.i.i = trunc i32 %20 to i8
  %memory_scrub.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 84
  %21 = ptrtoint ptr %memory_scrub.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i.i, ptr %memory_scrub.i.i, align 8
  %22 = load i32, ptr @reset_on_lockup, align 4
  %conv1.i.i = trunc i32 %22 to i8
  %reset_on_lockup.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 82
  %23 = ptrtoint ptr %reset_on_lockup.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.i.i, ptr %reset_on_lockup.i.i, align 2
  %24 = load i32, ptr @boot_error_status_mask, align 4
  %conv2.i.i = zext i32 %24 to i64
  %boot_error_status_mask.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 65
  %25 = ptrtoint ptr %boot_error_status_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv2.i.i, ptr %boot_error_status_mask.i.i, align 8
  %26 = load i32, ptr @timeout_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end23.i.copy_kernel_module_params_to_device.exit.i_crit_edge, label %if.else.i.i.i

if.end23.i.copy_kernel_module_params_to_device.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_kernel_module_params_to_device.exit.i

if.else.i.i.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul i32 %26, 1000
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i.i) #8
  %conv3.i.i = zext i32 %call2.i.i.i to i64
  br label %copy_kernel_module_params_to_device.exit.i

copy_kernel_module_params_to_device.exit.i:       ; preds = %if.else.i.i.i, %if.end23.i.copy_kernel_module_params_to_device.exit.i_crit_edge
  %.sink.i.i = phi i64 [ %conv3.i.i, %if.else.i.i.i ], [ 2147483647, %if.end23.i.copy_kernel_module_params_to_device.exit.i_crit_edge ]
  %timeout_jiffies4.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 62
  %27 = ptrtoint ptr %timeout_jiffies4.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %.sink.i.i, ptr %timeout_jiffies4.i.i, align 8
  %pldm.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 111
  %28 = ptrtoint ptr %pldm.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %pldm.i.i, align 4
  %fw_components.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 106
  %29 = ptrtoint ptr %fw_components.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 7, ptr %fw_components.i.i, align 8
  %cpu_queues_enable.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 110
  %30 = ptrtoint ptr %cpu_queues_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %cpu_queues_enable.i.i, align 1
  %heartbeat.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 81
  %31 = ptrtoint ptr %heartbeat.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %heartbeat.i.i, align 1
  %mmu_enable.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 107
  %32 = ptrtoint ptr %mmu_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %mmu_enable.i.i, align 8
  %clock_gating_mask.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 64
  %33 = ptrtoint ptr %clock_gating_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 4294967295, ptr %clock_gating_mask.i.i, align 8
  %sram_scrambler_enable.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 113
  %reset_on_preboot_fail.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 118
  %34 = ptrtoint ptr %reset_on_preboot_fail.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %reset_on_preboot_fail.i.i, align 1
  %reset_if_device_not_idle.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 120
  %35 = ptrtoint ptr %reset_if_device_not_idle.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %reset_if_device_not_idle.i.i, align 1
  %reset_pcilink.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 109
  %36 = ptrtoint ptr %sram_scrambler_enable.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 16843009, ptr %sram_scrambler_enable.i.i, align 2
  %37 = ptrtoint ptr %reset_pcilink.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %reset_pcilink.i.i, align 2
  %axi_drain.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 112
  %38 = ptrtoint ptr %axi_drain.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %axi_drain.i.i, align 1
  %39 = ptrtoint ptr %asic_type84.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asic_type84.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cond.i.i.i = icmp eq i32 %40, 3
  %conv.i82.i = zext i1 %cond.i.i.i to i8
  %fw_security_enabled.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 33, i32 68
  %41 = ptrtoint ptr %fw_security_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i82.i, ptr %fw_security_enabled.i.i, align 8
  %fw_poll_interval_usec.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 70
  %42 = ptrtoint ptr %fw_poll_interval_usec.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 10000, ptr %fw_poll_interval_usec.i.i, align 8
  %stop_on_err.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 92
  %43 = ptrtoint ptr %stop_on_err.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %stop_on_err.i.i, align 8
  %curr_reset_cause.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 59, i32 8
  %44 = ptrtoint ptr %curr_reset_cause.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %curr_reset_cause.i.i, align 4
  %prev_reset_trigger.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 59, i32 9
  %45 = ptrtoint ptr %prev_reset_trigger.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %prev_reset_trigger.i.i, align 1
  %disabled.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 78
  %46 = ptrtoint ptr %disabled.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %disabled.i.i, align 2
  %dma_mask.i.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 88
  %47 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 32, ptr %dma_mask.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hl_devs_idr_lock, i32 noundef 0) #8
  %call25.i = tail call i32 @idr_alloc(ptr noundef nonnull @hl_devs_idr, ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i32 noundef 256, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25.i)
  %cmp26.i = icmp sgt i32 %call25.i, -1
  br i1 %cmp26.i, label %if.then27.i, label %copy_kernel_module_params_to_device.exit.i.if.end30.i_crit_edge

copy_kernel_module_params_to_device.exit.i.if.end30.i_crit_edge: ; preds = %copy_kernel_module_params_to_device.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then27.i:                                      ; preds = %copy_kernel_module_params_to_device.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw i32 %call25.i, 1
  %add28.i = add nuw i32 %call25.i, 2
  %call29.i = tail call i32 @idr_alloc(ptr noundef nonnull @hl_devs_idr, ptr noundef nonnull %call7.i.i.i, i32 noundef %add.i, i32 noundef %add28.i, i32 noundef 3264) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %copy_kernel_module_params_to_device.exit.i.if.end30.i_crit_edge
  %ctrl_id.0.i = phi i32 [ %call29.i, %if.then27.i ], [ 0, %copy_kernel_module_params_to_device.exit.i.if.end30.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @hl_devs_idr_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp31.i = icmp slt i32 %call25.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctrl_id.0.i)
  %cmp32.i = icmp slt i32 %ctrl_id.0.i, 0
  %or.cond.i = select i1 %cmp31.i, i1 true, i1 %cmp32.i
  br i1 %or.cond.i, label %if.then33.i, label %if.end

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call25.i)
  %cmp34.i = icmp eq i32 %call25.i, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %ctrl_id.0.i)
  %cmp36.i = icmp eq i32 %ctrl_id.0.i, -28
  %or.cond81.i = select i1 %cmp34.i, i1 true, i1 %cmp36.i
  br i1 %or.cond81.i, label %do.end40.i, label %if.then33.i.if.end42.i_crit_edge

if.then33.i.if.end42.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

do.end40.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end40.i, %if.then33.i.if.end42.i_crit_edge
  br i1 %cmp26.i, label %if.then44.i, label %if.end42.i.cleanup.sink.split_crit_edge

if.end42.i.cleanup.sink.split_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @hl_devs_idr_lock, i32 noundef 0) #8
  %call45.i = tail call ptr @idr_remove(ptr noundef nonnull @hl_devs_idr, i32 noundef %call25.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @hl_devs_idr_lock) #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end30.i
  %conv.i = trunc i32 %call25.i to i16
  %id.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 75
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i, ptr %id.i, align 4
  %conv48.i = trunc i32 %ctrl_id.0.i to i16
  %id_control.i = getelementptr inbounds %struct.hl_device, ptr %call7.i.i.i, i32 0, i32 76
  %49 = ptrtoint ptr %id_control.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv48.i, ptr %id_control.i, align 2
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #8
  %51 = load ptr, ptr @hl_class, align 4
  %call4 = tail call i32 @hl_device_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  %call12 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hl_devs_idr_lock, i32 noundef 0) #8
  %53 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %id.i, align 4
  %conv.i28 = zext i16 %54 to i32
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @hl_devs_idr, i32 noundef %conv.i28) #8
  %55 = ptrtoint ptr %id_control.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %id_control.i, align 2
  %conv1.i = zext i16 %56 to i32
  %call2.i = tail call ptr @idr_remove(ptr noundef nonnull @hl_devs_idr, i32 noundef %conv1.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @hl_devs_idr_lock) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end9, %if.then44.i, %if.end42.i.cleanup.sink.split_crit_edge, %do.end.i
  %retval.0.ph = phi i32 [ -19, %do.end9 ], [ -19, %do.end.i ], [ -16, %if.then44.i ], [ -16, %if.end42.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hl_device_fini(ptr noundef nonnull %1) #8
  %call1 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hl_devs_idr_lock, i32 noundef 0) #8
  %id.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 75
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %4 to i32
  %call.i = tail call ptr @idr_remove(ptr noundef nonnull @hl_devs_idr, i32 noundef %conv.i) #8
  %id_control.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 76
  %5 = ptrtoint ptr %id_control.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %id_control.i, align 2
  %conv1.i = zext i16 %6 to i32
  %call2.i = tail call ptr @idr_remove(ptr noundef nonnull @hl_devs_idr, i32 noundef %conv1.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @hl_devs_idr_lock) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_device_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_pci_err_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %do.end5
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end5, %entry.sw.epilog.sink.split_crit_edge
  %.str.46.sink = phi ptr [ @.str.46, %do.end5 ], [ @.str.42, %entry.sw.epilog.sink.split_crit_edge ]
  %result.0.ph = phi i32 [ 4, %do.end5 ], [ 3, %entry.sw.epilog.sink.split_crit_edge ]
  %dev6 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull %.str.46.sink) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ %result.0.ph, %sw.epilog.sink.split ]
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 8
  %halt_engines = getelementptr inbounds %struct.hl_asic_funcs, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %halt_engines to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %halt_engines, align 4
  tail call void %8(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %sw.epilog ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hl_pci_err_slot_reset(ptr nocapture noundef readnone %pdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_pci_err_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.48) #11
  %call1 = tail call i32 @hl_device_resume(ptr noundef %1) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_pmops_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_pmops_suspend.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_pmops_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hl_pmops_suspend.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.52) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @hl_device_suspend(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ 0, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_pmops_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_pmops_resume.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_pmops_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hl_pmops_resume.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.56) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @hl_device_resume(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ 0, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !78, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !96, !98, !100, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !181, !182, !183, !185, !186}
!llvm.named.register.sp = !{!187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__UNIQUE_ID_author299, !1, !"__UNIQUE_ID_author299", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description300, !3, !"__UNIQUE_ID_description300", i1 false, i1 false}
!3 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file301, !5, !"__UNIQUE_ID_file301", i1 false, i1 false}
!5 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license302, !5, !"__UNIQUE_ID_license302", i1 false, i1 false}
!7 = !{ptr @__param_timeout_locked, !8, !"__param_timeout_locked", i1 false, i1 false}
!8 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 35, i32 1}
!9 = !{ptr @__UNIQUE_ID_timeout_lockedtype303, !8, !"__UNIQUE_ID_timeout_lockedtype303", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_timeout_locked304, !11, !"__UNIQUE_ID_timeout_locked304", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 36, i32 1}
!12 = !{ptr @__param_reset_on_lockup, !13, !"__param_reset_on_lockup", i1 false, i1 false}
!13 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 39, i32 1}
!14 = !{ptr @__UNIQUE_ID_reset_on_lockuptype305, !13, !"__UNIQUE_ID_reset_on_lockuptype305", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_reset_on_lockup306, !16, !"__UNIQUE_ID_reset_on_lockup306", i1 false, i1 false}
!16 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 40, i32 1}
!17 = !{ptr @__param_memory_scrub, !18, !"__param_memory_scrub", i1 false, i1 false}
!18 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 43, i32 1}
!19 = !{ptr @__UNIQUE_ID_memory_scrubtype307, !18, !"__UNIQUE_ID_memory_scrubtype307", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_memory_scrub308, !21, !"__UNIQUE_ID_memory_scrub308", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 44, i32 1}
!22 = !{ptr @__param_boot_error_status_mask, !23, !"__param_boot_error_status_mask", i1 false, i1 false}
!23 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 47, i32 1}
!24 = !{ptr @__UNIQUE_ID_boot_error_status_masktype309, !23, !"__UNIQUE_ID_boot_error_status_masktype309", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_boot_error_status_mask310, !26, !"__UNIQUE_ID_boot_error_status_mask310", i1 false, i1 false}
!26 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 48, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 125, i32 3}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hl_device_open._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @hl_device_open._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @hl_device_open.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 137, i32 2}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 149, i32 3}
!38 = !{ptr @hl_device_open._rs, !37, !"_rs", i1 false, i1 false}
!39 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hl_device_open._entry.5, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @hl_device_open._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @hl_device_open._rs.10, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 157, i32 3}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hl_device_open.descriptor, !45, !"descriptor", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 166, i32 3}
!51 = !{ptr @hl_device_open._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hl_device_open._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 208, i32 3}
!55 = !{ptr @hl_device_open_ctrl._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hl_device_open_ctrl._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @hl_device_open_ctrl._rs, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 230, i32 3}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @hl_device_open_ctrl._entry.17, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @hl_device_open_ctrl._entry_ptr.19, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 654, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hl_exit.__UNIQUE_ID_ddebug314, !63, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!66 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__initcall__kmod_habanalabs__315_657_hl_init6, !68, !"__initcall__kmod_habanalabs__315_657_hl_init6", i1 false, i1 false}
!68 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 657, i32 1}
!69 = !{ptr @__exitcall_hl_exit, !70, !"__exitcall_hl_exit", i1 false, i1 false}
!70 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 658, i32 1}
!71 = !{ptr @hl_major, !72, !"hl_major", i1 false, i1 false}
!72 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 25, i32 12}
!73 = !{ptr @hl_class, !74, !"hl_class", i1 false, i1 false}
!74 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 26, i32 22}
!75 = !{ptr @memory_scrub, !76, !"memory_scrub", i1 false, i1 false}
!76 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 32, i32 12}
!77 = !{ptr @__param_str_timeout_locked, !8, !"__param_str_timeout_locked", i1 false, i1 false}
!78 = !{ptr @timeout_locked, !79, !"timeout_locked", i1 false, i1 false}
!79 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 30, i32 12}
!80 = !{ptr @__param_str_reset_on_lockup, !13, !"__param_str_reset_on_lockup", i1 false, i1 false}
!81 = !{ptr @reset_on_lockup, !82, !"reset_on_lockup", i1 false, i1 false}
!82 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 31, i32 12}
!83 = !{ptr @__param_str_memory_scrub, !18, !"__param_str_memory_scrub", i1 false, i1 false}
!84 = !{ptr @__param_str_boot_error_status_mask, !23, !"__param_str_boot_error_status_mask", i1 false, i1 false}
!85 = !{ptr @boot_error_status_mask, !86, !"boot_error_status_mask", i1 false, i1 false}
!86 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 33, i32 14}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 28, i32 8}
!89 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @hl_devs_idr_lock, !88, !"hl_devs_idr_lock", i1 false, i1 false}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 27, i32 8}
!93 = !{ptr @hl_devs_idr, !92, !"hl_devs_idr", i1 false, i1 false}
!94 = !{ptr @hl_pci_driver, !95, !"hl_pci_driver", i1 false, i1 false}
!95 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 576, i32 26}
!96 = !{ptr @ids, !97, !"ids", i1 false, i1 false}
!97 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 57, i32 35}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 451, i32 2}
!100 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @hl_pci_probe._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @hl_pci_probe._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 465, i32 3}
!106 = !{ptr @hl_pci_probe._entry.29, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hl_pci_probe._entry_ptr.31, !105, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 329, i32 54}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 330, i32 51}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 331, i32 54}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 332, i32 54}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 334, i32 6}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 341, i32 3}
!120 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @create_hdev._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @create_hdev._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 367, i32 4}
!125 = !{ptr @create_hdev._entry.39, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @create_hdev._entry_ptr.41, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @hl_pci_err_handler, !128, !"hl_pci_err_handler", i1 false, i1 false}
!128 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 570, i32 40}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 521, i32 3}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @hl_pci_err_detected._entry, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @hl_pci_err_detected._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 526, i32 3}
!137 = !{ptr @hl_pci_err_detected._entry.45, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @hl_pci_err_detected._entry_ptr.47, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 549, i32 2}
!141 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @hl_pci_err_resume._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @hl_pci_err_resume._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @hl_pm_ops, !145, !"hl_pm_ops", i1 false, i1 false}
!145 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 565, i32 32}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 412, i32 2}
!148 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @hl_pmops_suspend.__UNIQUE_ID_ddebug311, !147, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!150 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 415, i32 3}
!153 = !{ptr @hl_pmops_suspend._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @hl_pmops_suspend._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 426, i32 2}
!157 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @hl_pmops_resume.__UNIQUE_ID_ddebug312, !156, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!159 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 429, i32 3}
!162 = !{ptr @hl_pmops_resume._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @hl_pmops_resume._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 598, i32 2}
!166 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @hl_init._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @hl_init._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 602, i32 3}
!171 = !{ptr @hl_init._entry.60, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @hl_init._entry_ptr.62, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @hl_init.__key, !174, !"__key", i1 false, i1 false}
!174 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 608, i32 13}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 610, i32 3}
!177 = !{ptr @hl_init._entry.63, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @hl_init._entry_ptr.65, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 619, i32 3}
!181 = !{ptr @hl_init._entry.66, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @hl_init._entry_ptr.68, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/misc/habanalabs/common/habanalabs_drv.c", i32 623, i32 2}
!185 = !{ptr @hl_init.__UNIQUE_ID_ddebug313, !184, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!186 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!187 = !{!"sp"}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"auto-init"}
!198 = !{i64 2148991920, i64 2148991925, i64 2148991938, i64 2148991982, i64 2148992016, i64 2148992037}
