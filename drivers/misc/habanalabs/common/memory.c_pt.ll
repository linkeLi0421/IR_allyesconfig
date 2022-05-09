; ModuleID = '/llk/IR_all_yes/drivers/misc/habanalabs/common/memory.c_pt.bc'
source_filename = "../drivers/misc/habanalabs/common/memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_ctx = type { [128 x %struct.hlist_head], [128 x %struct.hlist_head], ptr, ptr, %struct.kref, ptr, [3 x ptr], %struct.mutex, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.hl_cs_counters_atomic, ptr, %struct.hl_encaps_signals_mgr, i64, ptr, %struct.spinlock, %struct.atomic64_t, %struct.atomic_t, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hl_cs_counters_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.hl_encaps_signals_mgr = type { %struct.spinlock, %struct.idr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.hl_va_range = type { %struct.mutex, %struct.list_head, i64, i64, i32 }
%struct.hl_device = type { ptr, [6 x i64], [6 x ptr], ptr, %struct.cdev, %struct.cdev, ptr, ptr, %struct.delayed_work, %struct.hl_device_reset_work, [32 x i8], [5 x [32 x i8]], i32, ptr, ptr, %struct.hl_user_interrupt, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.hl_cb_mgr, %struct.hl_eq, ptr, ptr, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.asic_fixed_properties, ptr, ptr, %struct.hl_vm, ptr, ptr, %struct.hl_dbg_device_entry, %struct.list_head, %struct.spinlock, ptr, i32, ptr, i64, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.hl_cs_counters_atomic, %struct.hl_mmu_priv, [2 x %struct.hl_mmu_funcs], %struct.fw_load_mgr, [4 x %struct.pci_mem_region], %struct.hl_state_dump_specs, [2 x %struct.multi_cs_completion], %struct.hl_clk_throttle, %struct.last_error_session_info, %struct.hl_reset_info, ptr, %struct.atomic64_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hl_device_reset_work = type { ptr, %struct.delayed_work, ptr, i32 }
%struct.hl_user_interrupt = type { ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.hl_cb_mgr = type { %struct.spinlock, %struct.idr }
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
%struct.hl_state_dump_specs_funcs = type { ptr, ptr, ptr, ptr }
%struct.multi_cs_completion = type { %struct.completion, %struct.spinlock, i64, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hl_clk_throttle = type { [2 x %struct.hl_clk_throttle_timestamp], %struct.mutex, i32, i32 }
%struct.hl_clk_throttle_timestamp = type { i64, i64 }
%struct.last_error_session_info = type { i64, i64, i64, %struct.atomic_t, %struct.atomic_t, i64, i64, i16, i16, i8, i8 }
%struct.hl_reset_info = type { %struct.spinlock, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hl_vm_va_block = type { %struct.list_head, i64, i64, i64 }
%struct.hl_fpriv = type { ptr, ptr, ptr, ptr, %struct.hl_ctx_mgr, %struct.hl_cb_mgr, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex }
%struct.hl_ctx_mgr = type { %struct.mutex, %struct.idr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.hl_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hl_vm_hw_block_list_node = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.hl_mem_in = type { %union.anon.101, i32, i32, i32, i32 }
%union.anon.101 = type { %struct.anon.105 }
%struct.anon.105 = type { i64, i64, i64 }
%struct.anon.104 = type { i64, i64 }
%struct.hl_vm_phys_pg_pack = type { i32, ptr, i64, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.anon.110 = type { i64, i32, i32 }
%struct.anon.108 = type { i64, i64 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.hl_userptr = type { i32, %struct.list_head, ptr, i32, ptr, i32, %struct.list_head, i32, i64, i64, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.hl_vm_hash_node = type { %struct.hlist_node, i64, ptr }
%struct.hl_dmabuf_priv = type { ptr, ptr, ptr, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.112, i8 }
%union.anon.112 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__UNIQUE_ID_import_ns299 = internal constant [29 x i8] c"habanalabs.import_ns=DMA_BUF\00", section ".modinfo", align 1
@hl_unreserve_va_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot find va_range for va %#llx size %llu\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hl_unreserve_va_block\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/misc/habanalabs/common/memory.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hl_unreserve_va_block._entry_ptr = internal global ptr @hl_unreserve_va_block._entry, section ".printk_index", align 4
@hl_unreserve_va_block._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 807, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"add va block failed for vaddr: 0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hl_unreserve_va_block._entry_ptr.8 = internal global ptr @hl_unreserve_va_block._entry.5, section ".printk_index", align 4
@hl_hw_block_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"user pointer is invalid - 0x%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hl_hw_block_mmap\00", [47 x i8] zeroinitializer }, align 32
@hl_hw_block_mmap._entry_ptr = internal global ptr @hl_hw_block_mmap._entry, section ".printk_index", align 4
@hw_block_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @hw_block_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hl_mem_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hl_mem_ioctl = private unnamed_addr constant [13 x i8] c"hl_mem_ioctl\00", align 1
@hl_mem_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.hl_mem_ioctl, ptr @.str.2, i32 2055, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device is %s. Can't execute MEMORY IOCTL\0A\00", [54 x i8] zeroinitializer }, align 32
@hl_mem_ioctl._entry_ptr = internal global ptr @hl_mem_ioctl._entry, section ".printk_index", align 4
@hl_mem_ioctl._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.hl_mem_ioctl, ptr @.str.2, i32 2066, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"alloc size must be larger than 0\0A\00", [62 x i8] zeroinitializer }, align 32
@hl_mem_ioctl._entry_ptr.15 = internal global ptr @hl_mem_ioctl._entry.13, section ".printk_index", align 4
@hl_mem_ioctl.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @__func__.hl_mem_ioctl, ptr @.str.2, ptr @.str.17, i8 2, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"habanalabs\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DRAM alloc is not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@hl_mem_ioctl.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @__func__.hl_mem_ioctl, ptr @.str.2, ptr @.str.17, i8 2, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hl_mem_ioctl._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.hl_mem_ioctl, ptr @.str.2, i32 2158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown opcode for memory IOCTL\0A\00", [63 x i8] zeroinitializer }, align 32
@hl_mem_ioctl._entry_ptr.20 = internal global ptr @hl_mem_ioctl._entry.18, section ".printk_index", align 4
@hl_pin_host_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"size to pin is invalid - %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hl_pin_host_memory\00", [45 x i8] zeroinitializer }, align 32
@hl_pin_host_memory._entry_ptr = internal global ptr @hl_pin_host_memory._entry, section ".printk_index", align 4
@hl_pin_host_memory._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 2247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"user pointer 0x%llx + %llu causes integer overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@hl_pin_host_memory._entry_ptr.25 = internal global ptr @hl_pin_host_memory._entry.23, section ".printk_index", align 4
@hl_pin_host_memory._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 2271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to get user memory for address 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@hl_pin_host_memory._entry_ptr.28 = internal global ptr @hl_pin_host_memory._entry.26, section ".printk_index", align 4
@hl_vm_ctx_fini.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 2, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hl_vm_ctx_fini\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"user released device without removing its memory mappings\0A\00", [37 x i8] zeroinitializer }, align 32
@hl_vm_ctx_fini.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 2, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"hl_mem_hash_node of vaddr 0x%llx of asid %d is still alive\0A\00", [36 x i8] zeroinitializer }, align 32
@hl_vm_ctx_fini.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 2, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"page list 0x%px of asid %d is still alive\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_vm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 2701, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create dram page pool\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hl_vm_init\00", [21 x i8] zeroinitializer }, align 32
@hl_vm_init._entry_ptr = internal global ptr @hl_vm_init._entry, section ".printk_index", align 4
@hl_vm_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 2713, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to add memory to dram page pool %d\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_vm_init._entry_ptr.37 = internal global ptr @hl_vm_init._entry.35, section ".printk_index", align 4
@hl_vm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vm->idr_lock\00", [18 x i8] zeroinitializer }, align 32
@hl_vm_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 2754, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dram_pg_pool was not destroyed on %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hl_vm_fini\00", [21 x i8] zeroinitializer }, align 32
@hl_vm_fini._entry_ptr = internal global ptr @hl_vm_fini._entry, section ".printk_index", align 4
@hl_hw_block_mem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ctx->hw_block_list_lock\00", [39 x i8] zeroinitializer }, align 32
@hl_hw_block_mem_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 2784, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HW block mem list isn't empty\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hl_hw_block_mem_fini\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@hl_hw_block_mem_fini._entry_ptr = internal global ptr @hl_hw_block_mem_fini._entry, section ".printk_index", align 4
@get_va_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Hint address 0x%llx is not page aligned - cannot be respected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_va_block\00", [19 x i8] zeroinitializer }, align 32
@get_va_block._entry_ptr = internal global ptr @get_va_block._entry, section ".printk_index", align 4
@get_va_block.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Hint address 0x%llx will be ignored because it is not aligned\0A\00", [33 x i8] zeroinitializer }, align 32
@get_va_block._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.2, i32 682, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no available va block for size %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@get_va_block._entry_ptr.50 = internal global ptr @get_va_block._entry.48, section ".printk_index", align 4
@get_va_block._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.2, i32 692, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Hint address 0x%llx could not be respected\0A\00", [52 x i8] zeroinitializer }, align 32
@get_va_block._entry_ptr.53 = internal global ptr @get_va_block._entry.51, section ".printk_index", align 4
@add_va_block_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"block crossing ranges at start 0x%llx, end 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"add_va_block_locked\00", [44 x i8] zeroinitializer }, align 32
@add_va_block_locked._entry_ptr = internal global ptr @add_va_block_locked._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_ioctl_no_mmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.56, ptr @.str.2, i32 1979, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mem_ioctl_no_mmu\00", [47 x i8] zeroinitializer }, align 32
@mem_ioctl_no_mmu._entry_ptr = internal global ptr @mem_ioctl_no_mmu._entry, section ".printk_index", align 4
@mem_ioctl_no_mmu._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.56, ptr @.str.2, i32 2033, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mem_ioctl_no_mmu._entry_ptr.58 = internal global ptr @mem_ioctl_no_mmu._entry.57, section ".printk_index", align 4
@get_paddr_from_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1039, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no match for handle %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_paddr_from_handle\00", [42 x i8] zeroinitializer }, align 32
@get_paddr_from_handle._entry_ptr = internal global ptr @get_paddr_from_handle._entry, section ".printk_index", align 4
@alloc_device_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot allocate 0 bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alloc_device_memory\00", [44 x i8] zeroinitializer }, align 32
@alloc_device_memory._entry_ptr = internal global ptr @alloc_device_memory._entry, section ".printk_index", align 4
@alloc_device_memory._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"failed to allocate %llu contiguous pages with total size of %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@alloc_device_memory._entry_ptr.65 = internal global ptr @alloc_device_memory._entry.63, section ".printk_index", align 4
@alloc_device_memory._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to allocate device memory (out of memory)\0A\00", [46 x i8] zeroinitializer }, align 32
@alloc_device_memory._entry_ptr.68 = internal global ptr @alloc_device_memory._entry.66, section ".printk_index", align 4
@alloc_device_memory._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get handle for page\0A\00", [33 x i8] zeroinitializer }, align 32
@alloc_device_memory._entry_ptr.71 = internal global ptr @alloc_device_memory._entry.69, section ".printk_index", align 4
@free_device_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"handle %u is mapped, cannot free\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"free_device_memory\00", [45 x i8] zeroinitializer }, align 32
@free_device_memory._entry_ptr = internal global ptr @free_device_memory._entry, section ".printk_index", align 4
@free_device_memory.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"handle %u is exported, cannot free\0A\00", [60 x i8] zeroinitializer }, align 32
@free_device_memory._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"free device memory failed, no match for handle %u\0A\00", [45 x i8] zeroinitializer }, align 32
@free_device_memory._entry_ptr.77 = internal global ptr @free_device_memory._entry.75, section ".printk_index", align 4
@map_device_va._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1090, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get userptr from va\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"map_device_va\00", [18 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr = internal global ptr @map_device_va._entry, section ".printk_index", align 4
@map_device_va._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to init page pack for vaddr 0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.82 = internal global ptr @map_device_va._entry.80, section ".printk_index", align 4
@map_device_va._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.79, ptr @.str.2, i32 1136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.84 = internal global ptr @map_device_va._entry.83, section ".printk_index", align 4
@map_device_va._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.79, ptr @.str.2, i32 1163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to map memory, handle %u is not shared\0A\00", [49 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.87 = internal global ptr @map_device_va._entry.85, section ".printk_index", align 4
@map_device_va._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.79, ptr @.str.2, i32 1179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Hint address 0x%llx cannot be respected because source memory is not aligned 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.90 = internal global ptr @map_device_va._entry.88, section ".printk_index", align 4
@map_device_va.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.79, ptr @.str.2, ptr @.str.91, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Hint address 0x%llx will be ignored because source memory is not aligned 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@map_device_va._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.2, i32 1193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no available va block for handle %u\0A\00", [59 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.94 = internal global ptr @map_device_va._entry.92, section ".printk_index", align 4
@map_device_va._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.79, ptr @.str.2, i32 1204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mapping page pack failed for handle %u\0A\00", [56 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.97 = internal global ptr @map_device_va._entry.95, section ".printk_index", align 4
@map_device_va._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.79, ptr @.str.2, i32 1237, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"release va block failed for handle 0x%x, vaddr: 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@map_device_va._entry_ptr.100 = internal global ptr @map_device_va._entry.98, section ".printk_index", align 4
@dma_map_host_va._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to pin host memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_map_host_va\00", [16 x i8] zeroinitializer }, align 32
@dma_map_host_va._entry_ptr = internal global ptr @dma_map_host_va._entry, section ".printk_index", align 4
@dma_map_host_va._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to map sgt with DMA region\0A\00", [61 x i8] zeroinitializer }, align 32
@dma_map_host_va._entry_ptr.105 = internal global ptr @dma_map_host_va._entry.103, section ".printk_index", align 4
@map_phys_pg_pack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 950, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"map failed for handle %u, npages: %llu, mapped: %llu\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"map_phys_pg_pack\00", [47 x i8] zeroinitializer }, align 32
@map_phys_pg_pack._entry_ptr = internal global ptr @map_phys_pg_pack._entry, section ".printk_index", align 4
@map_phys_pg_pack._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@map_phys_pg_pack._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 970, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"failed to unmap handle %u, va: 0x%llx, pa: 0x%llx, page size: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@map_phys_pg_pack._entry_ptr.110 = internal global ptr @map_phys_pg_pack._entry.108, section ".printk_index", align 4
@unmap_device_va._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1289, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unmap failed, no mem hnode for vaddr 0x%llx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unmap_device_va\00", [16 x i8] zeroinitializer }, align 32
@unmap_device_va._entry_ptr = internal global ptr @unmap_device_va._entry, section ".printk_index", align 4
@unmap_device_va._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.112, ptr @.str.2, i32 1307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@unmap_device_va._entry_ptr.114 = internal global ptr @unmap_device_va._entry.113, section ".printk_index", align 4
@unmap_device_va._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.112, ptr @.str.2, i32 1323, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unmap failed, unknown vm desc for vaddr 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@unmap_device_va._entry_ptr.117 = internal global ptr @unmap_device_va._entry.115, section ".printk_index", align 4
@unmap_device_va._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.112, ptr @.str.2, i32 1329, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vaddr 0x%llx is not mapped\0A\00", [36 x i8] zeroinitializer }, align 32
@unmap_device_va._entry_ptr.120 = internal global ptr @unmap_device_va._entry.118, section ".printk_index", align 4
@unmap_device_va._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.112, ptr @.str.2, i32 1371, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@unmap_device_va._entry_ptr.122 = internal global ptr @unmap_device_va._entry.121, section ".printk_index", align 4
@unmap_phys_pg_pack._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.unmap_phys_pg_pack = private unnamed_addr constant [19 x i8] c"unmap_phys_pg_pack\00", align 1
@unmap_phys_pg_pack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @__func__.unmap_phys_pg_pack, ptr @.str.2, i32 1011, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unmap failed for vaddr: 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@unmap_phys_pg_pack._entry_ptr = internal global ptr @unmap_phys_pg_pack._entry, section ".printk_index", align 4
@export_dmabuf_from_handle.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 1, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"export_dmabuf_from_handle\00", [38 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no match for handle 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@export_dmabuf_from_handle.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.124, ptr @.str.2, ptr @.str.126, i8 1, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no match for handle 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@export_dmabuf_from_handle.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.124, ptr @.str.2, ptr @.str.127, i8 1, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"handle 0x%llx does not represent DRAM memory\0A\00", [50 x i8] zeroinitializer }, align 32
@export_dmabuf_from_handle.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.124, ptr @.str.2, ptr @.str.128, i8 1, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"DRAM memory range 0x%llx (+0x%x) is outside of PCI BAR boundaries\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.export_dmabuf_common.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.16, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@habanalabs_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @hl_dmabuf_attach, ptr null, ptr null, ptr null, ptr @hl_map_dmabuf, ptr @hl_unmap_dmabuf, ptr @hl_release_dmabuf, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@export_dmabuf_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to export dma-buf\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"export_dmabuf_common\00", [43 x i8] zeroinitializer }, align 32
@export_dmabuf_common._entry_ptr = internal global ptr @export_dmabuf_common._entry, section ".printk_index", align 4
@export_dmabuf_common._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 1774, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to get a file descriptor for a dma-buf\0A\00", [49 x i8] zeroinitializer }, align 32
@export_dmabuf_common._entry_ptr.133 = internal global ptr @export_dmabuf_common._entry.131, section ".printk_index", align 4
@hl_map_dmabuf.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.134, ptr @.str.2, ptr @.str.135, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hl_map_dmabuf\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to map dmabuf because p2p is disabled\0A\00", [50 x i8] zeroinitializer }, align 32
@hl_map_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1698, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed (%ld) to initialize sgt for dmabuf\0A\00", [53 x i8] zeroinitializer }, align 32
@hl_map_dmabuf._entry_ptr = internal global ptr @hl_map_dmabuf._entry, section ".printk_index", align 4
@alloc_sgt_from_device_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.alloc_sgt_from_device_pages = private unnamed_addr constant [28 x i8] c"alloc_sgt_from_device_pages\00", align 1
@alloc_sgt_from_device_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @__func__.alloc_sgt_from_device_pages, ptr @.str.2, i32 1534, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dma_max_seg_size %llu can't be smaller than PAGE_SIZE\0A\00", [41 x i8] zeroinitializer }, align 32
@alloc_sgt_from_device_pages._entry_ptr = internal global ptr @alloc_sgt_from_device_pages._entry, section ".printk_index", align 4
@export_dmabuf_from_addr.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.138, ptr @.str.2, ptr @.str.139, i8 1, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"export_dmabuf_from_addr\00", [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"exported device memory address 0x%llx should be aligned to 0x%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@export_dmabuf_from_addr.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.138, ptr @.str.2, ptr @.str.140, i8 1, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"exported device memory size %llu should be equal to or greater than %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@export_dmabuf_from_addr.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.138, ptr @.str.2, ptr @.str.141, i8 1, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"DRAM memory range 0x%llx (+0x%llx) is outside of DRAM boundaries\0A\00", [62 x i8] zeroinitializer }, align 32
@export_dmabuf_from_addr.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.138, ptr @.str.2, ptr @.str.142, i8 1, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"DRAM memory range 0x%llx (+0x%llx) is outside of PCI BAR boundaries\0A\00", [59 x i8] zeroinitializer }, align 32
@get_user_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 2174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"user pointer is invalid - 0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_user_memory\00", [16 x i8] zeroinitializer }, align 32
@get_user_memory._entry_ptr = internal global ptr @get_user_memory._entry, section ".printk_index", align 4
@get_user_memory._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 2190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Failed (%d) to pin host memory with user ptr 0x%llx, size 0x%llx, npages %d\0A\00", [51 x i8] zeroinitializer }, align 32
@get_user_memory._entry_ptr.147 = internal global ptr @get_user_memory._entry.145, section ".printk_index", align 4
@get_user_memory._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.2, i32 2203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create SG table from pages\0A\00", [58 x i8] zeroinitializer }, align 32
@get_user_memory._entry_ptr.150 = internal global ptr @get_user_memory._entry.148, section ".printk_index", align 4
@vm_ctx_init_with_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 2480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init context %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vm_ctx_init_with_ranges\00", [40 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry_ptr = internal global ptr @vm_ctx_init_with_ranges._entry, section ".printk_index", align 4
@vm_ctx_init_with_ranges.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ctx->mem_hash_lock\00", [44 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges.__key.154 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.155 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"&ctx->va_range[HL_VA_RANGE_TYPE_HOST]->lock\00", [52 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.2, i32 2492, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to init host vm range\0A\00", [34 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry_ptr.158 = internal global ptr @vm_ctx_init_with_ranges._entry.156, section ".printk_index", align 4
@vm_ctx_init_with_ranges.__key.159 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.160 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"&ctx->va_range[HL_VA_RANGE_TYPE_HOST_HUGE]->lock\00", [47 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.152, ptr @.str.2, i32 2505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to init host huge vm range\0A\00", [61 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry_ptr.163 = internal global ptr @vm_ctx_init_with_ranges._entry.161, section ".printk_index", align 4
@vm_ctx_init_with_ranges.__key.164 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.165 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"&ctx->va_range[HL_VA_RANGE_TYPE_DRAM]->lock\00", [52 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.152, ptr @.str.2, i32 2519, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to init dram vm range\0A\00", [34 x i8] zeroinitializer }, align 32
@vm_ctx_init_with_ranges._entry_ptr.168 = internal global ptr @vm_ctx_init_with_ranges._entry.166, section ".printk_index", align 4
@va_range_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 2399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too small vm range for va list\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"va_range_init\00", [18 x i8] zeroinitializer }, align 32
@va_range_init._entry_ptr = internal global ptr @va_range_init._entry, section ".printk_index", align 4
@va_range_init._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 2406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to init host va list\0A\00", [35 x i8] zeroinitializer }, align 32
@va_range_init._entry_ptr.173 = internal global ptr @va_range_init._entry.171, section ".printk_index", align 4
@free_phys_pg_pack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to scrub contiguous device memory\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"free_phys_pg_pack\00", [46 x i8] zeroinitializer }, align 32
@free_phys_pg_pack._entry_ptr = internal global ptr @free_phys_pg_pack._entry, section ".printk_index", align 4
@free_phys_pg_pack._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to scrub device memory\0A\00", [33 x i8] zeroinitializer }, align 32
@free_phys_pg_pack._entry_ptr.178 = internal global ptr @free_phys_pg_pack._entry.176, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.181 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 797, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 806, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1456, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [16 x i8] c"hw_block_vm_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1426, i32 42 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2053, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2065, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2085, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2158, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2235, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2245, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2269, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2628, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2632, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2650, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2701, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2712, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2717, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2753, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2768, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2784, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 623, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 629, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 681, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 690, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 488, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1978, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2033, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1039, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 73, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 82, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 118, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 134, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 347, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 354, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 373, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1090, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1097, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1135, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1161, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1177, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1183, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1192, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1203, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1235, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 194, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 201, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 947, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 967, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1287, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1305, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1321, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1329, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1369, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1010, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1897, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1906, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1916, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1931, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant [22 x i8] c"habanalabs_dmabuf_ops\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1746, i32 33 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1768, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1774, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1678, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1698, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1532, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1818, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1825, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1834, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 1846, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2174, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2188, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2203, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2480, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2484, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2487, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2492, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2497, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2504, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2514, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2519, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2399, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 2406, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 289, i32 5 }
@___asan_gen_.713 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.717 = private constant [43 x i8] c"../drivers/misc/habanalabs/common/memory.c\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 307, i32 6 }
@___asan_gen_.719 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.723, i32 378, i32 2 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_import_ns299, ptr @add_va_block_locked._entry, ptr @add_va_block_locked._entry_ptr, ptr @alloc_device_memory._entry, ptr @alloc_device_memory._entry.63, ptr @alloc_device_memory._entry.66, ptr @alloc_device_memory._entry.69, ptr @alloc_device_memory._entry_ptr, ptr @alloc_device_memory._entry_ptr.65, ptr @alloc_device_memory._entry_ptr.68, ptr @alloc_device_memory._entry_ptr.71, ptr @alloc_sgt_from_device_pages._entry, ptr @alloc_sgt_from_device_pages._entry_ptr, ptr @dma_map_host_va._entry, ptr @dma_map_host_va._entry.103, ptr @dma_map_host_va._entry_ptr, ptr @dma_map_host_va._entry_ptr.105, ptr @export_dmabuf_common._entry, ptr @export_dmabuf_common._entry.131, ptr @export_dmabuf_common._entry_ptr, ptr @export_dmabuf_common._entry_ptr.133, ptr @free_device_memory._entry, ptr @free_device_memory._entry.75, ptr @free_device_memory._entry_ptr, ptr @free_device_memory._entry_ptr.77, ptr @free_phys_pg_pack._entry, ptr @free_phys_pg_pack._entry.176, ptr @free_phys_pg_pack._entry_ptr, ptr @free_phys_pg_pack._entry_ptr.178, ptr @get_paddr_from_handle._entry, ptr @get_paddr_from_handle._entry_ptr, ptr @get_user_memory._entry, ptr @get_user_memory._entry.145, ptr @get_user_memory._entry.148, ptr @get_user_memory._entry_ptr, ptr @get_user_memory._entry_ptr.147, ptr @get_user_memory._entry_ptr.150, ptr @get_va_block._entry, ptr @get_va_block._entry.48, ptr @get_va_block._entry.51, ptr @get_va_block._entry_ptr, ptr @get_va_block._entry_ptr.50, ptr @get_va_block._entry_ptr.53, ptr @hl_hw_block_mem_fini._entry, ptr @hl_hw_block_mem_fini._entry_ptr, ptr @hl_hw_block_mmap._entry, ptr @hl_hw_block_mmap._entry_ptr, ptr @hl_map_dmabuf._entry, ptr @hl_map_dmabuf._entry_ptr, ptr @hl_mem_ioctl._entry, ptr @hl_mem_ioctl._entry.13, ptr @hl_mem_ioctl._entry.18, ptr @hl_mem_ioctl._entry_ptr, ptr @hl_mem_ioctl._entry_ptr.15, ptr @hl_mem_ioctl._entry_ptr.20, ptr @hl_pin_host_memory._entry, ptr @hl_pin_host_memory._entry.23, ptr @hl_pin_host_memory._entry.26, ptr @hl_pin_host_memory._entry_ptr, ptr @hl_pin_host_memory._entry_ptr.25, ptr @hl_pin_host_memory._entry_ptr.28, ptr @hl_unreserve_va_block._entry, ptr @hl_unreserve_va_block._entry.5, ptr @hl_unreserve_va_block._entry_ptr, ptr @hl_unreserve_va_block._entry_ptr.8, ptr @hl_vm_fini._entry, ptr @hl_vm_fini._entry_ptr, ptr @hl_vm_init._entry, ptr @hl_vm_init._entry.35, ptr @hl_vm_init._entry_ptr, ptr @hl_vm_init._entry_ptr.37, ptr @map_device_va._entry, ptr @map_device_va._entry.80, ptr @map_device_va._entry.83, ptr @map_device_va._entry.85, ptr @map_device_va._entry.88, ptr @map_device_va._entry.92, ptr @map_device_va._entry.95, ptr @map_device_va._entry.98, ptr @map_device_va._entry_ptr, ptr @map_device_va._entry_ptr.100, ptr @map_device_va._entry_ptr.82, ptr @map_device_va._entry_ptr.84, ptr @map_device_va._entry_ptr.87, ptr @map_device_va._entry_ptr.90, ptr @map_device_va._entry_ptr.94, ptr @map_device_va._entry_ptr.97, ptr @map_phys_pg_pack._entry, ptr @map_phys_pg_pack._entry.108, ptr @map_phys_pg_pack._entry_ptr, ptr @map_phys_pg_pack._entry_ptr.110, ptr @mem_ioctl_no_mmu._entry, ptr @mem_ioctl_no_mmu._entry.57, ptr @mem_ioctl_no_mmu._entry_ptr, ptr @mem_ioctl_no_mmu._entry_ptr.58, ptr @unmap_device_va._entry, ptr @unmap_device_va._entry.113, ptr @unmap_device_va._entry.115, ptr @unmap_device_va._entry.118, ptr @unmap_device_va._entry.121, ptr @unmap_device_va._entry_ptr, ptr @unmap_device_va._entry_ptr.114, ptr @unmap_device_va._entry_ptr.117, ptr @unmap_device_va._entry_ptr.120, ptr @unmap_device_va._entry_ptr.122, ptr @unmap_phys_pg_pack._entry, ptr @unmap_phys_pg_pack._entry_ptr, ptr @va_range_init._entry, ptr @va_range_init._entry.171, ptr @va_range_init._entry_ptr, ptr @va_range_init._entry_ptr.173, ptr @vm_ctx_init_with_ranges._entry, ptr @vm_ctx_init_with_ranges._entry.156, ptr @vm_ctx_init_with_ranges._entry.161, ptr @vm_ctx_init_with_ranges._entry.166, ptr @vm_ctx_init_with_ranges._entry_ptr, ptr @vm_ctx_init_with_ranges._entry_ptr.158, ptr @vm_ctx_init_with_ranges._entry_ptr.163, ptr @vm_ctx_init_with_ranges._entry_ptr.168, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @hw_block_vm_ops, ptr @hl_mem_ioctl._rs, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @hl_vm_init.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @hl_hw_block_mem_init.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @map_phys_pg_pack._rs, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.116, ptr @.str.119, ptr @unmap_phys_pg_pack._rs, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @habanalabs_dmabuf_ops, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @alloc_sgt_from_device_pages._rs, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @vm_ctx_init_with_ranges.__key, ptr @.str.153, ptr @vm_ctx_init_with_ranges.__key.154, ptr @.str.155, ptr @.str.157, ptr @vm_ctx_init_with_ranges.__key.159, ptr @.str.160, ptr @.str.162, ptr @vm_ctx_init_with_ranges.__key.164, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @xa_init_flags.__key, ptr @.str.179], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_unreserve_va_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_unreserve_va_block._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_block_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_block_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mem_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mem_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mem_ioctl._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_mem_ioctl._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pin_host_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pin_host_memory._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_pin_host_memory._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_vm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_vm_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_vm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_vm_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_block_mem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_hw_block_mem_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_va_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_va_block._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_va_block._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_va_block_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_ioctl_no_mmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_ioctl_no_mmu._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_paddr_from_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_device_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_device_memory._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_device_memory._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_device_memory._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_device_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_device_memory._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_device_va._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_map_host_va._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_map_host_va._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_phys_pg_pack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_phys_pg_pack._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_phys_pg_pack._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_device_va._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_device_va._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_device_va._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_device_va._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_device_va._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_phys_pg_pack._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unmap_phys_pg_pack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @habanalabs_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @export_dmabuf_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @export_dmabuf_common._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hl_map_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_sgt_from_device_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_sgt_from_device_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_user_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_user_memory._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_user_memory._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges.__key.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges.__key.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges.__key.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ctx_init_with_ranges._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_range_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_range_init._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_phys_pg_pack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_phys_pg_pack._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hl_reserve_va_block(ptr noundef %hdev, ptr nocapture noundef readonly %ctx, i32 noundef %type, i32 noundef %size, i32 noundef %alignment) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %page_size = getelementptr inbounds %struct.hl_va_range, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 8
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %alignment)
  %conv = zext i32 %size to i64
  %call = tail call fastcc i64 @get_va_block(ptr noundef %hdev, ptr noundef %1, i64 noundef %conv, i64 noundef 0, i32 noundef %4, i32 noundef %type, i32 noundef 0)
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_va_block(ptr noundef %hdev, ptr noundef %va_range, i64 noundef %size, i64 noundef %hint_addr, i32 noundef %va_block_align, i32 noundef %range_type, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram_hints_align_mask = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 27
  %0 = ptrtoint ptr %dram_hints_align_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dram_hints_align_mask, align 8
  %page_size = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 4
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %is_power_of_2.exit.thread, label %is_power_of_2.exit

is_power_of_2.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1873 = tail call zeroext i1 @hl_is_dram_va(ptr noundef %hdev, i64 noundef %hint_addr) #11
  %and874 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and874)
  %tobool.not875 = icmp eq i32 %and874, 0
  br label %if.else

is_power_of_2.exit:                               ; preds = %entry
  %4 = tail call i32 @llvm.ctpop.i32(i32 %3) #11, !range !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i = icmp ult i32 %4, 2
  %call1 = tail call zeroext i1 @hl_is_dram_va(ptr noundef %hdev, i64 noundef %hint_addr) #11
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp1.i, label %land.lhs.true207, label %is_power_of_2.exit.if.else_crit_edge

is_power_of_2.exit.if.else_crit_edge:             ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %is_power_of_2.exit.if.else_crit_edge, %is_power_of_2.exit.thread
  %tobool.not879 = phi i1 [ %tobool.not875, %is_power_of_2.exit.thread ], [ %tobool.not, %is_power_of_2.exit.if.else_crit_edge ]
  %call1877 = phi i1 [ %call1873, %is_power_of_2.exit.thread ], [ %call1, %is_power_of_2.exit.if.else_crit_edge ]
  %5 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page_size, align 8
  %conv6 = zext i32 %6 to i64
  %add = add nsw i64 %conv6, -1
  %sub7 = add i64 %add, %size
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub7)
  %cmp182 = icmp ult i64 %sub7, 4294967296
  br i1 %cmp182, label %if.then186, label %if.else192, !prof !358

if.then186:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv187 = trunc i64 %sub7 to i32
  %div190 = udiv i32 %conv187, %6
  %conv191 = zext i32 %div190 to i64
  br label %land.lhs.true213.critedge

if.else192:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %sub7) #14, !srcloc !359
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  br label %land.lhs.true213.critedge

land.lhs.true207:                                 ; preds = %is_power_of_2.exit
  %conv = zext i32 %va_block_align to i64
  %neg = sub nsw i64 0, %conv
  %sub208 = add i32 %va_block_align, -1
  %conv209 = zext i32 %sub208 to i64
  %and210 = and i64 %conv209, %hint_addr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and210)
  %tobool211.not = icmp eq i64 %and210, 0
  br i1 %tobool211.not, label %land.lhs.true207.if.end460_crit_edge, label %land.lhs.true207.if.then440_crit_edge

land.lhs.true207.if.then440_crit_edge:            ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then440

land.lhs.true207.if.end460_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end460

land.lhs.true213.critedge:                        ; preds = %if.else192, %if.then186
  %_tmp.0 = phi i64 [ %conv191, %if.then186 ], [ %asmresult1.i, %if.else192 ]
  %mul201 = mul i64 %_tmp.0, %conv6
  %neg203 = xor i64 %1, -1
  %and204 = and i64 %neg203, %hint_addr
  br i1 %call1877, label %land.lhs.true216, label %land.lhs.true213.critedge.if.end460_crit_edge

land.lhs.true213.critedge.if.end460_crit_edge:    ; preds = %land.lhs.true213.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end460

land.lhs.true216:                                 ; preds = %land.lhs.true213.critedge
  %8 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and204)
  %cmp419 = icmp ult i64 %and204, 4294967296
  br i1 %cmp419, label %if.then427, label %if.else433, !prof !358

if.then427:                                       ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #13
  %conv428 = trunc i64 %and204 to i32
  %rem429 = urem i32 %conv428, %9
  br label %if.end437

if.else433:                                       ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %and204) #14, !srcloc !359
  %asmresult.i861 = extractvalue { i64, i64 } %10, 0
  %shr.i863 = lshr i64 %asmresult.i861, 32
  %conv.i864 = trunc i64 %shr.i863 to i32
  br label %if.end437

if.end437:                                        ; preds = %if.else433, %if.then427
  %__rem219.0 = phi i32 [ %rem429, %if.then427 ], [ %conv.i864, %if.else433 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem219.0)
  %tobool439.not = icmp eq i32 %__rem219.0, 0
  br i1 %tobool439.not, label %if.end437.if.end460_crit_edge, label %if.end437.if.then440_crit_edge

if.end437.if.then440_crit_edge:                   ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then440

if.end437.if.end460_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end460

if.then440:                                       ; preds = %if.end437.if.then440_crit_edge, %land.lhs.true207.if.then440_crit_edge
  %size.addr.0910 = phi i64 [ %mul201, %if.end437.if.then440_crit_edge ], [ %size, %land.lhs.true207.if.then440_crit_edge ]
  %align_mask.0907 = phi i64 [ -1, %if.end437.if.then440_crit_edge ], [ %neg, %land.lhs.true207.if.then440_crit_edge ]
  %11 = phi i1 [ false, %if.end437.if.then440_crit_edge ], [ true, %land.lhs.true207.if.then440_crit_edge ]
  %tobool.not878905 = phi i1 [ %tobool.not879, %if.end437.if.then440_crit_edge ], [ %tobool.not, %land.lhs.true207.if.then440_crit_edge ]
  br i1 %tobool.not878905, label %do.body444, label %do.end

do.end:                                           ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.45, i64 noundef %hint_addr) #15
  br label %cleanup

do.body444:                                       ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_va_block.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_va_block, %if.then455)) #11
          to label %if.end460 [label %if.then455], !srcloc !360

if.then455:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #13
  %dev456 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %14 = ptrtoint ptr %dev456 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev456, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_va_block.__UNIQUE_ID_ddebug301, ptr noundef %15, ptr noundef nonnull @.str.47, i64 noundef %hint_addr) #11
  br label %if.end460

if.end460:                                        ; preds = %if.then455, %do.body444, %if.end437.if.end460_crit_edge, %land.lhs.true213.critedge.if.end460_crit_edge, %land.lhs.true207.if.end460_crit_edge
  %size.addr.0911 = phi i64 [ %mul201, %if.end437.if.end460_crit_edge ], [ %mul201, %land.lhs.true213.critedge.if.end460_crit_edge ], [ %size.addr.0910, %if.then455 ], [ %size, %land.lhs.true207.if.end460_crit_edge ], [ %size.addr.0910, %do.body444 ]
  %align_mask.0908 = phi i64 [ -1, %if.end437.if.end460_crit_edge ], [ -1, %land.lhs.true213.critedge.if.end460_crit_edge ], [ %align_mask.0907, %if.then455 ], [ %neg, %land.lhs.true207.if.end460_crit_edge ], [ %align_mask.0907, %do.body444 ]
  %16 = phi i1 [ false, %if.end437.if.end460_crit_edge ], [ false, %land.lhs.true213.critedge.if.end460_crit_edge ], [ %11, %if.then455 ], [ true, %land.lhs.true207.if.end460_crit_edge ], [ %11, %do.body444 ]
  %tobool.not880 = phi i1 [ %tobool.not879, %if.end437.if.end460_crit_edge ], [ %tobool.not879, %land.lhs.true213.critedge.if.end460_crit_edge ], [ true, %if.then455 ], [ %tobool.not, %land.lhs.true207.if.end460_crit_edge ], [ true, %do.body444 ]
  %hint_addr.addr.0 = phi i64 [ %hint_addr, %if.end437.if.end460_crit_edge ], [ %hint_addr, %land.lhs.true213.critedge.if.end460_crit_edge ], [ 0, %if.then455 ], [ %hint_addr, %land.lhs.true207.if.end460_crit_edge ], [ 0, %do.body444 ]
  tail call void @mutex_lock_nested(ptr noundef %va_range, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 1
  %17 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %17)
  %va_block.0939 = load ptr, ptr %list, align 4
  %cmp464.not940 = icmp eq ptr %va_block.0939, %list
  br i1 %cmp464.not940, label %if.end460.do.end527_crit_edge, label %for.body.lr.ph

if.end460.do.end527_crit_edge:                    ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end527

for.body.lr.ph:                                   ; preds = %if.end460
  %sub471 = add i32 %va_block_align, -1
  %conv472 = zext i32 %sub471 to i64
  %conv477 = zext i32 %va_block_align to i64
  %hints_range_reservation = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hint_addr.addr.0)
  %tobool494.not = icmp eq i64 %hint_addr.addr.0, 0
  %end_addr7.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 8, i32 1
  %hints_host_reserved_va_range.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 8
  %end_addr.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 7, i32 1
  %hints_dram_reserved_va_range.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 7
  %end_addr13.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 9, i32 1
  %hints_host_hpage_reserved_va_range.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 9
  %conv.i35.i = and i64 %size.addr.0911, 4294967295
  %add.i36.i = add nsw i64 %conv.i35.i, -1
  %add512 = add i64 %hint_addr.addr.0, %size.addr.0911
  %.not953 = xor i1 %16, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %va_block.0947 = phi ptr [ %va_block.0939, %for.body.lr.ph ], [ %va_block.0, %for.inc.for.body_crit_edge ]
  %new_va_block.0945 = phi ptr [ null, %for.body.lr.ph ], [ %new_va_block.2, %for.inc.for.body_crit_edge ]
  %reserved_valid_size.0943 = phi i64 [ 0, %for.body.lr.ph ], [ %reserved_valid_size.2, %for.inc.for.body_crit_edge ]
  %reserved_valid_start.0941 = phi i64 [ 0, %for.body.lr.ph ], [ %reserved_valid_start.2, %for.inc.for.body_crit_edge ]
  %start = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0947, i32 0, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %and473 = and i64 %19, %conv472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and473)
  %tobool474.not = icmp eq i64 %and473, 0
  %or.cond954 = select i1 %.not953, i1 true, i1 %tobool474.not
  br i1 %or.cond954, label %for.body.if.end483_crit_edge, label %if.then475

for.body.if.end483_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end483

if.then475:                                       ; preds = %for.body
  %and476 = and i64 %19, %align_mask.0908
  %add478 = add i64 %and476, %conv477
  %end = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0947, i32 0, i32 2
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add478, i64 %21)
  %cmp479 = icmp ugt i64 %add478, %21
  br i1 %cmp479, label %if.then475.for.inc_crit_edge, label %if.then475.if.end483_crit_edge

if.then475.if.end483_crit_edge:                   ; preds = %if.then475
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end483

if.then475.for.inc_crit_edge:                     ; preds = %if.then475
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end483:                                        ; preds = %if.then475.if.end483_crit_edge, %for.body.if.end483_crit_edge
  %valid_start.0 = phi i64 [ %add478, %if.then475.if.end483_crit_edge ], [ %19, %for.body.if.end483_crit_edge ]
  %end484 = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.0947, i32 0, i32 2
  %22 = ptrtoint ptr %end484 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end484, align 8
  %sub485 = sub i64 %23, %valid_start.0
  %add486 = add i64 %sub485, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add486, i64 %size.addr.0911)
  %cmp487 = icmp ult i64 %add486, %size.addr.0911
  br i1 %cmp487, label %if.end483.for.inc_crit_edge, label %if.end490

if.end483.for.inc_crit_edge:                      ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end490:                                        ; preds = %if.end483
  %24 = ptrtoint ptr %hints_range_reservation to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hints_range_reservation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool492.not = icmp ne i8 %25, 0
  %or.cond = and i1 %tobool494.not, %tobool492.not
  br i1 %or.cond, label %if.then495, label %if.end490.if.end500_crit_edge

if.end490.if.end500_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end500

if.then495:                                       ; preds = %if.end490
  %26 = zext i32 %range_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %range_type, label %if.else10.i [
    i32 2, label %if.then.i
    i32 0, label %if.then4.i
  ]

if.then.i:                                        ; preds = %if.then495
  %27 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %valid_start.0)
  %cmp.not.i.i = icmp ult i64 %28, %valid_start.0
  br i1 %cmp.not.i.i, label %if.then.i.if.end500_crit_edge, label %if.then.i.is_hint_crossing_range.exit_crit_edge

if.then.i.is_hint_crossing_range.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_hint_crossing_range.exit

if.then.i.if.end500_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end500

if.then4.i:                                       ; preds = %if.then495
  %29 = ptrtoint ptr %end_addr7.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %end_addr7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %valid_start.0)
  %cmp.not.i27.i = icmp ult i64 %30, %valid_start.0
  br i1 %cmp.not.i27.i, label %if.then4.i.if.end500_crit_edge, label %if.then4.i.is_hint_crossing_range.exit_crit_edge

if.then4.i.is_hint_crossing_range.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_hint_crossing_range.exit

if.then4.i.if.end500_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end500

if.else10.i:                                      ; preds = %if.then495
  %31 = ptrtoint ptr %end_addr13.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %end_addr13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %valid_start.0)
  %cmp.not.i34.i = icmp ult i64 %32, %valid_start.0
  br i1 %cmp.not.i34.i, label %if.else10.i.if.end500_crit_edge, label %if.else10.i.is_hint_crossing_range.exit_crit_edge

if.else10.i.is_hint_crossing_range.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_hint_crossing_range.exit

if.else10.i.if.end500_crit_edge:                  ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end500

is_hint_crossing_range.exit:                      ; preds = %if.else10.i.is_hint_crossing_range.exit_crit_edge, %if.then4.i.is_hint_crossing_range.exit_crit_edge, %if.then.i.is_hint_crossing_range.exit_crit_edge
  %hints_host_hpage_reserved_va_range.sink.i = phi ptr [ %hints_dram_reserved_va_range.i, %if.then.i.is_hint_crossing_range.exit_crit_edge ], [ %hints_host_reserved_va_range.i, %if.then4.i.is_hint_crossing_range.exit_crit_edge ], [ %hints_host_hpage_reserved_va_range.i, %if.else10.i.is_hint_crossing_range.exit_crit_edge ]
  %33 = ptrtoint ptr %hints_host_hpage_reserved_va_range.sink.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hints_host_hpage_reserved_va_range.sink.i, align 8
  %sub.i37.i = add i64 %add.i36.i, %valid_start.0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i37.i, i64 %34)
  %cmp2.i38.i.not = icmp ult i64 %sub.i37.i, %34
  br i1 %cmp2.i38.i.not, label %is_hint_crossing_range.exit.if.end500_crit_edge, label %is_hint_crossing_range.exit.for.inc_crit_edge

is_hint_crossing_range.exit.for.inc_crit_edge:    ; preds = %is_hint_crossing_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

is_hint_crossing_range.exit.if.end500_crit_edge:  ; preds = %is_hint_crossing_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end500

if.end500:                                        ; preds = %is_hint_crossing_range.exit.if.end500_crit_edge, %if.else10.i.if.end500_crit_edge, %if.then4.i.if.end500_crit_edge, %if.then.i.if.end500_crit_edge, %if.end490.if.end500_crit_edge
  %tobool501.not = icmp eq ptr %new_va_block.0945, null
  call void @__sanitizer_cov_trace_cmp8(i64 %add486, i64 %reserved_valid_size.0943)
  %cmp503 = icmp ult i64 %add486, %reserved_valid_size.0943
  %or.cond828 = select i1 %tobool501.not, i1 true, i1 %cmp503
  %reserved_valid_start.1 = select i1 %or.cond828, i64 %valid_start.0, i64 %reserved_valid_start.0941
  %reserved_valid_size.1 = select i1 %or.cond828, i64 %add486, i64 %reserved_valid_size.0943
  %new_va_block.1 = select i1 %or.cond828, ptr %va_block.0947, ptr %new_va_block.0945
  call void @__sanitizer_cov_trace_cmp8(i64 %hint_addr.addr.0, i64 %valid_start.0)
  %cmp509.not = icmp ult i64 %hint_addr.addr.0, %valid_start.0
  %or.cond829 = select i1 %tobool494.not, i1 true, i1 %cmp509.not
  call void @__sanitizer_cov_trace_cmp8(i64 %add512, i64 %23)
  %cmp514.not = icmp ugt i64 %add512, %23
  %or.cond938 = select i1 %or.cond829, i1 true, i1 %cmp514.not
  br i1 %or.cond938, label %if.end500.for.inc_crit_edge, label %if.end500.for.end_crit_edge

if.end500.for.end_crit_edge:                      ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end500.for.inc_crit_edge:                      ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end500.for.inc_crit_edge, %is_hint_crossing_range.exit.for.inc_crit_edge, %if.end483.for.inc_crit_edge, %if.then475.for.inc_crit_edge
  %reserved_valid_start.2 = phi i64 [ %reserved_valid_start.0941, %if.then475.for.inc_crit_edge ], [ %reserved_valid_start.0941, %if.end483.for.inc_crit_edge ], [ %reserved_valid_start.1, %if.end500.for.inc_crit_edge ], [ %reserved_valid_start.0941, %is_hint_crossing_range.exit.for.inc_crit_edge ]
  %reserved_valid_size.2 = phi i64 [ %reserved_valid_size.0943, %if.then475.for.inc_crit_edge ], [ %reserved_valid_size.0943, %if.end483.for.inc_crit_edge ], [ %reserved_valid_size.1, %if.end500.for.inc_crit_edge ], [ %reserved_valid_size.0943, %is_hint_crossing_range.exit.for.inc_crit_edge ]
  %new_va_block.2 = phi ptr [ %new_va_block.0945, %if.then475.for.inc_crit_edge ], [ %new_va_block.0945, %if.end483.for.inc_crit_edge ], [ %new_va_block.1, %if.end500.for.inc_crit_edge ], [ %new_va_block.0945, %is_hint_crossing_range.exit.for.inc_crit_edge ]
  %35 = ptrtoint ptr %va_block.0947 to i32
  call void @__asan_load4_noabort(i32 %35)
  %va_block.0 = load ptr, ptr %va_block.0947, align 4
  %cmp464.not = icmp eq ptr %va_block.0, %list
  br i1 %cmp464.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end500.for.end_crit_edge
  %reserved_valid_start.3 = phi i64 [ %reserved_valid_start.2, %for.inc.for.end_crit_edge ], [ %hint_addr.addr.0, %if.end500.for.end_crit_edge ]
  %reserved_valid_size.3 = phi i64 [ %reserved_valid_size.2, %for.inc.for.end_crit_edge ], [ %add486, %if.end500.for.end_crit_edge ]
  %new_va_block.3 = phi ptr [ %new_va_block.2, %for.inc.for.end_crit_edge ], [ %va_block.0947, %if.end500.for.end_crit_edge ]
  %tobool523.not = icmp eq ptr %new_va_block.3, null
  br i1 %tobool523.not, label %for.end.do.end527_crit_edge, label %if.end529

for.end.do.end527_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end527

do.end527:                                        ; preds = %for.end.do.end527_crit_edge, %if.end460.do.end527_crit_edge
  %reserved_valid_start.3959 = phi i64 [ %reserved_valid_start.3, %for.end.do.end527_crit_edge ], [ 0, %if.end460.do.end527_crit_edge ]
  %dev528 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %36 = ptrtoint ptr %dev528 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev528, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.49, i64 noundef %size.addr.0911) #15
  br label %out

if.end529:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp8(i64 %reserved_valid_start.3, i64 %hint_addr.addr.0)
  %cmp533.not = icmp eq i64 %reserved_valid_start.3, %hint_addr.addr.0
  %or.cond830 = select i1 %tobool.not880, i1 true, i1 %cmp533.not
  br i1 %or.cond830, label %if.end540, label %do.end538

do.end538:                                        ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #13
  %dev539 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %38 = ptrtoint ptr %dev539 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev539, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.52, i64 noundef %hint_addr.addr.0) #15
  br label %out

if.end540:                                        ; preds = %if.end529
  %start541 = getelementptr inbounds %struct.hl_vm_va_block, ptr %new_va_block.3, i32 0, i32 1
  %40 = ptrtoint ptr %start541 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %start541, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %reserved_valid_start.3, i64 %41)
  %cmp542 = icmp ugt i64 %reserved_valid_start.3, %41
  br i1 %cmp542, label %if.then544, label %if.end540.if.end549_crit_edge

if.end540.if.end549_crit_edge:                    ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end549

if.then544:                                       ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #13
  %sub546 = add i64 %reserved_valid_start.3, -1
  %42 = ptrtoint ptr %start541 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %reserved_valid_start.3, ptr %start541, align 8
  %size548 = getelementptr inbounds %struct.hl_vm_va_block, ptr %new_va_block.3, i32 0, i32 3
  %43 = ptrtoint ptr %size548 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %reserved_valid_size.3, ptr %size548, align 8
  br label %if.end549

if.end549:                                        ; preds = %if.then544, %if.end540.if.end549_crit_edge
  %prev_end.0 = phi i64 [ %sub546, %if.then544 ], [ -1, %if.end540.if.end549_crit_edge ]
  %prev_start.0 = phi i64 [ %41, %if.then544 ], [ -1, %if.end540.if.end549_crit_edge ]
  %size550 = getelementptr inbounds %struct.hl_vm_va_block, ptr %new_va_block.3, i32 0, i32 3
  %44 = ptrtoint ptr %size550 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size550, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %size.addr.0911)
  %cmp551 = icmp ugt i64 %45, %size.addr.0911
  br i1 %cmp551, label %if.then553, label %if.else561

if.then553:                                       ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %start541 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %start541, align 8
  %add555 = add i64 %47, %size.addr.0911
  store i64 %add555, ptr %start541, align 8
  %end556 = getelementptr inbounds %struct.hl_vm_va_block, ptr %new_va_block.3, i32 0, i32 2
  %48 = ptrtoint ptr %end556 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %end556, align 8
  %sub558 = sub i64 1, %add555
  %add559 = add i64 %sub558, %49
  %50 = ptrtoint ptr %size550 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add559, ptr %size550, align 8
  br label %if.end563

if.else561:                                       ; preds = %if.end549
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %new_va_block.3) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else561.list_del.exit_crit_edge

if.else561.list_del.exit_crit_edge:               ; preds = %if.else561
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else561
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %new_va_block.3, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %new_va_block.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %new_va_block.3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else561.list_del.exit_crit_edge
  %57 = ptrtoint ptr %new_va_block.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %new_va_block.3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %new_va_block.3, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %new_va_block.3) #11
  br label %if.end563

if.end563:                                        ; preds = %list_del.exit, %if.then553
  br i1 %cmp542, label %if.then565, label %if.end563.out_crit_edge

if.end563.out_crit_edge:                          ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then565:                                       ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #13
  %call567 = tail call fastcc i32 @add_va_block_locked(ptr noundef %hdev, ptr noundef %list, i64 noundef %prev_start.0, i64 noundef %prev_end.0)
  br label %out

out:                                              ; preds = %if.then565, %if.end563.out_crit_edge, %do.end538, %do.end527
  %reserved_valid_start.4 = phi i64 [ 0, %do.end538 ], [ %reserved_valid_start.3959, %do.end527 ], [ %reserved_valid_start.3, %if.then565 ], [ %reserved_valid_start.3, %if.end563.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %va_range) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i64 [ 0, %do.end ], [ %reserved_valid_start.4, %out ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_unreserve_va_block(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %ctx, i64 noundef %start_addr, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i.i = add i64 %size, %start_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %start_addr)
  %cmp3.i.i = icmp ugt i64 %add.i.i, %start_addr
  %arrayidx.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %start_addr.i = getelementptr inbounds %struct.hl_va_range, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start_addr.i, align 8
  %end_addr.i = getelementptr inbounds %struct.hl_va_range, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %start_addr)
  %cmp.not.i.i = icmp ule i64 %3, %start_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %5)
  %cmp1.not.i.i = icmp ule i64 %add.i.i, %5
  %or.cond.not.i.i = and i1 %cmp.not.i.i, %cmp1.not.i.i
  %or.cond7.i.i = and i1 %cmp3.i.i, %or.cond.not.i.i
  br i1 %or.cond7.i.i, label %entry.if.end_crit_edge, label %for.inc.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %start_addr.1.i = getelementptr inbounds %struct.hl_va_range, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %start_addr.1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start_addr.1.i, align 8
  %end_addr.1.i = getelementptr inbounds %struct.hl_va_range, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %end_addr.1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %end_addr.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %start_addr)
  %cmp.not.i.1.i = icmp ule i64 %9, %start_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %11)
  %cmp1.not.i.1.i = icmp ule i64 %add.i.i, %11
  %or.cond.not.i.1.i = and i1 %cmp.not.i.1.i, %cmp1.not.i.1.i
  %or.cond7.i.1.i = and i1 %cmp3.i.i, %or.cond.not.i.1.i
  br i1 %or.cond7.i.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2.i, align 4
  %start_addr.2.i = getelementptr inbounds %struct.hl_va_range, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %start_addr.2.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start_addr.2.i, align 8
  %end_addr.2.i = getelementptr inbounds %struct.hl_va_range, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %end_addr.2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %end_addr.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %start_addr)
  %cmp.not.i.2.i = icmp ule i64 %15, %start_addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %17)
  %cmp1.not.i.2.i = icmp ule i64 %add.i.i, %17
  %or.cond.not.i.2.i = and i1 %cmp.not.i.2.i, %cmp1.not.i.2.i
  %or.cond7.i.2.i = and i1 %cmp3.i.i, %or.cond.not.i.2.i
  br i1 %or.cond7.i.2.i, label %for.inc.1.i.if.end_crit_edge, label %do.end

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, i64 noundef %start_addr, i64 noundef %size) #15
  br label %cleanup

if.end:                                           ; preds = %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %i.09.lcssa.i = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ]
  %arrayidx = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 %i.09.lcssa.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %sub = add i64 %add.i.i, -1
  tail call void @mutex_lock_nested(ptr noundef %21, i32 noundef 0) #11
  %list.i = getelementptr inbounds %struct.hl_va_range, ptr %21, i32 0, i32 1
  %call.i = tail call fastcc i32 @add_va_block_locked(ptr noundef %hdev, ptr noundef %list.i, i64 noundef %start_addr, i64 noundef %sub) #11
  tail call void @mutex_unlock(ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.6, i64 noundef %start_addr) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_hw_block_mmap(ptr nocapture noundef readonly %hpriv, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpriv, align 4
  %ctx2 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %2 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx2, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  store i32 0, ptr %vm_pgoff, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub = sub i32 %7, %9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %sub, i32 -1226833920) #14, !srcloc !361
  %asmresult = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef %9) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %15 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hw_block_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %16 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %vm_private_data, align 4
  tail call void @hl_ctx_get(ptr noundef %1, ptr noundef %3) #11
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs, align 8
  %hw_block_mmap = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 80
  %19 = ptrtoint ptr %hw_block_mmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_block_mmap, align 4
  %call9 = tail call i32 %20(ptr noundef %1, ptr noundef %vma, i32 noundef %5, i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @hl_ctx_put(ptr noundef %3) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %ctx14 = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ctx14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %ctx14, align 8
  %22 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vma, align 4
  %vaddr = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vaddr, align 4
  %size = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %size, align 8
  %id = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %5, ptr %id, align 4
  %hw_block_list_lock = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %hw_block_list_lock, i32 noundef 0) #11
  %hw_block_mem_list = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %28, ptr noundef %hw_block_mem_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add_tail.exit_crit_edge

if.end13.list_add_tail.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %hw_block_mem_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end13.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %hw_block_list_lock) #11
  %33 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %5, ptr %vm_pgoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_ctx_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_ctx_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_mem_ioctl(ptr nocapture noundef readonly %hpriv, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %block_id.i = alloca i32, align 4
  %block_id.i.i = alloca i32, align 4
  %handle.i = alloca i32, align 4
  %block_size.i = alloca i32, align 4
  %dmabuf_fd.i = alloca i32, align 4
  %status = alloca i32, align 4
  %device_addr = alloca i64, align 8
  %handle = alloca i32, align 4
  %block_size = alloca i32, align 4
  %dmabuf_fd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !362
  %1 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hpriv, align 4
  %ctx2 = getelementptr inbounds %struct.hl_fpriv, ptr %hpriv, i32 0, i32 3
  %3 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_addr) #11
  %5 = ptrtoint ptr %device_addr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %device_addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #11
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %handle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_size) #11
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %block_size, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmabuf_fd) #11
  %8 = ptrtoint ptr %dmabuf_fd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -9, ptr %dmabuf_fd, align 4
  %call = call zeroext i1 @hl_device_operational(ptr noundef %2, ptr noundef nonnull %status) #11
  br i1 %call, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @hl_mem_ioctl._rs, ptr noundef nonnull @__func__.hl_mem_ioctl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %arrayidx = getelementptr %struct.hl_device, ptr %2, i32 0, i32 11, i32 %12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef %arrayidx) #15
  br label %cleanup

if.end9:                                          ; preds = %entry
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 107
  %13 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hpriv, align 4
  %17 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.i) #11
  %19 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %handle.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_size.i) #11
  %20 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %block_size.i, align 4, !annotation !362
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmabuf_fd.i) #11
  %21 = ptrtoint ptr %dmabuf_fd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -9, ptr %dmabuf_fd.i, align 4
  %op.i = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %op.i, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %23, label %do.end22.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb5.i
    i32 3, label %if.then11.mem_ioctl_no_mmu.exit_crit_edge
    i32 4, label %sw.bb11.i
    i32 5, label %sw.bb15.i
  ]

if.then11.mem_ioctl_no_mmu.exit_crit_edge:        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %mem_ioctl_no_mmu.exit

sw.bb.i:                                          ; preds = %if.then11
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp.i = icmp eq i64 %26, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %16, i32 0, i32 6
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14) #15
  br label %mem_ioctl_no_mmu.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %30, 1
  store i32 %or.i, ptr %flags.i, align 4
  %call.i = call fastcc i32 @alloc_device_memory(ptr noundef %18, ptr noundef %data, ptr noundef nonnull %handle.i) #11
  %31 = getelementptr inbounds i8, ptr %data, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 32)
  %33 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle.i, align 4
  %conv.i = zext i32 %34 to i64
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.i, ptr %data, align 8
  br label %mem_ioctl_no_mmu.exit

sw.bb3.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call fastcc i32 @free_device_memory(ptr noundef %18, ptr noundef %data) #11
  br label %mem_ioctl_no_mmu.exit

sw.bb5.i:                                         ; preds = %if.then11
  %flags6.i = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 2
  %36 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags6.i, align 4
  %and.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data, align 8
  br label %if.end9.i

if.else.i:                                        ; preds = %sw.bb5.i
  %hdev1.i.i = getelementptr inbounds %struct.hl_ctx, ptr %18, i32 0, i32 3
  %40 = ptrtoint ptr %hdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev1.i.i, align 4
  %handle3.i.i = getelementptr inbounds %struct.anon.104, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %handle3.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %handle3.i.i, align 8
  %conv.i.i = trunc i64 %43 to i32
  %idr_lock.i.i = getelementptr inbounds %struct.hl_device, ptr %41, i32 0, i32 36, i32 2
  call void @_raw_spin_lock(ptr noundef %idr_lock.i.i) #11
  %phys_pg_pack_handles.i.i = getelementptr inbounds %struct.hl_device, ptr %41, i32 0, i32 36, i32 3
  %call.i.i151 = call ptr @idr_find(ptr noundef %phys_pg_pack_handles.i.i, i32 noundef %conv.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i151, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %idr_lock.i.i) #11
  %dev.i.i = getelementptr inbounds %struct.hl_device, ptr %41, i32 0, i32 6
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.59, i32 noundef %conv.i.i) #15
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %pages.i.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call.i.i151, i32 0, i32 1
  %46 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pages.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  call void @_raw_spin_unlock(ptr noundef %idr_lock.i.i) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.i, %if.then.i.i, %if.then7.i
  %device_addr.1.i = phi i64 [ %39, %if.then7.i ], [ 0, %if.then.i.i ], [ %49, %if.end.i.i ]
  %rc.0.i = phi i32 [ 0, %if.then7.i ], [ -22, %if.then.i.i ], [ 0, %if.end.i.i ]
  %50 = getelementptr inbounds i8, ptr %data, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 32)
  %52 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %device_addr.1.i, ptr %data, align 8
  br label %mem_ioctl_no_mmu.exit

sw.bb11.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_id.i.i) #11
  %55 = ptrtoint ptr %block_id.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %block_id.i.i, align 4
  %asic_funcs.i.i = getelementptr inbounds %struct.hl_device, ptr %16, i32 0, i32 34
  %56 = ptrtoint ptr %asic_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asic_funcs.i.i, align 8
  %get_hw_block_id.i.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %57, i32 0, i32 79
  %58 = ptrtoint ptr %get_hw_block_id.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_hw_block_id.i.i, align 4
  %call.i49.i = call i32 %59(ptr noundef %16, i64 noundef %54, ptr noundef nonnull %block_size.i, ptr noundef nonnull %block_id.i.i) #11
  %60 = ptrtoint ptr %block_id.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %block_id.i.i, align 4
  %conv.i50.i = zext i32 %61 to i64
  %or.i.i = shl nuw nsw i64 %conv.i50.i, 12
  %shl.i.i = or i64 %or.i.i, -9223372036854775808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_id.i.i) #11
  %62 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shl.i.i, ptr %data, align 8
  %63 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %block_size.i, align 4
  %block_size14.i = getelementptr inbounds %struct.anon.110, ptr %data, i32 0, i32 1
  %65 = ptrtoint ptr %block_size14.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %block_size14.i, align 8
  br label %mem_ioctl_no_mmu.exit

sw.bb15.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %data, align 8
  %mem_size17.i = getelementptr inbounds %struct.anon.108, ptr %data, i32 0, i32 1
  %68 = ptrtoint ptr %mem_size17.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %mem_size17.i, align 8
  %flags18.i = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 2
  %70 = ptrtoint ptr %flags18.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags18.i, align 4
  %call19.i = call fastcc i32 @export_dmabuf_from_addr(ptr noundef %18, i64 noundef %67, i64 noundef %69, i32 noundef %71, ptr noundef nonnull %dmabuf_fd.i) #11
  %72 = call ptr @memset(ptr %data, i32 0, i32 40)
  %73 = ptrtoint ptr %dmabuf_fd.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dmabuf_fd.i, align 4
  %75 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %data, align 8
  br label %mem_ioctl_no_mmu.exit

do.end22.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %dev23.i = getelementptr inbounds %struct.hl_device, ptr %16, i32 0, i32 6
  %76 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev23.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.19) #15
  br label %mem_ioctl_no_mmu.exit

mem_ioctl_no_mmu.exit:                            ; preds = %do.end22.i, %sw.bb15.i, %sw.bb11.i, %if.end9.i, %sw.bb3.i, %if.end.i, %do.end.i, %if.then11.mem_ioctl_no_mmu.exit_crit_edge
  %rc.1.i = phi i32 [ -22, %do.end22.i ], [ %call19.i, %sw.bb15.i ], [ %call.i49.i, %sw.bb11.i ], [ %rc.0.i, %if.end9.i ], [ %call4.i, %sw.bb3.i ], [ -22, %do.end.i ], [ %call.i, %if.end.i ], [ 0, %if.then11.mem_ioctl_no_mmu.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmabuf_fd.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_size.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %op = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 1
  %78 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %op, align 8
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %79, label %do.end86 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 2, label %sw.bb64
    i32 3, label %sw.bb66
    i32 4, label %sw.bb68
    i32 5, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end13
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp = icmp eq i64 %82, 0
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %83 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %dram_supports_virtual_memory = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 71
  %85 = ptrtoint ptr %dram_supports_virtual_memory to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dram_supports_virtual_memory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool20.not = icmp eq i8 %86, 0
  br i1 %tobool20.not, label %if.then21, label %if.end34

if.then21:                                        ; preds = %if.end19
  %dram_phys_mem = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dram_phys_mem, i32 noundef 8) #11
  call void @generic_atomic64_add(i64 noundef %82, ptr noundef %dram_phys_mem) #11
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %data, align 8
  %dram_used_mem = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 61
  %call.i.i145 = call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem, i32 noundef 8) #11
  call void @generic_atomic64_add(i64 noundef %88, ptr noundef %dram_used_mem) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_mem_ioctl.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_mem_ioctl, %if.then29)) #11
          to label %do.end33 [label %if.then29], !srcloc !360

if.then29:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %dev30 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %89 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_mem_ioctl.__UNIQUE_ID_ddebug316, ptr noundef %90, ptr noundef nonnull @.str.17) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %if.then21
  %91 = call ptr @memset(ptr %data, i32 0, i32 40)
  br label %cleanup

if.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call fastcc i32 @alloc_device_memory(ptr noundef %4, ptr noundef %data, ptr noundef nonnull %handle)
  %92 = getelementptr inbounds i8, ptr %data, i32 8
  %93 = call ptr @memset(ptr %92, i32 0, i32 32)
  %94 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %handle, align 4
  %conv = zext i32 %95 to i64
  %96 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

sw.bb36:                                          ; preds = %if.end13
  %dram_supports_virtual_memory38 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 71
  %97 = ptrtoint ptr %dram_supports_virtual_memory38 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dram_supports_virtual_memory38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool39.not = icmp eq i8 %98, 0
  br i1 %tobool39.not, label %if.then40, label %if.end62

if.then40:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %data, align 8
  %dram_phys_mem42 = getelementptr inbounds %struct.hl_ctx, ptr %4, i32 0, i32 18
  %call.i.i146 = call zeroext i1 @__kasan_check_write(ptr noundef %dram_phys_mem42, i32 noundef 8) #11
  call void @generic_atomic64_sub(i64 noundef %100, ptr noundef %dram_phys_mem42) #11
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %data, align 8
  %dram_used_mem44 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 61
  %call.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem44, i32 noundef 8) #11
  call void @generic_atomic64_sub(i64 noundef %102, ptr noundef %dram_used_mem44) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_mem_ioctl.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_mem_ioctl, %if.then57)) #11
          to label %cleanup [label %if.then57], !srcloc !360

if.then57:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %dev58 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %103 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev58, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_mem_ioctl.__UNIQUE_ID_ddebug317, ptr noundef %104, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end62:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = call fastcc i32 @free_device_memory(ptr noundef %4, ptr noundef %data)
  br label %cleanup

sw.bb64:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = call fastcc i32 @map_device_va(ptr noundef %4, ptr noundef %data, ptr noundef nonnull %device_addr)
  %105 = getelementptr inbounds i8, ptr %data, i32 8
  %106 = call ptr @memset(ptr %105, i32 0, i32 32)
  %107 = ptrtoint ptr %device_addr to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %device_addr, align 8
  %109 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %data, align 8
  br label %cleanup

sw.bb66:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = call fastcc i32 @unmap_device_va(ptr noundef %4, ptr noundef %data, i1 noundef zeroext false)
  br label %cleanup

sw.bb68:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_id.i) #11
  %112 = ptrtoint ptr %block_id.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %block_id.i, align 4
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 34
  %113 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %asic_funcs.i, align 8
  %get_hw_block_id.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %114, i32 0, i32 79
  %115 = ptrtoint ptr %get_hw_block_id.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %get_hw_block_id.i, align 4
  %call.i152 = call i32 %116(ptr noundef %2, i64 noundef %111, ptr noundef nonnull %block_size, ptr noundef nonnull %block_id.i) #11
  %117 = ptrtoint ptr %block_id.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %block_id.i, align 4
  %conv.i153 = zext i32 %118 to i64
  %or.i154 = shl nuw nsw i64 %conv.i153, 12
  %shl.i = or i64 %or.i154, -9223372036854775808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_id.i) #11
  %119 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %shl.i, ptr %data, align 8
  %120 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %block_size, align 4
  %block_size71 = getelementptr inbounds %struct.anon.110, ptr %data, i32 0, i32 1
  %122 = ptrtoint ptr %block_size71 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %block_size71, align 8
  br label %cleanup

sw.bb72:                                          ; preds = %if.end13
  %dram_supports_virtual_memory74 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 33, i32 71
  %123 = ptrtoint ptr %dram_supports_virtual_memory74 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %dram_supports_virtual_memory74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool75.not = icmp eq i8 %124, 0
  %125 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %data, align 8
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 2
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags, align 4
  %call78 = call fastcc i32 @export_dmabuf_from_handle(ptr noundef %4, i64 noundef %126, i32 noundef %128, ptr noundef nonnull %dmabuf_fd)
  br label %if.end83

if.else:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  %mem_size80 = getelementptr inbounds %struct.anon.108, ptr %data, i32 0, i32 1
  %129 = ptrtoint ptr %mem_size80 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %mem_size80, align 8
  %flags81 = getelementptr inbounds %struct.hl_mem_in, ptr %data, i32 0, i32 2
  %131 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags81, align 4
  %call82 = call fastcc i32 @export_dmabuf_from_addr(ptr noundef %4, i64 noundef %126, i64 noundef %130, i32 noundef %132, ptr noundef nonnull %dmabuf_fd)
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then76
  %rc.0 = phi i32 [ %call78, %if.then76 ], [ %call82, %if.else ]
  %133 = call ptr @memset(ptr %data, i32 0, i32 40)
  %134 = ptrtoint ptr %dmabuf_fd to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dmabuf_fd, align 4
  %136 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %data, align 8
  br label %cleanup

do.end86:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %dev87 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %137 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.19) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end83, %sw.bb68, %sw.bb66, %sw.bb64, %if.end62, %if.then57, %if.then40, %if.end34, %do.end33, %do.end17, %mem_ioctl_no_mmu.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1.i, %mem_ioctl_no_mmu.exit ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -22, %do.end86 ], [ %rc.0, %if.end83 ], [ %call.i152, %sw.bb68 ], [ %call67, %sw.bb66 ], [ %call65, %sw.bb64 ], [ %call63, %if.end62 ], [ -22, %do.end17 ], [ %call35, %if.end34 ], [ 0, %do.end33 ], [ 0, %if.then57 ], [ 0, %if.then40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmabuf_fd) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_size) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_addr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_device_operational(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_device_memory(ptr noundef %ctx, ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %ret_handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %vm2 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36
  %dram_page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 35
  %2 = ptrtoint ptr %dram_page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dram_page_size, align 4
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %args, align 8
  %conv = zext i32 %3 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp170 = icmp ult i64 %sub, 4294967296
  br i1 %cmp170, label %if.then174, label %if.else180, !prof !358

if.then174:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv175 = trunc i64 %sub to i32
  %div178 = udiv i32 %conv175, %3
  %conv179 = zext i32 %div178 to i64
  br label %if.end184

if.else180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #14, !srcloc !359
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  br label %if.end184

if.end184:                                        ; preds = %if.else180, %if.then174
  %_tmp.0 = phi i64 [ %conv179, %if.then174 ], [ %asmresult1.i, %if.else180 ]
  %mul188 = mul i64 %_tmp.0, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul188)
  %tobool189.not = icmp eq i64 %mul188, 0
  br i1 %tobool189.not, label %do.end, label %if.end191

do.end:                                           ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.61) #15
  br label %cleanup

if.end191:                                        ; preds = %if.end184
  %flags = getelementptr inbounds %struct.hl_mem_in, ptr %args, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and192 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  %11 = trunc i32 %and192 to i8
  br i1 %tobool193.not, label %if.end191.if.end206_crit_edge, label %if.then195

if.end191.if.end206_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end206

if.then195:                                       ; preds = %if.end191
  %12 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm2, align 4
  %conv196 = trunc i64 %mul188 to i32
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %call.i.i472 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %13, i32 noundef %conv196, ptr noundef %15, ptr noundef %17, ptr noundef null) #11
  %conv198 = zext i32 %call.i.i472 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i472)
  %tobool199.not = icmp eq i32 %call.i.i472, 0
  br i1 %tobool199.not, label %do.end203, label %if.then195.if.end206_crit_edge

if.then195.if.end206_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end206

do.end203:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #13
  %dev204 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev204, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.64, i64 noundef %_tmp.0, i64 noundef %mul188) #15
  br label %cleanup

if.end206:                                        ; preds = %if.then195.if.end206_crit_edge, %if.end191.if.end206_crit_edge
  %paddr.0 = phi i64 [ %conv198, %if.then195.if.end206_crit_edge ], [ 0, %if.end191.if.end206_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 56) #16
  %tobool208.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool208.not, label %if.end206.pages_pack_err_crit_edge, label %if.end210

if.end206.pages_pack_err_crit_edge:               ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  br label %pages_pack_err

if.end210:                                        ; preds = %if.end206
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %call7.i.i, align 8
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %22 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asid, align 8
  %asid211 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %asid211 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %asid211, align 8
  %npages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %npages to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %_tmp.0, ptr %npages, align 8
  %page_size212 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %page_size212 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %3, ptr %page_size212, align 4
  %total_size213 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %total_size213 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %mul188, ptr %total_size213, align 8
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %flags215 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %flags215 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %flags215, align 8
  %contiguous218 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 11
  %31 = ptrtoint ptr %contiguous218 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %11, ptr %contiguous218, align 4
  %conv219 = trunc i64 %_tmp.0 to i32
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv219, i32 8) #11
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !363

kvmalloc_array.exit.thread:                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  %pages500 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %pages500 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pages500, align 4
  br label %pages_arr_err

kvmalloc_array.exit:                              ; preds = %if.end210
  %35 = extractvalue { i32, i1 } %32, 0
  %call.i.i473 = tail call noalias ptr @kvmalloc_node(i32 noundef %35, i32 noundef 3264, i32 noundef -1) #17
  %pages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i473, ptr %pages, align 4
  %cmp222 = icmp ult ptr %call.i.i473, inttoptr (i32 17 to ptr)
  br i1 %cmp222, label %kvmalloc_array.exit.pages_arr_err_crit_edge, label %if.end225

kvmalloc_array.exit.pages_arr_err_crit_edge:      ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %pages_arr_err

if.end225:                                        ; preds = %kvmalloc_array.exit
  %37 = ptrtoint ptr %contiguous218 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %contiguous218, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool227.not = icmp eq i8 %38, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %_tmp.0)
  %cmp237508.not = icmp eq i64 %_tmp.0, 0
  br i1 %tobool227.not, label %for.cond236.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end225
  br i1 %cmp237508.not, label %for.cond.preheader.if.end260_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end260_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

for.cond236.preheader:                            ; preds = %if.end225
  br i1 %cmp237508.not, label %for.cond236.preheader.if.end260_crit_edge, label %for.cond236.preheader.for.body239_crit_edge

for.cond236.preheader.for.body239_crit_edge:      ; preds = %for.cond236.preheader
  br label %for.body239

for.cond236.preheader.if.end260_crit_edge:        ; preds = %for.cond236.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0507 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul232 = mul i64 %i.0507, %conv
  %add233 = add i64 %mul232, %paddr.0
  %39 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages, align 4
  %idxprom = trunc i64 %i.0507 to i32
  %arrayidx = getelementptr i64, ptr %40, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add233, ptr %arrayidx, align 8
  %inc = add nuw i64 %i.0507, 1
  %cmp229 = icmp ult i64 %inc, %_tmp.0
  br i1 %cmp229, label %for.body.for.body_crit_edge, label %for.body.if.end260_crit_edge

for.body.if.end260_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body239:                                      ; preds = %if.end255.for.body239_crit_edge, %for.cond236.preheader.for.body239_crit_edge
  %i.1509 = phi i64 [ %inc258, %if.end255.for.body239_crit_edge ], [ 0, %for.cond236.preheader.for.body239_crit_edge ]
  %indvars517 = trunc i64 %i.1509 to i32
  %42 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vm2, align 4
  %algo.i474 = getelementptr inbounds %struct.gen_pool, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %algo.i474 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %algo.i474, align 4
  %data.i475 = getelementptr inbounds %struct.gen_pool, ptr %43, i32 0, i32 4
  %46 = ptrtoint ptr %data.i475 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i475, align 4
  %call.i.i476 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %43, i32 noundef %3, ptr noundef %45, ptr noundef %47, ptr noundef null) #11
  %conv242 = zext i32 %call.i.i476 to i64
  %48 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pages, align 4
  %arrayidx245 = getelementptr i64, ptr %49, i32 %indvars517
  %50 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv242, ptr %arrayidx245, align 8
  %51 = load ptr, ptr %pages, align 4
  %arrayidx248 = getelementptr i64, ptr %51, i32 %indvars517
  %52 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx248, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool249.not = icmp eq i64 %53, 0
  br i1 %tobool249.not, label %do.end253, label %if.end255

do.end253:                                        ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #13
  %indvars517.le = trunc i64 %i.1509 to i32
  br label %page_err

if.end255:                                        ; preds = %for.body239
  %inc258 = add nuw i64 %i.1509, 1
  %cmp237 = icmp ult i64 %inc258, %_tmp.0
  br i1 %cmp237, label %if.end255.for.body239_crit_edge, label %if.end255.if.end260_crit_edge

if.end255.if.end260_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

if.end255.for.body239_crit_edge:                  ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body239

if.end260:                                        ; preds = %if.end255.if.end260_crit_edge, %for.body.if.end260_crit_edge, %for.cond236.preheader.if.end260_crit_edge, %for.cond.preheader.if.end260_crit_edge
  %num_curr_pgs.1 = phi i32 [ 0, %for.cond236.preheader.if.end260_crit_edge ], [ 0, %for.cond.preheader.if.end260_crit_edge ], [ %conv219, %if.end255.if.end260_crit_edge ], [ 0, %for.body.if.end260_crit_edge ]
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 2
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 3
  %call261 = tail call i32 @idr_alloc(ptr noundef %phys_pg_pack_handles, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #11
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %cmp263 = icmp slt i32 %call261, 0
  br i1 %cmp263, label %if.end260.page_err_crit_edge, label %for.cond271.preheader

if.end260.page_err_crit_edge:                     ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #13
  br label %page_err

for.cond271.preheader:                            ; preds = %if.end260
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %_tmp.0)
  %cmp272511.not = icmp eq i64 %_tmp.0, 0
  br i1 %cmp272511.not, label %for.cond271.preheader.for.end277_crit_edge, label %for.body274.lr.ph

for.cond271.preheader.for.end277_crit_edge:       ; preds = %for.cond271.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end277

for.body274.lr.ph:                                ; preds = %for.cond271.preheader
  %dram_pg_pool_refcount = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 1
  br label %for.body274

for.body274:                                      ; preds = %kref_get.exit.for.body274_crit_edge, %for.body274.lr.ph
  %i.2512 = phi i64 [ 0, %for.body274.lr.ph ], [ %inc276, %kref_get.exit.for.body274_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_pg_pool_refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %dram_pg_pool_refcount, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dram_pg_pool_refcount, ptr %dram_pg_pool_refcount, i32 1, ptr elementtype(i32) %dram_pg_pool_refcount) #11, !srcloc !364
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body274.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !363

for.body274.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %for.body274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body274
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %55 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %.not.i.i.i.i = icmp sgt i32 %55, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !358

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body274.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body274.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dram_pg_pool_refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %inc276 = add nuw i64 %i.2512, 1
  %cmp272 = icmp ult i64 %inc276, %_tmp.0
  br i1 %cmp272, label %kref_get.exit.for.body274_crit_edge, label %kref_get.exit.for.end277_crit_edge

kref_get.exit.for.end277_crit_edge:               ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end277

kref_get.exit.for.body274_crit_edge:              ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body274

for.end277:                                       ; preds = %kref_get.exit.for.end277_crit_edge, %for.cond271.preheader.for.end277_crit_edge
  %handle278 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %handle278 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call261, ptr %handle278, align 4
  %57 = ptrtoint ptr %total_size213 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %total_size213, align 8
  %dram_phys_mem = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_phys_mem, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %58, ptr noundef %dram_phys_mem) #11
  %59 = ptrtoint ptr %total_size213 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %total_size213, align 8
  %dram_used_mem = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 61
  %call.i.i469 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %60, ptr noundef %dram_used_mem) #11
  %61 = ptrtoint ptr %ret_handle to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call261, ptr %ret_handle, align 4
  br label %cleanup

page_err:                                         ; preds = %if.end260.page_err_crit_edge, %do.end253
  %.str.70.sink = phi ptr [ @.str.67, %do.end253 ], [ @.str.70, %if.end260.page_err_crit_edge ]
  %num_curr_pgs.2 = phi i32 [ %indvars517.le, %do.end253 ], [ %num_curr_pgs.1, %if.end260.page_err_crit_edge ]
  %rc.0 = phi i32 [ -12, %do.end253 ], [ -14, %if.end260.page_err_crit_edge ]
  %dev269 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %dev269 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev269, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull %.str.70.sink) #15
  %64 = ptrtoint ptr %contiguous218 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %contiguous218, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool282.not = icmp eq i8 %65, 0
  br i1 %tobool282.not, label %for.cond284.preheader, label %page_err.if.end297_crit_edge

page_err.if.end297_crit_edge:                     ; preds = %page_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end297

for.cond284.preheader:                            ; preds = %page_err
  %conv285 = zext i32 %num_curr_pgs.2 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_curr_pgs.2)
  %cmp286513.not = icmp eq i32 %num_curr_pgs.2, 0
  br i1 %cmp286513.not, label %for.cond284.preheader.if.end297_crit_edge, label %for.cond284.preheader.for.body288_crit_edge

for.cond284.preheader.for.body288_crit_edge:      ; preds = %for.cond284.preheader
  br label %for.body288

for.cond284.preheader.if.end297_crit_edge:        ; preds = %for.cond284.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end297

for.body288:                                      ; preds = %for.body288.for.body288_crit_edge, %for.cond284.preheader.for.body288_crit_edge
  %i.3514 = phi i64 [ %inc295, %for.body288.for.body288_crit_edge ], [ 0, %for.cond284.preheader.for.body288_crit_edge ]
  %66 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm2, align 4
  %68 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages, align 4
  %idxprom291 = trunc i64 %i.3514 to i32
  %arrayidx292 = getelementptr i64, ptr %69, i32 %idxprom291
  %70 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx292, align 8
  %conv293 = trunc i64 %71 to i32
  tail call void @gen_pool_free_owner(ptr noundef %67, i32 noundef %conv293, i32 noundef %3, ptr noundef null) #11
  %inc295 = add nuw nsw i64 %i.3514, 1
  %cmp286 = icmp ult i64 %inc295, %conv285
  br i1 %cmp286, label %for.body288.for.body288_crit_edge, label %for.body288.if.end297_crit_edge

for.body288.if.end297_crit_edge:                  ; preds = %for.body288
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end297

for.body288.for.body288_crit_edge:                ; preds = %for.body288
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body288

if.end297:                                        ; preds = %for.body288.if.end297_crit_edge, %for.cond284.preheader.if.end297_crit_edge, %page_err.if.end297_crit_edge
  %72 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pages, align 4
  tail call void @kvfree(ptr noundef %73) #11
  br label %pages_arr_err

pages_arr_err:                                    ; preds = %if.end297, %kvmalloc_array.exit.pages_arr_err_crit_edge, %kvmalloc_array.exit.thread
  %rc.1 = phi i32 [ %rc.0, %if.end297 ], [ -12, %kvmalloc_array.exit.pages_arr_err_crit_edge ], [ -12, %kvmalloc_array.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %pages_pack_err

pages_pack_err:                                   ; preds = %pages_arr_err, %if.end206.pages_pack_err_crit_edge
  %rc.2 = phi i32 [ %rc.1, %pages_arr_err ], [ -12, %if.end206.pages_pack_err_crit_edge ]
  br i1 %tobool193.not, label %pages_pack_err.cleanup_crit_edge, label %if.then300

pages_pack_err.cleanup_crit_edge:                 ; preds = %pages_pack_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then300:                                       ; preds = %pages_pack_err
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vm2, align 4
  %conv302 = trunc i64 %paddr.0 to i32
  %conv303 = trunc i64 %mul188 to i32
  tail call void @gen_pool_free_owner(ptr noundef %75, i32 noundef %conv302, i32 noundef %conv303, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then300, %pages_pack_err.cleanup_crit_edge, %for.end277, %do.end203, %do.end
  %retval.0 = phi i32 [ 0, %for.end277 ], [ -12, %do.end203 ], [ -22, %do.end ], [ %rc.2, %if.then300 ], [ %rc.2, %pages_pack_err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_device_memory(ptr noundef %ctx, ptr nocapture noundef readonly %args) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %args, align 8
  %conv = trunc i64 %3 to i32
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 2
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 3
  %call = tail call ptr @idr_find(ptr noundef %phys_pg_pack_handles, i32 noundef %conv) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mapping_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mapping_cnt, i32 noundef 4) #11
  %4 = ptrtoint ptr %mapping_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mapping_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.72, i32 noundef %conv) #15
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %exporting_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %exporting_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exporting_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end21, label %do.body10

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_device_memory.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@free_device_memory, %if.then15)) #11
          to label %do.end19 [label %if.then15], !srcloc !360

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_device_memory.__UNIQUE_ID_ddebug300, ptr noundef %11, ptr noundef nonnull @.str.74, i32 noundef %conv) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body10
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call ptr @idr_remove(ptr noundef %phys_pg_pack_handles, i32 noundef %conv) #11
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %total_size, align 8
  %dram_phys_mem = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 18
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_phys_mem, i32 noundef 8) #11
  tail call void @generic_atomic64_sub(i64 noundef %13, ptr noundef %dram_phys_mem) #11
  %14 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %total_size, align 8
  %dram_used_mem = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 61
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem, i32 noundef 8) #11
  tail call void @generic_atomic64_sub(i64 noundef %15, ptr noundef %dram_used_mem) #11
  %call26 = tail call fastcc i32 @free_phys_pg_pack(ptr noundef %1, ptr noundef nonnull %call)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  %dev31 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.76, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end21, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ %call26, %if.end21 ], [ -22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_device_va(ptr noundef %ctx, ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %device_addr) unnamed_addr #0 align 64 {
entry:
  %phys_pg_pack = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_pg_pack) #11
  %2 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %phys_pg_pack, align 4, !annotation !362
  %flags = getelementptr inbounds %struct.hl_mem_in, ptr %args, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %5 = ptrtoint ptr %device_addr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %device_addr, align 8
  br i1 %tobool.not, label %if.else33, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %args, align 8
  %mem_size = getelementptr inbounds %struct.anon.105, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %mem_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mem_size, align 8
  %page_size4 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 15
  %10 = ptrtoint ptr %page_size4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_size4, align 8
  %page_size6 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %12 = ptrtoint ptr %page_size6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_size6, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup.thread276_crit_edge, label %if.end.i

if.then.cleanup.thread276_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread276

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @hl_pin_host_memory(ptr noundef %1, i64 noundef %7, i64 noundef %9, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.101) #15
  br label %pin_err.i

if.end4.i:                                        ; preds = %if.end.i
  %asic_funcs.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 34
  %17 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs.i, align 8
  %asic_dma_map_sg.i = getelementptr inbounds %struct.hl_asic_funcs, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %asic_dma_map_sg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_dma_map_sg.i, align 4
  %sgt.i = getelementptr inbounds %struct.hl_userptr, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nents.i, align 4
  %call6.i = tail call i32 %20(ptr noundef %1, ptr noundef %24, i32 noundef %26, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end, label %do.end11.i

do.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev12.i = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.104) #15
  tail call void @hl_unpin_host_memory(ptr noundef %1, ptr noundef nonnull %call7.i.i.i) #11
  br label %pin_err.i

pin_err.i:                                        ; preds = %do.end11.i, %do.end.i
  %rc.0.i = phi i32 [ %call1.i, %do.end.i ], [ %call6.i, %do.end11.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup.thread276

cleanup.thread276:                                ; preds = %pin_err.i, %if.then.cleanup.thread276_crit_edge
  %retval.0.i249.ph = phi i32 [ -12, %if.then.cleanup.thread276_crit_edge ], [ %rc.0.i, %pin_err.i ]
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.78) #15
  br label %cleanup152

if.end:                                           ; preds = %if.end4.i
  %dma_mapped.i = getelementptr inbounds %struct.hl_userptr, ptr %call7.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %dma_mapped.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dma_mapped.i, align 8
  %dir.i = getelementptr inbounds %struct.hl_userptr, ptr %call7.i.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dir.i, align 8
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %call7.i.i.i, align 8
  %call9 = call fastcc i32 @init_phys_pg_pack_from_userptr(ptr noundef %ctx, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %phys_pg_pack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end
  %hint_addr17 = getelementptr inbounds %struct.anon.105, ptr %args, i32 0, i32 1
  %34 = ptrtoint ptr %hint_addr17 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hint_addr17, align 8
  %36 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phys_pg_pack, align 4
  %handle18 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %handle18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle18, align 4
  %page_size19 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %37, i32 0, i32 7
  %40 = ptrtoint ptr %page_size19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_size19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %11)
  %cmp = icmp eq i32 %41, %11
  br i1 %cmp, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %va_range21 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 6
  %42 = ptrtoint ptr %va_range21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %va_range21, align 8
  %sub = add i32 %13, -1
  %conv = zext i32 %sub to i64
  %and22 = and i64 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  %. = select i1 %tobool23.not, i32 %13, i32 %11
  br label %if.end66

if.else26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx28 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx28, align 4
  br label %if.end66

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev15 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.81, i64 noundef %7) #15
  br label %if.then150

if.else33:                                        ; preds = %entry
  %handle34 = getelementptr inbounds %struct.anon.104, ptr %args, i32 0, i32 1
  %48 = ptrtoint ptr %handle34 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %handle34, align 8
  %conv36 = trunc i64 %49 to i32
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 2
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 3
  %call37 = tail call ptr @idr_find(ptr noundef %phys_pg_pack_handles, i32 noundef %conv36) #11
  %50 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call37, ptr %phys_pg_pack, align 4
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true

if.then39:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  %dev44 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.59, i32 noundef %conv36) #15
  br label %cleanup152

land.lhs.true:                                    ; preds = %if.else33
  %mapping_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call37, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mapping_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mapping_cnt, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mapping_cnt, ptr %mapping_cnt, i32 1, ptr elementtype(i32) %mapping_cnt) #11, !srcloc !365
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  %54 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %args, align 8
  %arrayidx49 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx49, align 8
  %page_size51 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  %58 = ptrtoint ptr %page_size51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %page_size51, align 8
  %60 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phys_pg_pack, align 4
  %flags54 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags54, align 8
  %and55 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

land.lhs.true57:                                  ; preds = %land.lhs.true
  %asid = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %61, i32 0, i32 6
  %64 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %asid, align 8
  %asid58 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %66 = ptrtoint ptr %asid58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %asid58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp59.not = icmp eq i32 %65, %67
  br i1 %cmp59.not, label %land.lhs.true57.if.end66_crit_edge, label %do.end64

land.lhs.true57.if.end66_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.end64:                                         ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  %dev65 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.86, i32 noundef %conv36) #15
  br label %shared_err

if.end66:                                         ; preds = %land.lhs.true57.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %if.else26, %if.then20
  %va_range_type.2308 = phi i32 [ 2, %land.lhs.true57.if.end66_crit_edge ], [ 2, %land.lhs.true.if.end66_crit_edge ], [ 0, %if.then20 ], [ 1, %if.else26 ]
  %va_block_align.2306 = phi i32 [ %59, %land.lhs.true57.if.end66_crit_edge ], [ %59, %land.lhs.true.if.end66_crit_edge ], [ %., %if.then20 ], [ %13, %if.else26 ]
  %handle.1303 = phi i32 [ %conv36, %land.lhs.true57.if.end66_crit_edge ], [ %conv36, %land.lhs.true.if.end66_crit_edge ], [ %39, %if.then20 ], [ %39, %if.else26 ]
  %hint_addr.1301 = phi i64 [ %55, %land.lhs.true57.if.end66_crit_edge ], [ %55, %land.lhs.true.if.end66_crit_edge ], [ %35, %if.then20 ], [ %35, %if.else26 ]
  %vm_type.1299 = phi ptr [ %call37, %land.lhs.true57.if.end66_crit_edge ], [ %call37, %land.lhs.true.if.end66_crit_edge ], [ %call7.i.i.i, %if.then20 ], [ %call7.i.i.i, %if.else26 ]
  %va_range.2297 = phi ptr [ %57, %land.lhs.true57.if.end66_crit_edge ], [ %57, %land.lhs.true.if.end66_crit_edge ], [ %43, %if.then20 ], [ %45, %if.else26 ]
  %userptr.1295 = phi ptr [ null, %land.lhs.true57.if.end66_crit_edge ], [ null, %land.lhs.true.if.end66_crit_edge ], [ %call7.i.i.i, %if.then20 ], [ %call7.i.i.i, %if.else26 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 24) #16
  %tobool68.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool68.not, label %if.end66.shared_err_crit_edge, label %if.end70

if.end66.shared_err_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %shared_err

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hint_addr.1301)
  %tobool71.not = icmp eq i64 %hint_addr.1301, 0
  br i1 %tobool71.not, label %if.end70.if.end97_crit_edge, label %land.lhs.true72

if.end70.if.end97_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.lhs.true72:                                  ; preds = %if.end70
  %71 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phys_pg_pack, align 4
  %offset = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool73.not = icmp eq i32 %74, 0
  br i1 %tobool73.not, label %land.lhs.true72.if.end97_crit_edge, label %if.then74

land.lhs.true72.if.end97_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then74:                                        ; preds = %land.lhs.true72
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %and76 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body85, label %do.end81

do.end81:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %dev82 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.89, i64 noundef %hint_addr.1301, i32 noundef %74) #15
  br label %va_block_err

do.body85:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @map_device_va.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@map_device_va, %if.then91)) #11
          to label %if.end97 [label %if.then91], !srcloc !360

if.then91:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  %dev92 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev92, align 4
  %81 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @map_device_va.__UNIQUE_ID_ddebug304, ptr noundef %80, ptr noundef nonnull @.str.91, i64 noundef %hint_addr.1301, i32 noundef %82) #11
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %do.body85, %land.lhs.true72.if.end97_crit_edge, %if.end70.if.end97_crit_edge
  %83 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phys_pg_pack, align 4
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %total_size, align 8
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags, align 4
  %call99 = tail call fastcc i64 @get_va_block(ptr noundef %1, ptr noundef %va_range.2297, i64 noundef %86, i64 noundef %hint_addr.1301, i32 noundef %va_block_align.2306, i32 noundef %va_range_type.2308, i32 noundef %88)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call99)
  %tobool100.not = icmp eq i64 %call99, 0
  br i1 %tobool100.not, label %do.end104, label %if.end106

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %dev105 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %89 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev105, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.93, i32 noundef %handle.1303) #15
  br label %va_block_err

if.end106:                                        ; preds = %if.end97
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mmu_lock, i32 noundef 0) #11
  %91 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hdev1, align 4
  %page_size2.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %84, i32 0, i32 7
  %93 = ptrtoint ptr %page_size2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %page_size2.i, align 4
  %npages.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %84, i32 0, i32 2
  %95 = ptrtoint ptr %npages.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %npages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %cmp92.not.i = icmp eq i64 %96, 0
  br i1 %cmp92.not.i, label %if.end106.if.end115_crit_edge, label %for.body.lr.ph.i

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

for.body.lr.ph.i:                                 ; preds = %if.end106
  %pages.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %84, i32 0, i32 1
  %conv.i = zext i32 %94 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i253.for.body.i_crit_edge, %for.body.lr.ph.i
  %97 = phi i64 [ %96, %for.body.lr.ph.i ], [ %109, %if.end.i253.for.body.i_crit_edge ]
  %i.095.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end.i253.for.body.i_crit_edge ]
  %next_vaddr.093.i = phi i64 [ %call99, %for.body.lr.ph.i ], [ %add6.i, %if.end.i253.for.body.i_crit_edge ]
  %98 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pages.i, align 4
  %idxprom.i = trunc i64 %i.095.i to i32
  %arrayidx.i = getelementptr i64, ptr %99, i32 %idxprom.i
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx.i, align 8
  %add.i = add nuw i64 %i.095.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %97)
  %cmp4.i = icmp eq i64 %add.i, %97
  %call.i = tail call i32 @hl_mmu_map_page(ptr noundef %ctx, i64 noundef %next_vaddr.093.i, i64 noundef %101, i32 noundef %94, i1 noundef zeroext %cmp4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i250 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i250, label %if.end.i253, label %do.end.i252

do.end.i252:                                      ; preds = %for.body.i
  %dev.i251 = getelementptr inbounds %struct.hl_device, ptr %92, i32 0, i32 6
  %102 = ptrtoint ptr %dev.i251 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i251, align 4
  %handle.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %84, i32 0, i32 9
  %104 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %handle.i, align 4
  %106 = ptrtoint ptr %npages.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %npages.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.106, i32 noundef %105, i64 noundef %107, i64 noundef %i.095.i) #15
  %call8.i = tail call zeroext i1 @hl_is_dram_va(ptr noundef %92, i64 noundef %call99) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %i.095.i)
  %cmp1096.not.i = icmp eq i64 %i.095.i, 0
  br i1 %cmp1096.not.i, label %do.end.i252.if.then109_crit_edge, label %for.body12.lr.ph.i

do.end.i252.if.then109_crit_edge:                 ; preds = %do.end.i252
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

for.body12.lr.ph.i:                               ; preds = %do.end.i252
  %pldm.i = getelementptr inbounds %struct.hl_device, ptr %92, i32 0, i32 111
  %call8.not.i = xor i1 %call8.i, true
  br label %for.body12.i

if.end.i253:                                      ; preds = %for.body.i
  %add6.i = add i64 %next_vaddr.093.i, %conv.i
  %108 = ptrtoint ptr %npages.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %npages.i, align 8
  %cmp.i = icmp ult i64 %add.i, %109
  br i1 %cmp.i, label %if.end.i253.for.body.i_crit_edge, label %if.end.i253.if.end115_crit_edge

if.end.i253.if.end115_crit_edge:                  ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.end.i253.for.body.i_crit_edge:                 ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body12.i:                                     ; preds = %for.inc45.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %i.198.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %add13.i, %for.inc45.i.for.body12.i_crit_edge ]
  %next_vaddr.197.i = phi i64 [ %call99, %for.body12.lr.ph.i ], [ %add36.i, %for.inc45.i.for.body12.i_crit_edge ]
  %add13.i = add nuw i64 %i.198.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i, i64 %i.095.i)
  %cmp14.i = icmp eq i64 %add13.i, %i.095.i
  %call16.i = tail call i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %next_vaddr.197.i, i32 noundef %94, i1 noundef zeroext %cmp14.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.body12.i.if.end34.i_crit_edge, label %do.body19.i

for.body12.i.if.end34.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

do.body19.i:                                      ; preds = %for.body12.i
  %call20.i = tail call i32 @___ratelimit(ptr noundef nonnull @map_phys_pg_pack._rs, ptr noundef nonnull @.str.107) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.if.end34.i_crit_edge, label %do.end25.i

do.body19.i.if.end34.i_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %dev.i251 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i251, align 4
  %112 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %handle.i, align 4
  %114 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pages.i, align 4
  %idxprom29.i = trunc i64 %i.198.i to i32
  %arrayidx30.i = getelementptr i64, ptr %115, i32 %idxprom29.i
  %116 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx30.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.109, i32 noundef %113, i64 noundef %next_vaddr.197.i, i64 noundef %117, i32 noundef %94) #15
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end25.i, %do.body19.i.if.end34.i_crit_edge, %for.body12.i.if.end34.i_crit_edge
  %add36.i = add i64 %next_vaddr.197.i, %conv.i
  %118 = ptrtoint ptr %pldm.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %pldm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool38.not.i = icmp eq i8 %119, 0
  br i1 %tobool38.not.i, label %lor.lhs.false.i, label %if.end34.i.if.then43.i_crit_edge

if.end34.i.if.then43.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i

lor.lhs.false.i:                                  ; preds = %if.end34.i
  %and.i = and i64 %i.198.i, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp41.i = icmp eq i64 %and.i, 0
  %or.cond.i = select i1 %call8.not.i, i1 %cmp41.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then43.i_crit_edge, label %lor.lhs.false.i.for.inc45.i_crit_edge

lor.lhs.false.i.for.inc45.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i

lor.lhs.false.i.if.then43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i

if.then43.i:                                      ; preds = %lor.lhs.false.i.if.then43.i_crit_edge, %if.end34.i.if.then43.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #11
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %if.then43.i, %lor.lhs.false.i.for.inc45.i_crit_edge
  %cmp10.i = icmp ult i64 %add13.i, %i.095.i
  br i1 %cmp10.i, label %for.inc45.i.for.body12.i_crit_edge, label %for.inc45.i.if.then109_crit_edge

for.inc45.i.if.then109_crit_edge:                 ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

for.inc45.i.for.body12.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12.i

if.then109:                                       ; preds = %for.inc45.i.if.then109_crit_edge, %do.end.i252.if.then109_crit_edge
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #11
  %dev114 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %120 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.96, i32 noundef %handle.1303) #15
  br label %map_err

if.end115:                                        ; preds = %if.end.i253.if.end115_crit_edge, %if.end106.if.end115_crit_edge
  %122 = ptrtoint ptr %vm_type.1299 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vm_type.1299, align 4
  %or = or i32 %123, 8
  %asid116 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %124 = ptrtoint ptr %asid116 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %asid116, align 8
  %126 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %total_size, align 8
  %call118 = tail call i32 @hl_mmu_invalidate_cache_range(ptr noundef %1, i1 noundef zeroext false, i32 noundef %or, i32 noundef %125, i64 noundef %call99, i64 noundef %127) #11
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool120.not = icmp eq i32 %call118, 0
  br i1 %tobool120.not, label %if.end122, label %if.end115.map_err_crit_edge

if.end115.map_err_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_err

if.end122:                                        ; preds = %if.end115
  %offset123 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %84, i32 0, i32 10
  %128 = ptrtoint ptr %offset123 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset123, align 8
  %conv124 = zext i32 %129 to i64
  %add = add i64 %call99, %conv124
  %ptr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %call7.i.i, i32 0, i32 2
  %130 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %vm_type.1299, ptr %ptr, align 8
  %vaddr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %call7.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %vaddr to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %add, ptr %vaddr, align 8
  %mem_hash_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mem_hash_lock, i32 noundef 0) #11
  %conv125 = trunc i64 %add to i32
  %mul.i.i = mul i32 %conv125, 1640531527
  %shr.i = lshr i32 %mul.i.i, 25
  %arrayidx127 = getelementptr [128 x %struct.hlist_head], ptr %ctx, i32 0, i32 %shr.i
  %132 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx127, align 4
  %134 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %133, ptr %call7.i.i, align 8
  %tobool.not.i255 = icmp eq ptr %133, null
  br i1 %tobool.not.i255, label %if.end122.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end122.hlist_add_head.exit_crit_edge:          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end122.hlist_add_head.exit_crit_edge
  %136 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %call7.i.i, ptr %arrayidx127, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %arrayidx127, ptr %pprev34.i, align 4
  tail call void @mutex_unlock(ptr noundef %mem_hash_lock) #11
  %138 = ptrtoint ptr %device_addr to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %add, ptr %device_addr, align 8
  br i1 %tobool.not, label %hlist_add_head.exit.cleanup152_crit_edge, label %if.then130

hlist_add_head.exit.cleanup152_crit_edge:         ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup152

if.then130:                                       ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call131 = tail call fastcc i32 @free_phys_pg_pack(ptr noundef %1, ptr noundef %84)
  br label %cleanup152

map_err:                                          ; preds = %if.end115.map_err_crit_edge, %if.then109
  %rc.2 = phi i32 [ %call.i, %if.then109 ], [ %call118, %if.end115.map_err_crit_edge ]
  %139 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %total_size, align 8
  %add134 = add i64 %call99, -1
  %sub135 = add i64 %add134, %140
  tail call void @mutex_lock_nested(ptr noundef %va_range.2297, i32 noundef 0) #11
  %list.i = getelementptr inbounds %struct.hl_va_range, ptr %va_range.2297, i32 0, i32 1
  %call.i256 = tail call fastcc i32 @add_va_block_locked(ptr noundef %1, ptr noundef %list.i, i64 noundef %call99, i64 noundef %sub135) #11
  tail call void @mutex_unlock(ptr noundef %va_range.2297) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool137.not = icmp eq i32 %call.i256, 0
  br i1 %tobool137.not, label %map_err.va_block_err_crit_edge, label %do.end141

map_err.va_block_err_crit_edge:                   ; preds = %map_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %va_block_err

do.end141:                                        ; preds = %map_err
  call void @__sanitizer_cov_trace_pc() #13
  %dev142 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %141 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev142, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %142, ptr noundef nonnull @.str.99, i32 noundef %handle.1303, i64 noundef %call99) #15
  br label %va_block_err

va_block_err:                                     ; preds = %do.end141, %map_err.va_block_err_crit_edge, %do.end104, %do.end81
  %rc.3 = phi i32 [ -22, %do.end81 ], [ %rc.2, %do.end141 ], [ %rc.2, %map_err.va_block_err_crit_edge ], [ -12, %do.end104 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %shared_err

shared_err:                                       ; preds = %va_block_err, %if.end66.shared_err_crit_edge, %do.end64
  %userptr.1294 = phi ptr [ %userptr.1295, %va_block_err ], [ null, %do.end64 ], [ %userptr.1295, %if.end66.shared_err_crit_edge ]
  %rc.4 = phi i32 [ %rc.3, %va_block_err ], [ -1, %do.end64 ], [ -12, %if.end66.shared_err_crit_edge ]
  %143 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %phys_pg_pack, align 4
  %mapping_cnt144 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %144, i32 0, i32 4
  %call.i.i248 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mapping_cnt144, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mapping_cnt144, i32 1, i32 3, i32 1) #11
  %145 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mapping_cnt144, ptr %mapping_cnt144, i32 1, ptr elementtype(i32) %mapping_cnt144) #11, !srcloc !366
  br i1 %tobool.not, label %shared_err.cleanup152_crit_edge, label %if.then146

shared_err.cleanup152_crit_edge:                  ; preds = %shared_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup152

if.then146:                                       ; preds = %shared_err
  call void @__sanitizer_cov_trace_pc() #13
  %call147 = tail call fastcc i32 @free_phys_pg_pack(ptr noundef %1, ptr noundef %144)
  br label %if.then150

if.then150:                                       ; preds = %if.then146, %cleanup
  %userptr.2.ph = phi ptr [ %call7.i.i.i, %cleanup ], [ %userptr.1294, %if.then146 ]
  %rc.5.ph = phi i32 [ %call9, %cleanup ], [ %rc.4, %if.then146 ]
  tail call void @hl_unpin_host_memory(ptr noundef %1, ptr noundef %userptr.2.ph) #11
  tail call void @kfree(ptr noundef %userptr.2.ph) #11
  br label %cleanup152

cleanup152:                                       ; preds = %if.then150, %shared_err.cleanup152_crit_edge, %if.then130, %hlist_add_head.exit.cleanup152_crit_edge, %if.then39, %cleanup.thread276
  %retval.1 = phi i32 [ -22, %if.then39 ], [ %call131, %if.then130 ], [ 0, %hlist_add_head.exit.cleanup152_crit_edge ], [ %rc.5.ph, %if.then150 ], [ %retval.0.i249.ph, %cleanup.thread276 ], [ %rc.4, %shared_err.cleanup152_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_pg_pack) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unmap_device_va(ptr noundef %ctx, ptr nocapture noundef readonly %args, i1 noundef zeroext %ctx_free) unnamed_addr #0 align 64 {
entry:
  %phys_pg_pack = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_pg_pack) #11
  %0 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %phys_pg_pack, align 4
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %args, align 8
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %3 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev1, align 4
  %mem_hash_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mem_hash_lock, i32 noundef 0) #11
  %conv = trunc i64 %2 to i32
  %mul.i.i = mul i32 %conv, 1640531527
  %shr.i = lshr i32 %mul.i.i, 25
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr %ctx, i32 0, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %hnode.0.in = phi ptr [ %arrayidx, %entry ], [ %hnode.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %hnode.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %hnode.0 = load ptr, ptr %hnode.0.in, align 4
  %tobool3.not = icmp eq ptr %hnode.0, null
  br i1 %tobool3.not, label %if.then17.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %vaddr4 = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.0, i32 0, i32 1
  %6 = ptrtoint ptr %vaddr4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vaddr4, align 8
  %cmp = icmp eq i64 %2, %7
  br i1 %cmp, label %if.end19, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then17.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mem_hash_lock) #11
  %dev = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.111, i64 noundef %2) #15
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %hnode.0, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i.i, label %if.end19.hash_del.exit_crit_edge, label %if.then.i.i

if.end19.hash_del.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end19
  %12 = ptrtoint ptr %hnode.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hnode.0, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %tobool.not.i3.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %16 = ptrtoint ptr %hnode.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %hnode.0, align 4
  %17 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end19.hash_del.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mem_hash_lock) #11
  %ptr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.0, i32 0, i32 2
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp22 = icmp eq i32 %21, 1
  br i1 %cmp22, label %if.then24, label %if.else44

if.then24:                                        ; preds = %hash_del.exit
  %call26 = call fastcc i32 @init_phys_pg_pack_from_userptr(ptr noundef %ctx, ptr noundef %19, ptr noundef nonnull %phys_pg_pack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %dev32 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %22 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.81, i64 noundef %2) #15
  br label %vm_type_err

if.end33:                                         ; preds = %if.then24
  %24 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phys_pg_pack, align 4
  %page_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_size, align 4
  %page_size35 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 33, i32 5, i32 15
  %28 = ptrtoint ptr %page_size35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page_size35, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp36 = icmp eq i32 %27, %29
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %va_range39 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 6
  %30 = ptrtoint ptr %va_range39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va_range39, align 8
  br label %if.end57

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx42 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx42, align 4
  br label %if.end57

if.else44:                                        ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp45 = icmp eq i32 %21, 2
  br i1 %cmp45, label %if.then47, label %do.end54

if.then47:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx49 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx49, align 8
  %36 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %19, ptr %phys_pg_pack, align 4
  br label %if.end57

do.end54:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  %dev55 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %37 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.116, i64 noundef %2) #15
  br label %vm_type_err

if.end57:                                         ; preds = %if.then47, %if.else, %if.then38
  %va_range.0 = phi ptr [ %31, %if.then38 ], [ %33, %if.else ], [ %35, %if.then47 ]
  %userptr.0 = phi ptr [ %19, %if.then38 ], [ %19, %if.else ], [ null, %if.then47 ]
  %39 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phys_pg_pack, align 4
  %mapping_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %40, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mapping_cnt, i32 noundef 4) #11
  %41 = ptrtoint ptr %mapping_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %mapping_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp59 = icmp eq i32 %42, 0
  br i1 %cmp59, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end57
  %dev65 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %43 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.119, i64 noundef %2) #15
  br i1 %cmp22, label %if.then307, label %do.end64.vm_type_err_crit_edge

do.end64.vm_type_err_crit_edge:                   ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %vm_type_err

if.end66:                                         ; preds = %if.end57
  br i1 %cmp22, label %if.end66.if.else272_crit_edge, label %land.lhs.true

if.end66.if.else272_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else272

land.lhs.true:                                    ; preds = %if.end66
  %page_size68 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %40, i32 0, i32 7
  %45 = ptrtoint ptr %page_size68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_size68, align 4
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #11, !range !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %.not508 = icmp eq i32 %47, 1
  br i1 %.not508, label %land.lhs.true.if.else272_crit_edge, label %if.then70

land.lhs.true.if.else272_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else272

if.then70:                                        ; preds = %land.lhs.true
  %dram_base_address = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 33, i32 13
  %48 = ptrtoint ptr %dram_base_address to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dram_base_address, align 8
  %sub = sub i64 %2, %49
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp251 = icmp ult i64 %sub, 4294967296
  br i1 %cmp251, label %if.then255, label %if.else261, !prof !358

if.then255:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %conv256 = trunc i64 %sub to i32
  %div259 = udiv i32 %conv256, %46
  %conv260 = zext i32 %div259 to i64
  br label %if.end265

if.else261:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %sub) #14, !srcloc !359
  %asmresult1.i = extractvalue { i64, i64 } %50, 1
  br label %if.end265

if.end265:                                        ; preds = %if.else261, %if.then255
  %_tmp.0 = phi i64 [ %conv260, %if.then255 ], [ %asmresult1.i, %if.else261 ]
  %conv269 = zext i32 %46 to i64
  %mul270 = mul i64 %_tmp.0, %conv269
  %add271 = add i64 %mul270, %49
  br label %if.end278

if.else272:                                       ; preds = %land.lhs.true.if.else272_crit_edge, %if.end66.if.else272_crit_edge
  %page_size273 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %40, i32 0, i32 7
  %51 = ptrtoint ptr %page_size273 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %page_size273, align 4
  %conv274 = zext i32 %52 to i64
  %neg276 = sub nsw i64 0, %conv274
  %and277 = and i64 %2, %neg276
  br label %if.end278

if.end278:                                        ; preds = %if.else272, %if.end265
  %vaddr.0 = phi i64 [ %and277, %if.else272 ], [ %add271, %if.end265 ]
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mmu_lock, i32 noundef 0) #11
  %53 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev1, align 4
  %call.i = tail call zeroext i1 @hl_is_dram_va(ptr noundef %54, i64 noundef %vaddr.0) #11
  %page_size2.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %40, i32 0, i32 7
  %55 = ptrtoint ptr %page_size2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_size2.i, align 4
  %npages.i = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %40, i32 0, i32 2
  %57 = ptrtoint ptr %npages.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %npages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %cmp34.not.i = icmp eq i64 %58, 0
  br i1 %cmp34.not.i, label %if.end278.unmap_phys_pg_pack.exit_crit_edge, label %for.body.lr.ph.i

if.end278.unmap_phys_pg_pack.exit_crit_edge:      ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_phys_pg_pack.exit

for.body.lr.ph.i:                                 ; preds = %if.end278
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %54, i32 0, i32 6
  %pldm.i = getelementptr inbounds %struct.hl_device, ptr %54, i32 0, i32 111
  %call.not.i = xor i1 %call.i, true
  %conv20.i = zext i32 %56 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %59 = phi i64 [ %58, %for.body.lr.ph.i ], [ %65, %for.inc.i.for.body.i_crit_edge ]
  %i.036.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %next_vaddr.035.i = phi i64 [ %vaddr.0, %for.body.lr.ph.i ], [ %add21.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add nuw i64 %i.036.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %59)
  %cmp4.i = icmp eq i64 %add.i, %59
  %call5.i = tail call i32 @hl_mmu_unmap_page(ptr noundef %ctx, i64 noundef %next_vaddr.035.i, i32 noundef %56, i1 noundef zeroext %cmp4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end12.i_crit_edge, label %do.body.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

do.body.i:                                        ; preds = %for.body.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @unmap_phys_pg_pack._rs, ptr noundef nonnull @__func__.unmap_phys_pg_pack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.if.end12.i_crit_edge, label %do.end.i

do.body.i.if.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.123, i64 noundef %next_vaddr.035.i) #15
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %do.body.i.if.end12.i_crit_edge, %for.body.i.if.end12.i_crit_edge
  %62 = ptrtoint ptr %pldm.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pldm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool13.not.i = icmp eq i8 %63, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i, label %if.end12.i.if.then18.i_crit_edge

if.end12.i.if.then18.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %and.i480 = and i64 %i.036.i, 32767
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i480)
  %cmp16.i = icmp eq i64 %and.i480, 0
  %or.cond.i = select i1 %call.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then18.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %if.end12.i.if.then18.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 200, i32 noundef 2) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %add21.i = add i64 %next_vaddr.035.i, %conv20.i
  %64 = ptrtoint ptr %npages.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %npages.i, align 8
  %cmp.i = icmp ult i64 %add.i, %65
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.unmap_phys_pg_pack.exit_crit_edge

for.inc.i.unmap_phys_pg_pack.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_phys_pg_pack.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

unmap_phys_pg_pack.exit:                          ; preds = %for.inc.i.unmap_phys_pg_pack.exit_crit_edge, %if.end278.unmap_phys_pg_pack.exit_crit_edge
  br i1 %ctx_free, label %if.end282.thread, label %if.then285

if.end282.thread:                                 ; preds = %unmap_phys_pg_pack.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #11
  br label %if.end300

if.then285:                                       ; preds = %unmap_phys_pg_pack.exit
  %66 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %19, align 4
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %68 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %asid, align 8
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %40, i32 0, i32 3
  %70 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %total_size, align 8
  %call281 = tail call i32 @hl_mmu_invalidate_cache_range(ptr noundef %4, i1 noundef zeroext true, i32 noundef %67, i32 noundef %69, i64 noundef %vaddr.0, i64 noundef %71) #11
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #11
  %72 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %total_size, align 8
  %add287 = add i64 %vaddr.0, -1
  %sub288 = add i64 %add287, %73
  tail call void @mutex_lock_nested(ptr noundef %va_range.0, i32 noundef 0) #11
  %list.i = getelementptr inbounds %struct.hl_va_range, ptr %va_range.0, i32 0, i32 1
  %call.i481 = tail call fastcc i32 @add_va_block_locked(ptr noundef %4, ptr noundef %list.i, i64 noundef %vaddr.0, i64 noundef %sub288) #11
  tail call void @mutex_unlock(ptr noundef %va_range.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i481)
  %tobool290.not = icmp eq i32 %call.i481, 0
  br i1 %tobool290.not, label %if.then285.if.end300_crit_edge, label %do.end294

if.then285.if.end300_crit_edge:                   ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end300

do.end294:                                        ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #13
  %dev295 = getelementptr inbounds %struct.hl_device, ptr %4, i32 0, i32 6
  %74 = ptrtoint ptr %dev295 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev295, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.6, i64 noundef %vaddr.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool296.not = icmp eq i32 %call281, 0
  %spec.select471 = select i1 %tobool296.not, i32 %call.i481, i32 %call281
  br label %if.end300

if.end300:                                        ; preds = %do.end294, %if.then285.if.end300_crit_edge, %if.end282.thread
  %rc.3 = phi i32 [ %call281, %if.then285.if.end300_crit_edge ], [ %spec.select471, %do.end294 ], [ 0, %if.end282.thread ]
  %call.i.i472 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mapping_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mapping_cnt, i32 1, i32 3, i32 1) #11
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mapping_cnt, ptr %mapping_cnt, i32 1, ptr elementtype(i32) %mapping_cnt) #11, !srcloc !366
  tail call void @kfree(ptr noundef nonnull %hnode.0) #11
  br i1 %cmp22, label %if.then303, label %if.end300.cleanup_crit_edge

if.end300.cleanup_crit_edge:                      ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then303:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  %call304 = tail call fastcc i32 @free_phys_pg_pack(ptr noundef %4, ptr noundef %40)
  tail call void @hl_unpin_host_memory(ptr noundef %4, ptr noundef %userptr.0) #11
  tail call void @kfree(ptr noundef %userptr.0) #11
  br label %cleanup

if.then307:                                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call308 = tail call fastcc i32 @free_phys_pg_pack(ptr noundef %4, ptr noundef %40)
  br label %vm_type_err

vm_type_err:                                      ; preds = %if.then307, %do.end64.vm_type_err_crit_edge, %do.end54, %do.end31
  %rc.4 = phi i32 [ %call26, %do.end31 ], [ -22, %if.then307 ], [ -22, %do.end64.vm_type_err_crit_edge ], [ -14, %do.end54 ]
  tail call void @mutex_lock_nested(ptr noundef %mem_hash_lock, i32 noundef 0) #11
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %79 = ptrtoint ptr %hnode.0 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %78, ptr %hnode.0, align 4
  %tobool.not.i484 = icmp eq ptr %78, null
  br i1 %tobool.not.i484, label %vm_type_err.hlist_add_head.exit_crit_edge, label %do.body12.i

vm_type_err.hlist_add_head.exit_crit_edge:        ; preds = %vm_type_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %vm_type_err
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %78, i32 0, i32 1
  %80 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %hnode.0, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %vm_type_err.hlist_add_head.exit_crit_edge
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %hnode.0, ptr %arrayidx, align 4
  %82 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx, ptr %pprev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mem_hash_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.then303, %if.end300.cleanup_crit_edge, %if.then17.critedge
  %retval.0 = phi i32 [ %rc.4, %hlist_add_head.exit ], [ -22, %if.then17.critedge ], [ %rc.3, %if.then303 ], [ %rc.3, %if.end300.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_pg_pack) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @export_dmabuf_from_handle(ptr noundef %ctx, i64 noundef %handle, i32 noundef %flags, ptr nocapture noundef writeonly %dmabuf_fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %handle)
  %tobool.not = icmp ult i64 %handle, 4294967296
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_handle, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !360

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_handle.__UNIQUE_ID_ddebug312, ptr noundef %3, ptr noundef nonnull @.str.125, i64 noundef %handle) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 2
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 3
  %conv9 = trunc i64 %handle to i32
  %call10 = tail call ptr @idr_find(ptr noundef %phys_pg_pack_handles, i32 noundef %conv9) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end32

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_handle, %if.then26)) #11
          to label %cleanup [label %if.then26], !srcloc !360

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %dev27 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_handle.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.126, i32 noundef %conv9) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end8
  %exporting_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call10, i32 0, i32 5
  %6 = ptrtoint ptr %exporting_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exporting_cnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %exporting_cnt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  %8 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %for.cond.preheader, label %do.body36

for.cond.preheader:                               ; preds = %if.end32
  %npages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call10, i32 0, i32 2
  %10 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp55162.not = icmp eq i64 %11, 0
  br i1 %cmp55162.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dram_pci_bar_start = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 66
  %12 = ptrtoint ptr %dram_pci_bar_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dram_pci_bar_start, align 8
  %pages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call10, i32 0, i32 1
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %dram_base_address = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 13
  %16 = ptrtoint ptr %dram_base_address to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dram_base_address, align 8
  %page_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call10, i32 0, i32 7
  %18 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_size, align 4
  %conv57 = zext i32 %19 to i64
  %dram_pci_bar_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 17
  %20 = ptrtoint ptr %dram_pci_bar_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dram_pci_bar_size, align 8
  %add60 = add i64 %21, %13
  br label %for.body

do.body36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_handle, %if.then48)) #11
          to label %err_dec_exporting_cnt [label %if.then48], !srcloc !360

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %dev49 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_handle.__UNIQUE_ID_ddebug314, ptr noundef %23, ptr noundef nonnull @.str.127, i64 noundef %handle) #11
  br label %err_dec_exporting_cnt

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %15, i32 %i.0163
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx, align 8
  %sub = sub i64 %25, %17
  %add = add i64 %sub, %13
  %add58 = add i64 %add, %conv57
  call void @__sanitizer_cov_trace_cmp8(i64 %add58, i64 %add60)
  %cmp61 = icmp ugt i64 %add58, %add60
  call void @__sanitizer_cov_trace_cmp8(i64 %add58, i64 %add)
  %cmp66 = icmp ult i64 %add58, %add
  %or.cond = or i1 %cmp61, %cmp66
  br i1 %or.cond, label %do.body69, label %for.inc

do.body69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_handle, %if.then81)) #11
          to label %err_dec_exporting_cnt [label %if.then81], !srcloc !360

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  %dev82 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev82, align 4
  %28 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages, align 4
  %arrayidx84 = getelementptr i64, ptr %29, i32 %i.0163
  %30 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx84, align 8
  %32 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_handle.__UNIQUE_ID_ddebug315, ptr noundef %27, ptr noundef nonnull @.str.128, i64 noundef %31, i32 noundef %33) #11
  br label %err_dec_exporting_cnt

for.inc:                                          ; preds = %for.body
  %inc90 = add i32 %i.0163, 1
  %conv54 = sext i32 %inc90 to i64
  %cmp55 = icmp ugt i64 %11, %conv54
  br i1 %cmp55, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 24) #16
  %tobool92.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool92.not, label %for.end.err_dec_exporting_cnt_crit_edge, label %if.end94

for.end.err_dec_exporting_cnt_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dec_exporting_cnt

if.end94:                                         ; preds = %for.end
  %phys_pg_pack95 = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %phys_pg_pack95 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call10, ptr %phys_pg_pack95, align 8
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call10, i32 0, i32 3
  %36 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %total_size, align 8
  %call96 = tail call fastcc i32 @export_dmabuf_common(ptr noundef %ctx, ptr noundef nonnull %call7.i.i, i64 noundef %37, i32 noundef %flags, ptr noundef %dmabuf_fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end94.cleanup_crit_edge, label %err_free_dmabuf_wrapper

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_dmabuf_wrapper:                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_dec_exporting_cnt

err_dec_exporting_cnt:                            ; preds = %err_free_dmabuf_wrapper, %for.end.err_dec_exporting_cnt_crit_edge, %if.then81, %do.body69, %if.then48, %do.body36
  %rc.0 = phi i32 [ %call96, %err_free_dmabuf_wrapper ], [ -22, %if.then48 ], [ -22, %if.then81 ], [ -12, %for.end.err_dec_exporting_cnt_crit_edge ], [ -22, %do.body36 ], [ -22, %do.body69 ]
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %38 = ptrtoint ptr %exporting_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %exporting_cnt, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %exporting_cnt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %err_dec_exporting_cnt, %if.end94.cleanup_crit_edge, %if.then26, %if.then12, %if.then7, %do.body
  %retval.0 = phi i32 [ %rc.0, %err_dec_exporting_cnt ], [ -22, %if.then7 ], [ -22, %if.then26 ], [ 0, %if.end94.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @export_dmabuf_from_addr(ptr noundef %ctx, i64 noundef %device_addr, i64 noundef %size, i32 noundef %flags, ptr nocapture noundef writeonly %dmabuf_fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %and = and i64 %device_addr, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_addr, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !360

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_addr.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.139, i64 noundef %device_addr, i32 noundef 4096) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %size)
  %cmp6 = icmp ult i64 %size, 4096
  br i1 %cmp6, label %do.body8, label %if.end25

do.body8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_addr, %if.then20)) #11
          to label %cleanup [label %if.then20], !srcloc !360

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_addr.__UNIQUE_ID_ddebug309, ptr noundef %5, ptr noundef nonnull @.str.140, i64 noundef %size, i32 noundef 4096) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  %dram_user_base_address = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 15
  %6 = ptrtoint ptr %dram_user_base_address to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dram_user_base_address, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %device_addr)
  %cmp26 = icmp ugt i64 %7, %device_addr
  br i1 %cmp26, label %if.end25.do.body32_crit_edge, label %lor.lhs.false

if.end25.do.body32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

lor.lhs.false:                                    ; preds = %if.end25
  %add = add i64 %size, %device_addr
  %dram_end_address = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 14
  %8 = ptrtoint ptr %dram_end_address to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dram_end_address, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp27 = icmp ugt i64 %add, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %device_addr)
  %cmp30 = icmp ult i64 %add, %device_addr
  %or.cond = or i1 %cmp30, %cmp27
  br i1 %or.cond, label %lor.lhs.false.do.body32_crit_edge, label %if.end49

lor.lhs.false.do.body32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

do.body32:                                        ; preds = %lor.lhs.false.do.body32_crit_edge, %if.end25.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_addr, %if.then44)) #11
          to label %cleanup [label %if.then44], !srcloc !360

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %dev45 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_addr.__UNIQUE_ID_ddebug310, ptr noundef %11, ptr noundef nonnull @.str.141, i64 noundef %device_addr, i64 noundef %size) #11
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  %dram_pci_bar_start = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 66
  %12 = ptrtoint ptr %dram_pci_bar_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dram_pci_bar_start, align 8
  %dram_base_address = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 13
  %14 = ptrtoint ptr %dram_base_address to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dram_base_address, align 8
  %sub = sub i64 %device_addr, %15
  %add50 = add i64 %sub, %13
  %add51 = add i64 %add50, %size
  %dram_pci_bar_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 17
  %16 = ptrtoint ptr %dram_pci_bar_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dram_pci_bar_size, align 8
  %add53 = add i64 %17, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add51, i64 %add53)
  %cmp54 = icmp ugt i64 %add51, %add53
  call void @__sanitizer_cov_trace_cmp8(i64 %add51, i64 %add50)
  %cmp57 = icmp ult i64 %add51, %add50
  %or.cond122 = or i1 %cmp54, %cmp57
  br i1 %or.cond122, label %do.body59, label %if.end76

do.body59:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@export_dmabuf_from_addr, %if.then71)) #11
          to label %cleanup [label %if.then71], !srcloc !360

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %dev72 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @export_dmabuf_from_addr.__UNIQUE_ID_ddebug311, ptr noundef %19, ptr noundef nonnull @.str.142, i64 noundef %device_addr, i64 noundef %size) #11
  br label %cleanup

if.end76:                                         ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 24) #16
  %tobool78.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool78.not, label %if.end76.cleanup_crit_edge, label %if.end80

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  %device_address = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %device_address to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %device_addr, ptr %device_address, align 8
  %call81 = tail call fastcc i32 @export_dmabuf_common(ptr noundef %ctx, ptr noundef nonnull %call7.i.i, i64 noundef %size, i32 noundef %flags, ptr noundef %dmabuf_fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.cleanup_crit_edge, label %err_free_dmabuf_wrapper

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_dmabuf_wrapper:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_dmabuf_wrapper, %if.end80.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.then71, %do.body59, %if.then44, %do.body32, %if.then20, %do.body8, %if.then4, %do.body
  %retval.0 = phi i32 [ %call81, %err_free_dmabuf_wrapper ], [ -22, %if.then4 ], [ -22, %if.then20 ], [ -22, %if.then44 ], [ -22, %if.then71 ], [ -12, %if.end76.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body8 ], [ -22, %do.body32 ], [ -22, %do.body59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_pin_host_memory(ptr noundef %hdev, i64 noundef %addr, i64 noundef %size, ptr noundef %userptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef 0) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i64 %size, %addr
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %addr)
  %cmp = icmp ult i64 %add, %addr
  br i1 %cmp, label %if.end.do.end8_crit_edge, label %lor.lhs.false

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

lor.lhs.false:                                    ; preds = %if.end
  %add2 = add i64 %add, 4095
  %and = and i64 %add2, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %add)
  %cmp4 = icmp ult i64 %and, %add
  br i1 %cmp4, label %lor.lhs.false.do.end8_crit_edge, label %if.end10

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %dev9 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %2 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i64 noundef %addr, i64 noundef %size) #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.read_register.i32(metadata !347) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %pid11 = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 7
  %10 = ptrtoint ptr %pid11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pid11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 12) #16
  %sgt = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 4
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %sgt, align 4
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %and17 = and i64 %addr, -4096
  %13 = trunc i64 %addr to i32
  %conv = and i32 %13, 4095
  %sub = sub i64 %and, %and17
  %shr = lshr exact i64 %sub, 12
  %conv22 = trunc i64 %shr to i32
  %size23 = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 9
  %14 = ptrtoint ptr %size23 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %size, ptr %size23, align 8
  %addr24 = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 8
  %15 = ptrtoint ptr %addr24 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %addr, ptr %addr24, align 8
  %dma_mapped = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 10
  %16 = ptrtoint ptr %dma_mapped to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dma_mapped, align 8
  %job_node = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 1
  %17 = ptrtoint ptr %job_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %job_node, ptr %job_node, align 4
  %prev.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %job_node, ptr %prev.i, align 4
  %19 = inttoptr i32 %13 to ptr
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i64 %size, i32 -1226833920) #14, !srcloc !367
  %asmresult.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.143, i64 noundef %addr) #15
  br label %do.end30

if.end.i:                                         ; preds = %if.end16
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv22, i32 4) #11
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %kvmalloc_array.exit.thread.i, label %kvmalloc_array.exit.i, !prof !363

kvmalloc_array.exit.thread.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pages60.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 2
  %25 = ptrtoint ptr %pages60.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pages60.i, align 4
  br label %do.end30

kvmalloc_array.exit.i:                            ; preds = %if.end.i
  %26 = extractvalue { i32, i1 } %23, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %26, i32 noundef 3264, i32 noundef -1) #17
  %pages.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 2
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i, ptr %pages.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %kvmalloc_array.exit.i.do.end30_crit_edge, label %if.end5.i

kvmalloc_array.exit.i.do.end30_crit_edge:         ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

if.end5.i:                                        ; preds = %kvmalloc_array.exit.i
  %conv6.i = trunc i64 %and17 to i32
  %call8.i = tail call i32 @pin_user_pages_fast(i32 noundef %conv6.i, i32 noundef %conv22, i32 noundef 65553, ptr noundef nonnull %call.i.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %conv22)
  %cmp9.not.i = icmp eq i32 %call8.i, %conv22
  br i1 %cmp9.not.i, label %if.end20.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end5.i
  %dev15.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %28 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.146, i32 noundef %call8.i, i64 noundef %addr, i64 noundef %size, i32 noundef %conv22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp16.i = icmp slt i32 %call8.i, 0
  br i1 %cmp16.i, label %do.end14.i.destroy_pages.i_crit_edge, label %do.end14.i.put_pages.i_crit_edge

do.end14.i.put_pages.i_crit_edge:                 ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_pages.i

do.end14.i.destroy_pages.i_crit_edge:             ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_pages.i

if.end20.i:                                       ; preds = %if.end5.i
  %npages21.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 3
  %30 = ptrtoint ptr %npages21.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv22, ptr %npages21.i, align 8
  %31 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgt, align 4
  %33 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pages.i, align 4
  %conv23.i = trunc i64 %size to i32
  %call.i.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %32, ptr noundef %34, i32 noundef %conv22, i32 noundef %conv, i32 noundef %conv23.i, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp25.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp25.i, label %do.end30.i, label %if.end32

do.end30.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev31.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %35 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev31.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.149) #15
  br label %put_pages.i

put_pages.i:                                      ; preds = %do.end30.i, %do.end14.i.put_pages.i_crit_edge
  %rc.0.i = phi i32 [ %call.i.i, %do.end30.i ], [ -14, %do.end14.i.put_pages.i_crit_edge ]
  %npages.addr.0.i = phi i32 [ %conv22, %do.end30.i ], [ %call8.i, %do.end14.i.put_pages.i_crit_edge ]
  %37 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages.i, align 4
  tail call void @unpin_user_pages(ptr noundef %38, i32 noundef %npages.addr.0.i) #11
  br label %destroy_pages.i

destroy_pages.i:                                  ; preds = %put_pages.i, %do.end14.i.destroy_pages.i_crit_edge
  %rc.1.i = phi i32 [ %call8.i, %do.end14.i.destroy_pages.i_crit_edge ], [ %rc.0.i, %put_pages.i ]
  %39 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages.i, align 4
  tail call void @kvfree(ptr noundef %40) #11
  br label %do.end30

do.end30:                                         ; preds = %destroy_pages.i, %kvmalloc_array.exit.i.do.end30_crit_edge, %kvmalloc_array.exit.thread.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %kvmalloc_array.exit.thread.i ], [ -12, %kvmalloc_array.exit.i.do.end30_crit_edge ], [ -14, %do.end.i ], [ %rc.1.i, %destroy_pages.i ]
  %dev31 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %41 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.27, i64 noundef %addr) #15
  %43 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %44) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hl_debugfs_add_userptr(ptr noundef %hdev, ptr noundef %userptr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end30, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ %retval.0.i.ph, %do.end30 ], [ 0, %if.end32 ], [ -22, %do.end ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_userptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_unpin_host_memory(ptr noundef %hdev, ptr noundef %userptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hl_debugfs_remove_userptr(ptr noundef %hdev, ptr noundef %userptr) #11
  %dma_mapped = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 10
  %0 = ptrtoint ptr %dma_mapped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mapped, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 8
  %hl_dma_unmap_sg = getelementptr inbounds %struct.hl_asic_funcs, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %hl_dma_unmap_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hl_dma_unmap_sg, align 4
  %sgt = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 4
  %6 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  %dir = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 5
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir, align 8
  tail call void %5(ptr noundef %hdev, ptr noundef %9, i32 noundef %11, i32 noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pages = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 2
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %npages = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 3
  %16 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npages, align 8
  tail call void @unpin_user_pages_dirty_lock(ptr noundef %15, i32 noundef %17, i1 noundef zeroext true) #11
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  tail call void @kvfree(ptr noundef %19) #11
  %job_node = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %job_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %job_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %job_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %26 = ptrtoint ptr %job_node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %job_node, align 4
  %prev.i = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %sgt3 = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 4
  %28 = ptrtoint ptr %sgt3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sgt3, align 4
  tail call void @sg_free_table(ptr noundef %29) #11
  %30 = ptrtoint ptr %sgt3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgt3, align 4
  tail call void @kfree(ptr noundef %31) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_userptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_userptr_delete_list(ptr noundef %hdev, ptr noundef %userptr_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %userptr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userptr_list, align 4
  %cmp.not19 = icmp eq ptr %1, %userptr_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %userptr.0 = getelementptr i8, ptr %.pn.in20, i32 -4
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  tail call void @hl_unpin_host_memory(ptr noundef %hdev, ptr noundef %userptr.0)
  tail call void @kfree(ptr noundef %userptr.0) #11
  %cmp.not = icmp eq ptr %.pn, %userptr_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = ptrtoint ptr %userptr_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %userptr_list, ptr %userptr_list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %userptr_list, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %userptr_list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hl_userptr_is_pinned(ptr nocapture noundef readnone %hdev, i64 noundef %addr, i32 noundef %size, ptr noundef readonly %userptr_list, ptr nocapture noundef %userptr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %size to i64
  %0 = ptrtoint ptr %userptr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn17 = load ptr, ptr %userptr_list, align 4
  %storemerge18 = getelementptr i8, ptr %.pn17, i32 -4
  %1 = ptrtoint ptr %userptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %storemerge18, ptr %userptr, align 4
  %cmp.not19 = icmp eq ptr %.pn17, %userptr_list
  br i1 %cmp.not19, label %entry.return_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn17, %entry.for.body_crit_edge ]
  %addr1 = getelementptr i8, ptr %.pn20, i32 36
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %addr)
  %cmp2 = icmp eq i64 %3, %addr
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size3 = getelementptr i8, ptr %.pn20, i32 44
  %4 = ptrtoint ptr %size3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp4 = icmp eq i64 %5, %conv
  br i1 %cmp4, label %land.lhs.true.return_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn20, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -4
  %7 = ptrtoint ptr %userptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %storemerge, ptr %userptr, align 4
  %cmp.not = icmp eq ptr %.pn, %userptr_list
  br i1 %cmp.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.return_crit_edge ], [ false, %for.inc.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_vm_ctx_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dram_phys_mem = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_phys_mem, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %dram_phys_mem, i64 noundef 0) #11
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4
  %6 = ptrtoint ptr %dmmu to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dmmu, align 8
  %end_addr = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 1
  %8 = ptrtoint ptr %end_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end_addr, align 8
  %sub = add i64 %9, -1
  %dram_page_size3 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 35
  %10 = ptrtoint ptr %dram_page_size3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dram_page_size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %page_size = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 4, i32 15
  %12 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.false ], [ %11, %if.end.cond.end_crit_edge ]
  %pmmu = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5
  %14 = ptrtoint ptr %pmmu to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pmmu, align 8
  %end_addr9 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 1
  %16 = ptrtoint ptr %end_addr9 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %end_addr9, align 8
  %sub10 = add i64 %17, -1
  %page_size12 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 5, i32 15
  %18 = ptrtoint ptr %page_size12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_size12, align 8
  %pmmu_huge = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6
  %20 = ptrtoint ptr %pmmu_huge to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pmmu_huge, align 8
  %end_addr15 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 1
  %22 = ptrtoint ptr %end_addr15 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end_addr15, align 8
  %sub16 = add i64 %23, -1
  %page_size18 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %24 = ptrtoint ptr %page_size18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page_size18, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 128) #16
  %arrayidx.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 0
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %cond.end.free_va_range.i_crit_edge, label %for.cond.i

cond.end.free_va_range.i_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_va_range.i

for.cond.i:                                       ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 128) #16
  %arrayidx.1.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.1.i, label %for.cond.i.free_va_range.i_crit_edge, label %for.cond.1.i

for.cond.i.free_va_range.i_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_va_range.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 128) #16
  %arrayidx.2.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.2.i, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %call7.i.i.2.i, null
  br i1 %tobool.not.2.i, label %for.cond.1.i.free_va_range.i_crit_edge, label %for.cond.2.i

for.cond.1.i.free_va_range.i_crit_edge:           ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_va_range.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call4.i = tail call i32 @hl_mmu_ctx_init(ptr noundef %ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body8.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %asid.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %34 = ptrtoint ptr %asid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.151, i32 noundef %35) #15
  br label %free_va_range.i

do.body8.i:                                       ; preds = %for.cond.2.i
  %mem_hash_lock.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mem_hash_lock.i, ptr noundef nonnull @.str.153, ptr noundef nonnull @vm_ctx_init_with_ranges.__key) #11
  %36 = call ptr @memset(ptr %ctx, i32 0, i32 512)
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 8
  tail call void @__mutex_init(ptr noundef %38, ptr noundef nonnull @.str.155, ptr noundef nonnull @vm_ctx_init_with_ranges.__key.154) #11
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  %call18.i = tail call fastcc i32 @va_range_init(ptr noundef %3, ptr noundef %40, i64 noundef %15, i64 noundef %sub10, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %do.end23.i

do.end23.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev24.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev24.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.157) #15
  br label %mmu_ctx_fini.i

if.end25.i:                                       ; preds = %do.body8.i
  %pmmu_huge_range.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 85
  %43 = ptrtoint ptr %pmmu_huge_range.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pmmu_huge_range.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool26.not.i = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.1.i, align 4
  br i1 %tobool26.not.i, label %if.else.i, label %do.body28.i

do.body28.i:                                      ; preds = %if.end25.i
  tail call void @__mutex_init(ptr noundef %46, ptr noundef nonnull @.str.160, ptr noundef nonnull @vm_ctx_init_with_ranges.__key.159) #11
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.1.i, align 4
  %call36.i = tail call fastcc i32 @va_range_init(ptr noundef %3, ptr noundef %48, i64 noundef %21, i64 noundef %sub16, i32 noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.body28.i.do.body51.i_crit_edge, label %do.end41.i

do.body28.i.do.body51.i_crit_edge:                ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51.i

do.end41.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev42.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %49 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev42.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.162) #15
  br label %clear_host_va_range.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %46) #11
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 8
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %arrayidx.1.i, align 4
  br label %do.body51.i

do.body51.i:                                      ; preds = %if.else.i, %do.body28.i.do.body51.i_crit_edge
  %54 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.2.i, align 8
  tail call void @__mutex_init(ptr noundef %55, ptr noundef nonnull @.str.165, ptr noundef nonnull @vm_ctx_init_with_ranges.__key.164) #11
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.2.i, align 8
  %call59.i = tail call fastcc i32 @va_range_init(ptr noundef %3, ptr noundef %57, i64 noundef %7, i64 noundef %sub, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end66.i, label %do.end64.i

do.end64.i:                                       ; preds = %do.body51.i
  %dev65.i = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %58 = ptrtoint ptr %dev65.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev65.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.167) #15
  %60 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.2.i, align 8
  tail call void @mutex_destroy(ptr noundef %61) #11
  %62 = ptrtoint ptr %pmmu_huge_range.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pmmu_huge_range.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool71.not.i = icmp eq i8 %63, 0
  br i1 %tobool71.not.i, label %do.end64.i.if.end88.i_crit_edge, label %if.then72.i

do.end64.i.if.end88.i_crit_edge:                  ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.end66.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hl_debugfs_add_ctx_mem_hash(ptr noundef %3, ptr noundef %ctx) #11
  br label %cleanup

if.then72.i:                                      ; preds = %do.end64.i
  %64 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %65, i32 noundef 0) #11
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i, align 4
  %list.i = getelementptr inbounds %struct.hl_va_range, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %list.i, align 4
  %cmp.not1.i = icmp eq ptr %69, %list.i
  br i1 %cmp.not1.i, label %if.then72.i.clear_va_list_locked.exit_crit_edge, label %if.then72.i.for.body.i_crit_edge

if.then72.i.for.body.i_crit_edge:                 ; preds = %if.then72.i
  br label %for.body.i

if.then72.i.clear_va_list_locked.exit_crit_edge:  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_va_list_locked.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then72.i.for.body.i_crit_edge
  %va_block.02.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %69, %if.then72.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %va_block.02.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %tmp.0.i = load ptr, ptr %va_block.02.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %va_block.02.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %va_block.02.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i41, align 4
  %73 = ptrtoint ptr %va_block.02.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %va_block.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %77 = ptrtoint ptr %va_block.02.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %va_block.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.02.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %va_block.02.i) #11
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list.i
  br i1 %cmp.not.i, label %list_del.exit.i.clear_va_list_locked.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.clear_va_list_locked.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_va_list_locked.exit

clear_va_list_locked.exit:                        ; preds = %list_del.exit.i.clear_va_list_locked.exit_crit_edge, %if.then72.i.clear_va_list_locked.exit_crit_edge
  %79 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @mutex_unlock(ptr noundef %80) #11
  br label %clear_host_va_range.i

clear_host_va_range.i:                            ; preds = %clear_va_list_locked.exit, %do.end41.i
  %rc.0.ph.i = phi i32 [ %call59.i, %clear_va_list_locked.exit ], [ %call36.i, %do.end41.i ]
  %81 = ptrtoint ptr %pmmu_huge_range.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr.i = load i8, ptr %pmmu_huge_range.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool83.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool83.not.i, label %clear_host_va_range.i.if.end88.i_crit_edge, label %if.then84.i

clear_host_va_range.i.if.end88.i_crit_edge:       ; preds = %clear_host_va_range.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.then84.i:                                      ; preds = %clear_host_va_range.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @mutex_destroy(ptr noundef %83) #11
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then84.i, %clear_host_va_range.i.if.end88.i_crit_edge, %do.end64.i.if.end88.i_crit_edge
  %rc.0164.i = phi i32 [ %rc.0.ph.i, %if.then84.i ], [ %rc.0.ph.i, %clear_host_va_range.i.if.end88.i_crit_edge ], [ %call59.i, %do.end64.i.if.end88.i_crit_edge ]
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %85, i32 noundef 0) #11
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i, align 8
  %list94.i = getelementptr inbounds %struct.hl_va_range, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %list94.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %list94.i, align 4
  %cmp.not1.i.i = icmp eq ptr %89, %list94.i
  br i1 %cmp.not1.i.i, label %if.end88.i.clear_va_list_locked.exit.i_crit_edge, label %if.end88.i.for.body.i.i_crit_edge

if.end88.i.for.body.i.i_crit_edge:                ; preds = %if.end88.i
  br label %for.body.i.i

if.end88.i.clear_va_list_locked.exit.i_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_va_list_locked.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end88.i.for.body.i.i_crit_edge
  %va_block.02.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %89, %if.end88.i.for.body.i.i_crit_edge ]
  %90 = ptrtoint ptr %va_block.02.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %tmp.0.i.i = load ptr, ptr %va_block.02.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %va_block.02.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.02.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i.i.i, align 4
  %93 = ptrtoint ptr %va_block.02.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %va_block.02.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %97 = ptrtoint ptr %va_block.02.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 256 to ptr), ptr %va_block.02.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.02.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %va_block.02.i.i) #11
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %list94.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.clear_va_list_locked.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

list_del.exit.i.i.clear_va_list_locked.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_va_list_locked.exit.i

clear_va_list_locked.exit.i:                      ; preds = %list_del.exit.i.i.clear_va_list_locked.exit.i_crit_edge, %if.end88.i.clear_va_list_locked.exit.i_crit_edge
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i, align 8
  tail call void @mutex_unlock(ptr noundef %100) #11
  br label %mmu_ctx_fini.i

mmu_ctx_fini.i:                                   ; preds = %clear_va_list_locked.exit.i, %do.end23.i
  %rc.1.i = phi i32 [ %call18.i, %do.end23.i ], [ %rc.0164.i, %clear_va_list_locked.exit.i ]
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 8
  tail call void @mutex_destroy(ptr noundef %102) #11
  tail call void @mutex_destroy(ptr noundef %mem_hash_lock.i) #11
  tail call void @hl_mmu_ctx_fini(ptr noundef %ctx) #11
  br label %free_va_range.i

free_va_range.i:                                  ; preds = %mmu_ctx_fini.i, %do.end.i, %for.cond.1.i.free_va_range.i_crit_edge, %for.cond.i.free_va_range.i_crit_edge, %cond.end.free_va_range.i_crit_edge
  %rc.2.i = phi i32 [ %call4.i, %do.end.i ], [ %rc.1.i, %mmu_ctx_fini.i ], [ -12, %for.cond.1.i.free_va_range.i_crit_edge ], [ -12, %for.cond.i.free_va_range.i_crit_edge ], [ -12, %cond.end.free_va_range.i_crit_edge ]
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %104) #11
  %arrayidx106.1.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %105 = ptrtoint ptr %arrayidx106.1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx106.1.i, align 4
  tail call void @kfree(ptr noundef %106) #11
  %arrayidx106.2.i = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %107 = ptrtoint ptr %arrayidx106.2.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx106.2.i, align 4
  tail call void @kfree(ptr noundef %108) #11
  br label %cleanup

cleanup:                                          ; preds = %free_va_range.i, %if.end66.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end66.i ], [ %rc.2.i, %free_va_range.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_vm_ctx_fini(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.hl_mem_in, align 8
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args) #11
  %2 = getelementptr inbounds i8, ptr %args, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %mmu_enable = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 107
  %4 = ptrtoint ptr %mmu_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mmu_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @hl_debugfs_remove_ctx_mem_hash(ptr noundef %1, ptr noundef %ctx) #11
  %hard_reset_pending = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 59, i32 7
  %6 = ptrtoint ptr %hard_reset_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hard_reset_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %for.body.i.preheader, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body.i.preheader:                             ; preds = %if.end
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ctx, align 4
  %tobool.not.i.not.i169 = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i169, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.do.body_crit_edge

for.body.i.preheader.do.body_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.01.i170 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.cond.i.__hash_empty.exit_crit_edge, label %for.body.i

for.cond.i.__hash_empty.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hash_empty.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %ctx, i32 %inc.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.__hash_empty.exit_crit_edge

for.body.i.__hash_empty.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hash_empty.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

__hash_empty.exit:                                ; preds = %for.body.i.__hash_empty.exit_crit_edge, %for.cond.i.__hash_empty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.01.i170)
  %cmp.i.le = icmp ult i32 %i.01.i170, 127
  br i1 %cmp.i.le, label %__hash_empty.exit.do.body_crit_edge, label %__hash_empty.exit.if.end11_crit_edge

__hash_empty.exit.if.end11_crit_edge:             ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

__hash_empty.exit.do.body_crit_edge:              ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %__hash_empty.exit.do.body_crit_edge, %for.body.i.preheader.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_vm_ctx_fini.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_vm_ctx_fini, %if.then9)) #11
          to label %if.end11 [label %if.then9], !srcloc !360

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_vm_ctx_fini.__UNIQUE_ID_ddebug318, ptr noundef %13, ptr noundef nonnull @.str.30) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %__hash_empty.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %14 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %i, align 4
  %dev37 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 6
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %if.end11
  %storemerge175 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc53.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.hlist_head], ptr %ctx, i32 0, i32 %storemerge175
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool18.not172 = icmp eq ptr %16, null
  br i1 %tobool18.not172, label %for.body.for.inc53_crit_edge, label %for.body.land.rhs19_crit_edge

for.body.land.rhs19_crit_edge:                    ; preds = %for.body
  br label %land.rhs19

for.body.for.inc53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

land.rhs19:                                       ; preds = %do.end40.land.rhs19_crit_edge, %for.body.land.rhs19_crit_edge
  %hnode.1173 = phi ptr [ %18, %do.end40.land.rhs19_crit_edge ], [ %16, %for.body.land.rhs19_crit_edge ]
  %17 = ptrtoint ptr %hnode.1173 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hnode.1173, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_vm_ctx_fini.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_vm_ctx_fini, %if.then36)) #11
          to label %do.end40 [label %if.then36], !srcloc !360

if.then36:                                        ; preds = %land.rhs19
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev37, align 4
  %vaddr = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.1173, i32 0, i32 1
  %21 = ptrtoint ptr %vaddr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vaddr, align 8
  %23 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_vm_ctx_fini.__UNIQUE_ID_ddebug319, ptr noundef %20, ptr noundef nonnull @.str.31, i64 noundef %22, i32 noundef %24) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %land.rhs19
  %vaddr41 = getelementptr inbounds %struct.hl_vm_hash_node, ptr %hnode.1173, i32 0, i32 1
  %25 = ptrtoint ptr %vaddr41 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vaddr41, align 8
  %27 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %args, align 8
  %call42 = call fastcc i32 @unmap_device_va(ptr noundef %ctx, ptr noundef nonnull %args, i1 noundef zeroext true)
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %do.end40.for.inc53_crit_edge, label %do.end40.land.rhs19_crit_edge

do.end40.land.rhs19_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs19

do.end40.for.inc53_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

for.inc53:                                        ; preds = %do.end40.for.inc53_crit_edge, %for.body.for.inc53_crit_edge
  %28 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %i, align 4
  %cmp12 = icmp ult i32 %inc, 128
  br i1 %cmp12, label %for.inc53.for.body_crit_edge, label %for.end54

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end54:                                        ; preds = %for.inc53
  %mmu_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mmu_lock, i32 noundef 0) #11
  %call55 = tail call i32 @hl_mmu_invalidate_cache(ptr noundef %1, i1 noundef zeroext true, i32 noundef 1) #11
  %call56 = tail call i32 @hl_mmu_invalidate_cache(ptr noundef %1, i1 noundef zeroext true, i32 noundef 2) #11
  tail call void @mutex_unlock(ptr noundef %mmu_lock) #11
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 2
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 36, i32 3
  %30 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %i, align 4
  %call59176 = call ptr @idr_get_next(ptr noundef %phys_pg_pack_handles, ptr noundef nonnull %i) #11
  %cmp60.not177 = icmp eq ptr %call59176, null
  br i1 %cmp60.not177, label %for.end54.for.end89_crit_edge, label %for.body61.lr.ph

for.end54.for.end89_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end89

for.body61.lr.ph:                                 ; preds = %for.end54
  %dram_used_mem = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 61
  br label %for.body61

for.body61:                                       ; preds = %for.inc88.for.body61_crit_edge, %for.body61.lr.ph
  %call59178 = phi ptr [ %call59176, %for.body61.lr.ph ], [ %call59, %for.inc88.for.body61_crit_edge ]
  %asid62 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call59178, i32 0, i32 6
  %31 = ptrtoint ptr %asid62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %asid62, align 8
  %33 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %asid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp64 = icmp eq i32 %32, %34
  br i1 %cmp64, label %do.body66, label %for.body61.for.inc88_crit_edge

for.body61.for.inc88_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc88

do.body66:                                        ; preds = %for.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_vm_ctx_fini.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_vm_ctx_fini, %if.then78)) #11
          to label %do.end83 [label %if.then78], !srcloc !360

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev37, align 4
  %37 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %asid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_vm_ctx_fini.__UNIQUE_ID_ddebug320, ptr noundef %36, ptr noundef nonnull @.str.32, ptr noundef nonnull %call59178, i32 noundef %38) #11
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body66
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call59178, i32 0, i32 3
  %39 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %total_size, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem, i32 noundef 8) #11
  call void @generic_atomic64_sub(i64 noundef %40, ptr noundef %dram_used_mem) #11
  %call84 = call fastcc i32 @free_phys_pg_pack(ptr noundef %1, ptr noundef nonnull %call59178)
  %41 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i, align 4
  %call86 = call ptr @idr_remove(ptr noundef %phys_pg_pack_handles, i32 noundef %42) #11
  br label %for.inc88

for.inc88:                                        ; preds = %do.end83, %for.body61.for.inc88_crit_edge
  %43 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i, align 4
  %add = add i32 %44, 1
  store i32 %add, ptr %i, align 4
  %call59 = call ptr @idr_get_next(ptr noundef %phys_pg_pack_handles, ptr noundef nonnull %i) #11
  %cmp60.not = icmp eq ptr %call59, null
  br i1 %cmp60.not, label %for.inc88.for.end89_crit_edge, label %for.inc88.for.body61_crit_edge

for.inc88.for.body61_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

for.inc88.for.end89_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end89

for.end89:                                        ; preds = %for.inc88.for.end89_crit_edge, %for.end54.for.end89_crit_edge
  call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  %va_range = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 6
  %arrayidx91 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx91, align 8
  call fastcc void @va_range_fini(ptr noundef %46)
  %47 = ptrtoint ptr %va_range to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %va_range, align 8
  call fastcc void @va_range_fini(ptr noundef %48)
  %pmmu_huge_range = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 85
  %49 = ptrtoint ptr %pmmu_huge_range to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pmmu_huge_range, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool94.not = icmp eq i8 %50, 0
  br i1 %tobool94.not, label %for.end89.if.end98_crit_edge, label %if.then95

for.end89.if.end98_crit_edge:                     ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then95:                                        ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx97 = getelementptr %struct.hl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx97, align 4
  call fastcc void @va_range_fini(ptr noundef %52)
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %for.end89.if.end98_crit_edge
  %mem_hash_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 7
  call void @mutex_destroy(ptr noundef %mem_hash_lock) #11
  call void @hl_mmu_ctx_fini(ptr noundef %ctx) #11
  %53 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %asid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp100.not = icmp eq i32 %54, 0
  br i1 %cmp100.not, label %if.end98.cleanup_crit_edge, label %land.lhs.true101

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true101:                                 ; preds = %if.end98
  %dram_supports_virtual_memory = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 71
  %55 = ptrtoint ptr %dram_supports_virtual_memory to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dram_supports_virtual_memory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool102.not = icmp eq i8 %56, 0
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true101.cleanup_crit_edge

land.lhs.true101.cleanup_crit_edge:               ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then103:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  %dram_used_mem104 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 61
  %call.i.i165 = call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem104, i32 noundef 8) #11
  call void @generic_atomic64_set(ptr noundef %dram_used_mem104, i64 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %land.lhs.true101.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %args) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_remove_ctx_mem_hash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_invalidate_cache(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_phys_pg_pack(ptr noundef %hdev, ptr noundef %phys_pg_pack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm1 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 36
  %created_from_userptr = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 12
  %0 = ptrtoint ptr %created_from_userptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %created_from_userptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %contiguous = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 11
  %2 = ptrtoint ptr %contiguous to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %contiguous, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %for.cond18.preheader, label %if.then3

for.cond18.preheader:                             ; preds = %if.end
  %npages19 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 2
  %4 = ptrtoint ptr %npages19 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %npages19, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp20118.not = icmp eq i64 %5, 0
  br i1 %cmp20118.not, label %for.cond18.preheader.end_crit_edge, label %for.body22.lr.ph

for.cond18.preheader.end_crit_edge:               ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

for.body22.lr.ph:                                 ; preds = %for.cond18.preheader
  %memory_scrub23 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 84
  %disabled27 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %asic_funcs33 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %pages35 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 1
  %page_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 7
  %dev44 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %dram_pg_pool_refcount53 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 1
  %phys_pg_pack_handles.i.i111 = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3
  br label %for.body22

if.then3:                                         ; preds = %if.end
  %memory_scrub = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 84
  %6 = ptrtoint ptr %memory_scrub to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %memory_scrub, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then3.if.end10_crit_edge, label %land.lhs.true

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then3
  %disabled = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %8 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  %asic_funcs = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 34
  %10 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_funcs, align 8
  %scrub_device_mem = getelementptr inbounds %struct.hl_asic_funcs, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %scrub_device_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scrub_device_mem, align 4
  %pages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 1
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 3
  %18 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_size, align 8
  %call = tail call i32 %13(ptr noundef %hdev, i64 noundef %17, i64 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %do.end

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.174) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  %rc.0 = phi i32 [ 0, %land.lhs.true.if.end10_crit_edge ], [ %call, %do.end ], [ 0, %if.then6.if.end10_crit_edge ], [ 0, %if.then3.if.end10_crit_edge ]
  %22 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm1, align 4
  %pages11 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 1
  %24 = ptrtoint ptr %pages11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages11, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  %conv13 = trunc i64 %27 to i32
  %total_size14 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 3
  %28 = ptrtoint ptr %total_size14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %total_size14, align 8
  %conv15 = trunc i64 %29 to i32
  tail call void @gen_pool_free_owner(ptr noundef %23, i32 noundef %conv13, i32 noundef %conv15, ptr noundef null) #11
  %npages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 2
  %30 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp116.not = icmp eq i64 %31, 0
  br i1 %cmp116.not, label %if.end10.if.end58_crit_edge, label %for.body.lr.ph

if.end10.if.end58_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

for.body.lr.ph:                                   ; preds = %if.end10
  %dram_pg_pool_refcount = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 1
  %phys_pg_pack_handles.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3
  br label %for.body

for.body:                                         ; preds = %kref_put.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0117 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %kref_put.exit.for.body_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_pg_pool_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @llvm.prefetch.p0(ptr %dram_pg_pool_refcount, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dram_pg_pool_refcount, ptr %dram_pg_pool_refcount, i32 1, ptr elementtype(i32) %dram_pg_pool_refcount) #11, !srcloc !369
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !358

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %dram_pg_pool_refcount, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @idr_destroy(ptr noundef %phys_pg_pack_handles.i.i) #11
  %33 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm1, align 4
  tail call void @gen_pool_destroy(ptr noundef %34) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %inc = add nuw i64 %i.0117, 1
  %35 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %npages, align 8
  %cmp = icmp ult i64 %inc, %36
  br i1 %cmp, label %kref_put.exit.for.body_crit_edge, label %kref_put.exit.if.end58_crit_edge

kref_put.exit.if.end58_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

kref_put.exit.for.body_crit_edge:                 ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body22:                                       ; preds = %kref_put.exit114.for.body22_crit_edge, %for.body22.lr.ph
  %rc.1121 = phi i32 [ 0, %for.body22.lr.ph ], [ %rc.2, %kref_put.exit114.for.body22_crit_edge ]
  %i.1119 = phi i64 [ 0, %for.body22.lr.ph ], [ %inc56, %kref_put.exit114.for.body22_crit_edge ]
  %37 = ptrtoint ptr %memory_scrub23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %memory_scrub23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool25.not = icmp eq i8 %38, 0
  br i1 %tobool25.not, label %for.body22.if.end46_crit_edge, label %land.lhs.true26

for.body22.if.end46_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true26:                                  ; preds = %for.body22
  %39 = ptrtoint ptr %disabled27 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %disabled27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool28.not = icmp eq i8 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1121)
  %cmp30 = icmp eq i32 %rc.1121, 0
  %or.cond = select i1 %tobool28.not, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then32, label %land.lhs.true26.if.end46_crit_edge

land.lhs.true26.if.end46_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then32:                                        ; preds = %land.lhs.true26
  %41 = ptrtoint ptr %asic_funcs33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %asic_funcs33, align 8
  %scrub_device_mem34 = getelementptr inbounds %struct.hl_asic_funcs, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %scrub_device_mem34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scrub_device_mem34, align 4
  %45 = ptrtoint ptr %pages35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pages35, align 4
  %idxprom = trunc i64 %i.1119 to i32
  %arrayidx36 = getelementptr i64, ptr %46, i32 %idxprom
  %47 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx36, align 8
  %49 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %page_size, align 4
  %conv37 = zext i32 %50 to i64
  %call38 = tail call i32 %44(ptr noundef %hdev, i64 noundef %48, i64 noundef %conv37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then32.if.end46_crit_edge, label %do.end43

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end43:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.177) #15
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.then32.if.end46_crit_edge, %land.lhs.true26.if.end46_crit_edge, %for.body22.if.end46_crit_edge
  %rc.2 = phi i32 [ %rc.1121, %land.lhs.true26.if.end46_crit_edge ], [ %call38, %do.end43 ], [ 0, %if.then32.if.end46_crit_edge ], [ %rc.1121, %for.body22.if.end46_crit_edge ]
  %53 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vm1, align 4
  %55 = ptrtoint ptr %pages35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pages35, align 4
  %idxprom49 = trunc i64 %i.1119 to i32
  %arrayidx50 = getelementptr i64, ptr %56, i32 %idxprom49
  %57 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx50, align 8
  %conv51 = trunc i64 %58 to i32
  %59 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page_size, align 4
  tail call void @gen_pool_free_owner(ptr noundef %54, i32 noundef %conv51, i32 noundef %60, ptr noundef null) #11
  %call.i.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_pg_pool_refcount53, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @llvm.prefetch.p0(ptr %dram_pg_pool_refcount53, i32 1, i32 3, i32 1) #11
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dram_pg_pool_refcount53, ptr %dram_pg_pool_refcount53, i32 1, ptr elementtype(i32) %dram_pg_pool_refcount53) #11, !srcloc !369
  %asmresult.i.i.i.i.i.i.i105 = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i105)
  %cmp.i.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i.i.i105, 1
  br i1 %cmp.i.i.i.i106, label %if.then.i112, label %if.end5.i.i.i.i108

if.end5.i.i.i.i108:                               ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i105)
  %.not.i.i.i.i107 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i105, 0
  br i1 %.not.i.i.i.i107, label %if.end5.i.i.i.i108.kref_put.exit114_crit_edge, label %if.then10.i.i.i.i109, !prof !358

if.end5.i.i.i.i108.kref_put.exit114_crit_edge:    ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit114

if.then10.i.i.i.i109:                             ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %dram_pg_pool_refcount53, i32 noundef 3) #11
  br label %kref_put.exit114

if.then.i112:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @idr_destroy(ptr noundef %phys_pg_pack_handles.i.i111) #11
  %62 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vm1, align 4
  tail call void @gen_pool_destroy(ptr noundef %63) #11
  br label %kref_put.exit114

kref_put.exit114:                                 ; preds = %if.then.i112, %if.then10.i.i.i.i109, %if.end5.i.i.i.i108.kref_put.exit114_crit_edge
  %inc56 = add nuw i64 %i.1119, 1
  %64 = ptrtoint ptr %npages19 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %npages19, align 8
  %cmp20 = icmp ult i64 %inc56, %65
  br i1 %cmp20, label %kref_put.exit114.for.body22_crit_edge, label %kref_put.exit114.if.end58_crit_edge

kref_put.exit114.if.end58_crit_edge:              ; preds = %kref_put.exit114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

kref_put.exit114.for.body22_crit_edge:            ; preds = %kref_put.exit114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

if.end58:                                         ; preds = %kref_put.exit114.if.end58_crit_edge, %kref_put.exit.if.end58_crit_edge, %if.end10.if.end58_crit_edge
  %rc.3 = phi i32 [ %rc.0, %if.end10.if.end58_crit_edge ], [ %rc.2, %kref_put.exit114.if.end58_crit_edge ], [ %rc.0, %kref_put.exit.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool59.not = icmp eq i32 %rc.3, 0
  br i1 %tobool59.not, label %if.end58.end_crit_edge, label %land.lhs.true60

if.end58.end_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true60:                                  ; preds = %if.end58
  %disabled61 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 78
  %66 = ptrtoint ptr %disabled61 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %disabled61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool62.not = icmp eq i8 %67, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true60.end_crit_edge

land.lhs.true60.end_crit_edge:                    ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = tail call i32 @hl_device_reset(ptr noundef %hdev, i32 noundef 1) #11
  br label %end

end:                                              ; preds = %if.then63, %land.lhs.true60.end_crit_edge, %if.end58.end_crit_edge, %for.cond18.preheader.end_crit_edge, %entry.end_crit_edge
  %rc.4 = phi i32 [ 0, %entry.end_crit_edge ], [ %rc.3, %land.lhs.true60.end_crit_edge ], [ %rc.3, %if.then63 ], [ 0, %if.end58.end_crit_edge ], [ 0, %for.cond18.preheader.end_crit_edge ]
  %pages66 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %phys_pg_pack, i32 0, i32 1
  %68 = ptrtoint ptr %pages66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages66, align 4
  tail call void @kvfree(ptr noundef %69) #11
  tail call void @kfree(ptr noundef %phys_pg_pack) #11
  ret i32 %rc.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @va_range_fini(ptr noundef %va_range) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %va_range, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not1.i = icmp eq ptr %1, %list
  br i1 %cmp.not1.i, label %entry.clear_va_list_locked.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.clear_va_list_locked.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_va_list_locked.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %va_block.02.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %va_block.02.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %va_block.02.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %va_block.02.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.02.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %va_block.02.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va_block.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %va_block.02.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %va_block.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %va_block.02.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %va_block.02.i) #11
  %cmp.not.i = icmp eq ptr %tmp.0.i, %list
  br i1 %cmp.not.i, label %list_del.exit.i.clear_va_list_locked.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.clear_va_list_locked.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear_va_list_locked.exit

clear_va_list_locked.exit:                        ; preds = %list_del.exit.i.clear_va_list_locked.exit_crit_edge, %entry.clear_va_list_locked.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %va_range) #11
  tail call void @mutex_destroy(ptr noundef %va_range) #11
  tail call void @kfree(ptr noundef %va_range) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_mmu_ctx_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hl_vm_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm1 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36
  %dram_page_size = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 35
  %0 = ptrtoint ptr %dram_page_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dram_page_size, align 4
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1) #11, !range !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  %4 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #11, !range !357
  %.sink = select i1 %3, i32 %4, i32 23
  %call6 = tail call ptr @gen_pool_create(i32 noundef %.sink, i32 noundef -1) #11
  %5 = ptrtoint ptr %vm1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %vm1, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end10:                                         ; preds = %entry
  %dram_pg_pool_refcount = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_pg_pool_refcount, i32 noundef 4) #11
  %8 = ptrtoint ptr %dram_pg_pool_refcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %dram_pg_pool_refcount, align 4
  %9 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm1, align 4
  %dram_user_base_address = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 15
  %11 = ptrtoint ptr %dram_user_base_address to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dram_user_base_address, align 8
  %conv = trunc i64 %12 to i32
  %dram_end_address = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 14
  %13 = ptrtoint ptr %dram_end_address to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dram_end_address, align 8
  %sub = sub i64 %14, %12
  %conv13 = trunc i64 %sub to i32
  %call.i.i47 = tail call i32 @gen_pool_add_owner(ptr noundef %10, i32 noundef %conv, i32 noundef -1, i32 noundef %conv13, i32 noundef -1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %tobool15.not = icmp eq i32 %call.i.i47, 0
  br i1 %tobool15.not, label %do.body22, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %15 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef %call.i.i47) #15
  %17 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm1, align 4
  tail call void @gen_pool_destroy(ptr noundef %18) #11
  br label %cleanup

do.body22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %idr_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @hl_vm_init.__key, i16 noundef signext 3) #11
  %phys_pg_pack_handles = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %phys_pg_pack_handles, ptr noundef nonnull @.str.179, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3, i32 1
  %21 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3, i32 2
  %22 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %idr_next.i.i, align 4
  %dram_used_mem = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 61
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_used_mem, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %dram_used_mem, i64 noundef 0) #11
  %init_done = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 4
  %23 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %init_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %do.end19, %do.end
  %retval.0 = phi i32 [ %call.i.i47, %do.end19 ], [ 0, %do.body22 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_vm_fini(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %init_done = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %init_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dram_pg_pool_refcount = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dram_pg_pool_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @llvm.prefetch.p0(ptr %dram_pg_pool_refcount, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dram_pg_pool_refcount, ptr %dram_pg_pool_refcount, i32 1, ptr elementtype(i32) %dram_pg_pool_refcount) #11, !srcloc !369
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %kref_put.exit, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do.end_crit_edge, label %if.then10.i.i.i.i, !prof !358

if.end5.i.i.i.i.do.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %dram_pg_pool_refcount, i32 noundef 3) #11
  br label %do.end

kref_put.exit:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !370
  %add.ptr.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 36
  %phys_pg_pack_handles.i.i = getelementptr %struct.hl_device, ptr %hdev, i32 0, i32 36, i32 3
  tail call void @idr_destroy(ptr noundef %phys_pg_pack_handles.i.i) #11
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @gen_pool_destroy(ptr noundef %4) #11
  br label %if.end3

do.end:                                           ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #15
  br label %if.end3

if.end3:                                          ; preds = %do.end, %kref_put.exit
  %7 = ptrtoint ptr %init_done to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %init_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_block_mem_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_block_list_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %hw_block_list_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @hl_hw_block_mem_init.__key) #11
  %hw_block_mem_list = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %hw_block_mem_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %hw_block_mem_list, ptr %hw_block_mem_list, align 4
  %prev.i = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hw_block_mem_list, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hl_hw_block_mem_fini(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_block_mem_list = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %hw_block_mem_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_block_mem_list, align 4
  %cmp.i.not = icmp eq ptr %1, %hw_block_mem_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hdev = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hl_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %5, ptr noundef nonnull @.str.42) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %hw_block_mem_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_block_mem_list, align 8
  %cmp.not23 = icmp eq ptr %7, %hw_block_mem_list
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %lnode.024 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %lnode.024 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0 = load ptr, ptr %lnode.024, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lnode.024) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lnode.024, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %lnode.024 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lnode.024, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %lnode.024 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %lnode.024, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lnode.024, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %lnode.024) #11
  %cmp.not = icmp eq ptr %tmp.0, %hw_block_mem_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %hw_block_list_lock = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %hw_block_list_lock) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hl_is_dram_va(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_va_block_locked(ptr nocapture noundef readonly %hdev, ptr noundef %va_list, i64 noundef %start, i64 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i64 %end, %start
  %add = add i64 %sub, 1
  %0 = ptrtoint ptr %va_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %va_block.067 = load ptr, ptr %va_list, align 4
  %cmp.not68 = icmp eq ptr %va_block.067, %va_list
  br i1 %cmp.not68, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv.i = and i64 %add, 4294967295
  %add.i = add i64 %start, -1
  %sub.i = add i64 %add.i, %conv.i
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %va_block.070 = phi ptr [ %va_block.067, %for.body.lr.ph ], [ %va_block.0, %if.end.for.body_crit_edge ]
  %res.069 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %if.end.for.body_crit_edge ]
  %end2 = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.070, i32 0, i32 2
  %1 = ptrtoint ptr %end2 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %end2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %start)
  %cmp.not.i = icmp ult i64 %2, %start
  br i1 %cmp.not.i, label %for.body.if.end_crit_edge, label %hl_mem_area_crosses_range.exit

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

hl_mem_area_crosses_range.exit:                   ; preds = %for.body
  %start1 = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.070, i32 0, i32 1
  %3 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %4)
  %cmp2.i.not = icmp ult i64 %sub.i, %4
  br i1 %cmp2.i.not, label %hl_mem_area_crosses_range.exit.if.end_crit_edge, label %do.end

hl_mem_area_crosses_range.exit.if.end_crit_edge:  ; preds = %hl_mem_area_crosses_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %hl_mem_area_crosses_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.54, i64 noundef %4, i64 noundef %2) #15
  br label %cleanup

if.end:                                           ; preds = %hl_mem_area_crosses_range.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %spec.select = phi ptr [ %va_block.070, %for.body.if.end_crit_edge ], [ %res.069, %hl_mem_area_crosses_range.exit.if.end_crit_edge ]
  %7 = ptrtoint ptr %va_block.070 to i32
  call void @__asan_load4_noabort(i32 %7)
  %va_block.0 = load ptr, ptr %va_block.070, align 4
  %cmp.not = icmp eq ptr %va_block.0, %va_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %res.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %spec.select, %if.end.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 32) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %start18 = getelementptr inbounds %struct.hl_vm_va_block, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %start18 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %start, ptr %start18, align 8
  %end19 = getelementptr inbounds %struct.hl_vm_va_block, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %end19 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %end, ptr %end19, align 8
  %size20 = getelementptr inbounds %struct.hl_vm_va_block, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %size20 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %size20, align 8
  %tobool21.not = icmp eq ptr %res.0.lcssa, null
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end17
  %12 = ptrtoint ptr %va_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %va_list, ptr noundef %13) #11
  br i1 %call.i.i, label %if.then22.if.end26.sink.split_crit_edge, label %if.then22.if.end26_crit_edge

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then22.if.end26.sink.split_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split

if.else:                                          ; preds = %if.end17
  %14 = ptrtoint ptr %res.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res.0.lcssa, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull %res.0.lcssa, ptr noundef %15) #11
  br i1 %call.i.i57, label %if.else.if.end26.sink.split_crit_edge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else.if.end26.sink.split_crit_edge, %if.then22.if.end26.sink.split_crit_edge
  %.sink76 = phi ptr [ %13, %if.then22.if.end26.sink.split_crit_edge ], [ %15, %if.else.if.end26.sink.split_crit_edge ]
  %res.0.lcssa.sink75 = phi ptr [ %va_list, %if.then22.if.end26.sink.split_crit_edge ], [ %res.0.lcssa, %if.else.if.end26.sink.split_crit_edge ]
  %prev1.i.i58 = getelementptr inbounds %struct.list_head, ptr %.sink76, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %prev1.i.i58, align 4
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.sink76, ptr %call7.i, align 8
  %prev3.i.i59 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i59 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %res.0.lcssa.sink75, ptr %prev3.i.i59, align 4
  %19 = ptrtoint ptr %res.0.lcssa.sink75 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i, ptr %res.0.lcssa.sink75, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else.if.end26_crit_edge, %if.then22.if.end26_crit_edge
  %prev1.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev1.i, align 4
  %cmp.not.i62 = icmp eq ptr %21, %va_list
  br i1 %cmp.not.i62, label %if.end26.if.end.i_crit_edge, label %land.lhs.true.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end26
  %end.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end.i, align 8
  %add.i63 = add i64 %23, 1
  %24 = ptrtoint ptr %start18 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i63, i64 %25)
  %cmp3.i = icmp eq i64 %add.i63, %25
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %end19 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %end19, align 8
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %end.i, align 8
  %start7.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %start7.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %start7.i, align 8
  %sub.i64 = sub i64 %27, %30
  %size.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %21, i32 0, i32 3
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sub.i64, ptr %size.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %prev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev1.i, align 4
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i, align 8
  %39 = ptrtoint ptr %prev1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev1.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end26.if.end.i_crit_edge
  %va_block.addr.0.i = phi ptr [ %21, %list_del.exit.i ], [ %call7.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %call7.i, %if.end26.if.end.i_crit_edge ]
  %40 = ptrtoint ptr %va_block.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va_block.addr.0.i, align 8
  %cmp15.not.i = icmp eq ptr %41, %va_list
  br i1 %cmp15.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true16.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true16.i:                                ; preds = %if.end.i
  %end17.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.addr.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %end17.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %end17.i, align 8
  %add18.i = add i64 %43, 1
  %start19.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %start19.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start19.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.i, i64 %45)
  %cmp20.i = icmp eq i64 %add18.i, %45
  br i1 %cmp20.i, label %if.then21.i, label %land.lhs.true16.i.cleanup_crit_edge

land.lhs.true16.i.cleanup_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i:                                      ; preds = %land.lhs.true16.i
  %start22.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %va_block.addr.0.i, i32 0, i32 1
  %46 = ptrtoint ptr %start22.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %start22.i, align 8
  %48 = ptrtoint ptr %start19.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %start19.i, align 8
  %end24.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %41, i32 0, i32 2
  %49 = ptrtoint ptr %end24.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %end24.i, align 8
  %sub26.i = sub i64 %50, %47
  %size27.i = getelementptr inbounds %struct.hl_vm_va_block, ptr %41, i32 0, i32 3
  %51 = ptrtoint ptr %size27.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %sub26.i, ptr %size27.i, align 8
  %call.i.i1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %va_block.addr.0.i) #11
  br i1 %call.i.i1.i, label %if.end.i.i4.i, label %if.then21.i.list_del.exit6.i_crit_edge

if.then21.i.list_del.exit6.i_crit_edge:           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit6.i

if.end.i.i4.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i2.i = getelementptr inbounds %struct.list_head, ptr %va_block.addr.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i2.i, align 4
  %54 = ptrtoint ptr %va_block.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %va_block.addr.0.i, align 4
  %prev1.i.i.i3.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i3.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit6.i

list_del.exit6.i:                                 ; preds = %if.end.i.i4.i, %if.then21.i.list_del.exit6.i_crit_edge
  %58 = ptrtoint ptr %va_block.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %va_block.addr.0.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.list_head, ptr %va_block.addr.0.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i5.i, align 4
  tail call void @kfree(ptr noundef %va_block.addr.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit6.i, %land.lhs.true16.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true16.i.cleanup_crit_edge ], [ 0, %list_del.exit6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_block_vm_close(ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %ctx1 = getelementptr inbounds %struct.hl_vm_hw_block_list_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1, align 4
  %hw_block_list_lock = getelementptr inbounds %struct.hl_ctx, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %hw_block_list_lock, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %hw_block_list_lock) #11
  %call = tail call i32 @hl_ctx_put(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %1) #11
  %12 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vm_private_data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_phys_pg_pack_from_userptr(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %userptr, ptr nocapture noundef writeonly %pphys_pg_pack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %page_size1 = getelementptr inbounds %struct.hl_device, ptr %1, i32 0, i32 33, i32 6, i32 15
  %2 = ptrtoint ptr %page_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size1, align 8
  %shr = lshr i32 %3, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %userptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %userptr, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call7.i.i, align 8
  %created_from_userptr = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %created_from_userptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %created_from_userptr, align 1
  %asid = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 21
  %9 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asid, align 8
  %asid4 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %asid4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %asid4, align 8
  %mapping_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mapping_cnt, i32 noundef 4) #11
  %12 = ptrtoint ptr %mapping_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %mapping_cnt, align 8
  %sgt = getelementptr inbounds %struct.hl_userptr, ptr %userptr, i32 0, i32 4
  %13 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sgt, align 4
  %nents44 = getelementptr inbounds %struct.sg_table, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %nents44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nents44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp45.not = icmp eq i32 %16, 0
  br i1 %cmp45.not, label %if.end.if.else191_crit_edge, label %for.body.lr.ph

if.end.if.else191_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else191

for.body.lr.ph:                                   ; preds = %if.end
  %17 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %sub = add i32 %3, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sg.048 = phi ptr [ %20, %for.body.lr.ph ], [ %call14, %for.body.for.body_crit_edge ]
  %is_huge_page_opt.0.off047 = phi i1 [ true, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %total_npages.046 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.048, i32 0, i32 3
  %21 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_address.i, align 4
  %and.i = and i32 %22, 4095
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.048, i32 0, i32 4
  %23 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_length.i, align 4
  %add.i = add nuw nsw i32 %and.i, 4095
  %add1.i = add i32 %add.i, %24
  %shr.i = lshr i32 %add1.i, 12
  %conv = zext i32 %shr.i to i64
  %add = add i64 %total_npages.046, %conv
  %rem = urem i32 %shr.i, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  %and = and i32 %22, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %or.cond62 = select i1 %tobool10.not, i1 %tobool11.not, i1 false
  %spec.select = select i1 %or.cond62, i1 %is_huge_page_opt.0.off047, i1 false
  %inc = add nuw i32 %i.049, 1
  %call14 = tail call ptr @sg_next(ptr noundef %sg.048) #11
  %25 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %spec.select, label %for.end.if.else191_crit_edge, label %for.end.if.end209_crit_edge

for.end.if.end209_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

for.end.if.else191_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else191

if.else191:                                       ; preds = %for.end.if.else191_crit_edge, %if.end.if.else191_crit_edge
  %total_npages.0.lcssa65 = phi i64 [ %add, %for.end.if.else191_crit_edge ], [ 0, %if.end.if.else191_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %total_npages.0.lcssa65)
  %cmp193 = icmp ult i64 %total_npages.0.lcssa65, 4294967296
  br i1 %cmp193, label %if.then197, label %if.else203, !prof !358

if.then197:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #13
  %conv198 = trunc i64 %total_npages.0.lcssa65 to i32
  %div201 = udiv i32 %conv198, %shr
  %conv202 = zext i32 %div201 to i64
  br label %if.end209

if.else203:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr, i64 %total_npages.0.lcssa65) #14, !srcloc !359
  %asmresult1.i = extractvalue { i64, i64 } %29, 1
  br label %if.end209

if.end209:                                        ; preds = %if.else203, %if.then197, %for.end.if.end209_crit_edge
  %is_huge_page_opt.0.off0.lcssa66 = phi i1 [ true, %if.then197 ], [ true, %if.else203 ], [ false, %for.end.if.end209_crit_edge ]
  %total_npages.1 = phi i64 [ %conv202, %if.then197 ], [ %asmresult1.i, %if.else203 ], [ %add, %for.end.if.end209_crit_edge ]
  %page_size.0 = phi i32 [ %3, %if.then197 ], [ %3, %if.else203 ], [ 4096, %for.end.if.end209_crit_edge ]
  %neg212 = sub i32 0, %page_size.0
  %conv213 = trunc i64 %total_npages.1 to i32
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv213, i32 8) #11
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !363

kvmalloc_array.exit.thread:                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  %pages42 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %pages42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pages42, align 4
  br label %if.then218

kvmalloc_array.exit:                              ; preds = %if.end209
  %33 = extractvalue { i32, i1 } %30, 0
  %call.i.i8 = tail call noalias ptr @kvmalloc_node(i32 noundef %33, i32 noundef 3264, i32 noundef -1) #17
  %pages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i8, ptr %pages, align 4
  %cmp216 = icmp ult ptr %call.i.i8, inttoptr (i32 17 to ptr)
  br i1 %cmp216, label %kvmalloc_array.exit.if.then218_crit_edge, label %if.end219

kvmalloc_array.exit.if.then218_crit_edge:         ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then218

if.then218:                                       ; preds = %kvmalloc_array.exit.if.then218_crit_edge, %kvmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end219:                                        ; preds = %kvmalloc_array.exit
  %conv210 = zext i32 %page_size.0 to i64
  %npages220 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %npages220 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %total_npages.1, ptr %npages220, align 8
  %page_size221 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %page_size221 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %page_size.0, ptr %page_size221, align 4
  %mul223 = mul i64 %total_npages.1, %conv210
  %total_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %total_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %mul223, ptr %total_size, align 8
  %38 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sgt, align 4
  %nents22856 = getelementptr inbounds %struct.sg_table, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %nents22856 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nents22856, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp22957.not = icmp eq i32 %41, 0
  br i1 %cmp22957.not, label %if.end219.for.end254_crit_edge, label %for.body231.lr.ph

if.end219.for.end254_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end254

for.body231.lr.ph:                                ; preds = %if.end219
  %42 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sgt, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %sub235 = add i32 %page_size.0, -1
  %offset = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %call7.i.i, i32 0, i32 10
  %46 = sub nsw i32 0, %shr
  %npages.1.p = select i1 %is_huge_page_opt.0.off0.lcssa66, i32 %46, i32 -1
  br label %for.body231

for.body231:                                      ; preds = %for.inc251.for.body231_crit_edge, %for.body231.lr.ph
  %j.061 = phi i32 [ 0, %for.body231.lr.ph ], [ %j.1.lcssa, %for.inc251.for.body231_crit_edge ]
  %i.160 = phi i32 [ 0, %for.body231.lr.ph ], [ %inc252, %for.inc251.for.body231_crit_edge ]
  %sg.159 = phi ptr [ %45, %for.body231.lr.ph ], [ %call253, %for.inc251.for.body231_crit_edge ]
  %first.0.off058 = phi i1 [ true, %for.body231.lr.ph ], [ false, %for.inc251.for.body231_crit_edge ]
  %dma_address.i9 = getelementptr inbounds %struct.scatterlist, ptr %sg.159, i32 0, i32 3
  %47 = ptrtoint ptr %dma_address.i9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_address.i9, align 4
  %and.i10 = and i32 %48, 4095
  %dma_length.i11 = getelementptr inbounds %struct.scatterlist, ptr %sg.159, i32 0, i32 4
  %49 = ptrtoint ptr %dma_length.i11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_length.i11, align 4
  %add.i12 = add nuw nsw i32 %and.i10, 4095
  %add1.i13 = add i32 %add.i12, %50
  %shr.i14 = lshr i32 %add1.i13, 12
  br i1 %first.0.off058, label %if.then234, label %for.body231.if.end240_crit_edge

for.body231.if.end240_crit_edge:                  ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end240

if.then234:                                       ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #13
  %and236 = and i32 %48, %sub235
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and236, ptr %offset, align 8
  %and238 = and i32 %48, %neg212
  br label %if.end240

if.end240:                                        ; preds = %if.then234, %for.body231.if.end240_crit_edge
  %dma_addr.0 = phi i32 [ %and238, %if.then234 ], [ %48, %for.body231.if.end240_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1.i13)
  %tobool241.not51 = icmp ult i32 %add1.i13, 4096
  br i1 %tobool241.not51, label %if.end240.for.inc251_crit_edge, label %if.end240.while.body_crit_edge

if.end240.while.body_crit_edge:                   ; preds = %if.end240
  br label %while.body

if.end240.for.inc251_crit_edge:                   ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc251

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end240.while.body_crit_edge
  %npages.054 = phi i32 [ %npages.1, %while.body.while.body_crit_edge ], [ %shr.i14, %if.end240.while.body_crit_edge ]
  %j.153 = phi i32 [ %inc244, %while.body.while.body_crit_edge ], [ %j.061, %if.end240.while.body_crit_edge ]
  %dma_addr.152 = phi i32 [ %add245, %while.body.while.body_crit_edge ], [ %dma_addr.0, %if.end240.while.body_crit_edge ]
  %conv242 = zext i32 %dma_addr.152 to i64
  %52 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pages, align 4
  %inc244 = add i32 %j.153, 1
  %arrayidx = getelementptr i64, ptr %53, i32 %j.153
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv242, ptr %arrayidx, align 8
  %add245 = add i32 %dma_addr.152, %page_size.0
  %npages.1 = add i32 %npages.054, %npages.1.p
  %tobool241.not = icmp eq i32 %npages.1, 0
  br i1 %tobool241.not, label %while.body.for.inc251_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.for.inc251_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc251

for.inc251:                                       ; preds = %while.body.for.inc251_crit_edge, %if.end240.for.inc251_crit_edge
  %j.1.lcssa = phi i32 [ %j.061, %if.end240.for.inc251_crit_edge ], [ %inc244, %while.body.for.inc251_crit_edge ]
  %inc252 = add nuw i32 %i.160, 1
  %call253 = tail call ptr @sg_next(ptr noundef %sg.159) #11
  %55 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sgt, align 4
  %nents228 = getelementptr inbounds %struct.sg_table, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %nents228 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nents228, align 4
  %cmp229 = icmp ult i32 %inc252, %58
  br i1 %cmp229, label %for.inc251.for.body231_crit_edge, label %for.inc251.for.end254_crit_edge

for.inc251.for.end254_crit_edge:                  ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end254

for.inc251.for.body231_crit_edge:                 ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body231

for.end254:                                       ; preds = %for.inc251.for.end254_crit_edge, %if.end219.for.end254_crit_edge
  %59 = ptrtoint ptr %pphys_pg_pack to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %pphys_pg_pack, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end254, %if.then218, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then218 ], [ 0, %for.end254 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_invalidate_cache_range(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_map_page(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_unmap_page(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @export_dmabuf_common(ptr noundef %ctx, ptr noundef %hl_dmabuf, i64 noundef %total_size, i32 noundef %flags, ptr nocapture noundef writeonly %dmabuf_fd) unnamed_addr #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #11
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.export_dmabuf_common.exp_info, i32 24)
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %ctx, i32 0, i32 3
  %1 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev1, align 4
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @habanalabs_dmabuf_ops, ptr %ops, align 4
  %conv = trunc i64 %total_size to i32
  %size = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %size, align 4
  %flags2 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags2, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hl_dmabuf, ptr %priv, align 4
  %call = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #11
  %7 = ptrtoint ptr %hl_dmabuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %hl_dmabuf, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.129) #15
  %10 = ptrtoint ptr %hl_dmabuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hl_dmabuf, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @dma_buf_fd(ptr noundef %call, i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev14 = getelementptr inbounds %struct.hl_device, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.132) #15
  %15 = ptrtoint ptr %hl_dmabuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hl_dmabuf, align 8
  call void @dma_buf_put(ptr noundef %16) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctx16 = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %hl_dmabuf, i32 0, i32 1
  %17 = ptrtoint ptr %ctx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctx, ptr %ctx16, align 4
  call void @hl_ctx_get(ptr noundef %2, ptr noundef %ctx) #11
  %18 = ptrtoint ptr %dmabuf_fd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %dmabuf_fd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %do.end
  %retval.0 = phi i32 [ %12, %do.end ], [ %call8, %do.end13 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_fd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hl_dmabuf_attach(ptr nocapture noundef readnone %dmabuf, ptr nocapture noundef writeonly %attachment) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %peer2peer = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 5
  %0 = ptrtoint ptr %peer2peer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %peer2peer, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hl_map_dmabuf(ptr nocapture noundef readonly %attachment, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attachment to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attachment, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %ctx = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %hdev1 = getelementptr inbounds %struct.hl_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev1, align 4
  %phys_pg_pack2 = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %phys_pg_pack2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys_pg_pack2, align 8
  %peer2peer = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 5
  %10 = ptrtoint ptr %peer2peer to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %peer2peer, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hl_map_dmabuf.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hl_map_dmabuf, %if.then6)) #11
          to label %cleanup [label %if.then6], !srcloc !360

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hl_map_dmabuf.__UNIQUE_ID_ddebug307, ptr noundef %13, ptr noundef nonnull @.str.135) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %pages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %npages = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %npages to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %npages, align 8
  %page_size = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_size, align 4
  %conv = zext i32 %19 to i64
  %dev11 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 4
  %call12 = tail call fastcc ptr @alloc_sgt_from_device_pages(ptr noundef %7, ptr noundef %15, i64 noundef %17, i64 noundef %conv, ptr noundef %21, i32 noundef %dir)
  br label %if.end17

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %device_address = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %conv14 = zext i32 %25 to i64
  %dev15 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %26 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15, align 4
  %call16 = tail call fastcc ptr @alloc_sgt_from_device_pages(ptr noundef %7, ptr noundef %device_address, i64 noundef 1, i64 noundef %conv14, ptr noundef %27, i32 noundef %dir)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  %sgt.0 = phi ptr [ %call12, %if.then10 ], [ %call16, %if.else ]
  %cmp.i = icmp ugt ptr %sgt.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %dev23 = getelementptr inbounds %struct.hl_device, ptr %7, i32 0, i32 6
  %28 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev23, align 4
  %30 = ptrtoint ptr %sgt.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.136, i32 noundef %30) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end17.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi ptr [ %sgt.0, %do.end22 ], [ %sgt.0, %if.end17.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %do.body ], [ inttoptr (i32 -1 to ptr), %if.then6 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_unmap_dmabuf(ptr nocapture noundef readonly %attachment, ptr noundef %sgt, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %0 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sg.011 = phi ptr [ %3, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.011, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.011, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  tail call void @dma_unmap_resource(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %dir, i32 noundef 32) #11
  %inc = add nuw i32 %i.012, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.011) #11
  %10 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.lcssa, ptr %orig_nents, align 4
  tail call void @sg_free_table(ptr noundef %sgt) #11
  tail call void @kfree(ptr noundef %sgt) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hl_release_dmabuf(ptr nocapture noundef readonly %dmabuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ctx1 = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %1, i32 0, i32 1
  %phys_pg_pack = getelementptr inbounds %struct.hl_dmabuf_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_pg_pack, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 4
  %hdev2 = getelementptr inbounds %struct.hl_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev2, align 4
  %idr_lock = getelementptr inbounds %struct.hl_device, ptr %7, i32 0, i32 36, i32 2
  tail call void @_raw_spin_lock(ptr noundef %idr_lock) #11
  %8 = ptrtoint ptr %phys_pg_pack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys_pg_pack, align 8
  %exporting_cnt = getelementptr inbounds %struct.hl_vm_phys_pg_pack, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %exporting_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %exporting_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %exporting_cnt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %idr_lock) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 4
  %call = tail call i32 @hl_ctx_put(ptr noundef %13) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_sgt_from_device_pages(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %pages, i64 noundef %npages, i64 noundef %page_size, ptr noundef %dev, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end9_crit_edge, label %land.lhs.true.i

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %dma_get_max_seg_size.exit

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

dma_get_max_seg_size.exit:                        ; preds = %land.lhs.true.i
  %4 = and i32 %3, -4096
  %and = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.body, label %dma_get_max_seg_size.exit.if.end9_crit_edge

dma_get_max_seg_size.exit.if.end9_crit_edge:      ; preds = %dma_get_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.body:                                          ; preds = %dma_get_max_seg_size.exit
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @alloc_sgt_from_device_pages._rs, ptr noundef nonnull @__func__.alloc_sgt_from_device_pages) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.cleanup332_crit_edge, label %do.end

do.body.cleanup332_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup332

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev5 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.137, i64 noundef %and) #15
  br label %cleanup332

if.end9:                                          ; preds = %dma_get_max_seg_size.exit.if.end9_crit_edge, %land.lhs.true.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %and545 = phi i64 [ %and, %dma_get_max_seg_size.exit.if.end9_crit_edge ], [ 65536, %entry.if.end9_crit_edge ], [ 65536, %land.lhs.true.i.if.end9_crit_edge ]
  %7 = phi i32 [ %4, %dma_get_max_seg_size.exit.if.end9_crit_edge ], [ 65536, %entry.if.end9_crit_edge ], [ 65536, %land.lhs.true.i.if.end9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #16
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup332_crit_edge, label %if.end14

if.end9.cleanup332_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup332

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp8(i64 %and545, i64 %page_size)
  %cmp15 = icmp ult i64 %and545, %page_size
  br i1 %cmp15, label %if.then17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %npages)
  %cmp215575 = icmp ugt i64 %npages, 1
  br i1 %cmp215575, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end229_crit_edge

for.cond.preheader.if.end229_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then17:                                        ; preds = %if.end14
  %add18 = add nsw i64 %and545, -1
  %sub19 = add i64 %add18, %page_size
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19)
  %cmp194 = icmp ult i64 %sub19, 4294967296
  br i1 %cmp194, label %if.then198, label %if.else204, !prof !358

if.then198:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %conv199 = trunc i64 %sub19 to i32
  %div202 = udiv i32 %conv199, %7
  %conv203 = zext i32 %div202 to i64
  br label %if.end229.thread

if.else204:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub19) #14, !srcloc !359
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  br label %if.end229.thread

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %chunk_size.0578 = phi i64 [ %chunk_size.1, %for.body.for.body_crit_edge ], [ %page_size, %for.cond.preheader.for.body_crit_edge ]
  %nents.0577 = phi i32 [ %nents.1, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %i.0576 = phi i32 [ %inc228, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %sub217 = add i32 %i.0576, -1
  %arrayidx = getelementptr i64, ptr %pages, i32 %sub217
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %add218 = add i64 %11, %page_size
  %arrayidx219 = getelementptr i64, ptr %pages, i32 %i.0576
  %12 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx219, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add218, i64 %13)
  %cmp220.not = icmp ne i64 %add218, %13
  %add222 = add i64 %chunk_size.0578, %page_size
  call void @__sanitizer_cov_trace_cmp8(i64 %add222, i64 %and545)
  %cmp223 = icmp ugt i64 %add222, %and545
  %or.cond = select i1 %cmp220.not, i1 true, i1 %cmp223
  %inc = zext i1 %or.cond to i32
  %nents.1 = add i32 %nents.0577, %inc
  %chunk_size.1 = select i1 %or.cond, i64 %page_size, i64 %add222
  %inc228 = add i32 %i.0576, 1
  %conv214 = sext i32 %inc228 to i64
  %cmp215 = icmp ult i64 %conv214, %npages
  br i1 %cmp215, label %for.body.for.body_crit_edge, label %for.body.if.end229_crit_edge

for.body.if.end229_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end229:                                        ; preds = %for.body.if.end229_crit_edge, %for.cond.preheader.if.end229_crit_edge
  %nents.0.lcssa = phi i32 [ 1, %for.cond.preheader.if.end229_crit_edge ], [ %nents.1, %for.body.if.end229_crit_edge ]
  %call230 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %nents.0.lcssa, i32 noundef 3520) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.else274, label %if.end229.error_free_crit_edge

if.end229.error_free_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.end229.thread:                                 ; preds = %if.else204, %if.then198
  %_tmp.0 = phi i64 [ %conv203, %if.then198 ], [ %asmresult1.i, %if.else204 ]
  %mul211 = mul i64 %_tmp.0, %npages
  %conv212 = trunc i64 %mul211 to i32
  %call230565 = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %conv212, i32 noundef 3520) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230565)
  %tobool231.not566 = icmp eq i32 %call230565, 0
  br i1 %tobool231.not566, label %if.then236, label %if.end229.thread.error_free_crit_edge

if.end229.thread.error_free_crit_edge:            ; preds = %if.end229.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.then236:                                       ; preds = %if.end229.thread
  %nents238 = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %nents238 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp239583.not = icmp eq i32 %15, 0
  br i1 %cmp239583.not, label %if.then236.if.end316_crit_edge, label %for.body241.lr.ph

if.then236.if.end316_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end316

for.body241.lr.ph:                                ; preds = %if.then236
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %dram_base_address = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 13
  %dram_pci_bar_start = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 66
  br label %for.body241

for.body241:                                      ; preds = %if.end261.for.body241_crit_edge, %for.body241.lr.ph
  %cur_device_address.0588 = phi i64 [ 0, %for.body241.lr.ph ], [ %cur_device_address.1, %if.end261.for.body241_crit_edge ]
  %size_left.0587 = phi i64 [ %page_size, %for.body241.lr.ph ], [ %size_left.1, %if.end261.for.body241_crit_edge ]
  %sg.0586 = phi ptr [ %17, %for.body241.lr.ph ], [ %call271, %if.end261.for.body241_crit_edge ]
  %cur_page.0585 = phi i32 [ 0, %for.body241.lr.ph ], [ %cur_page.1, %if.end261.for.body241_crit_edge ]
  %i.1584 = phi i32 [ 0, %for.body241.lr.ph ], [ %inc270, %if.end261.for.body241_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %size_left.0587, i64 %page_size)
  %cmp242 = icmp eq i64 %size_left.0587, %page_size
  br i1 %cmp242, label %if.then244, label %if.else247

if.then244:                                       ; preds = %for.body241
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx245 = getelementptr i64, ptr %pages, i32 %cur_page.0585
  %18 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx245, align 8
  %20 = ptrtoint ptr %dram_base_address to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dram_base_address, align 8
  %sub246 = sub i64 %19, %21
  br label %if.end249

if.else247:                                       ; preds = %for.body241
  call void @__sanitizer_cov_trace_pc() #13
  %add248 = add i64 %cur_device_address.0588, %and545
  br label %if.end249

if.end249:                                        ; preds = %if.else247, %if.then244
  %cur_device_address.1 = phi i64 [ %sub246, %if.then244 ], [ %add248, %if.else247 ]
  %22 = tail call i64 @llvm.umin.i64(i64 %size_left.0587, i64 %and545)
  %23 = ptrtoint ptr %dram_pci_bar_start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dram_pci_bar_start, align 8
  %add257 = add i64 %24, %cur_device_address.1
  %conv.i518 = trunc i64 %add257 to i32
  %conv1.i = trunc i64 %22 to i32
  %call.i = tail call i32 @dma_map_resource(ptr noundef %dev, i32 noundef %conv.i518, i32 noundef %conv1.i, i32 noundef %dir, i32 noundef 32) #11
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not.i, label %if.end249.error_unmap_crit_edge, label %if.end.i519

if.end249.error_unmap_crit_edge:                  ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unmap

if.end.i519:                                      ; preds = %if.end249
  %25 = ptrtoint ptr %sg.0586 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg.0586, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end261, label %do.body19.i.i.i, !prof !358

do.body19.i.i.i:                                  ; preds = %if.end.i519
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !372
  unreachable

if.end261:                                        ; preds = %if.end.i519
  %and.i.i.i = and i32 %26, 3
  %27 = ptrtoint ptr %sg.0586 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i.i.i, ptr %sg.0586, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0586, i32 0, i32 1
  %28 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0586, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv1.i, ptr %length.i.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0586, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0586, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv1.i, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %size_left.0587, i64 %and545)
  %cmp262 = icmp ugt i64 %size_left.0587, %and545
  %sub265 = sub i64 %size_left.0587, %and545
  %not.cmp262 = xor i1 %cmp262, true
  %inc267 = zext i1 %not.cmp262 to i32
  %cur_page.1 = add i32 %cur_page.0585, %inc267
  %size_left.1 = select i1 %cmp262, i64 %sub265, i64 %page_size
  %inc270 = add nuw i32 %i.1584, 1
  %call271 = tail call ptr @sg_next(ptr noundef %sg.0586) #11
  %32 = ptrtoint ptr %nents238 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nents238, align 4
  %cmp239 = icmp ult i32 %inc270, %33
  br i1 %cmp239, label %if.end261.for.body241_crit_edge, label %if.end261.if.end316_crit_edge

if.end261.if.end316_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end316

if.end261.for.body241_crit_edge:                  ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body241

if.else274:                                       ; preds = %if.end229
  %nents277 = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nents277 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents277, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp278579.not = icmp eq i32 %35, 0
  br i1 %cmp278579.not, label %if.else274.if.end316_crit_edge, label %for.cond282.preheader.lr.ph

if.else274.if.end316_crit_edge:                   ; preds = %if.else274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end316

for.cond282.preheader.lr.ph:                      ; preds = %if.else274
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %dram_pci_bar_start303 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 66
  %dram_base_address305 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 33, i32 13
  br label %for.cond282.preheader

for.cond282.preheader:                            ; preds = %if.end311.for.cond282.preheader_crit_edge, %for.cond282.preheader.lr.ph
  %sg.1582 = phi ptr [ %37, %for.cond282.preheader.lr.ph ], [ %call314, %if.end311.for.cond282.preheader_crit_edge ]
  %cur_page.2581 = phi i32 [ 0, %for.cond282.preheader.lr.ph ], [ %j.0, %if.end311.for.cond282.preheader_crit_edge ]
  %i.2580 = phi i32 [ 0, %for.cond282.preheader.lr.ph ], [ %inc313, %if.end311.for.cond282.preheader_crit_edge ]
  br label %for.cond282

for.cond282:                                      ; preds = %for.body286.for.cond282_crit_edge, %for.cond282.preheader
  %j.0.in = phi i32 [ %j.0, %for.body286.for.cond282_crit_edge ], [ %cur_page.2581, %for.cond282.preheader ]
  %chunk_size.2 = phi i64 [ %add294, %for.body286.for.cond282_crit_edge ], [ %page_size, %for.cond282.preheader ]
  %j.0 = add i32 %j.0.in, 1
  %conv283 = sext i32 %j.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv283, i64 %npages)
  %cmp284 = icmp ult i64 %conv283, %npages
  br i1 %cmp284, label %for.body286, label %for.cond282.for.end302_crit_edge

for.cond282.for.end302_crit_edge:                 ; preds = %for.cond282
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end302

for.body286:                                      ; preds = %for.cond282
  %arrayidx288 = getelementptr i64, ptr %pages, i32 %j.0.in
  %38 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx288, align 8
  %add289 = add i64 %39, %page_size
  %arrayidx290 = getelementptr i64, ptr %pages, i32 %j.0
  %40 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx290, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add289, i64 %41)
  %cmp291.not = icmp ne i64 %add289, %41
  %add294 = add i64 %chunk_size.2, %page_size
  call void @__sanitizer_cov_trace_cmp8(i64 %add294, i64 %and545)
  %cmp295 = icmp ugt i64 %add294, %and545
  %or.cond515 = select i1 %cmp291.not, i1 true, i1 %cmp295
  br i1 %or.cond515, label %for.body286.for.end302_crit_edge, label %for.body286.for.cond282_crit_edge

for.body286.for.cond282_crit_edge:                ; preds = %for.body286
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond282

for.body286.for.end302_crit_edge:                 ; preds = %for.body286
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end302

for.end302:                                       ; preds = %for.body286.for.end302_crit_edge, %for.cond282.for.end302_crit_edge
  %42 = ptrtoint ptr %dram_pci_bar_start303 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dram_pci_bar_start303, align 8
  %arrayidx304 = getelementptr i64, ptr %pages, i32 %cur_page.2581
  %44 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx304, align 8
  %46 = ptrtoint ptr %dram_base_address305 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dram_base_address305, align 8
  %sub306 = add i64 %45, %43
  %add307 = sub i64 %sub306, %47
  %conv.i521 = trunc i64 %add307 to i32
  %conv1.i522 = trunc i64 %chunk_size.2 to i32
  %call.i523 = tail call i32 @dma_map_resource(ptr noundef %dev, i32 noundef %conv.i521, i32 noundef %conv1.i522, i32 noundef %dir, i32 noundef 32) #11
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call.i523) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i523)
  %cmp.i.not.i524 = icmp eq i32 %call.i523, -1
  br i1 %cmp.i.not.i524, label %for.end302.error_unmap_crit_edge, label %if.end.i527

for.end302.error_unmap_crit_edge:                 ; preds = %for.end302
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unmap

if.end.i527:                                      ; preds = %for.end302
  %48 = ptrtoint ptr %sg.1582 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg.1582, align 4
  %and.i.i.i.i525 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i525)
  %tobool.i.not.i.i.i526 = icmp eq i32 %and.i.i.i.i525, 0
  br i1 %tobool.i.not.i.i.i526, label %if.end311, label %do.body19.i.i.i528, !prof !358

do.body19.i.i.i528:                               ; preds = %if.end.i527
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !372
  unreachable

if.end311:                                        ; preds = %if.end.i527
  %and.i.i.i529 = and i32 %49, 3
  %50 = ptrtoint ptr %sg.1582 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.i.i.i529, ptr %sg.1582, align 4
  %offset1.i.i530 = getelementptr inbounds %struct.scatterlist, ptr %sg.1582, i32 0, i32 1
  %51 = ptrtoint ptr %offset1.i.i530 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %offset1.i.i530, align 4
  %length.i.i531 = getelementptr inbounds %struct.scatterlist, ptr %sg.1582, i32 0, i32 2
  %52 = ptrtoint ptr %length.i.i531 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv1.i522, ptr %length.i.i531, align 4
  %dma_address.i532 = getelementptr inbounds %struct.scatterlist, ptr %sg.1582, i32 0, i32 3
  %53 = ptrtoint ptr %dma_address.i532 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i523, ptr %dma_address.i532, align 4
  %dma_length.i533 = getelementptr inbounds %struct.scatterlist, ptr %sg.1582, i32 0, i32 4
  %54 = ptrtoint ptr %dma_length.i533 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv1.i522, ptr %dma_length.i533, align 4
  %inc313 = add nuw i32 %i.2580, 1
  %call314 = tail call ptr @sg_next(ptr noundef %sg.1582) #11
  %55 = ptrtoint ptr %nents277 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nents277, align 4
  %cmp278 = icmp ult i32 %inc313, %56
  br i1 %cmp278, label %if.end311.for.cond282.preheader_crit_edge, label %if.end311.if.end316_crit_edge

if.end311.if.end316_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end316

if.end311.for.cond282.preheader_crit_edge:        ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond282.preheader

if.end316:                                        ; preds = %if.end311.if.end316_crit_edge, %if.else274.if.end316_crit_edge, %if.end261.if.end316_crit_edge, %if.then236.if.end316_crit_edge
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %orig_nents to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %orig_nents, align 8
  br label %cleanup332

error_unmap:                                      ; preds = %for.end302.error_unmap_crit_edge, %if.end249.error_unmap_crit_edge
  %nents319 = getelementptr inbounds %struct.sg_table, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %nents319 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nents319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp320589.not = icmp eq i32 %59, 0
  br i1 %cmp320589.not, label %error_unmap.for.end330_crit_edge, label %for.body322.preheader

error_unmap.for.end330_crit_edge:                 ; preds = %error_unmap
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end330

for.body322.preheader:                            ; preds = %error_unmap
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  br label %for.body322

for.body322:                                      ; preds = %for.inc327.for.body322_crit_edge, %for.body322.preheader
  %sg.2591 = phi ptr [ %call329, %for.inc327.for.body322_crit_edge ], [ %61, %for.body322.preheader ]
  %i.3590 = phi i32 [ %inc328, %for.inc327.for.body322_crit_edge ], [ 0, %for.body322.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.2591, i32 0, i32 4
  %62 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool323.not = icmp eq i32 %63, 0
  br i1 %tobool323.not, label %for.body322.for.inc327_crit_edge, label %if.end325

for.body322.for.inc327_crit_edge:                 ; preds = %for.body322
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc327

if.end325:                                        ; preds = %for.body322
  call void @__sanitizer_cov_trace_pc() #13
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.2591, i32 0, i32 3
  %64 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_address, align 4
  tail call void @dma_unmap_resource(ptr noundef %dev, i32 noundef %65, i32 noundef %63, i32 noundef %dir, i32 noundef 32) #11
  br label %for.inc327

for.inc327:                                       ; preds = %if.end325, %for.body322.for.inc327_crit_edge
  %inc328 = add nuw i32 %i.3590, 1
  %call329 = tail call ptr @sg_next(ptr noundef %sg.2591) #11
  %66 = ptrtoint ptr %nents319 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nents319, align 4
  %cmp320 = icmp ult i32 %inc328, %67
  br i1 %cmp320, label %for.inc327.for.body322_crit_edge, label %for.inc327.for.end330_crit_edge

for.inc327.for.end330_crit_edge:                  ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end330

for.inc327.for.body322_crit_edge:                 ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body322

for.end330:                                       ; preds = %for.inc327.for.end330_crit_edge, %error_unmap.for.end330_crit_edge
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i) #11
  br label %error_free

error_free:                                       ; preds = %for.end330, %if.end229.thread.error_free_crit_edge, %if.end229.error_free_crit_edge
  %rc.3 = phi i32 [ %call230, %if.end229.error_free_crit_edge ], [ -12, %for.end330 ], [ %call230565, %if.end229.thread.error_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %68 = inttoptr i32 %rc.3 to ptr
  br label %cleanup332

cleanup332:                                       ; preds = %error_free, %if.end316, %if.end9.cleanup332_crit_edge, %do.end, %do.body.cleanup332_crit_edge
  %retval.0 = phi ptr [ %68, %error_free ], [ %call7.i.i, %if.end316 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.body.cleanup332_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup332_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_mmu_ctx_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @va_range_init(ptr nocapture noundef readonly %hdev, ptr noundef %va_range, i64 noundef %start, i64 noundef %end, i32 noundef %page_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %2 = tail call i32 @llvm.ctpop.i32(i32 %page_size) #11, !range !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %start.biased = add i64 %start, 4095
  %start.addr.0 = and i64 %start.biased, -4096
  %add3 = add i64 %end, 1
  %and4 = and i64 %add3, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end10_crit_edge, label %if.then6

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and8 = and i64 %add3, -4096
  %sub = add i64 %and8, -1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %start.addr.1 = phi i64 [ %start.addr.0, %if.then6 ], [ %start.addr.0, %if.then.if.end10_crit_edge ], [ %start, %entry.if.end10_crit_edge ]
  %end.addr.0 = phi i64 [ %sub, %if.then6 ], [ %end, %if.then.if.end10_crit_edge ], [ %end, %entry.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %start.addr.1, i64 %end.addr.0)
  %cmp.not = icmp ult i64 %start.addr.1, %end.addr.0
  br i1 %cmp.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.169) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  tail call void @mutex_lock_nested(ptr noundef %va_range, i32 noundef 0) #11
  %call.i = tail call fastcc i32 @add_va_block_locked(ptr noundef %hdev, ptr noundef %list, i64 noundef %start.addr.1, i64 noundef %end.addr.0) #11
  tail call void @mutex_unlock(ptr noundef %va_range) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.hl_device, ptr %hdev, i32 0, i32 6
  %6 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.172) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %start_addr = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 2
  %8 = ptrtoint ptr %start_addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %start.addr.1, ptr %start_addr, align 8
  %end_addr = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 3
  %9 = ptrtoint ptr %end_addr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %end.addr.0, ptr %end_addr, align 8
  %page_size21 = getelementptr inbounds %struct.hl_va_range, ptr %va_range, i32 0, i32 4
  %10 = ptrtoint ptr %page_size21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %page_size, ptr %page_size21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end18, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %call.i, %do.end18 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hl_debugfs_add_ctx_mem_hash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hl_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !270, !271, !273, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !307, !308, !310, !311, !312, !314, !315, !317, !318, !319, !321, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !346}
!llvm.named.register.sp = !{!347}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @__UNIQUE_ID_import_ns299, !1, !"__UNIQUE_ID_import_ns299", i1 false, i1 false}
!1 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 16, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 797, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hl_unreserve_va_block._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @hl_unreserve_va_block._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 806, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hl_unreserve_va_block._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @hl_unreserve_va_block._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1456, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hl_hw_block_mmap._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @hl_hw_block_mmap._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2053, i32 3}
!22 = !{ptr @hl_mem_ioctl._rs, !21, !"_rs", i1 false, i1 false}
!23 = !{ptr @__func__.hl_mem_ioctl, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hl_mem_ioctl._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @hl_mem_ioctl._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2065, i32 4}
!29 = !{ptr @hl_mem_ioctl._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hl_mem_ioctl._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2085, i32 4}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hl_mem_ioctl.__UNIQUE_ID_ddebug316, !32, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!35 = !{ptr @hl_mem_ioctl.__UNIQUE_ID_ddebug317, !36, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!36 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2114, i32 4}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2158, i32 3}
!39 = !{ptr @hl_mem_ioctl._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hl_mem_ioctl._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2235, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hl_pin_host_memory._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hl_pin_host_memory._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2245, i32 3}
!48 = !{ptr @hl_pin_host_memory._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hl_pin_host_memory._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2269, i32 3}
!52 = !{ptr @hl_pin_host_memory._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hl_pin_host_memory._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2628, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hl_vm_ctx_fini.__UNIQUE_ID_ddebug318, !55, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2632, i32 3}
!60 = !{ptr @hl_vm_ctx_fini.__UNIQUE_ID_ddebug319, !59, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2650, i32 4}
!63 = !{ptr @hl_vm_ctx_fini.__UNIQUE_ID_ddebug320, !62, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2701, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hl_vm_init._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @hl_vm_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2712, i32 3}
!71 = !{ptr @hl_vm_init._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @hl_vm_init._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hl_vm_init.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2717, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2753, i32 3}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hl_vm_fini._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @hl_vm_fini._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @hl_hw_block_mem_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2768, i32 2}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2784, i32 3}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @hl_hw_block_mem_fini._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @hl_hw_block_mem_fini._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 623, i32 4}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @get_va_block._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @get_va_block._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 629, i32 3}
!97 = !{ptr @get_va_block.__UNIQUE_ID_ddebug301, !96, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 681, i32 3}
!100 = !{ptr @get_va_block._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @get_va_block._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 690, i32 3}
!104 = !{ptr @get_va_block._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @get_va_block._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 488, i32 4}
!108 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @add_va_block_locked._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @add_va_block_locked._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @hw_block_vm_ops, !112, !"hw_block_vm_ops", i1 false, i1 false}
!112 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1426, i32 42}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1978, i32 4}
!115 = !{ptr @mem_ioctl_no_mmu._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mem_ioctl_no_mmu._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mem_ioctl_no_mmu._entry.57, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2033, i32 3}
!119 = !{ptr @mem_ioctl_no_mmu._entry_ptr.58, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1039, i32 3}
!122 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @get_paddr_from_handle._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @get_paddr_from_handle._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 73, i32 3}
!127 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @alloc_device_memory._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @alloc_device_memory._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 82, i32 4}
!132 = !{ptr @alloc_device_memory._entry.63, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @alloc_device_memory._entry_ptr.65, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 118, i32 5}
!136 = !{ptr @alloc_device_memory._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @alloc_device_memory._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 134, i32 3}
!140 = !{ptr @alloc_device_memory._entry.69, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @alloc_device_memory._entry_ptr.71, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 347, i32 4}
!144 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @free_device_memory._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @free_device_memory._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 354, i32 4}
!149 = !{ptr @free_device_memory.__UNIQUE_ID_ddebug300, !148, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 373, i32 3}
!152 = !{ptr @free_device_memory._entry.75, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @free_device_memory._entry_ptr.77, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1090, i32 4}
!156 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @map_device_va._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @map_device_va._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1097, i32 4}
!161 = !{ptr @map_device_va._entry.80, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @map_device_va._entry_ptr.82, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @map_device_va._entry.83, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1135, i32 4}
!165 = !{ptr @map_device_va._entry_ptr.84, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1161, i32 3}
!168 = !{ptr @map_device_va._entry.85, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @map_device_va._entry_ptr.87, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1177, i32 4}
!172 = !{ptr @map_device_va._entry.88, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @map_device_va._entry_ptr.90, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1183, i32 3}
!176 = !{ptr @map_device_va.__UNIQUE_ID_ddebug304, !175, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1192, i32 3}
!179 = !{ptr @map_device_va._entry.92, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @map_device_va._entry_ptr.94, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.96, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1203, i32 3}
!183 = !{ptr @map_device_va._entry.95, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @map_device_va._entry_ptr.97, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.99, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1235, i32 3}
!187 = !{ptr @map_device_va._entry.98, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @map_device_va._entry_ptr.100, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 194, i32 3}
!191 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @dma_map_host_va._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @dma_map_host_va._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.104, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 201, i32 3}
!196 = !{ptr @dma_map_host_va._entry.103, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @dma_map_host_va._entry_ptr.105, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.106, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 947, i32 4}
!200 = !{ptr @.str.107, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @map_phys_pg_pack._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @map_phys_pg_pack._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @map_phys_pg_pack._rs, !204, !"_rs", i1 false, i1 false}
!204 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 967, i32 4}
!205 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @map_phys_pg_pack._entry.108, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @map_phys_pg_pack._entry_ptr.110, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1287, i32 3}
!210 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @unmap_device_va._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @unmap_device_va._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @unmap_device_va._entry.113, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1305, i32 4}
!215 = !{ptr @unmap_device_va._entry_ptr.114, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1321, i32 3}
!218 = !{ptr @unmap_device_va._entry.115, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @unmap_device_va._entry_ptr.117, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.119, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1329, i32 3}
!222 = !{ptr @unmap_device_va._entry.118, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @unmap_device_va._entry_ptr.120, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @unmap_device_va._entry.121, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1369, i32 4}
!226 = !{ptr @unmap_device_va._entry_ptr.122, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @unmap_phys_pg_pack._rs, !228, !"_rs", i1 false, i1 false}
!228 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1010, i32 4}
!229 = !{ptr @__func__.unmap_phys_pg_pack, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.123, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @unmap_phys_pg_pack._entry, !228, !"_entry", i1 false, i1 false}
!232 = !{ptr @unmap_phys_pg_pack._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1897, i32 3}
!235 = !{ptr @.str.125, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug312, !234, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!237 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1906, i32 3}
!239 = !{ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug313, !238, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!240 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1916, i32 3}
!242 = !{ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug314, !241, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!243 = !{ptr @.str.128, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1931, i32 4}
!245 = !{ptr @export_dmabuf_from_handle.__UNIQUE_ID_ddebug315, !244, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!246 = !{ptr @.str.129, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1768, i32 3}
!248 = !{ptr @.str.130, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @export_dmabuf_common._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @export_dmabuf_common._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.132, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1774, i32 3}
!253 = !{ptr @export_dmabuf_common._entry.131, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @export_dmabuf_common._entry_ptr.133, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @habanalabs_dmabuf_ops, !256, !"habanalabs_dmabuf_ops", i1 false, i1 false}
!256 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1746, i32 33}
!257 = !{ptr @.str.134, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1678, i32 3}
!259 = !{ptr @.str.135, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @hl_map_dmabuf.__UNIQUE_ID_ddebug307, !258, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!261 = !{ptr @.str.136, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1698, i32 3}
!263 = !{ptr @hl_map_dmabuf._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @hl_map_dmabuf._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @alloc_sgt_from_device_pages._rs, !266, !"_rs", i1 false, i1 false}
!266 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1532, i32 3}
!267 = !{ptr @__func__.alloc_sgt_from_device_pages, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @alloc_sgt_from_device_pages._entry, !266, !"_entry", i1 false, i1 false}
!270 = !{ptr @alloc_sgt_from_device_pages._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.138, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1818, i32 3}
!273 = !{ptr @.str.139, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug308, !272, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!275 = !{ptr @.str.140, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1825, i32 3}
!277 = !{ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug309, !276, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!278 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1834, i32 3}
!280 = !{ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug310, !279, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 1846, i32 3}
!283 = !{ptr @export_dmabuf_from_addr.__UNIQUE_ID_ddebug311, !282, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!284 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2174, i32 3}
!286 = !{ptr @.str.144, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @get_user_memory._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @get_user_memory._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2188, i32 3}
!291 = !{ptr @get_user_memory._entry.145, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @get_user_memory._entry_ptr.147, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.149, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2203, i32 3}
!295 = !{ptr @get_user_memory._entry.148, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @get_user_memory._entry_ptr.150, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.151, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2480, i32 3}
!299 = !{ptr @.str.152, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @vm_ctx_init_with_ranges._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @vm_ctx_init_with_ranges._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @vm_ctx_init_with_ranges.__key, !303, !"__key", i1 false, i1 false}
!303 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2484, i32 2}
!304 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @vm_ctx_init_with_ranges.__key.154, !306, !"__key", i1 false, i1 false}
!306 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2487, i32 2}
!307 = !{ptr @.str.155, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.157, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2492, i32 3}
!310 = !{ptr @vm_ctx_init_with_ranges._entry.156, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @vm_ctx_init_with_ranges._entry_ptr.158, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @vm_ctx_init_with_ranges.__key.159, !313, !"__key", i1 false, i1 false}
!313 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2497, i32 3}
!314 = !{ptr @.str.160, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.162, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2504, i32 4}
!317 = !{ptr @vm_ctx_init_with_ranges._entry.161, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @vm_ctx_init_with_ranges._entry_ptr.163, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @vm_ctx_init_with_ranges.__key.164, !320, !"__key", i1 false, i1 false}
!320 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2514, i32 2}
!321 = !{ptr @.str.165, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.167, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2519, i32 3}
!324 = !{ptr @vm_ctx_init_with_ranges._entry.166, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @vm_ctx_init_with_ranges._entry_ptr.168, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.169, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2399, i32 3}
!328 = !{ptr @.str.170, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @va_range_init._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @va_range_init._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.172, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 2406, i32 3}
!333 = !{ptr @va_range_init._entry.171, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @va_range_init._entry_ptr.173, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.174, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 289, i32 5}
!337 = !{ptr @.str.175, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @free_phys_pg_pack._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @free_phys_pg_pack._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.177, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/misc/habanalabs/common/memory.c", i32 307, i32 6}
!342 = !{ptr @free_phys_pg_pack._entry.176, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @free_phys_pg_pack._entry_ptr.178, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @xa_init_flags.__key, !345, !"__key", i1 false, i1 false}
!345 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!346 = !{ptr @.str.179, !345, !"<string literal>", i1 false, i1 false}
!347 = !{!"sp"}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{i32 0, i32 33}
!358 = !{!"branch_weights", i32 2000, i32 1}
!359 = !{i64 2149013729, i64 2149014009, i64 2149014343, i64 2149014677}
!360 = !{i64 2149105010, i64 2149105015, i64 2149105028, i64 2149105072, i64 2149105106, i64 2149105127}
!361 = !{i64 2156371695, i64 2156371720}
!362 = !{!"auto-init"}
!363 = !{!"branch_weights", i32 1, i32 2000}
!364 = !{i64 2148624725, i64 2148624757, i64 2148624786, i64 2148624820, i64 2148624851, i64 2148624874}
!365 = !{i64 2148623195, i64 2148623221, i64 2148623250, i64 2148623284, i64 2148623315, i64 2148623338}
!366 = !{i64 2148625660, i64 2148625686, i64 2148625715, i64 2148625749, i64 2148625780, i64 2148625803}
!367 = !{i64 2156430362, i64 2156430387}
!368 = !{i64 2148712726}
!369 = !{i64 2148627190, i64 2148627222, i64 2148627251, i64 2148627285, i64 2148627316, i64 2148627339}
!370 = !{i64 2150794379}
!371 = !{i8 0, i8 2}
!372 = !{i64 2154599761, i64 2154600253, i64 2154599798, i64 2154599854, i64 2154599888, i64 2154599912, i64 2154599953, i64 2154599974, i64 2154600002, i64 2154600036}
