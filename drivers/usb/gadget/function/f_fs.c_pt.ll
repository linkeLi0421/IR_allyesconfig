; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_fs.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ffs_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_ffs_lock\09\09\09\09"
module asm "\09.long\09__crc_ffs_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ffs_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ffs_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ffs_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ffs_name_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_ffs_name_dev\09\09\09\09"
module asm "\09.long\09__crc_ffs_name_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ffs_name_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ffs_name_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ffs_name_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ffs_single_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_ffs_single_dev\09\09\09\09"
module asm "\09.long\09__crc_ffs_single_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ffs_single_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ffs_single_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ffs_single_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.ffs_dev = type { ptr, ptr, %struct.list_head, [41 x i8], i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.f_fs_opts = type { %struct.usb_function_instance, ptr, i32, i8 }
%struct.ffs_function = type { ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.usb_function }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.ffs_data = type { ptr, %struct.mutex, %struct.spinlock, ptr, %struct.completion, %struct.refcount_struct, %struct.atomic_t, i32, i32, %struct.anon.73, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [31 x i8], i16, i16, i16, i16, ptr, ptr, ptr, %struct.ffs_file_perms, ptr, ptr, i8, %struct.work_struct, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.73 = type { [4 x i8], i16, i16, %struct.usb_ctrlrequest, %struct.wait_queue_head }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ffs_file_perms = type { i16, %struct.kuid_t, %struct.kgid_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ffs_sb_fill_data = type { %struct.ffs_file_perms, i16, ptr, i8, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.30 }
%union.anon.30 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.ffs_epfile = type { %struct.mutex, ptr, ptr, ptr, ptr, [5 x i8], i8, i8, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.77 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_functionfs_event = type { %union.anon.81, i8, [3 x i8] }
%union.anon.81 = type { %struct.usb_ctrlrequest }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ffs_desc_helper = type { ptr, i32, i32 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_os_desc_header = type <{ i8, i32, i16, i16, %union.anon.82 }>
%union.anon.82 = type { i16 }
%struct.anon.83 = type { i8, i8 }
%struct.usb_ext_compat_desc = type { i8, i8, [8 x i8], [8 x i8], [6 x i8] }
%struct.usb_ext_prop_desc = type <{ i32, i32, i16 }>
%struct.usb_descriptor_header = type { i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ffs_io_data = type { i8, i8, ptr, %struct.iov_iter, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, %struct.sg_table, i8, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.62, %union.anon.63 }
%union.anon.62 = type { ptr }
%union.anon.63 = type { i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ffs_ep = type { ptr, ptr, [3 x ptr], i8, i32 }
%struct.ffs_buffer = type { i32, ptr, [0 x i8] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.usb_os_desc_ext_prop = type { %struct.list_head, i8, i32, ptr, i32, ptr, %struct.config_item }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@ffs_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ffs_lock, i64 52), ptr getelementptr (i8, ptr @ffs_lock, i64 52) }, ptr @ffs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ffs_lock\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_ffs_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ffs_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ffs_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ffs_lock to i32), ptr @__kstrtab_ffs_lock, ptr @__kstrtabns_ffs_lock }, section "___ksymtab_gpl+ffs_lock", align 4
@__UNIQUE_ID_alias297 = internal constant [29 x i8] c"usb_f_fs.alias=fs-functionfs\00", section ".modinfo", align 1
@__kstrtab_ffs_name_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ffs_name_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ffs_name_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ffs_name_dev to i32), ptr @__kstrtab_ffs_name_dev, ptr @__kstrtabns_ffs_name_dev }, section "___ksymtab_gpl+ffs_name_dev", align 4
@ffs_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ffs_devices, ptr @ffs_devices }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_ffs_single_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ffs_single_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ffs_single_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ffs_single_dev to i32), ptr @__kstrtab_ffs_single_dev, ptr @__kstrtabns_ffs_single_dev }, section "___ksymtab_gpl+ffs_single_dev", align 4
@__UNIQUE_ID_alias381 = internal constant [27 x i8] c"usb_f_fs.alias=usbfunc:ffs\00", section ".modinfo", align 1
@ffsusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr @ffs_alloc_inst, ptr @ffs_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_fs__382_3873_ffsmod_init6 = internal global ptr @ffsmod_init, section ".initcall6.init", align 4
@__exitcall_ffsmod_exit = internal global ptr @ffsmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file383 = internal constant [51 x i8] c"usb_f_fs.file=drivers/usb/gadget/function/usb_f_fs\00", section ".modinfo", align 1
@__UNIQUE_ID_license384 = internal constant [21 x i8] c"usb_f_fs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author385 = internal constant [34 x i8] c"usb_f_fs.author=Michal Nazarewicz\00", section ".modinfo", align 1
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ffs\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ffs_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @ffs_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ffs_release_dev.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 3, i8 -84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_f_fs\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_release_dev\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/gadget/function/f_fs.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@functionfs_cleanup.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.7, i8 1, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"functionfs_cleanup\00", [45 x i8] zeroinitializer }, align 32
@functionfs_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.8, ptr @.str.6, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016unloading\0A\00", [19 x i8] zeroinitializer }, align 32
@functionfs_cleanup._entry_ptr = internal global ptr @functionfs_cleanup._entry, section ".printk_index", align 4
@ffs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.10, i32 0, ptr @ffs_fs_init_fs_context, ptr @ffs_fs_fs_parameters, ptr null, ptr @ffs_fs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"functionfs\00", [21 x i8] zeroinitializer }, align 32
@ffs_fs_fs_parameters = internal constant { [7 x %struct.fs_parameter_spec], [48 x i8] } { [7 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.116, ptr @fs_param_is_bool, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.117, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.118, ptr @fs_param_is_u32, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.119, ptr @fs_param_is_u32, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.120, ptr @fs_param_is_u32, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.121, ptr @fs_param_is_u32, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ffs_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @ffs_fs_free_fc, ptr null, ptr @ffs_fs_parse_param, ptr null, ptr @ffs_fs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@ffs_data_put.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.11, ptr @.str.6, ptr @.str.7, i8 1, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ffs_data_put\00", [19 x i8] zeroinitializer }, align 32
@ffs_data_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.11, ptr @.str.6, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s(): freeing\0A\00", [47 x i8] zeroinitializer }, align 32
@ffs_data_put._entry_ptr = internal global ptr @ffs_data_put._entry, section ".printk_index", align 4
@ffs_data_clear.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.13, ptr @.str.6, ptr @.str.7, i8 1, i8 -67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ffs_data_clear\00", [17 x i8] zeroinitializer }, align 32
@ffs_closed.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.14, ptr @.str.6, ptr @.str.7, i8 3, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ffs_closed\00", [21 x i8] zeroinitializer }, align 32
@ffs_epfiles_destroy.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.15, ptr @.str.6, ptr @.str.7, i8 1, i8 -30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ffs_epfiles_destroy\00", [44 x i8] zeroinitializer }, align 32
@ffs_fs_parse_param.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.6, ptr @.str.7, i8 1, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_fs_parse_param\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unmapped value: %u\00", [41 x i8] zeroinitializer }, align 32
@ffs_fs_get_tree.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.7, i8 1, i8 -122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_fs_get_tree\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No source specified\00", [44 x i8] zeroinitializer }, align 32
@ffs_data_new.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.21, ptr @.str.6, ptr @.str.7, i8 1, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ffs_data_new\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ffs_data_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ffs->mutex\00", [20 x i8] zeroinitializer }, align 32
@ffs_data_new.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ffs->eps_lock\00", [17 x i8] zeroinitializer }, align 32
@ffs_data_new.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ffs->ev.waitq\00", [17 x i8] zeroinitializer }, align 32
@ffs_data_new.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ffs->wait\00", [21 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ffs_acquire_dev.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.31, ptr @.str.6, ptr @.str.7, i8 3, i8 -90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_acquire_dev\00", [16 x i8] zeroinitializer }, align 32
@ffs_sb_fill.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.32, ptr @.str.6, ptr @.str.7, i8 1, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ffs_sb_fill\00", [20 x i8] zeroinitializer }, align 32
@ffs_sb_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@ffs_ep0_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ffs_ep0_read, ptr @ffs_ep0_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ffs_ep0_poll, ptr @ffs_ep0_ioctl, ptr null, ptr null, i32 0, ptr @ffs_ep0_open, ptr null, ptr @ffs_ep0_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ffs_sb_make_inode.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.34, ptr @.str.6, ptr @.str.7, i8 1, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ffs_sb_make_inode\00", [46 x i8] zeroinitializer }, align 32
@ffs_sb_create_file.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.6, ptr @.str.7, i8 1, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_sb_create_file\00", [45 x i8] zeroinitializer }, align 32
@ffs_ep0_read.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.36, ptr @.str.6, ptr @.str.7, i8 0, i8 127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ffs_ep0_read\00", [19 x i8] zeroinitializer }, align 32
@__ffs_ep0_stall.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ffs_ep0_stall\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep0 stall\0A\00", [21 x i8] zeroinitializer }, align 32
@__ffs_ep0_stall.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.37, ptr @.str.6, ptr @.str.39, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bogus ep0 stall!\0A\00", [46 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ffs_ep0_write.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.7, i8 0, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ffs_ep0_write\00", [18 x i8] zeroinitializer }, align 32
@ffs_ep0_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.43, ptr @.str.6, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016read descriptors\0A\00", [44 x i8] zeroinitializer }, align 32
@ffs_ep0_write._entry_ptr = internal global ptr @ffs_ep0_write._entry, section ".printk_index", align 4
@ffs_ep0_write._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.6, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016read strings\0A\00", [16 x i8] zeroinitializer }, align 32
@ffs_ep0_write._entry_ptr.47 = internal global ptr @ffs_ep0_write._entry.45, section ".printk_index", align 4
@ffs_prepare_buffer.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 3, i8 -58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_prepare_buffer\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Buffer from user space:\0A\00", [39 x i8] zeroinitializer }, align 32
@ffs_prepare_buffer.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.50, i8 3, i8 -57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__ffs_data_got_descs.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.52, ptr @.str.6, ptr @.str.7, i8 2, i8 106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__ffs_data_got_descs\00", [43 x i8] zeroinitializer }, align 32
@ffs_do_descs.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.53, ptr @.str.6, ptr @.str.7, i8 2, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ffs_do_descs\00", [19 x i8] zeroinitializer }, align 32
@ffs_do_descs.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.53, ptr @.str.6, ptr @.str.54, i8 2, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"entity DESCRIPTOR(%02lx); ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ffs_do_descs.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.53, ptr @.str.6, ptr @.str.55, i8 2, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s returns %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.7, i8 2, i8 0, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_do_single_desc\00", [45 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.57, i8 2, i8 1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"descriptor too short\0A\00", [42 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.58, i8 2, i8 2, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"descriptor longer then available data\0A\00", [57 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.59, i8 2, i8 10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"descriptor reserved for gadget: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.60, i8 2, i8 11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interface descriptor\0A\00", [42 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.61, i8 2, i8 12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entity INTERFACE(%02x)\0A\00", [40 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.62, i8 2, i8 12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"entity INTERFACE(%02x); ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.63, i8 2, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"entity STRING(%02x)\0A\00", [43 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.64, i8 2, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid entity's value\0A\00", [40 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.65, i8 2, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"entity STRING(%02x); ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.66, i8 2, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"endpoint descriptor\0A\00", [43 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.67, i8 2, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"entity ENDPOINT(%02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.64, i8 2, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ffs_do_single_desc.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.68, i8 2, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"entity ENDPOINT(%02x); ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.69, i8 2, i8 17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid descriptor\0A\00", [16 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.70, i8 2, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ccid descriptor\0A\00", [47 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.71, i8 2, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unknown descriptor: %d for class %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.72, i8 2, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"interface association descriptor\0A\00", [62 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.63, i8 2, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ffs_do_single_desc.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.64, i8 2, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ffs_do_single_desc.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.65, i8 2, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ffs_do_single_desc.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.73, i8 2, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EP SS companion descriptor\0A\00", [36 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.74, i8 2, i8 27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unimplemented descriptor: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.75, i8 2, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown descriptor: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ffs_do_single_desc.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.56, ptr @.str.6, ptr @.str.76, i8 2, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid length: %d (descriptor %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__ffs_data_do_entity.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.77, ptr @.str.6, ptr @.str.7, i8 2, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__ffs_data_do_entity\00", [43 x i8] zeroinitializer }, align 32
@ffs_do_os_descs.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.78, ptr @.str.6, ptr @.str.7, i8 2, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_do_os_descs\00", [16 x i8] zeroinitializer }, align 32
@ffs_do_os_descs.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.78, ptr @.str.6, ptr @.str.79, i8 2, i8 77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"entity OS_DESCRIPTOR(%02lx); ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ffs_do_os_descs.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.78, ptr @.str.6, ptr @.str.55, i8 2, i8 82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@__ffs_do_os_desc_header.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.80, ptr @.str.6, ptr @.str.81, i8 2, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__ffs_do_os_desc_header\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported os descriptors version: %d\00", [57 x i8] zeroinitializer }, align 32
@__ffs_do_os_desc_header.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.80, ptr @.str.6, ptr @.str.82, i8 2, i8 60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported os descriptor type: %d\00", [61 x i8] zeroinitializer }, align 32
@ffs_do_single_os_desc.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.6, ptr @.str.7, i8 2, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ffs_do_single_os_desc\00", [42 x i8] zeroinitializer }, align 32
@ffs_do_single_os_desc.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str.6, ptr @.str.84, i8 2, i8 67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad OS descriptor, type: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__ffs_data_do_os_desc.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.85, ptr @.str.6, ptr @.str.7, i8 2, i8 87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__ffs_data_do_os_desc\00", [42 x i8] zeroinitializer }, align 32
@__ffs_data_do_os_desc.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.85, ptr @.str.6, ptr @.str.86, i8 2, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"usb_ext_compat_desc::Reserved1 forced to 1\0A\00", [52 x i8] zeroinitializer }, align 32
@__ffs_data_do_os_desc.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.85, ptr @.str.6, ptr @.str.87, i8 2, i8 97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unsupported os descriptor property type: %d\00", [52 x i8] zeroinitializer }, align 32
@__ffs_data_do_os_desc.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.85, ptr @.str.6, ptr @.str.88, i8 2, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"invalid os descriptor length: %d pnl:%d (descriptor %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__ffs_data_do_os_desc.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.85, ptr @.str.6, ptr @.str.89, i8 2, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"invalid os descriptor length: %d pnl:%d pdl:%d (descriptor %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__ffs_data_do_os_desc.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.85, ptr @.str.6, ptr @.str.75, i8 2, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@__ffs_data_got_strings.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.90, ptr @.str.6, ptr @.str.7, i8 2, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__ffs_data_got_strings\00", [41 x i8] zeroinitializer }, align 32
@ffs_epfiles_create.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.91, ptr @.str.6, ptr @.str.7, i8 1, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_epfiles_create\00", [45 x i8] zeroinitializer }, align 32
@ffs_epfiles_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&epfile->mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep%u\00", [27 x i8] zeroinitializer }, align 32
@ffs_epfile_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @ffs_epfile_read_iter, ptr @ffs_epfile_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ffs_epfile_ioctl, ptr null, ptr null, i32 0, ptr @ffs_epfile_open, ptr null, ptr @ffs_epfile_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ffs_epfile_read_iter.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.95, ptr @.str.6, ptr @.str.7, i8 1, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ffs_epfile_read_iter\00", [43 x i8] zeroinitializer }, align 32
@ffs_aio_cancel.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.96, ptr @.str.6, ptr @.str.7, i8 1, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ffs_aio_cancel\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: data_len == -EINVAL\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.ffs_epfile_io = private unnamed_addr constant [14 x i8] c"ffs_epfile_io\00", align 1
@ffs_epfile_io_complete.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.98, ptr @.str.6, ptr @.str.7, i8 0, i8 -79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ffs_epfile_io_complete\00", [41 x i8] zeroinitializer }, align 32
@__ffs_epfile_read_data._entry = internal constant %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.6, i32 919, ptr null, ptr null }, align 1
@.str.99 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014functionfs read size %d > requested size %zd, splitting request into multiple reads.\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__ffs_epfile_read_data\00", [41 x i8] zeroinitializer }, align 32
@__ffs_epfile_read_data._entry_ptr = internal global ptr @__ffs_epfile_read_data._entry, section ".printk_index", align 4
@ffs_epfile_async_io_complete.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.101, ptr @.str.6, ptr @.str.7, i8 0, i8 -43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ffs_epfile_async_io_complete\00", [35 x i8] zeroinitializer }, align 32
@ffs_epfile_async_io_complete.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&io_data->work)\00", [62 x i8] zeroinitializer }, align 32
@ffs_copy_to_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.6, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"\013functionfs read size %d > requested size %zd, dropping excess data. Align read buffer size to max packet size to avoid the problem.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ffs_copy_to_iter\00", [47 x i8] zeroinitializer }, align 32
@ffs_copy_to_iter._entry_ptr = internal global ptr @ffs_copy_to_iter._entry, section ".printk_index", align 4
@ffs_epfile_write_iter.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.105, ptr @.str.6, ptr @.str.7, i8 1, i8 40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ffs_epfile_write_iter\00", [42 x i8] zeroinitializer }, align 32
@ffs_epfile_ioctl.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.106, ptr @.str.6, ptr @.str.7, i8 1, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ffs_epfile_ioctl\00", [47 x i8] zeroinitializer }, align 32
@ffs_epfile_open.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.107, ptr @.str.6, ptr @.str.7, i8 1, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_epfile_open\00", [16 x i8] zeroinitializer }, align 32
@ffs_data_opened.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.108, ptr @.str.6, ptr @.str.7, i8 1, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_data_opened\00", [16 x i8] zeroinitializer }, align 32
@ffs_data_reset.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.109, ptr @.str.6, ptr @.str.7, i8 1, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ffs_data_reset\00", [17 x i8] zeroinitializer }, align 32
@ffs_epfile_release.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.110, ptr @.str.6, ptr @.str.7, i8 1, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ffs_epfile_release\00", [45 x i8] zeroinitializer }, align 32
@ffs_data_closed.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.111, ptr @.str.6, ptr @.str.7, i8 1, i8 -83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_data_closed\00", [16 x i8] zeroinitializer }, align 32
@ffs_ready.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.112, ptr @.str.6, ptr @.str.7, i8 3, i8 -79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ffs_ready\00", [22 x i8] zeroinitializer }, align 32
@ffs_ep0_ioctl.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.113, ptr @.str.6, ptr @.str.7, i8 0, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ffs_ep0_ioctl\00", [18 x i8] zeroinitializer }, align 32
@ffs_ep0_open.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.114, ptr @.str.6, ptr @.str.7, i8 0, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ffs_ep0_open\00", [19 x i8] zeroinitializer }, align 32
@ffs_ep0_release.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.115, ptr @.str.6, ptr @.str.7, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_ep0_release\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no_disconnect\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmode\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fmode\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@ffs_fs_kill_sb.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.122, ptr @.str.6, ptr @.str.7, i8 1, i8 -105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ffs_fs_kill_sb\00", [17 x i8] zeroinitializer }, align 32
@functionfs_init.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.123, ptr @.str.6, ptr @.str.7, i8 1, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"functionfs_init\00", [16 x i8] zeroinitializer }, align 32
@functionfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.123, ptr @.str.6, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016file system registered\0A\00", [38 x i8] zeroinitializer }, align 32
@functionfs_init._entry_ptr = internal global ptr @functionfs_init._entry, section ".printk_index", align 4
@functionfs_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.123, ptr @.str.6, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed registering file system (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@functionfs_init._entry_ptr.127 = internal global ptr @functionfs_init._entry.125, section ".printk_index", align 4
@ffs_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @ffs_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ffs_alloc.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.128, ptr @.str.6, ptr @.str.7, i8 3, i8 -116, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ffs_alloc\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Function FS Gadget\00", [45 x i8] zeroinitializer }, align 32
@ffs_do_functionfs_bind.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.130, ptr @.str.6, ptr @.str.7, i8 2, i8 -2, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ffs_do_functionfs_bind\00", [41 x i8] zeroinitializer }, align 32
@functionfs_bind.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.131, ptr @.str.6, ptr @.str.7, i8 1, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"functionfs_bind\00", [16 x i8] zeroinitializer }, align 32
@ffs_data_get.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.132, ptr @.str.6, ptr @.str.7, i8 1, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ffs_data_get\00", [19 x i8] zeroinitializer }, align 32
@_ffs_func_bind.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.133, ptr @.str.6, ptr @.str.7, i8 3, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_ffs_func_bind\00", [17 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_descs.speed_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136], align 4
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_descs._entry = internal constant %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.6, i32 2866, ptr null, ptr null }, align 1
@.str.137 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013two %sspeed descriptors for EP %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__ffs_func_bind_do_descs\00", [39 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_descs._entry_ptr = internal global ptr @__ffs_func_bind_do_descs._entry, section ".printk_index", align 4
@__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.138, ptr @.str.6, ptr @.str.139, i8 2, i8 -51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c": Original  ep desc: \00", [42 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.138, ptr @.str.6, ptr @.str.140, i8 2, i8 -45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"autoconfig\0A\00", [20 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.138, ptr @.str.6, ptr @.str.141, i8 2, i8 -39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c": Rewritten ep desc: \00", [42 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_nums.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.142, ptr @.str.6, ptr @.str.143, i8 2, i8 -25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__ffs_func_bind_do_nums\00", [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%02x -> %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@__ffs_func_bind_do_os_desc.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.144, ptr @.str.6, ptr @.str.75, i8 2, i8 -6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__ffs_func_bind_do_os_desc\00", [37 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d: unknown event, this should not happen\0A\00", [53 x i8] zeroinitializer }, align 32
@__ffs_event_add.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.146, ptr @.str.6, ptr @.str.147, i8 2, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__ffs_event_add\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"purging event %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__ffs_event_add.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.146, ptr @.str.6, ptr @.str.148, i8 2, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adding event %d\0A\00", [47 x i8] zeroinitializer }, align 32
@functionfs_unbind.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.149, ptr @.str.6, ptr @.str.7, i8 1, i8 -42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"functionfs_unbind\00", [46 x i8] zeroinitializer }, align 32
@ffs_func_unbind.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.150, ptr @.str.6, ptr @.str.7, i8 3, i8 -126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_func_unbind\00", [16 x i8] zeroinitializer }, align 32
@ffs_func_set_alt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&ffs->reset_work)\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ffs_func_eps_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.6, i32 1990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: config_ep_by_speed(%s) returned %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ffs_func_eps_enable\00", [44 x i8] zeroinitializer }, align 32
@ffs_func_eps_enable._entry_ptr = internal global ptr @ffs_func_eps_enable._entry, section ".printk_index", align 4
@ffs_func_setup.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.154, ptr @.str.6, ptr @.str.7, i8 3, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ffs_func_setup\00", [17 x i8] zeroinitializer }, align 32
@ffs_func_setup.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.154, ptr @.str.6, ptr @.str.155, i8 3, i8 69, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"creq->bRequestType = %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@ffs_func_setup.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.154, ptr @.str.6, ptr @.str.156, i8 3, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"creq->bRequest     = %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@ffs_func_setup.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.154, ptr @.str.6, ptr @.str.157, i8 3, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"creq->wValue       = %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@ffs_func_setup.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.154, ptr @.str.6, ptr @.str.158, i8 3, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"creq->wIndex       = %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@ffs_func_setup.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.154, ptr @.str.6, ptr @.str.159, i8 3, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"creq->wLength      = %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@ffs_func_suspend.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.160, ptr @.str.6, ptr @.str.7, i8 3, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ffs_func_suspend\00", [47 x i8] zeroinitializer }, align 32
@ffs_func_resume.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.161, ptr @.str.6, ptr @.str.7, i8 3, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ffs_func_resume\00", [16 x i8] zeroinitializer }, align 32
@switch.table.ffs_epfile_ioctl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.__ffs_event_add = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@switch.table.__ffs_event_add.162 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 6, i32 6, i32 6, i32 6, i32 4, i32 5, i32 5], [36 x i8] zeroinitializer }, align 32
@switch.table.__ffs_event_add.163 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5, i32 5, i32 5, i32 5, i32 4, i32 5, i32 6], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 5]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.173 = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 33, i64 35, i64 48]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 11]
@__sancov_gen_cov_switch_values.176 = internal global [7 x i64] [i64 5, i64 32, i64 26369, i64 26370, i64 26371, i64 26497, i64 2148099970]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 6, i64 7]
@___asan_gen_.186 = private unnamed_addr constant [9 x i8] c"ffs_lock\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 247, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"ffs_devices\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3460, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"ffsusb_func\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3873, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3574, i32 54 }
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"ffs_func_type\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3526, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3760, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1664, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1666, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [12 x i8] c"ffs_fs_type\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1635, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1637, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant [21 x i8] c"ffs_fs_fs_parameters\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1493, i32 39 }
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c"ffs_fs_context_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1600, i32 43 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1697, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1700, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1781, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3815, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1930, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1509, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1548, i32 9 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1560, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1563, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1753, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1755, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1764, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1765, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1766, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1767, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 87, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3737, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1456, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [18 x i8] c"ffs_sb_operations\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1437, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1478, i32 30 }
@___asan_gen_.318 = private unnamed_addr constant [19 x i8] c"ffs_ep0_operations\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 694, i32 37 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1387, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1420, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 509, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 315, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 320, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 230, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 214, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 174, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 332, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 361, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 369, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3867, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3868, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2474, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2188, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2199, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2210, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2048, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2052, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2059, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2087, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2093, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2097, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2099, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2106, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2110, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2116, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2121, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2126, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2138, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2147, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2158, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2163, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2167, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2227, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2333, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2356, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2277, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2289, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2310, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2316, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2397, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2414, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2437, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2443, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2449, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2606, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1898, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1908, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1910, i32 26 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1912, i32 26 }
@___asan_gen_.507 = private unnamed_addr constant [22 x i8] c"ffs_epfile_operations\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1360, i32 37 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1223, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1167, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1050, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 710, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 918, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 853, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 855, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 754, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1186, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1287, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1149, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1685, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1814, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1272, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1717, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3782, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 637, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 609, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 624, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1494, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1495, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1496, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1497, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1498, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1499, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1628, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1651, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1655, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1657, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant [13 x i8] c"ffs_item_ops\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3522, i32 40 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3635, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3641, i32 27 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3066, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1849, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1678, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3144, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2832, i32 39 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2832, i32 47 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2832, i32 55 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2864, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2871, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2892, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2918, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2973, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3051, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2780, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2791, i32 5 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 2795, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1882, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3595, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3315, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 1989, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3349, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3351, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3352, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3353, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3354, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3355, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3425, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.724 = private constant [38 x i8] c"../drivers/usb/gadget/function/f_fs.c\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 3431, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [30 x i8] c"switch.table.ffs_epfile_ioctl\00", align 1
@___asan_gen_.727 = private unnamed_addr constant [29 x i8] c"switch.table.__ffs_event_add\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [33 x i8] c"switch.table.__ffs_event_add.162\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [33 x i8] c"switch.table.__ffs_event_add.163\00", align 1
@llvm.compiler.used = appending global [208 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_alias381, ptr @__UNIQUE_ID_author385, ptr @__UNIQUE_ID_file383, ptr @__UNIQUE_ID_license384, ptr @__exitcall_ffsmod_exit, ptr @__ffs_epfile_read_data._entry, ptr @__ffs_epfile_read_data._entry_ptr, ptr @__ffs_func_bind_do_descs._entry, ptr @__ffs_func_bind_do_descs._entry_ptr, ptr @__initcall__kmod_usb_f_fs__382_3873_ffsmod_init6, ptr @__ksymtab_ffs_lock, ptr @__ksymtab_ffs_name_dev, ptr @__ksymtab_ffs_single_dev, ptr @ffs_copy_to_iter._entry, ptr @ffs_copy_to_iter._entry_ptr, ptr @ffs_data_put._entry, ptr @ffs_data_put._entry_ptr, ptr @ffs_ep0_write._entry, ptr @ffs_ep0_write._entry.45, ptr @ffs_ep0_write._entry_ptr, ptr @ffs_ep0_write._entry_ptr.47, ptr @ffs_func_eps_enable._entry, ptr @ffs_func_eps_enable._entry_ptr, ptr @ffsmod_exit, ptr @functionfs_cleanup._entry, ptr @functionfs_cleanup._entry_ptr, ptr @functionfs_init._entry, ptr @functionfs_init._entry.125, ptr @functionfs_init._entry_ptr, ptr @functionfs_init._entry_ptr.127, ptr @.str, ptr @ffs_lock, ptr @.str.1, ptr @ffs_devices, ptr @ffsusb_func, ptr @.str.2, ptr @.str.3, ptr @ffs_func_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ffs_fs_type, ptr @.str.10, ptr @ffs_fs_fs_parameters, ptr @ffs_fs_context_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ffs_data_new.__key, ptr @.str.23, ptr @ffs_data_new.__key.24, ptr @.str.25, ptr @ffs_data_new.__key.26, ptr @.str.27, ptr @ffs_data_new.__key.28, ptr @.str.29, ptr @init_completion.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ffs_sb_operations, ptr @.str.33, ptr @ffs_ep0_operations, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @ffs_epfiles_create.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @ffs_epfile_operations, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @ffs_epfile_async_io_complete.__key, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @ffs_item_ops, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @ffs_func_set_alt.__key, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @switch.table.ffs_epfile_ioctl, ptr @switch.table.__ffs_event_add, ptr @switch.table.__ffs_event_add.162, ptr @switch.table.__ffs_event_add.163], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffsusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functionfs_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_fs_fs_parameters to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_data_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_data_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_data_new.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_data_new.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_data_new.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_sb_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_ep0_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_ep0_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_ep0_write._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_epfiles_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_epfile_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_epfile_async_io_complete.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_copy_to_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functionfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functionfs_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_func_set_alt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffs_func_eps_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ffs_epfile_ioctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__ffs_event_add to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__ffs_event_add.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__ffs_event_add.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ffs_name_dev(ptr noundef %dev, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ffs_devices, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ffs_devices
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr i8, ptr %.pn.i, i32 8
  %call.i = tail call i32 @strcmp(ptr noundef %name2.i, ptr noundef nonnull %name) #18
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %_ffs_do_find_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

_ffs_do_find_dev.exit:                            ; preds = %for.body.i
  %dev.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %dev.0.le.i, null
  br i1 %tobool.not, label %_ffs_do_find_dev.exit.if.then_crit_edge, label %if.else

_ffs_do_find_dev.exit.if.then_crit_edge:          ; preds = %_ffs_do_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %_ffs_do_find_dev.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %name1 = getelementptr inbounds %struct.ffs_dev, ptr %dev, i32 0, i32 3
  %call2 = tail call i32 @strlcpy(ptr noundef %name1, ptr noundef %name, i32 noundef 41) #15
  br label %if.end4

if.else:                                          ; preds = %_ffs_do_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cmp.not = icmp eq ptr %dev.0.le.i, %dev
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %spec.select, %if.else ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ffs_single_dev(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %0 = load volatile ptr, ptr @ffs_devices, align 4
  %cmp.i.not.i = icmp eq ptr %0, @ffs_devices
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %list_is_singular.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

list_is_singular.exit:                            ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ffs_devices, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %0, %1
  br i1 %cmp.i.not, label %if.else, label %list_is_singular.exit.if.end_crit_edge

list_is_singular.exit.if.end_crit_edge:           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #17
  %single = getelementptr inbounds %struct.ffs_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %single to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %single, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %list_is_singular.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -16, %list_is_singular.exit.if.end_crit_edge ], [ -16, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ffsmod_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @usb_function_unregister(ptr noundef nonnull @ffsusb_func) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ffsmod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @ffsusb_func) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ffs_alloc_inst() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_inst_name = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %set_inst_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ffs_set_inst_name, ptr %set_inst_name, align 4
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ffs_free_inst, ptr %free_func_inst, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %call3 = tail call fastcc ptr @_ffs_alloc_dev()
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev8 = getelementptr inbounds %struct.f_fs_opts, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %dev8, align 4
  %opts9 = getelementptr inbounds %struct.ffs_dev, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %opts9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %opts9, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @ffs_func_type) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then5 ], [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ffs_alloc(ptr nocapture noundef readnone %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_alloc.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_alloc, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_alloc.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.128) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #19
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %function = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.129, ptr %function, align 4
  %bind = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 9
  %2 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ffs_func_bind, ptr %bind, align 8
  %unbind = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 10
  %3 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ffs_func_unbind, ptr %unbind, align 4
  %set_alt = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ffs_func_set_alt, ptr %set_alt, align 8
  %disable = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 15
  %5 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ffs_func_disable, ptr %disable, align 8
  %setup = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 16
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ffs_func_setup, ptr %setup, align 4
  %req_match = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 17
  %7 = ptrtoint ptr %req_match to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ffs_func_req_match, ptr %req_match, align 8
  %suspend = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 18
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ffs_func_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 19
  %9 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ffs_func_resume, ptr %resume, align 8
  %free_func = getelementptr inbounds %struct.ffs_function, ptr %call7.i.i, i32 0, i32 6, i32 11
  %10 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ffs_free, ptr %free_func, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %function, %if.end8 ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_set_inst_name(ptr nocapture noundef readonly %fi, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call)
  %cmp = icmp ugt i32 %call, 40
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.f_fs_opts, ptr %fi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %tobool.not.i.i = icmp eq ptr %name, null
  br i1 %tobool.not.i.i, label %if.end.if.then.i_crit_edge, label %if.end.for.cond.i.i_crit_edge

if.end.for.cond.i.i_crit_edge:                    ; preds = %if.end
  br label %for.cond.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @ffs_devices, %if.end.for.cond.i.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @ffs_devices
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name2.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %call.i.i = tail call i32 @strcmp(ptr noundef %name2.i.i, ptr noundef nonnull %name) #18
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %_ffs_do_find_dev.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

_ffs_do_find_dev.exit.i:                          ; preds = %for.body.i.i
  %dev.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool.not.i = icmp eq ptr %dev.0.le.i.i, null
  br i1 %tobool.not.i, label %_ffs_do_find_dev.exit.i.if.then.i_crit_edge, label %if.else.i

_ffs_do_find_dev.exit.i.if.then.i_crit_edge:      ; preds = %_ffs_do_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %_ffs_do_find_dev.exit.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %name1.i = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef %name, i32 noundef 41) #15
  br label %ffs_name_dev.exit

if.else.i:                                        ; preds = %_ffs_do_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %cmp.not.i = icmp eq ptr %dev.0.le.i.i, %1
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 -16
  br label %ffs_name_dev.exit

ffs_name_dev.exit:                                ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ 0, %if.then.i ], [ %spec.select.i, %if.else.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br label %return

return:                                           ; preds = %ffs_name_dev.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %ffs_name_dev.exit ], [ -36, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_free_inst(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.f_fs_opts, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_release_dev.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_free_inst, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_release_dev.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %tobool4.not.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i, label %do.end.i.ffs_release_dev.exit_crit_edge, label %land.lhs.true.i

do.end.i.ffs_release_dev.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_release_dev.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %mounted.i = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mounted.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mounted.i, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not.i = icmp eq i8 %3, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.ffs_release_dev.exit_crit_edge, label %if.then6.i

land.lhs.true.i.ffs_release_dev.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_release_dev.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  %4 = ptrtoint ptr %mounted.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mounted.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %tobool8.not.i = icmp eq ptr %6, null
  br i1 %tobool8.not.i, label %if.then6.i.if.end12.i_crit_edge, label %if.then9.i

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %private_data.i = getelementptr inbounds %struct.ffs_data, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %private_data.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end12.i_crit_edge
  %ffs_release_dev_callback.i = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %ffs_release_dev_callback.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ffs_release_dev_callback.i, align 4
  %tobool13.not.i = icmp eq ptr %10, null
  br i1 %tobool13.not.i, label %if.end12.i.ffs_release_dev.exit_crit_edge, label %if.then14.i

if.end12.i.ffs_release_dev.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_release_dev.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %10(ptr noundef nonnull %1) #15
  br label %ffs_release_dev.exit

ffs_release_dev.exit:                             ; preds = %if.then14.i, %if.end12.i.ffs_release_dev.exit_crit_edge, %land.lhs.true.i.ffs_release_dev.exit_crit_edge, %do.end.i.ffs_release_dev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %entry1.i = getelementptr inbounds %struct.ffs_dev, ptr %12, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %ffs_release_dev.exit.list_del.exit.i_crit_edge

ffs_release_dev.exit.list_del.exit.i_crit_edge:   ; preds = %ffs_release_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %ffs_release_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.ffs_dev, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %ffs_release_dev.exit.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ffs_dev, ptr %12, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %12) #15
  %21 = load volatile ptr, ptr @ffs_devices, align 4
  %cmp.i.not.i = icmp eq ptr %21, @ffs_devices
  br i1 %cmp.i.not.i, label %if.then.i4, label %list_del.exit.i._ffs_free_dev.exit_crit_edge

list_del.exit.i._ffs_free_dev.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %_ffs_free_dev.exit

if.then.i4:                                       ; preds = %list_del.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @functionfs_cleanup.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_free_inst, %functionfs_cleanup.exit.i)) #15
          to label %if.then.i.i [label %functionfs_cleanup.exit.i], !srcloc !480

if.then.i.i:                                      ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @functionfs_cleanup.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  br label %functionfs_cleanup.exit.i

functionfs_cleanup.exit.i:                        ; preds = %if.then.i.i, %if.then.i4
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  %call8.i.i = tail call i32 @unregister_filesystem(ptr noundef nonnull @ffs_fs_type) #15
  br label %_ffs_free_dev.exit

_ffs_free_dev.exit:                               ; preds = %functionfs_cleanup.exit.i, %list_del.exit.i._ffs_free_dev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  tail call void @kfree(ptr noundef %f) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_ffs_alloc_dev() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @ffs_devices, align 4
  %cmp.i.not.i.i = icmp eq ptr %0, @ffs_devices
  br i1 %cmp.i.not.i.i, label %entry.if.end_crit_edge, label %list_is_singular.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

list_is_singular.exit.i:                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ffs_devices, i32 0, i32 1), align 4
  %cmp.i.not.i = icmp eq ptr %0, %1
  br i1 %cmp.i.not.i, label %if.then.i, label %list_is_singular.exit.i.if.end_crit_edge

list_is_singular.exit.i.if.end_crit_edge:         ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %list_is_singular.exit.i
  %single.i = getelementptr i8, ptr %0, i32 51
  %2 = ptrtoint ptr %single.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %single.i, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  %add.ptr.i = getelementptr i8, ptr %0, i32 -8
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool1.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %list_is_singular.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 76) #19
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = load volatile ptr, ptr @ffs_devices, align 4
  %cmp.i.not = icmp eq ptr %5, @ffs_devices
  br i1 %cmp.i.not, label %if.then9, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @functionfs_init.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_ffs_alloc_dev, %do.end.i)) #15
          to label %if.then.i22 [label %do.end.i], !srcloc !480

if.then.i22:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @functionfs_init.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.123) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i22, %if.then9
  %call4.i = tail call i32 @register_filesystem(ptr noundef nonnull @ffs_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %functionfs_init.exit.thread, label %if.then12

functionfs_init.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #21
  br label %if.end15

if.then12:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %call4.i) #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %6 = inttoptr i32 %call4.i to ptr
  br label %cleanup

if.end15:                                         ; preds = %functionfs_init.exit.thread, %if.end6.if.end15_crit_edge
  %entry16 = getelementptr inbounds %struct.ffs_dev, ptr %call7.i.i, i32 0, i32 2
  %7 = load ptr, ptr @ffs_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry16, ptr noundef nonnull @ffs_devices, ptr noundef %7) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry16, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %entry16, align 8
  %prev3.i.i = getelementptr inbounds %struct.ffs_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ffs_devices, ptr %prev3.i.i, align 4
  store volatile ptr %entry16, ptr @ffs_devices, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end15.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then12 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end15.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ], [ inttoptr (i32 -16 to ptr), %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_fs_init_fs_context(ptr nocapture noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -32384, ptr %call7.i.i, align 8
  %uid = getelementptr inbounds %struct.ffs_file_perms, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.ffs_file_perms, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %gid, align 8
  %root_mode = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %root_mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 16704, ptr %root_mode, align 4
  %no_disconnect = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %no_disconnect to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %no_disconnect, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %7 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ffs_fs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_fs_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_fs_kill_sb.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_fs_kill_sb, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_fs_kill_sb.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.122) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kill_litter_super(ptr noundef %sb) #15
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ffs_data_closed(ptr noundef nonnull %1)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_fs_free_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %ffs_data = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ffs_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs_data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ffs_data_put(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_fs_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #15
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_fs_parse_param.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_fs_parse_param, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_fs_parse_param.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @ffs_fs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end6.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb10
    i32 3, label %sw.bb14
    i32 4, label %sw.bb24
    i32 5, label %sw.bb40
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %4 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8, !range !481
  %no_disconnect = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %no_disconnect to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %no_disconnect, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %8 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 365
  %conv = or i16 %12, 16384
  %root_mode = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %root_mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %root_mode, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %14 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %17 = trunc i32 %16 to i16
  %18 = and i16 %17, 438
  %conv13 = or i16 %18, -32768
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv13, ptr %1, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %20 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, 365
  %conv17 = or i16 %24, 16384
  %root_mode18 = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %root_mode18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv17, ptr %root_mode18, align 4
  %26 = and i16 %23, 438
  %conv21 = or i16 %26, -32768
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv21, ptr %1, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %if.end6
  %uid = getelementptr inbounds %struct.ffs_file_perms, ptr %1, i32 0, i32 1
  %28 = call i32 @llvm.read_register.i32(metadata !470) #15
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user_ns, align 4
  %36 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %call33 = call i32 @make_kuid(ptr noundef %35, i32 noundef %38) #15
  %39 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call33, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp.i.not = icmp eq i32 %call33, -1
  br i1 %cmp.i.not, label %sw.bb24.unmapped_value_crit_edge, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb24.unmapped_value_crit_edge:                 ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmapped_value

sw.bb40:                                          ; preds = %if.end6
  %gid = getelementptr inbounds %struct.ffs_file_perms, ptr %1, i32 0, i32 2
  %40 = call i32 @llvm.read_register.i32(metadata !470) #15
  %and.i76 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i76 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task49, align 8
  %cred50 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 99
  %44 = ptrtoint ptr %cred50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cred50, align 16
  %user_ns51 = getelementptr inbounds %struct.cred, ptr %45, i32 0, i32 25
  %46 = ptrtoint ptr %user_ns51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %user_ns51, align 4
  %48 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %call52 = call i32 @make_kgid(ptr noundef %47, i32 noundef %50) #15
  %51 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call52, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call52)
  %cmp.i77.not = icmp eq i32 %call52, -1
  br i1 %cmp.i77.not, label %sw.bb40.unmapped_value_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb40.unmapped_value_crit_edge:                 ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmapped_value

unmapped_value:                                   ; preds = %sw.bb40.unmapped_value_crit_edge, %sw.bb24.unmapped_value_crit_edge
  %log60 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %log60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %log60, align 4
  %54 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %param, align 4
  %56 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %53, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.18, ptr noundef %55, i32 noundef %58) #15
  br label %cleanup

cleanup:                                          ; preds = %unmapped_value, %sw.bb40.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %sw.bb14, %sw.bb10, %sw.bb9, %sw.bb, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %unmapped_value ], [ %call.i, %do.end.cleanup_crit_edge ], [ -519, %if.end6.cleanup_crit_edge ], [ 0, %sw.bb40.cleanup_crit_edge ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %sw.bb14 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_fs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_fs_get_tree.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_fs_get_tree, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_fs_get_tree.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %log6 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %log6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log6, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %5, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.20) #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call9 = tail call fastcc noalias ptr @ffs_data_new(ptr noundef nonnull %3)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %file_perms = getelementptr inbounds %struct.ffs_data, ptr %call9, i32 0, i32 37
  %6 = call ptr @memcpy(ptr %file_perms, ptr %1, i32 12)
  %no_disconnect = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %no_disconnect to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %no_disconnect, align 4, !range !481
  %no_disconnect14 = getelementptr inbounds %struct.ffs_data, ptr %call9, i32 0, i32 40
  %9 = ptrtoint ptr %no_disconnect14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %no_disconnect14, align 4
  %10 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %source, align 4
  %call17 = tail call noalias ptr @kstrdup(ptr noundef %11, i32 noundef 3264) #15
  %dev_name = getelementptr inbounds %struct.ffs_data, ptr %call9, i32 0, i32 13
  %12 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call17, ptr %dev_name, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ffs_data_put(ptr noundef nonnull %call9)
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = tail call fastcc i32 @ffs_acquire_dev(ptr noundef nonnull %call17, ptr noundef nonnull %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ffs_data_put(ptr noundef nonnull %call9)
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %ffs_data = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %ffs_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %ffs_data, align 4
  %call27 = tail call i32 @get_tree_nodev(ptr noundef %fc, ptr noundef nonnull @ffs_sb_fill) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then20, %if.end7.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %call23, %if.then25 ], [ %call27, %if.end26 ], [ -12, %if.then20 ], [ -22, %if.then5 ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ffs_data_put(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_put.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_put, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_put.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ref = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !482
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #15, !srcloc !483
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end7, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end31_crit_edge, label %if.then10.i.i.i, !prof !484

if.end5.i.i.i.if.end31_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #15
  br label %if.end31

do.end7:                                          ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !485
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #21
  tail call fastcc void @ffs_data_clear(ptr noundef %ffs)
  %private_data = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 14
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_release_dev.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_put, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_release_dev.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end7
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %tobool4.not.i = icmp eq ptr %2, null
  br i1 %tobool4.not.i, label %do.end.i.ffs_release_dev.exit_crit_edge, label %land.lhs.true.i

do.end.i.ffs_release_dev.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_release_dev.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %mounted.i = getelementptr inbounds %struct.ffs_dev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %mounted.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mounted.i, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not.i = icmp eq i8 %4, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.ffs_release_dev.exit_crit_edge, label %if.then6.i

land.lhs.true.i.ffs_release_dev.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_release_dev.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %mounted.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mounted.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %if.then6.i.if.end12.i_crit_edge, label %if.then9.i

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %private_data.i = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private_data.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %2, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end12.i_crit_edge
  %ffs_release_dev_callback.i = getelementptr inbounds %struct.ffs_dev, ptr %2, i32 0, i32 10
  %10 = ptrtoint ptr %ffs_release_dev_callback.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ffs_release_dev_callback.i, align 4
  %tobool13.not.i = icmp eq ptr %11, null
  br i1 %tobool13.not.i, label %if.end12.i.ffs_release_dev.exit_crit_edge, label %if.then14.i

if.end12.i.ffs_release_dev.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_release_dev.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %11(ptr noundef nonnull %2) #15
  br label %ffs_release_dev.exit

ffs_release_dev.exit:                             ; preds = %if.then14.i, %if.end12.i.ffs_release_dev.exit_crit_edge, %land.lhs.true.i.ffs_release_dev.exit_crit_edge, %do.end.i.ffs_release_dev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %head.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 4, i32 1
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %13, %head.i
  br i1 %cmp.i.i.not, label %lor.lhs.false, label %ffs_release_dev.exit.do.body25_crit_edge, !prof !484

ffs_release_dev.exit.do.body25_crit_edge:         ; preds = %ffs_release_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

lor.lhs.false:                                    ; preds = %ffs_release_dev.exit
  %task_list.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %task_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %task_list.i, align 4
  %cmp.i.i41.not = icmp eq ptr %15, %task_list.i
  br i1 %cmp.i.i41.not, label %lor.rhs, label %lor.lhs.false.do.body25_crit_edge, !prof !484

lor.lhs.false.do.body25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

lor.rhs:                                          ; preds = %lor.lhs.false
  %head.i43 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %head.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %head.i43, align 4
  %cmp.i.i44.not = icmp eq ptr %17, %head.i43
  br i1 %cmp.i.i44.not, label %do.end30, label %lor.rhs.do.body25_crit_edge, !prof !484

lor.rhs.do.body25_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

do.body25:                                        ; preds = %lor.rhs.do.body25_crit_edge, %lor.lhs.false.do.body25_crit_edge, %ffs_release_dev.exit.do.body25_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1705, 0\0A.popsection", ""() #15, !srcloc !486
  unreachable

do.end30:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %io_completion_wq = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 39
  %18 = ptrtoint ptr %io_completion_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_completion_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %19) #15
  %dev_name = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 13
  %20 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_name, align 4
  tail call void @kfree(ptr noundef %21) #15
  tail call void @kfree(ptr noundef %ffs) #15
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %if.then10.i.i.i, %if.end5.i.i.i.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ffs_data_clear(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_clear.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_clear, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_clear.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @ffs_closed(ptr noundef %ffs)
  %0 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body23, label %do.body13, !prof !484

do.body13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1785, 0\0A.popsection", ""() #15, !srcloc !487
  unreachable

do.body23:                                        ; preds = %do.end
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 2
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eps_lock) #15
  %epfiles31 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 42
  %2 = ptrtoint ptr %epfiles31 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epfiles31, align 4
  store ptr null, ptr %epfiles31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eps_lock, i32 noundef %call26) #15
  %tobool34.not = icmp eq ptr %3, null
  br i1 %tobool34.not, label %do.body23.if.end38_crit_edge, label %if.then35

do.body23.if.end38_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then35:                                        ; preds = %do.body23
  %eps_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %4 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %eps_count, align 4
  %conv36 = zext i16 %5 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_clear, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then35
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4.not37.i = icmp eq i16 %5, 0
  br i1 %tobool4.not37.i, label %do.end.i.ffs_epfiles_destroy.exit_crit_edge, label %do.end.i.do.body5.i_crit_edge

do.end.i.do.body5.i_crit_edge:                    ; preds = %do.end.i
  br label %do.body5.i

do.end.i.ffs_epfiles_destroy.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_epfiles_destroy.exit

do.body5.i:                                       ; preds = %for.inc.i.do.body5.i_crit_edge, %do.end.i.do.body5.i_crit_edge
  %count.addr.039.i = phi i32 [ %dec.i, %for.inc.i.do.body5.i_crit_edge ], [ %conv36, %do.end.i.do.body5.i_crit_edge ]
  %epfile.038.i = phi ptr [ %incdec.ptr.i, %for.inc.i.do.body5.i_crit_edge ], [ %3, %do.end.i.do.body5.i_crit_edge ]
  %call6.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %epfile.038.i) #15
  br i1 %call6.i, label %do.body14.i, label %do.end22.i, !prof !488

do.body14.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1933, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

do.end22.i:                                       ; preds = %do.body5.i
  %dentry.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.038.i, i32 0, i32 3
  %6 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i, align 4
  %tobool23.not.i = icmp eq ptr %7, null
  br i1 %tobool23.not.i, label %do.end22.i.for.inc.i_crit_edge, label %if.then24.i

do.end22.i.for.inc.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then24.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_delete(ptr noundef nonnull %7) #15
  %8 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i, align 4
  tail call void @dput(ptr noundef %9) #15
  %10 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dentry.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %do.end22.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %count.addr.039.i, -1
  %incdec.ptr.i = getelementptr %struct.ffs_epfile, ptr %epfile.038.i, i32 1
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %for.inc.i.ffs_epfiles_destroy.exit_crit_edge, label %for.inc.i.do.body5.i_crit_edge

for.inc.i.do.body5.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5.i

for.inc.i.ffs_epfiles_destroy.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_epfiles_destroy.exit

ffs_epfiles_destroy.exit:                         ; preds = %for.inc.i.ffs_epfiles_destroy.exit_crit_edge, %do.end.i.ffs_epfiles_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #15
  %11 = ptrtoint ptr %epfiles31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %epfiles31, align 4
  br label %if.end38

if.end38:                                         ; preds = %ffs_epfiles_destroy.exit, %do.body23.if.end38_crit_edge
  %ffs_eventfd = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 38
  %12 = ptrtoint ptr %ffs_eventfd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ffs_eventfd, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %if.end38.if.end43_crit_edge, label %if.then40

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @eventfd_ctx_put(ptr noundef nonnull %13) #15
  %14 = ptrtoint ptr %ffs_eventfd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ffs_eventfd, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38.if.end43_crit_edge
  %raw_descs_data = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 15
  %15 = ptrtoint ptr %raw_descs_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %raw_descs_data, align 4
  tail call void @kfree(ptr noundef %16) #15
  %raw_strings = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 34
  %17 = ptrtoint ptr %raw_strings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %raw_strings, align 4
  tail call void @kfree(ptr noundef %18) #15
  %stringtabs = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 35
  %19 = ptrtoint ptr %stringtabs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stringtabs, align 4
  tail call void @kfree(ptr noundef %20) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ffs_closed(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_closed.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_closed, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_closed.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %private_data = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 14
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.done_crit_edge, label %if.end6

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end6:                                          ; preds = %do.end
  %desc_ready = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %desc_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %desc_ready, align 2
  %flags = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %ffs_closed_callback = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %ffs_closed_callback to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ffs_closed_callback, align 4
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %4(ptr noundef %ffs) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %opts13 = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %opts13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opts13, align 4
  %tobool14.not = icmp eq ptr %6, null
  br i1 %tobool14.not, label %if.end12.done_crit_edge, label %if.then15

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then15:                                        ; preds = %if.end12
  %no_configfs = getelementptr inbounds %struct.f_fs_opts, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %no_configfs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %no_configfs, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.then15.done_crit_edge

if.then15.done_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

lor.lhs.false:                                    ; preds = %if.then15
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent, align 4
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %lor.lhs.false.done_crit_edge, label %lor.lhs.false20

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %ci_kref = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ci_kref, i32 noundef 4) #15
  %11 = ptrtoint ptr %ci_kref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ci_kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %lor.lhs.false20.done_crit_edge, label %if.end27

lor.lhs.false20.done_crit_edge:                   ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end27:                                         ; preds = %lor.lhs.false20
  %13 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_parent, align 4
  %ci_parent32 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ci_parent32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ci_parent32, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool35.not = icmp eq i32 %19, 0
  br i1 %tobool35.not, label %if.end27.cleanup_crit_edge, label %if.then36

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unregister_gadget_item(ptr noundef %16) #15
  br label %cleanup

done:                                             ; preds = %lor.lhs.false20.done_crit_edge, %lor.lhs.false.done_crit_edge, %if.then15.done_crit_edge, %if.end12.done_crit_edge, %do.end.done_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then36, %if.end27.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_gadget_item(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @ffs_data_new(ptr noundef %dev_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 532) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_new.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_new, %do.end)) #15
          to label %if.then6 [label %do.end], !srcloc !480

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_new.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call8 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.22, i32 noundef 655362, i32 noundef 1, ptr noundef %dev_name) #15
  %io_completion_wq = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 39
  %1 = ptrtoint ptr %io_completion_wq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %io_completion_wq, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %ref = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #15
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %ref, align 8
  %opened = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened, i32 noundef 4) #15
  %3 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %opened, align 4
  %state = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 8
  %mutex = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.23, ptr noundef nonnull @ffs_data_new.__key) #15
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %eps_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @ffs_data_new.__key.24, i16 noundef signext 3) #15
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 9, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.27, ptr noundef nonnull @ffs_data_new.__key.26) #15
  %wait = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.29, ptr noundef nonnull @ffs_data_new.__key.28) #15
  %ep0req_completion = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %ep0req_completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ep0req_completion, align 8
  %wait.i = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #15
  %can_stall = getelementptr inbounds %struct.ffs_data, ptr %call7.i.i, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %can_stall to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %can_stall, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %if.then11 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_acquire_dev(ptr noundef readonly %dev_name, ptr noundef %ffs_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_acquire_dev.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_acquire_dev, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_acquire_dev.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.31) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %0 = load volatile ptr, ptr @ffs_devices, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %0, @ffs_devices
  br i1 %cmp.i.not.i.i.i, label %do.end.if.end.i_crit_edge, label %list_is_singular.exit.i.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

list_is_singular.exit.i.i:                        ; preds = %do.end
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ffs_devices, i32 0, i32 1), align 4
  %cmp.i.not.i.i = icmp eq ptr %0, %1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %list_is_singular.exit.i.i.if.end.i_crit_edge

list_is_singular.exit.i.i.if.end.i_crit_edge:     ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i.i:                                      ; preds = %list_is_singular.exit.i.i
  %single.i.i = getelementptr i8, ptr %0, i32 51
  %2 = ptrtoint ptr %single.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %single.i.i, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i.i = icmp eq i8 %3, 0
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 -8
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = select i1 %tobool1.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then.i.i.if.else_crit_edge

if.then.i.i.if.else_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i.if.end.i_crit_edge, %list_is_singular.exit.i.i.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %dev_name, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end20_crit_edge, label %if.end.i.for.cond.i.i_crit_edge

if.end.i.for.cond.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.cond.i.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @ffs_devices, %if.end.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @ffs_devices
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end20_crit_edge, label %for.body.i.i

for.cond.i.i.if.end20_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name2.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %call.i.i = tail call i32 @strcmp(ptr noundef %name2.i.i, ptr noundef nonnull %dev_name) #18
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %_ffs_find_dev.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

_ffs_find_dev.exit:                               ; preds = %for.body.i.i
  %dev.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool5.not = icmp eq ptr %dev.0.le.i.i, null
  br i1 %tobool5.not, label %_ffs_find_dev.exit.if.end20_crit_edge, label %_ffs_find_dev.exit.if.else_crit_edge

_ffs_find_dev.exit.if.else_crit_edge:             ; preds = %_ffs_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

_ffs_find_dev.exit.if.end20_crit_edge:            ; preds = %_ffs_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else:                                          ; preds = %_ffs_find_dev.exit.if.else_crit_edge, %if.then.i.i.if.else_crit_edge
  %retval.0.i2937 = phi ptr [ %dev.0.le.i.i, %_ffs_find_dev.exit.if.else_crit_edge ], [ %add.ptr.i.i, %if.then.i.i.if.else_crit_edge ]
  %mounted = getelementptr inbounds %struct.ffs_dev, ptr %retval.0.i2937, i32 0, i32 4
  %5 = ptrtoint ptr %mounted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mounted, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else9:                                         ; preds = %if.else
  %ffs_acquire_dev_callback = getelementptr inbounds %struct.ffs_dev, ptr %retval.0.i2937, i32 0, i32 9
  %7 = ptrtoint ptr %ffs_acquire_dev_callback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ffs_acquire_dev_callback, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.else9.if.else15_crit_edge, label %land.lhs.true

if.else9.if.else15_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else15

land.lhs.true:                                    ; preds = %if.else9
  %call12 = tail call ptr %8(ptr noundef nonnull %retval.0.i2937) #15
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %land.lhs.true.if.else15_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true.if.else15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true.if.else15_crit_edge, %if.else9.if.else15_crit_edge
  %9 = ptrtoint ptr %mounted to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mounted, align 1
  %10 = ptrtoint ptr %retval.0.i2937 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ffs_data, ptr %retval.0.i2937, align 4
  %private_data = getelementptr inbounds %struct.ffs_data, ptr %ffs_data, i32 0, i32 14
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i2937, ptr %private_data, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %_ffs_find_dev.exit.if.end20_crit_edge, %for.cond.i.i.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %ret.0 = phi i32 [ 0, %if.else15 ], [ -2, %_ffs_find_dev.exit.if.end20_crit_edge ], [ -16, %if.else.if.end20_crit_edge ], [ -2, %land.lhs.true.if.end20_crit_edge ], [ -2, %if.end.i.if.end20_crit_edge ], [ -2, %for.cond.i.i.if.end20_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_sb_fill(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %ffs_data = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ffs_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_sb_fill.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_sb_fill, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_sb_fill.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.32) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sb4 = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %sb4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sb, ptr %sb4, align 4
  %5 = ptrtoint ptr %ffs_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ffs_data, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %s_fs_info, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %9 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 174355297, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %10 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ffs_sb_operations, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %11 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %s_time_gran, align 4
  %root_mode = getelementptr inbounds %struct.ffs_sb_fill_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %root_mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %root_mode, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_sb_make_inode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_sb_fill, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_sb_make_inode.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.34) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %call4.i = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i.ffs_sb_make_inode.exit_crit_edge, label %if.then6.i

do.end.i.ffs_sb_make_inode.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_sb_make_inode.exit

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #15
  %15 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, ptr noundef nonnull %call4.i) #15
  %call7.i = call i32 @get_next_ino() #15
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call7.i, ptr %i_ino.i, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %19 = ptrtoint ptr %call4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %call4.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 2
  %uid.i = getelementptr inbounds %struct.ffs_file_perms, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uid.i, align 4
  %22 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 3
  %gid.i = getelementptr inbounds %struct.ffs_file_perms, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gid.i, align 4
  %25 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %i_gid.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 15
  %26 = call ptr @memcpy(ptr %i_atime.i, ptr %ts.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 16
  %27 = call ptr @memcpy(ptr %i_mtime.i, ptr %ts.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 17
  %28 = call ptr @memcpy(ptr %i_ctime.i, ptr %ts.i, i32 16)
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 54
  %29 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %i_private.i, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 44
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @simple_dir_operations, ptr %30, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 7
  %32 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @simple_dir_inode_operations, ptr %i_op.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #15
  br label %ffs_sb_make_inode.exit

ffs_sb_make_inode.exit:                           ; preds = %if.then6.i, %do.end.i.ffs_sb_make_inode.exit_crit_edge
  %call8 = call ptr @d_make_root(ptr noundef %call4.i) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %33 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8, ptr %s_root, align 64
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %ffs_sb_make_inode.exit.cleanup_crit_edge, label %if.end12

ffs_sb_make_inode.exit.cleanup_crit_edge:         ; preds = %ffs_sb_make_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %ffs_sb_make_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = call fastcc ptr @ffs_sb_create_file(ptr noundef %sb, ptr noundef nonnull @.str.33, ptr noundef %3, ptr noundef nonnull @ffs_ep0_operations)
  %tobool14.not = icmp eq ptr %call13, null
  %. = select i1 %tobool14.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %ffs_sb_make_inode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ffs_sb_make_inode.exit.cleanup_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ffs_sb_create_file(ptr noundef %sb, ptr noundef %name, ptr noundef %data, ptr noundef %fops) unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_sb_create_file.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_sb_create_file, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_sb_create_file.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.35) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %call4 = tail call ptr @d_alloc_name(ptr noundef %3, ptr noundef %name) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %file_perms = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_sb_make_inode.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_sb_create_file, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_sb_make_inode.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.34) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end7
  %call4.i = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then10, label %if.then6.i

if.then6.i:                                       ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #15
  %4 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, ptr noundef nonnull %call4.i) #15
  %call7.i = call i32 @get_next_ino() #15
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call7.i, ptr %i_ino.i, align 8
  %6 = ptrtoint ptr %file_perms to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %file_perms, align 4
  %8 = ptrtoint ptr %call4.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %call4.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 2
  %uid.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 37, i32 1
  %9 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uid.i, align 4
  %11 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 3
  %gid.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 37, i32 2
  %12 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gid.i, align 4
  %14 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %i_gid.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 15
  %15 = call ptr @memcpy(ptr %i_atime.i, ptr %ts.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 16
  %16 = call ptr @memcpy(ptr %i_mtime.i, ptr %ts.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 17
  %17 = call ptr @memcpy(ptr %i_ctime.i, ptr %ts.i, i32 16)
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 54
  %18 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %i_private.i, align 4
  %tobool8.not.i = icmp eq ptr %fops, null
  br i1 %tobool8.not.i, label %if.then6.i.if.end11_crit_edge, label %if.then9.i

if.then6.i.if.end11_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 44
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fops, ptr %19, align 8
  br label %if.end11

if.then10:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dput(ptr noundef nonnull %call4) #15
  br label %cleanup

if.end11:                                         ; preds = %if.then9.i, %if.then6.i.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #15
  call void @d_add(ptr noundef nonnull %call4, ptr noundef nonnull %call4.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end11 ], [ null, %if.then10 ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_ep0_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_ep0_read.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_read, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_ep0_read.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.36) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %setup_state.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 8
  %call.i.i230 = tail call zeroext i1 @__kasan_check_write(ptr noundef %setup_state.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @llvm.prefetch.p0(ptr %setup_state.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.end
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %setup_state.i, i32 2, i32 0) #15, !srcloc !491
  %asmresult.i.i231 = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i232 = icmp eq i32 %asmresult.i.i231, 0
  br i1 %tobool.not.i.i232, label %ffs_setup_state_clear_cancelled.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

ffs_setup_state_clear_cancelled.exit:             ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult1.i.i)
  %cmp = icmp eq i32 %asmresult1.i.i, 2
  br i1 %cmp, label %ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge, label %if.end6

ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge: ; preds = %ffs_setup_state_clear_cancelled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %ffs_setup_state_clear_cancelled.exit
  %mutex = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %ffs_mutex_lock.exit, label %cond.true.i

cond.true.i:                                      ; preds = %if.end6
  %call.i = tail call i32 @mutex_trylock(ptr noundef %mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end10_crit_edge

cond.true.i.if.end10_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ffs_mutex_lock.exit:                              ; preds = %if.end6
  %call2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8 = icmp slt i32 %call2.i, 0
  br i1 %cmp8, label %ffs_mutex_lock.exit.cleanup_crit_edge, label %ffs_mutex_lock.exit.if.end10_crit_edge

ffs_mutex_lock.exit.if.end10_crit_edge:           ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

ffs_mutex_lock.exit.cleanup_crit_edge:            ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %ffs_mutex_lock.exit.if.end10_crit_edge, %cond.true.i.if.end10_crit_edge
  %state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp11.not = icmp eq i32 %6, 2
  br i1 %cmp11.not, label %if.end13, label %if.end10.done_mutex_crit_edge

if.end10.done_mutex_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_mutex

if.end13:                                         ; preds = %if.end10
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %waitq) #15
  %call.i.i234 = tail call zeroext i1 @__kasan_check_write(ptr noundef %setup_state.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @llvm.prefetch.p0(ptr %setup_state.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i237

do.body.i.i237:                                   ; preds = %do.body.i.i237.do.body.i.i237_crit_edge, %if.end13
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %setup_state.i, i32 2, i32 0) #15, !srcloc !491
  %asmresult.i.i235 = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i236 = icmp eq i32 %asmresult.i.i235, 0
  br i1 %tobool.not.i.i236, label %ffs_setup_state_clear_cancelled.exit239, label %do.body.i.i237.do.body.i.i237_crit_edge

do.body.i.i237.do.body.i.i237_crit_edge:          ; preds = %do.body.i.i237
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i237

ffs_setup_state_clear_cancelled.exit239:          ; preds = %do.body.i.i237
  %asmresult1.i.i238 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !492
  %8 = zext i32 %asmresult1.i.i238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %asmresult1.i.i238, label %sw.default [
    i32 2, label %ffs_setup_state_clear_cancelled.exit239.sw.epilog_crit_edge
    i32 0, label %sw.bb15
    i32 1, label %sw.bb128
  ]

ffs_setup_state_clear_cancelled.exit239.sw.epilog_crit_edge: ; preds = %ffs_setup_state_clear_cancelled.exit239
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb15:                                          ; preds = %ffs_setup_state_clear_cancelled.exit239
  %div = udiv i32 %len, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %9 = icmp ult i32 %len, 12
  br i1 %9, label %sw.bb15.sw.epilog_crit_edge, label %if.end18

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end18:                                         ; preds = %sw.bb15
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and20 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %land.lhs.true

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool23.not = icmp eq i16 %13, 0
  br i1 %tobool23.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %count27 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %count27 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool28.not, label %cond.false, label %if.end25.if.end118_crit_edge

if.end25.if.end118_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

cond.false:                                       ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #15
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %20 = tail call i32 @llvm.read_register.i32(metadata !470) #15
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %16, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @autoremove_wake_function, ptr %17, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %18, ptr %18, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %18, ptr %19, align 4
  %28 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %__wait, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.cond41.do.body34_crit_edge, %cond.false
  %call37 = call i32 @do_wait_intr_irq(ptr noundef %waitq, ptr noundef nonnull %__wait) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.cond41, label %do.body34.do.end47_crit_edge

do.body34.do.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

do.cond41:                                        ; preds = %do.body34
  %29 = ptrtoint ptr %count27 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count27, align 4
  %tobool44.not = icmp eq i16 %30, 0
  br i1 %tobool44.not, label %do.cond41.do.body34_crit_edge, label %do.cond41.do.end47_crit_edge

do.cond41.do.end47_crit_edge:                     ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end47

do.cond41.do.body34_crit_edge:                    ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body34

do.end47:                                         ; preds = %do.cond41.do.end47_crit_edge, %do.body34.do.end47_crit_edge
  %call.i.i.i240 = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #15
  br i1 %call.i.i.i240, label %if.end.i.i.i, label %do.end47.__here_crit_edge

do.end47.__here_crit_edge:                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

if.end.i.i.i:                                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %19, align 4
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i, %do.end47.__here_crit_edge
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@ffs_ep0_read, %__here) to i32), ptr %task_state_change, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %40, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #15
  br i1 %tobool38.not, label %__here.if.end118_crit_edge, label %__here.sw.epilog_crit_edge

__here.sw.epilog_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

__here.if.end118_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.end118:                                        ; preds = %__here.if.end118_crit_edge, %if.end25.if.end118_crit_edge
  %42 = ptrtoint ptr %count27 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count27, align 4
  %conv121 = zext i16 %43 to i32
  %44 = call i32 @llvm.umin.i32(i32 %div, i32 %conv121)
  %call127 = call fastcc i32 @__ffs_ep0_read_events(ptr noundef %1, ptr noundef %buf, i32 noundef %44)
  br label %cleanup

sw.bb128:                                         ; preds = %ffs_setup_state_clear_cancelled.exit239
  %setup = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 3
  %45 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool132.not = icmp sgt i8 %46, -1
  br i1 %tobool132.not, label %if.end138, label %if.then133

if.then133:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  %call137 = tail call fastcc i32 @__ffs_ep0_stall(ptr noundef %1)
  br label %done_mutex

if.end138:                                        ; preds = %sw.bb128
  %wLength = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 3, i32 4
  %47 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %wLength, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %conv141 = zext i16 %49 to i32
  %50 = tail call i32 @llvm.umin.i32(i32 %conv141, i32 %len)
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool152.not = icmp eq i32 %50, 0
  br i1 %tobool152.not, label %if.end138.if.end158_crit_edge, label %if.end8.i

if.end138.if.end158_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

if.end8.i:                                        ; preds = %if.end138
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #22
  %tobool155.not = icmp eq ptr %call9.i, null
  br i1 %tobool155.not, label %if.end8.i.done_mutex_crit_edge, label %if.end8.i.if.end158_crit_edge

if.end8.i.if.end158_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

if.end8.i.done_mutex_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_mutex

if.end158:                                        ; preds = %if.end8.i.if.end158_crit_edge, %if.end138.if.end158_crit_edge
  %data.0 = phi ptr [ %call9.i, %if.end8.i.if.end158_crit_edge ], [ null, %if.end138.if.end158_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %waitq) #15
  %call162 = tail call fastcc i32 @ffs_setup_state_clear_cancelled(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call162)
  %cmp163 = icmp eq i32 %call162, 2
  br i1 %cmp163, label %if.end158.sw.epilog_crit_edge, label %if.end166

if.end158.sw.epilog_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end166:                                        ; preds = %if.end158
  %call167 = tail call fastcc i32 @__ffs_ep0_queue_wait(ptr noundef %1, ptr noundef %data.0, i32 noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp sgt i32 %call167, 0
  br i1 %cmp168, label %if.then.i.i.i, label %if.end166.done_mutex_crit_edge

if.end166.done_mutex_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_mutex

if.then.i.i.i:                                    ; preds = %if.end166
  tail call void @__check_object_size(ptr noundef %data.0, i32 noundef %50, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i228

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i228:                                    ; preds = %if.then.i.i.i
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %50, i32 -1226833920) #23, !srcloc !493
  %asmresult.i.i = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i228.copy_to_user.exit_crit_edge

if.end.i.i228.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data.0, i32 noundef %50) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %data.0, i32 noundef %50) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i228.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %50, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %50, %if.end.i.i228.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool172.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool172.not, i32 %call167, i32 -14
  br label %done_mutex

sw.default:                                       ; preds = %ffs_setup_state_clear_cancelled.exit239
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end158.sw.epilog_crit_edge, %__here.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %ffs_setup_state_clear_cancelled.exit239.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -77, %sw.default ], [ -43, %ffs_setup_state_clear_cancelled.exit239.sw.epilog_crit_edge ], [ -22, %sw.bb15.sw.epilog_crit_edge ], [ -11, %land.lhs.true.sw.epilog_crit_edge ], [ -4, %__here.sw.epilog_crit_edge ], [ -43, %if.end158.sw.epilog_crit_edge ]
  %data.1 = phi ptr [ null, %sw.default ], [ null, %ffs_setup_state_clear_cancelled.exit239.sw.epilog_crit_edge ], [ null, %sw.bb15.sw.epilog_crit_edge ], [ null, %land.lhs.true.sw.epilog_crit_edge ], [ null, %__here.sw.epilog_crit_edge ], [ %data.0, %if.end158.sw.epilog_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  br label %done_mutex

done_mutex:                                       ; preds = %sw.epilog, %copy_to_user.exit, %if.end166.done_mutex_crit_edge, %if.end8.i.done_mutex_crit_edge, %if.then133, %if.end10.done_mutex_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sw.epilog ], [ %call137, %if.then133 ], [ %call167, %if.end166.done_mutex_crit_edge ], [ -77, %if.end10.done_mutex_crit_edge ], [ -12, %if.end8.i.done_mutex_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %data.2 = phi ptr [ %data.1, %sw.epilog ], [ null, %if.then133 ], [ %data.0, %if.end166.done_mutex_crit_edge ], [ null, %if.end10.done_mutex_crit_edge ], [ null, %if.end8.i.done_mutex_crit_edge ], [ %data.0, %copy_to_user.exit ]
  call void @mutex_unlock(ptr noundef %mutex) #15
  call void @kfree(ptr noundef %data.2) #15
  br label %cleanup

cleanup:                                          ; preds = %done_mutex, %if.end118, %ffs_mutex_lock.exit.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge, %ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %done_mutex ], [ %call127, %if.end118 ], [ -43, %ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge ], [ %call2.i, %ffs_mutex_lock.exit.cleanup_crit_edge ], [ -11, %cond.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_ep0_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_ep0_write.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_write, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_ep0_write.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %setup_state.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %setup_state.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @llvm.prefetch.p0(ptr %setup_state.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.end
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %setup_state.i, i32 2, i32 0) #15, !srcloc !491
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %ffs_setup_state_clear_cancelled.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

ffs_setup_state_clear_cancelled.exit:             ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult1.i.i)
  %cmp = icmp eq i32 %asmresult1.i.i, 2
  br i1 %cmp, label %ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge, label %if.end6

ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge: ; preds = %ffs_setup_state_clear_cancelled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %ffs_setup_state_clear_cancelled.exit
  %mutex = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %ffs_mutex_lock.exit, label %cond.true.i

cond.true.i:                                      ; preds = %if.end6
  %call.i = tail call i32 @mutex_trylock(ptr noundef %mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end10_crit_edge

cond.true.i.if.end10_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ffs_mutex_lock.exit:                              ; preds = %if.end6
  %call2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8 = icmp slt i32 %call2.i, 0
  br i1 %cmp8, label %ffs_mutex_lock.exit.cleanup_crit_edge, label %ffs_mutex_lock.exit.if.end10_crit_edge

ffs_mutex_lock.exit.if.end10_crit_edge:           ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

ffs_mutex_lock.exit.cleanup_crit_edge:            ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %ffs_mutex_lock.exit.if.end10_crit_edge, %cond.true.i.if.end10_crit_edge
  %state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %6, label %if.end10.sw.epilog94_crit_edge [
    i32 0, label %if.end10.sw.bb_crit_edge
    i32 1, label %if.end10.sw.bb_crit_edge172
    i32 2, label %sw.bb54
  ]

if.end10.sw.bb_crit_edge172:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end10.sw.epilog94_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge172
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp11 = icmp ult i32 %len, 16
  br i1 %cmp11, label %sw.bb.sw.epilog94_crit_edge, label %if.end.i

sw.bb.sw.epilog94_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94

if.end.i:                                         ; preds = %sw.bb
  %call.i149 = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %len) #15
  %cmp.i.i = icmp ugt ptr %call.i149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then16, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_prepare_buffer.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_write, %do.body11.i)) #15
          to label %if.then9.i [label %do.body11.i], !srcloc !480

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_prepare_buffer.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.49) #15
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then9.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_prepare_buffer.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_write, %if.end18)) #15
          to label %ffs_prepare_buffer.exit.thread167 [label %if.end18], !srcloc !480

ffs_prepare_buffer.exit.thread167:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @print_hex_dump(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %call.i149, i32 noundef %len, i1 noundef zeroext true) #15
  br label %if.end18

if.then16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call.i149 to i32
  br label %sw.epilog94

if.end18:                                         ; preds = %ffs_prepare_buffer.exit.thread167, %do.body11.i
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20 = icmp eq i32 %10, 0
  br i1 %cmp20, label %do.end24, label %do.end34

do.end24:                                         ; preds = %if.end18
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #21
  %call27 = tail call fastcc i32 @__ffs_data_got_descs(ptr noundef %1, ptr noundef %call.i149, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end24.sw.epilog94_crit_edge, label %if.end30

do.end24.sw.epilog94_crit_edge:                   ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94

if.end30:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  br label %sw.epilog94

do.end34:                                         ; preds = %if.end18
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #21
  %call37 = tail call fastcc i32 @__ffs_data_got_strings(ptr noundef %1, ptr noundef %call.i149, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end34.sw.epilog94_crit_edge, label %if.end40

do.end34.sw.epilog94_crit_edge:                   ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog94

if.end40:                                         ; preds = %do.end34
  %call41 = tail call fastcc i32 @ffs_epfiles_create(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 4
  br label %sw.epilog94

if.end45:                                         ; preds = %if.end40
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %call48 = tail call fastcc i32 @ffs_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %state, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %if.end10
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %waitq) #15
  %call.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %setup_state.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @llvm.prefetch.p0(ptr %setup_state.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i155

do.body.i.i155:                                   ; preds = %do.body.i.i155.do.body.i.i155_crit_edge, %sw.bb54
  %15 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %setup_state.i, i32 2, i32 0) #15, !srcloc !491
  %asmresult.i.i153 = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i154 = icmp eq i32 %asmresult.i.i153, 0
  br i1 %tobool.not.i.i154, label %ffs_setup_state_clear_cancelled.exit157, label %do.body.i.i155.do.body.i.i155_crit_edge

do.body.i.i155.do.body.i.i155_crit_edge:          ; preds = %do.body.i.i155
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i155

ffs_setup_state_clear_cancelled.exit157:          ; preds = %do.body.i.i155
  %asmresult1.i.i156 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !492
  %16 = zext i32 %asmresult1.i.i156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %asmresult1.i.i156, label %sw.epilog [
    i32 2, label %ffs_setup_state_clear_cancelled.exit157.done_spin_crit_edge
    i32 0, label %sw.bb57
  ]

ffs_setup_state_clear_cancelled.exit157.done_spin_crit_edge: ; preds = %ffs_setup_state_clear_cancelled.exit157
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_spin

sw.bb57:                                          ; preds = %ffs_setup_state_clear_cancelled.exit157
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_spin

sw.epilog:                                        ; preds = %ffs_setup_state_clear_cancelled.exit157
  %setup = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %setup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool60.not = icmp sgt i8 %18, -1
  br i1 %tobool60.not, label %if.then61, label %if.end66

if.then61:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  %call65 = tail call fastcc i32 @__ffs_ep0_stall(ptr noundef %1)
  br label %sw.epilog94

if.end66:                                         ; preds = %sw.epilog
  %wLength = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 3, i32 4
  %19 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %wLength, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv69 = zext i16 %21 to i32
  %22 = tail call i32 @llvm.umin.i32(i32 %conv69, i32 %len)
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  %call76 = tail call fastcc ptr @ffs_prepare_buffer(ptr noundef %buf, i32 noundef %22)
  %cmp.i158 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %call76 to i32
  br label %sw.epilog94

if.end80:                                         ; preds = %if.end66
  tail call void @_raw_spin_lock_irq(ptr noundef %waitq) #15
  %call84 = tail call fastcc i32 @ffs_setup_state_clear_cancelled(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 2
  br i1 %cmp85, label %if.end80.done_spin_crit_edge, label %if.else91

if.end80.done_spin_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %done_spin

done_spin:                                        ; preds = %if.end80.done_spin_crit_edge, %sw.bb57, %ffs_setup_state_clear_cancelled.exit157.done_spin_crit_edge
  %data.0 = phi ptr [ null, %sw.bb57 ], [ null, %ffs_setup_state_clear_cancelled.exit157.done_spin_crit_edge ], [ %call76, %if.end80.done_spin_crit_edge ]
  %ret.0 = phi i32 [ -3, %sw.bb57 ], [ -43, %ffs_setup_state_clear_cancelled.exit157.done_spin_crit_edge ], [ -43, %if.end80.done_spin_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  br label %if.end93

if.else91:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  %call92 = tail call fastcc i32 @__ffs_ep0_queue_wait(ptr noundef %1, ptr noundef %call76, i32 noundef %22)
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %done_spin
  %data.1 = phi ptr [ %data.0, %done_spin ], [ %call76, %if.else91 ]
  %ret.1 = phi i32 [ %ret.0, %done_spin ], [ %call92, %if.else91 ]
  tail call void @kfree(ptr noundef %data.1) #15
  br label %sw.epilog94

sw.epilog94:                                      ; preds = %if.end93, %if.then78, %if.then61, %if.then43, %do.end34.sw.epilog94_crit_edge, %if.end30, %do.end24.sw.epilog94_crit_edge, %if.then16, %sw.bb.sw.epilog94_crit_edge, %if.end10.sw.epilog94_crit_edge
  %ret.2 = phi i32 [ %23, %if.then78 ], [ %ret.1, %if.end93 ], [ %call65, %if.then61 ], [ %8, %if.then16 ], [ %call27, %do.end24.sw.epilog94_crit_edge ], [ %len, %if.end30 ], [ %call37, %do.end34.sw.epilog94_crit_edge ], [ %call41, %if.then43 ], [ -22, %sw.bb.sw.epilog94_crit_edge ], [ -77, %if.end10.sw.epilog94_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog94, %if.then50, %if.end45.cleanup_crit_edge, %ffs_mutex_lock.exit.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge, %ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %sw.epilog94 ], [ %call48, %if.then50 ], [ -43, %ffs_setup_state_clear_cancelled.exit.cleanup_crit_edge ], [ %call2.i, %ffs_mutex_lock.exit.cleanup_crit_edge ], [ %len, %if.end45.cleanup_crit_edge ], [ -11, %cond.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_ep0_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #15
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %mutex = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 1
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i24 = icmp eq i32 %and, 0
  br i1 %tobool.not.i24, label %ffs_mutex_lock.exit, label %cond.true.i

cond.true.i:                                      ; preds = %poll_wait.exit
  %call.i = tail call i32 @mutex_trylock(ptr noundef %mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i25 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i25, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ffs_mutex_lock.exit:                              ; preds = %poll_wait.exit
  %call2.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %ffs_mutex_lock.exit.cleanup_crit_edge, label %ffs_mutex_lock.exit.if.end_crit_edge

ffs_mutex_lock.exit.if.end_crit_edge:             ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

ffs_mutex_lock.exit.cleanup_crit_edge:            ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ffs_mutex_lock.exit.if.end_crit_edge, %cond.true.i.if.end_crit_edge
  %state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %7, label %if.end.sw.epilog9_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge31
    i32 2, label %sw.bb1
  ]

if.end.sw.bb_crit_edge31:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end.sw.epilog9_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog9

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge31
  br label %sw.epilog9

sw.bb1:                                           ; preds = %if.end
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %setup_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %setup_state, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %10, label %sw.bb1.sw.epilog9_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb1.sw.bb7_crit_edge
    i32 2, label %sw.bb1.sw.bb7_crit_edge32
  ]

sw.bb1.sw.bb7_crit_edge32:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

sw.bb1.sw.bb7_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

sw.bb1.sw.epilog9_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog9

sw.bb2:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  %spec.select = select i1 %tobool.not, i32 256, i32 257
  br label %sw.epilog9

sw.bb7:                                           ; preds = %sw.bb1.sw.bb7_crit_edge, %sw.bb1.sw.bb7_crit_edge32
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.bb7, %sw.bb2, %sw.bb1.sw.epilog9_crit_edge, %sw.bb, %if.end.sw.epilog9_crit_edge
  %mask.0 = phi i32 [ 256, %if.end.sw.epilog9_crit_edge ], [ 256, %sw.bb1.sw.epilog9_crit_edge ], [ 261, %sw.bb7 ], [ 260, %sw.bb ], [ %spec.select, %sw.bb2 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog9, %ffs_mutex_lock.exit.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.0, %sw.epilog9 ], [ 256, %ffs_mutex_lock.exit.cleanup_crit_edge ], [ 256, %cond.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_ep0_ioctl(ptr nocapture noundef readonly %file, i32 noundef %code, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_ep0_ioctl.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_ioctl, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_ep0_ioctl.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.113) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26496, i32 %code)
  %cmp = icmp eq i32 %code, 26496
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %func6 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %func6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.then5.if.end17_crit_edge, label %cond.true

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

cond.true:                                        ; preds = %if.then5
  %interfaces_nums.i = getelementptr inbounds %struct.ffs_function, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %interfaces_nums.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interfaces_nums.i, align 4
  %ffs.i = getelementptr inbounds %struct.ffs_function, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ffs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ffs.i, align 4
  %interfaces_count.i = getelementptr inbounds %struct.ffs_data, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %interfaces_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not16.i = icmp eq i16 %11, 0
  br i1 %tobool.not16.i, label %cond.true.if.end17_crit_edge, label %for.body.lr.ph.i

cond.true.if.end17_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

for.body.lr.ph.i:                                 ; preds = %cond.true
  %conv.i = zext i16 %11 to i32
  %conv4.i = and i32 %value, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.018.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %nums.017.i = phi ptr [ %7, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %nums.017.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nums.017.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp.i = icmp sgt i16 %13, -1
  %conv1.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv1.i)
  %cmp5.i = icmp eq i32 %conv4.i, %conv1.i
  %or.cond.i = and i1 %cmp.i, %cmp5.i
  br i1 %or.cond.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.lhs.cast.i = ptrtoint ptr %nums.017.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  br label %if.end17

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %count.018.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %nums.017.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.else:                                          ; preds = %do.end
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.else.if.end17_crit_edge, label %land.lhs.true

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 8
  %ioctl = getelementptr inbounds %struct.usb_gadget_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioctl, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %land.lhs.true.if.end17_crit_edge, label %if.then11

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %17(ptr noundef nonnull %3, i32 noundef %code, i32 noundef %value) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %land.lhs.true.if.end17_crit_edge, %if.else.if.end17_crit_edge, %for.inc.i.if.end17_crit_edge, %if.then.i, %cond.true.if.end17_crit_edge, %if.then5.if.end17_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then11 ], [ -19, %if.then5.if.end17_crit_edge ], [ -25, %land.lhs.true.if.end17_crit_edge ], [ -25, %if.else.if.end17_crit_edge ], [ %sub.ptr.div.i, %if.then.i ], [ -33, %cond.true.if.end17_crit_edge ], [ -33, %for.inc.i.if.end17_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_ep0_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_ep0_open.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_open, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_ep0_open.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.114) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private_data, align 4
  tail call fastcc void @ffs_data_opened(ptr noundef %1)
  %call6 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -16, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_ep0_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_ep0_release.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ep0_release, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_ep0_release.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.115) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @ffs_data_closed(ptr noundef %1)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_setup_state_clear_cancelled(ptr noundef %ffs) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %setup_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @llvm.prefetch.p0(ptr %setup_state, i32 1, i32 3, i32 1) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %setup_state, i32 2, i32 0) #15, !srcloc !491
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !492
  ret i32 %asmresult1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_ep0_read_events(ptr noundef %ffs, ptr noundef %buf, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %events = alloca [4 x %struct.usb_functionfs_event], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %events) #15
  %0 = call ptr @memset(ptr %events, i32 255, i32 48)
  %mul = mul i32 %n, 12
  %1 = call ptr @memset(ptr %events, i32 0, i32 %mul)
  %ev = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9
  %setup = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 3
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %umax = call i32 @llvm.umax.i32(i32 %n, i32 1)
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr %ev, i32 0, i32 %i.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %type = getelementptr [4 x %struct.usb_functionfs_event], ptr %events, i32 0, i32 %i.0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx1 = getelementptr [4 x %struct.usb_functionfs_event], ptr %events, i32 0, i32 %i.0
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %setup, align 4
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %arrayidx1, align 1
  %8 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %setup_state, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.then, %do.body.do.cond_crit_edge
  %inc = add nuw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.cond
  %count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 4
  %11 = trunc i32 %n to i16
  %conv11 = sub i16 %10, %11
  store i16 %conv11, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %11)
  %tobool.not = icmp eq i16 %10, %11
  br i1 %tobool.not, label %do.end.if.end25_crit_edge, label %if.then14

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %ev, i32 %n
  %conv23 = zext i16 %conv11 to i32
  %12 = call ptr @memmove(ptr %ev, ptr %add.ptr, i32 %conv23)
  br label %if.end25

if.end25:                                         ; preds = %if.then14, %do.end.if.end25_crit_edge
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  %mutex = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %mul)
  %cmp1.i.i = icmp ugt i32 %mul, 48
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !488

if.then3.i.i:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef 48, i32 noundef %mul) #15
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.end25
  call void @__check_object_size(ptr noundef nonnull %events, i32 noundef %mul, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %mul, i32 -1226833920) #23, !srcloc !493
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %events, i32 noundef %mul) #15
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %events, i32 noundef %mul) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool28.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool28.not, i32 %mul, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then3.i.i
  %14 = phi i32 [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %events) #15
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_ep0_stall(ptr nocapture noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %can_stall = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %can_stall to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %can_stall, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_ep0_stall.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_ep0_stall, %do.end)) #15
          to label %if.then5 [label %do.end], !srcloc !480

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_ep0_stall.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.38) #15
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %2 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0, align 4
  %call6 = tail call i32 @usb_ep_set_halt(ptr noundef %5) #15
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %6 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %setup_state, align 4
  br label %return

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_ep0_stall.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_ep0_stall, %return)) #15
          to label %if.then21 [label %return], !srcloc !480

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_ep0_stall.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.39) #15
  br label %return

return:                                           ; preds = %if.then21, %do.body7, %do.end
  %retval.0 = phi i32 [ -51, %do.end ], [ -3, %if.then21 ], [ -3, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_ep0_queue_wait(ptr noundef %ffs, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ep0req = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 3
  %0 = ptrtoint ptr %ep0req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0req, align 4
  %wLength = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 3, i32 4
  %2 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wLength, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp = icmp ugt i32 %conv, %len
  %zero = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp, i32 8192, i32 0
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.shl, %bf.clear
  store i32 %bf.set, ptr %zero, align 4
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitq) #15
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %1, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %length, align 4
  %cmp4 = icmp eq ptr %data, null
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -559039810 to ptr), ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ep0req_completion = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 4
  %9 = ptrtoint ptr %ep0req_completion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ep0req_completion, align 4
  %10 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ffs, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep0, align 4
  %call = tail call i32 @usb_ep_queue(ptr noundef %13, ptr noundef %1, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @wait_for_completion_interruptible(ptr noundef %ep0req_completion) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ffs, align 4
  %ep015 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ep015 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep015, align 4
  %call16 = tail call i32 @usb_ep_dequeue(ptr noundef %17, ptr noundef %1) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %18 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %setup_state, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %cond.false, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %actual = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end17.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %if.then13 ], [ %call, %if.end.cleanup_crit_edge ], [ %22, %cond.false ], [ %20, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ffs_prepare_buffer(ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %len) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_prepare_buffer.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_prepare_buffer, %do.body11)) #15
          to label %if.then9 [label %do.body11], !srcloc !480

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_prepare_buffer.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.49) #15
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_prepare_buffer.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_prepare_buffer, %cleanup)) #15
          to label %if.then25 [label %cleanup], !srcloc !480

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @print_hex_dump(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %call, i32 noundef %len, i1 noundef zeroext true) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then25 ], [ %call, %do.body11 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_data_got_descs(ptr noundef %ffs, ptr noundef %_data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %current_class.i = alloca i32, align 4
  %counts = alloca [3 x i32], align 4
  %helper = alloca %struct.ffs_desc_helper, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %counts) #15
  %0 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %counts, align 4, !annotation !494
  %1 = getelementptr inbounds [3 x i32], ptr %counts, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !494
  %3 = getelementptr inbounds [3 x i32], ptr %counts, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %helper) #15
  %5 = ptrtoint ptr %helper to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %helper, align 4, !annotation !494
  %6 = getelementptr inbounds %struct.ffs_desc_helper, ptr %helper, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !494
  %8 = getelementptr inbounds %struct.ffs_desc_helper, ptr %helper, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !494
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_got_descs.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_got_descs, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_got_descs.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.52) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %_data, i32 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %len)
  %cmp.not = icmp eq i32 %12, %len
  br i1 %cmp.not, label %if.end6, label %do.end.error_crit_edge

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end6:                                          ; preds = %do.end
  %13 = ptrtoint ptr %_data to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %_data, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %15, label %if.end6.error_crit_edge [
    i32 1, label %if.end34.thread
    i32 3, label %sw.bb9
  ]

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end34.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr8 = getelementptr i8, ptr %_data, i32 8
  %sub = add i32 %len, -8
  br label %if.else

sw.bb9:                                           ; preds = %if.end6
  %add.ptr10 = getelementptr i8, ptr %_data, i32 8
  %17 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr10, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  %user_flags = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 28
  %20 = ptrtoint ptr %user_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %user_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %tobool12.not = icmp ult i32 %19, 256
  br i1 %tobool12.not, label %sw.epilog, label %sw.bb9.error_crit_edge

sw.bb9.error_crit_edge:                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

sw.epilog:                                        ; preds = %sw.bb9
  %add.ptr15 = getelementptr i8, ptr %_data, i32 12
  %sub16 = add i32 %len, -12
  %and17 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.epilog.if.end34_crit_edge, label %if.end22

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end22:                                         ; preds = %sw.epilog
  %21 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr15, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #15
  %call24 = tail call ptr @eventfd_ctx_fdget(i32 noundef %23) #15
  %ffs_eventfd = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 38
  %24 = ptrtoint ptr %ffs_eventfd to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call24, ptr %ffs_eventfd, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %call24 to i32
  %26 = ptrtoint ptr %ffs_eventfd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ffs_eventfd, align 4
  br label %error

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr32 = getelementptr i8, ptr %_data, i32 16
  %sub33 = add i32 %len, -16
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %sw.epilog.if.end34_crit_edge
  %data.1 = phi ptr [ %add.ptr32, %if.end31 ], [ %add.ptr15, %sw.epilog.if.end34_crit_edge ]
  %len.addr.1 = phi i32 [ %sub33, %if.end31 ], [ %sub16, %sw.epilog.if.end34_crit_edge ]
  %and36 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end34.if.else_crit_edge

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %counts, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end34.if.else_crit_edge, %if.end34.thread
  %len.addr.1261 = phi i32 [ %sub, %if.end34.thread ], [ %len.addr.1, %if.end34.if.else_crit_edge ]
  %data.1260 = phi ptr [ %add.ptr8, %if.end34.thread ], [ %data.1, %if.end34.if.else_crit_edge ]
  %flags.0219259 = phi i32 [ 3, %if.end34.thread ], [ %19, %if.end34.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.1261)
  %cmp39 = icmp ult i32 %len.addr.1261, 4
  br i1 %cmp39, label %if.else.error_crit_edge, label %if.else41

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %data.1260 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %data.1260, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #15
  %31 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %counts, align 4
  %add.ptr44 = getelementptr i8, ptr %data.1260, i32 4
  %sub45 = add i32 %len.addr.1261, -4
  br label %for.inc

for.inc:                                          ; preds = %if.else41, %if.then38
  %flags.0219258 = phi i32 [ %flags.0219259, %if.else41 ], [ %19, %if.then38 ]
  %data.3 = phi ptr [ %add.ptr44, %if.else41 ], [ %data.1, %if.then38 ]
  %len.addr.3 = phi i32 [ %sub45, %if.else41 ], [ %len.addr.1, %if.then38 ]
  %and36.1 = and i32 %flags.0219258, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.1)
  %tobool37.not.1 = icmp eq i32 %and36.1, 0
  br i1 %tobool37.not.1, label %if.then38.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.3)
  %cmp39.1 = icmp ult i32 %len.addr.3, 4
  br i1 %cmp39.1, label %if.else.1.error_crit_edge, label %if.else41.1

if.else.1.error_crit_edge:                        ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.else41.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %data.3 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %data.3, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #15
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %1, align 4
  %add.ptr44.1 = getelementptr i8, ptr %data.3, i32 4
  %sub45.1 = add i32 %len.addr.3, -4
  br label %for.inc.1

if.then38.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then38.1, %if.else41.1
  %data.3.1 = phi ptr [ %add.ptr44.1, %if.else41.1 ], [ %data.3, %if.then38.1 ]
  %len.addr.3.1 = phi i32 [ %sub45.1, %if.else41.1 ], [ %len.addr.3, %if.then38.1 ]
  %and36.2 = and i32 %flags.0219258, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.2)
  %tobool37.not.2 = icmp eq i32 %and36.2, 0
  br i1 %tobool37.not.2, label %if.then38.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.3.1)
  %cmp39.2 = icmp ult i32 %len.addr.3.1, 4
  br i1 %cmp39.2, label %if.else.2.error_crit_edge, label %if.else41.2

if.else.2.error_crit_edge:                        ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.else41.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %data.3.1 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %data.3.1, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #15
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %3, align 4
  %add.ptr44.2 = getelementptr i8, ptr %data.3.1, i32 4
  %sub45.2 = add i32 %len.addr.3.1, -4
  br label %for.inc.2

if.then38.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %3, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then38.2, %if.else41.2
  %data.3.2 = phi ptr [ %add.ptr44.2, %if.else41.2 ], [ %data.3.1, %if.then38.2 ]
  %len.addr.3.2 = phi i32 [ %sub45.2, %if.else41.2 ], [ %len.addr.3.1, %if.then38.2 ]
  %and49 = and i32 %flags.0219258, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.inc.2.if.end58_crit_edge, label %if.then51

for.inc.2.if.end58_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then51:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.3.2)
  %cmp52 = icmp ult i32 %len.addr.3.2, 4
  br i1 %cmp52, label %if.then51.error_crit_edge, label %if.end54

if.then51.error_crit_edge:                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end54:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %data.3.2 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %data.3.2, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  %add.ptr56 = getelementptr i8, ptr %data.3.2, i32 4
  %sub57 = add i32 %len.addr.3.2, -4
  br label %if.end58

if.end58:                                         ; preds = %if.end54, %for.inc.2.if.end58_crit_edge
  %data.4 = phi ptr [ %add.ptr56, %if.end54 ], [ %data.3.2, %for.inc.2.if.end58_crit_edge ]
  %os_descs_count.0 = phi i32 [ %44, %if.end54 ], [ 0, %for.inc.2.if.end58_crit_edge ]
  %len.addr.4 = phi i32 [ %sub57, %if.end54 ], [ %len.addr.3.2, %for.inc.2.if.end58_crit_edge ]
  %45 = ptrtoint ptr %helper to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ffs, ptr %helper, align 4
  %eps_count72 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %interfaces_count74 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 31
  br label %for.body62

for.body62:                                       ; preds = %for.inc100.for.body62_crit_edge, %if.end58
  %len.addr.5247 = phi i32 [ %len.addr.4, %if.end58 ], [ %len.addr.6, %for.inc100.for.body62_crit_edge ]
  %i.1246 = phi i32 [ 0, %if.end58 ], [ %inc101, %for.inc100.for.body62_crit_edge ]
  %data.5243 = phi ptr [ %data.4, %if.end58 ], [ %data.6, %for.inc100.for.body62_crit_edge ]
  %arrayidx63 = getelementptr [3 x i32], ptr %counts, i32 0, i32 %i.1246
  %46 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool64.not = icmp eq i32 %47, 0
  br i1 %tobool64.not, label %for.body62.for.inc100_crit_edge, label %if.end66

for.body62.for.inc100_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc100

if.end66:                                         ; preds = %for.body62
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %6, align 4
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_class.i) #15
  %50 = ptrtoint ptr %current_class.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %current_class.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_got_descs, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.53) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_got_descs, %__ffs_data_do_entity.exit212)) #15
          to label %if.then.i208 [label %__ffs_data_do_entity.exit212], !srcloc !480

if.then.i208:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.77) #15
  br label %__ffs_data_do_entity.exit212

__ffs_data_do_entity.exit212:                     ; preds = %if.then.i208, %do.end.i
  %tobool28.not.i239 = icmp eq ptr %data.5243, null
  br i1 %tobool28.not.i239, label %__ffs_data_do_entity.exit212.if.then29.i_crit_edge, label %__ffs_data_do_entity.exit212.if.end30.i_crit_edge

__ffs_data_do_entity.exit212.if.end30.i_crit_edge: ; preds = %__ffs_data_do_entity.exit212
  br label %if.end30.i

__ffs_data_do_entity.exit212.if.then29.i_crit_edge: ; preds = %__ffs_data_do_entity.exit212
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

if.then29.i:                                      ; preds = %__ffs_data_do_entity.exit.if.then29.i_crit_edge, %__ffs_data_do_entity.exit212.if.then29.i_crit_edge
  %len.addr.0101.i.lcssa = phi i32 [ %len.addr.5247, %__ffs_data_do_entity.exit212.if.then29.i_crit_edge ], [ %sub53.i, %__ffs_data_do_entity.exit.if.then29.i_crit_edge ]
  %sub.i = sub i32 %len.addr.5247, %len.addr.0101.i.lcssa
  br label %ffs_do_descs.exit

if.end30.i:                                       ; preds = %__ffs_data_do_entity.exit.if.end30.i_crit_edge, %__ffs_data_do_entity.exit212.if.end30.i_crit_edge
  %num.0100.i242 = phi i32 [ %inc.i, %__ffs_data_do_entity.exit.if.end30.i_crit_edge ], [ 0, %__ffs_data_do_entity.exit212.if.end30.i_crit_edge ]
  %len.addr.0101.i241 = phi i32 [ %sub53.i, %__ffs_data_do_entity.exit.if.end30.i_crit_edge ], [ %len.addr.5247, %__ffs_data_do_entity.exit212.if.end30.i_crit_edge ]
  %spec.select102.i240 = phi ptr [ %add.ptr.i, %__ffs_data_do_entity.exit.if.end30.i_crit_edge ], [ %data.5243, %__ffs_data_do_entity.exit212.if.end30.i_crit_edge ]
  %call31.i = call fastcc i32 @ffs_do_single_desc(ptr noundef nonnull %spec.select102.i240, i32 noundef %len.addr.0101.i241, ptr noundef nonnull @__ffs_data_do_entity, ptr noundef nonnull %helper, ptr noundef nonnull %current_class.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.body34.i, label %cleanup.i

do.body34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_got_descs, %ffs_do_descs.exit)) #15
          to label %ffs_do_descs.exit.thread [label %ffs_do_descs.exit], !srcloc !480

ffs_do_descs.exit.thread:                         ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %call31.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_class.i) #15
  br label %error

cleanup.i:                                        ; preds = %if.end30.i
  %sub53.i = sub i32 %len.addr.0101.i241, %call31.i
  %add.ptr.i = getelementptr i8, ptr %spec.select102.i240, i32 %call31.i
  %inc.i = add i32 %num.0100.i242, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %47)
  %cmp.i203 = icmp eq i32 %inc.i, %47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_got_descs, %__ffs_data_do_entity.exit)) #15
          to label %if.then.i204 [label %__ffs_data_do_entity.exit], !srcloc !480

if.then.i204:                                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.77) #15
  br label %__ffs_data_do_entity.exit

__ffs_data_do_entity.exit:                        ; preds = %if.then.i204, %cleanup.i
  %tobool28.not.i263 = icmp eq ptr %add.ptr.i, null
  %tobool28.not.i = select i1 %cmp.i203, i1 true, i1 %tobool28.not.i263
  br i1 %tobool28.not.i, label %__ffs_data_do_entity.exit.if.then29.i_crit_edge, label %__ffs_data_do_entity.exit.if.end30.i_crit_edge

__ffs_data_do_entity.exit.if.end30.i_crit_edge:   ; preds = %__ffs_data_do_entity.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

__ffs_data_do_entity.exit.if.then29.i_crit_edge:  ; preds = %__ffs_data_do_entity.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

ffs_do_descs.exit:                                ; preds = %do.body34.i, %if.then29.i
  %retval.1.ph.i = phi i32 [ %sub.i, %if.then29.i ], [ %call31.i, %do.body34.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_class.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.ph.i)
  %cmp69 = icmp slt i32 %retval.1.ph.i, 0
  br i1 %cmp69, label %ffs_do_descs.exit.error_crit_edge, label %if.end71

ffs_do_descs.exit.error_crit_edge:                ; preds = %ffs_do_descs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end71:                                         ; preds = %ffs_do_descs.exit
  %51 = ptrtoint ptr %eps_count72 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %eps_count72, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool73.not = icmp eq i16 %52, 0
  br i1 %tobool73.not, label %land.lhs.true, label %if.end71.if.else82_crit_edge

if.end71.if.else82_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else82

land.lhs.true:                                    ; preds = %if.end71
  %53 = ptrtoint ptr %interfaces_count74 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %interfaces_count74, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool75.not = icmp eq i16 %54, 0
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true.if.else82_crit_edge

land.lhs.true.if.else82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else82

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %8, align 4
  %conv = trunc i32 %56 to i16
  %57 = ptrtoint ptr %eps_count72 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv, ptr %eps_count72, align 4
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %6, align 4
  %conv80 = trunc i32 %59 to i16
  %60 = ptrtoint ptr %interfaces_count74 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv80, ptr %interfaces_count74, align 2
  br label %if.end97

if.else82:                                        ; preds = %land.lhs.true.if.else82_crit_edge, %if.end71.if.else82_crit_edge
  %conv84 = zext i16 %52 to i32
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %conv84)
  %cmp86.not = icmp eq i32 %62, %conv84
  br i1 %cmp86.not, label %if.end89, label %if.else82.error_crit_edge

if.else82.error_crit_edge:                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end89:                                         ; preds = %if.else82
  %63 = ptrtoint ptr %interfaces_count74 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %interfaces_count74, align 2
  %conv91 = zext i16 %64 to i32
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv91)
  %cmp93.not = icmp eq i32 %66, %conv91
  br i1 %cmp93.not, label %if.end89.if.end97_crit_edge, label %if.end89.error_crit_edge

if.end89.error_crit_edge:                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.end97:                                         ; preds = %if.end89.if.end97_crit_edge, %if.then76
  %add.ptr98 = getelementptr i8, ptr %data.5243, i32 %retval.1.ph.i
  %sub99 = sub i32 %len.addr.5247, %retval.1.ph.i
  br label %for.inc100

for.inc100:                                       ; preds = %if.end97, %for.body62.for.inc100_crit_edge
  %data.6 = phi ptr [ %add.ptr98, %if.end97 ], [ %data.5243, %for.body62.for.inc100_crit_edge ]
  %len.addr.6 = phi i32 [ %sub99, %if.end97 ], [ %len.addr.5247, %for.body62.for.inc100_crit_edge ]
  %inc101 = add nuw nsw i32 %i.1246, 1
  %exitcond.not = icmp eq i32 %inc101, 3
  br i1 %exitcond.not, label %for.end102, label %for.inc100.for.body62_crit_edge

for.inc100.for.body62_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body62

for.end102:                                       ; preds = %for.inc100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %os_descs_count.0)
  %tobool103.not = icmp eq i32 %os_descs_count.0, 0
  br i1 %tobool103.not, label %for.end102.if.end112_crit_edge, label %if.then104

for.end102.if.end112_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then104:                                       ; preds = %for.end102
  %call105 = call fastcc i32 @ffs_do_os_descs(i32 noundef %os_descs_count.0, ptr noundef %data.6, i32 noundef %len.addr.6, ptr noundef nonnull @__ffs_data_do_os_desc, ptr noundef %ffs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then104.error_crit_edge, label %if.end109

if.then104.error_crit_edge:                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end109:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr110 = getelementptr i8, ptr %data.6, i32 %call105
  %sub111 = sub i32 %len.addr.6, %call105
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %for.end102.if.end112_crit_edge
  %data.7 = phi ptr [ %add.ptr110, %if.end109 ], [ %data.6, %for.end102.if.end112_crit_edge ]
  %len.addr.7 = phi i32 [ %sub111, %if.end109 ], [ %len.addr.6, %for.end102.if.end112_crit_edge ]
  %cmp113 = icmp ne ptr %data.4, %data.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.7)
  %tobool115.not = icmp eq i32 %len.addr.7, 0
  %or.cond = select i1 %cmp113, i1 %tobool115.not, i1 false
  br i1 %or.cond, label %if.end117, label %if.end112.error_crit_edge

if.end112.error_crit_edge:                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end117:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %raw_descs_data = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 15
  %67 = ptrtoint ptr %raw_descs_data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %_data, ptr %raw_descs_data, align 4
  %raw_descs118 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 16
  %68 = ptrtoint ptr %raw_descs118 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %data.4, ptr %raw_descs118, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %data.7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data.4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %raw_descs_length = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 17
  %69 = ptrtoint ptr %raw_descs_length to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub.ptr.sub, ptr %raw_descs_length, align 4
  %70 = ptrtoint ptr %counts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %counts, align 4
  %fs_descs_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 18
  %72 = ptrtoint ptr %fs_descs_count to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %fs_descs_count, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %1, align 4
  %hs_descs_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 19
  %75 = ptrtoint ptr %hs_descs_count to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %hs_descs_count, align 4
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %3, align 4
  %ss_descs_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 20
  %78 = ptrtoint ptr %ss_descs_count to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %ss_descs_count, align 4
  %ms_os_descs_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 21
  %79 = ptrtoint ptr %ms_os_descs_count to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %os_descs_count.0, ptr %ms_os_descs_count, align 4
  br label %cleanup

error:                                            ; preds = %if.end112.error_crit_edge, %if.then104.error_crit_edge, %if.end89.error_crit_edge, %if.else82.error_crit_edge, %ffs_do_descs.exit.error_crit_edge, %ffs_do_descs.exit.thread, %if.then51.error_crit_edge, %if.else.2.error_crit_edge, %if.else.1.error_crit_edge, %if.else.error_crit_edge, %if.then27, %sw.bb9.error_crit_edge, %if.end6.error_crit_edge, %do.end.error_crit_edge
  %ret.0 = phi i32 [ -22, %do.end.error_crit_edge ], [ -22, %if.end6.error_crit_edge ], [ %25, %if.then27 ], [ -22, %if.then51.error_crit_edge ], [ %call105, %if.then104.error_crit_edge ], [ -38, %sw.bb9.error_crit_edge ], [ -22, %if.end112.error_crit_edge ], [ %call31.i, %ffs_do_descs.exit.thread ], [ -22, %if.else.2.error_crit_edge ], [ -22, %if.else.1.error_crit_edge ], [ -22, %if.else.error_crit_edge ], [ -22, %if.end89.error_crit_edge ], [ -22, %if.else82.error_crit_edge ], [ %retval.1.ph.i, %ffs_do_descs.exit.error_crit_edge ]
  call void @kfree(ptr noundef %_data) #15
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end117
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end117 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %helper) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %counts) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_data_got_strings(ptr nocapture noundef %ffs, ptr noundef %_data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_got_strings.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_got_strings, %lor.lhs.false)) #15
          to label %if.then [label %lor.lhs.false], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_got_strings.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.90) #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then, %entry
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %_data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %1)
  %cmp5.not = icmp eq i32 %1, 33554432
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %_data, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp8.not = icmp eq i32 %4, %len
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false6.error_crit_edge

lor.lhs.false6.error_crit_edge:                   ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end10:                                         ; preds = %lor.lhs.false6
  %add.ptr11 = getelementptr i8, ptr %_data, i32 8
  %5 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr11, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  %add.ptr13 = getelementptr i8, ptr %_data, i32 12
  %8 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr13, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  %cmp21.not = xor i1 %tobool15.not, %tobool18.not
  br i1 %cmp21.not, label %if.end23, label %if.end10.error_crit_edge

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end23:                                         ; preds = %if.end10
  %strings_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 30
  %11 = ptrtoint ptr %strings_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %strings_count, align 4
  %conv = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp24 = icmp ult i32 %7, %conv
  br i1 %cmp24, label %if.end23.error_crit_edge, label %if.end27

if.end23.error_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool28.not = icmp eq i16 %12, 0
  br i1 %tobool28.not, label %if.then29, label %if.then33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %_data) #15
  br label %cleanup165

if.then33:                                        ; preds = %if.end27
  %add = add i32 %10, 1
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #15
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.then33.if.end8.i_crit_edge, label %if.then51

if.then33.if.end8.i_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then51:                                        ; preds = %if.then33
  %15 = extractvalue { i32, i1 } %13, 0
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 8) #15
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %retval.0.i243 = select i1 %17, i32 -1, i32 %18
  %19 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %15, i32 %retval.0.i243)
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  br i1 %20, label %if.then51.if.end8.i_crit_edge, label %if.end71

if.then51.if.end8.i_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.end71:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp74.not = icmp eq i32 %21, -1
  br i1 %cmp74.not, label %if.end71.if.end8.i_crit_edge, label %if.then76

if.end71.if.end8.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %add79 = add nuw nsw i32 %conv, 1
  %mul = mul i32 %add79, %10
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 8) #15
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %retval.0.i244 = select i1 %23, i32 -1, i32 %24
  %add81 = add i32 %21, 3
  %and83 = and i32 %add81, -4
  %25 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and83, i32 %retval.0.i244)
  %26 = extractvalue { i32, i1 } %25, 1
  %spec.select240 = tail call i32 @llvm.uadd.sat.i32(i32 %and83, i32 %retval.0.i244)
  %spec.select241 = select i1 %26, i32 0, i32 %and83
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then76, %if.end71.if.end8.i_crit_edge, %if.then51.if.end8.i_crit_edge, %if.then33.if.end8.i_crit_edge
  %offset48.1249 = phi i32 [ %15, %if.then76 ], [ %15, %if.end71.if.end8.i_crit_edge ], [ 0, %if.then51.if.end8.i_crit_edge ], [ 0, %if.then33.if.end8.i_crit_edge ]
  %d__next.4 = phi i32 [ %spec.select240, %if.then76 ], [ -1, %if.end71.if.end8.i_crit_edge ], [ -1, %if.then51.if.end8.i_crit_edge ], [ -1, %if.then33.if.end8.i_crit_edge ]
  %offset73.1 = phi i32 [ %spec.select241, %if.then76 ], [ 0, %if.end71.if.end8.i_crit_edge ], [ 0, %if.then51.if.end8.i_crit_edge ], [ 0, %if.then33.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %d__next.4, i32 noundef 3264) #22
  %tobool100.not = icmp eq ptr %call9.i, null
  br i1 %tobool100.not, label %cleanup.thread, label %if.end102

cleanup.thread:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %_data) #15
  br label %cleanup165

if.end102:                                        ; preds = %if.end8.i
  %add.ptr104 = getelementptr i8, ptr %call9.i, i32 %offset48.1249
  br label %do.body105

do.body105:                                       ; preds = %do.body105.do.body105_crit_edge, %if.end102
  %i.0 = phi i32 [ %10, %if.end102 ], [ %dec, %do.body105.do.body105_crit_edge ]
  %t.0 = phi ptr [ %add.ptr104, %if.end102 ], [ %incdec.ptr, %do.body105.do.body105_crit_edge ]
  %stringtabs.0 = phi ptr [ %call9.i, %if.end102 ], [ %incdec.ptr106, %do.body105.do.body105_crit_edge ]
  %incdec.ptr = getelementptr %struct.usb_gadget_strings, ptr %t.0, i32 1
  %incdec.ptr106 = getelementptr ptr, ptr %stringtabs.0, i32 1
  %27 = ptrtoint ptr %stringtabs.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %t.0, ptr %stringtabs.0, align 4
  %dec = add i32 %i.0, -1
  %tobool108.not = icmp eq i32 %dec, 0
  br i1 %tobool108.not, label %cleanup, label %do.body105.do.body105_crit_edge

do.body105.do.body105_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body105

cleanup:                                          ; preds = %do.body105
  %28 = ptrtoint ptr %incdec.ptr106 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %incdec.ptr106, align 4
  %add.ptr112 = getelementptr i8, ptr %call9.i, i32 %offset73.1
  %add.ptr118 = getelementptr i8, ptr %_data, i32 16
  %sub = add i32 %len, -16
  br label %do.body119

do.body119:                                       ; preds = %do.cond157.do.body119_crit_edge, %cleanup
  %s.1 = phi ptr [ %add.ptr112, %cleanup ], [ %incdec.ptr152, %do.cond157.do.body119_crit_edge ]
  %data.0 = phi ptr [ %add.ptr118, %cleanup ], [ %add.ptr141, %do.cond157.do.body119_crit_edge ]
  %t.2 = phi ptr [ %add.ptr104, %cleanup ], [ %incdec.ptr125, %do.cond157.do.body119_crit_edge ]
  %lang_count.0 = phi i32 [ %10, %cleanup ], [ %dec158, %do.cond157.do.body119_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %cleanup ], [ %sub143, %do.cond157.do.body119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0)
  %cmp120 = icmp ult i32 %len.addr.0, 3
  br i1 %cmp120, label %do.body119.error_free_crit_edge, label %if.end123

do.body119.error_free_crit_edge:                  ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_free

if.end123:                                        ; preds = %do.body119
  %29 = ptrtoint ptr %data.0 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %data.0, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #15
  %32 = ptrtoint ptr %t.2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %t.2, align 4
  %strings = getelementptr inbounds %struct.usb_gadget_strings, ptr %t.2, i32 0, i32 1
  %33 = ptrtoint ptr %strings to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %s.1, ptr %strings, align 4
  %incdec.ptr125 = getelementptr %struct.usb_gadget_strings, ptr %t.2, i32 1
  %add.ptr126 = getelementptr i8, ptr %data.0, i32 2
  %sub127 = add i32 %len.addr.0, -2
  br label %do.body128

do.body128:                                       ; preds = %do.cond147.do.body128_crit_edge, %if.end123
  %s.2 = phi ptr [ %s.1, %if.end123 ], [ %s.3, %do.cond147.do.body128_crit_edge ]
  %data.1 = phi ptr [ %add.ptr126, %if.end123 ], [ %add.ptr141, %do.cond147.do.body128_crit_edge ]
  %len.addr.1 = phi i32 [ %sub127, %if.end123 ], [ %sub143, %do.cond147.do.body128_crit_edge ]
  %needed.0 = phi i32 [ %conv, %if.end123 ], [ %needed.1, %do.cond147.do.body128_crit_edge ]
  %str_per_lang.0 = phi i32 [ %7, %if.end123 ], [ %dec148, %do.cond147.do.body128_crit_edge ]
  %call129 = tail call i32 @strnlen(ptr noundef %data.1, i32 noundef %len.addr.1) #20
  call void @__sanitizer_cov_trace_cmp4(i32 %call129, i32 %len.addr.1)
  %cmp130 = icmp eq i32 %call129, %len.addr.1
  br i1 %cmp130, label %do.body128.error_free_crit_edge, label %if.end133

do.body128.error_free_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_free

if.end133:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needed.0)
  %tobool134.not = icmp eq i32 %needed.0, 0
  br i1 %tobool134.not, label %if.end133.do.cond147_crit_edge, label %if.then135

if.end133.do.cond147_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond147

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  %s136 = getelementptr inbounds %struct.usb_string, ptr %s.2, i32 0, i32 1
  %34 = ptrtoint ptr %s136 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.1, ptr %s136, align 4
  %dec137 = add i32 %needed.0, -1
  %incdec.ptr138 = getelementptr %struct.usb_string, ptr %s.2, i32 1
  br label %do.cond147

do.cond147:                                       ; preds = %if.then135, %if.end133.do.cond147_crit_edge
  %s.3 = phi ptr [ %incdec.ptr138, %if.then135 ], [ %s.2, %if.end133.do.cond147_crit_edge ]
  %needed.1 = phi i32 [ %dec137, %if.then135 ], [ 0, %if.end133.do.cond147_crit_edge ]
  %add140 = add i32 %call129, 1
  %add.ptr141 = getelementptr i8, ptr %data.1, i32 %add140
  %sub143 = sub i32 %len.addr.1, %add140
  %dec148 = add i32 %str_per_lang.0, -1
  %tobool149.not = icmp eq i32 %dec148, 0
  br i1 %tobool149.not, label %do.cond157, label %do.cond147.do.body128_crit_edge

do.cond147.do.body128_crit_edge:                  ; preds = %do.cond147
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body128

do.cond157:                                       ; preds = %do.cond147
  %35 = ptrtoint ptr %s.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %s.3, align 4
  %s151 = getelementptr inbounds %struct.usb_string, ptr %s.3, i32 0, i32 1
  %36 = ptrtoint ptr %s151 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %s151, align 4
  %incdec.ptr152 = getelementptr %struct.usb_string, ptr %s.3, i32 1
  %dec158 = add i32 %lang_count.0, -1
  %tobool159.not = icmp eq i32 %dec158, 0
  br i1 %tobool159.not, label %do.end160, label %do.cond157.do.body119_crit_edge

do.cond157.do.body119_crit_edge:                  ; preds = %do.cond157
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body119

do.end160:                                        ; preds = %do.cond157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub143)
  %tobool161.not = icmp eq i32 %sub143, 0
  br i1 %tobool161.not, label %if.end163, label %do.end160.error_free_crit_edge

do.end160.error_free_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_free

if.end163:                                        ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #17
  %stringtabs164 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 35
  %37 = ptrtoint ptr %stringtabs164 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i, ptr %stringtabs164, align 4
  %raw_strings = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 34
  %38 = ptrtoint ptr %raw_strings to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %_data, ptr %raw_strings, align 4
  br label %cleanup165

error_free:                                       ; preds = %do.end160.error_free_crit_edge, %do.body128.error_free_crit_edge, %do.body119.error_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %error

error:                                            ; preds = %error_free, %if.end23.error_crit_edge, %if.end10.error_crit_edge, %lor.lhs.false6.error_crit_edge, %lor.lhs.false.error_crit_edge
  tail call void @kfree(ptr noundef %_data) #15
  br label %cleanup165

cleanup165:                                       ; preds = %error, %if.end163, %cleanup.thread, %if.then29
  %retval.1 = phi i32 [ -22, %error ], [ 0, %if.end163 ], [ 0, %if.then29 ], [ -12, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_epfiles_create(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfiles_create.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfiles_create, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfiles_create.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.91) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %eps_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %0 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eps_count, align 4
  %conv = zext i16 %1 to i32
  %2 = mul nuw nsw i32 %conv, 116
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #22
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not57 = icmp eq i16 %1, 0
  br i1 %cmp.not57, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %user_flags = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 28
  %sb = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %epfile.059 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.058 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ffs9 = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.059, i32 0, i32 1
  %3 = ptrtoint ptr %ffs9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ffs, ptr %ffs9, align 4
  tail call void @__mutex_init(ptr noundef %epfile.059, ptr noundef nonnull @.str.92, ptr noundef nonnull @ffs_epfiles_create.__key) #15
  %4 = ptrtoint ptr %user_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user_flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %name17 = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.059, i32 0, i32 5
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr %struct.ffs_data, ptr %ffs, i32 0, i32 29, i32 %i.058
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %7 to i32
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name17, ptr noundef nonnull @.str.93, i32 noundef %conv15)
  br label %if.end20

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name17, ptr noundef nonnull @.str.94, i32 noundef %i.058)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %8 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb, align 4
  %name21 = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.059, i32 0, i32 5
  %call23 = tail call fastcc ptr @ffs_sb_create_file(ptr noundef %9, ptr noundef %name21, ptr noundef %epfile.059, ptr noundef nonnull @ffs_epfile_operations)
  %dentry = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.059, i32 0, i32 3
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %dentry, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.then26, label %for.inc

if.then26:                                        ; preds = %if.end20
  %sub = add nsw i32 %i.058, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfiles_create, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool4.not37.i = icmp eq i32 %sub, 0
  br i1 %tobool4.not37.i, label %do.end.i.ffs_epfiles_destroy.exit_crit_edge, label %do.end.i.do.body5.i_crit_edge

do.end.i.do.body5.i_crit_edge:                    ; preds = %do.end.i
  br label %do.body5.i

do.end.i.ffs_epfiles_destroy.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_epfiles_destroy.exit

do.body5.i:                                       ; preds = %for.inc.i.do.body5.i_crit_edge, %do.end.i.do.body5.i_crit_edge
  %count.addr.039.i = phi i32 [ %dec.i, %for.inc.i.do.body5.i_crit_edge ], [ %sub, %do.end.i.do.body5.i_crit_edge ]
  %epfile.038.i = phi ptr [ %incdec.ptr.i, %for.inc.i.do.body5.i_crit_edge ], [ %call8.i.i, %do.end.i.do.body5.i_crit_edge ]
  %call6.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %epfile.038.i) #15
  br i1 %call6.i, label %do.body14.i, label %do.end22.i, !prof !488

do.body14.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1933, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

do.end22.i:                                       ; preds = %do.body5.i
  %dentry.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.038.i, i32 0, i32 3
  %11 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry.i, align 4
  %tobool23.not.i = icmp eq ptr %12, null
  br i1 %tobool23.not.i, label %do.end22.i.for.inc.i_crit_edge, label %if.then24.i

do.end22.i.for.inc.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then24.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_delete(ptr noundef nonnull %12) #15
  %13 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry.i, align 4
  tail call void @dput(ptr noundef %14) #15
  %15 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dentry.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %do.end22.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %count.addr.039.i, -1
  %incdec.ptr.i = getelementptr %struct.ffs_epfile, ptr %epfile.038.i, i32 1
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %for.inc.i.ffs_epfiles_destroy.exit_crit_edge, label %for.inc.i.do.body5.i_crit_edge

for.inc.i.do.body5.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5.i

for.inc.i.ffs_epfiles_destroy.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_epfiles_destroy.exit

ffs_epfiles_destroy.exit:                         ; preds = %for.inc.i.ffs_epfiles_destroy.exit_crit_edge, %do.end.i.ffs_epfiles_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #15
  br label %cleanup

for.inc:                                          ; preds = %if.end20
  %inc = add nuw nsw i32 %i.058, 1
  %incdec.ptr = getelementptr %struct.ffs_epfile, ptr %epfile.059, i32 1
  %exitcond = icmp eq i32 %i.058, %conv
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %epfiles28 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 42
  %16 = ptrtoint ptr %epfiles28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %epfiles28, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %ffs_epfiles_destroy.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %ffs_epfiles_destroy.exit ], [ 0, %for.end ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_ready(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_ready.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_ready, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_ready.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.112) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %private_data = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 14
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.done_crit_edge, label %if.end6

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end6:                                          ; preds = %do.end
  %desc_ready = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %desc_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %desc_ready, align 2, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %if.end39, label %do.end23, !prof !484

do.end23:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 3790, i32 noundef 9, ptr noundef null) #15
  br label %done

if.end39:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %desc_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %desc_ready, align 2
  %ffs_ready_callback = getelementptr inbounds %struct.ffs_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ffs_ready_callback to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ffs_ready_callback, align 4
  %tobool41.not = icmp eq ptr %6, null
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  %call44 = tail call i32 %6(ptr noundef %ffs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then42.if.end48_crit_edge, label %if.then42.done_crit_edge

if.then42.done_crit_edge:                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %flags = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #15
  br label %done

done:                                             ; preds = %if.end48, %if.then42.done_crit_edge, %do.end23, %do.end.done_crit_edge
  %ret.1 = phi i32 [ -16, %do.end23 ], [ %call44, %if.then42.done_crit_edge ], [ 0, %if.end48 ], [ -22, %do.end.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_do_descs(i32 noundef %count, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readonly %entity, ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %current_class = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_class) #15
  %0 = ptrtoint ptr %current_class to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %current_class, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_descs, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.53) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp96 = icmp eq i32 %count, 0
  %spec.select97 = select i1 %cmp96, ptr null, ptr %data
  %call698 = tail call i32 %entity(i32 noundef 0, ptr noundef null, ptr noundef %spec.select97, ptr noundef %priv) #15, !callees !495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call698)
  %cmp799 = icmp slt i32 %call698, 0
  br i1 %cmp799, label %do.end.do.body9_crit_edge, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  br label %if.end27

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

do.body9:                                         ; preds = %cleanup.do.body9_crit_edge, %do.end.do.body9_crit_edge
  %num.0.lcssa = phi i32 [ 0, %do.end.do.body9_crit_edge ], [ %inc, %cleanup.do.body9_crit_edge ]
  %call6.lcssa = phi i32 [ %call698, %do.end.do.body9_crit_edge ], [ %call6, %cleanup.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_descs, %cleanup54)) #15
          to label %if.then23 [label %cleanup54], !srcloc !480

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.54, i32 noundef %num.0.lcssa, i32 noundef %call6.lcssa) #15
  br label %cleanup54

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %do.end.if.end27_crit_edge
  %spec.select102 = phi ptr [ %spec.select, %cleanup.if.end27_crit_edge ], [ %spec.select97, %do.end.if.end27_crit_edge ]
  %len.addr.0101 = phi i32 [ %sub53, %cleanup.if.end27_crit_edge ], [ %len, %do.end.if.end27_crit_edge ]
  %num.0100 = phi i32 [ %inc, %cleanup.if.end27_crit_edge ], [ 0, %do.end.if.end27_crit_edge ]
  %tobool28.not = icmp eq ptr %spec.select102, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i32 %len, %len.addr.0101
  br label %cleanup54

if.end30:                                         ; preds = %if.end27
  %call31 = call fastcc i32 @ffs_do_single_desc(ptr noundef nonnull %spec.select102, i32 noundef %len.addr.0101, ptr noundef %entity, ptr noundef %priv, ptr noundef nonnull %current_class)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.body34, label %cleanup

do.body34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_descs, %cleanup54)) #15
          to label %if.then48 [label %cleanup54], !srcloc !480

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %call31) #15
  br label %cleanup54

cleanup:                                          ; preds = %if.end30
  %sub53 = sub i32 %len.addr.0101, %call31
  %add.ptr = getelementptr i8, ptr %spec.select102, i32 %call31
  %inc = add i32 %num.0100, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %cmp = icmp eq i32 %inc, %count
  %spec.select = select i1 %cmp, ptr null, ptr %add.ptr
  %1 = inttoptr i32 %inc to ptr
  %call6 = tail call i32 %entity(i32 noundef 0, ptr noundef %1, ptr noundef %spec.select, ptr noundef %priv) #15, !callees !495
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup.do.body9_crit_edge, label %cleanup.if.end27_crit_edge

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

cleanup.do.body9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body9

cleanup54:                                        ; preds = %if.then48, %do.body34, %if.then29, %if.then23, %do.body9
  %retval.1.ph = phi i32 [ %call31, %if.then48 ], [ %call6.lcssa, %if.then23 ], [ %sub, %if.then29 ], [ %call6.lcssa, %do.body9 ], [ %call31, %do.body34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_class) #15
  ret i32 %retval.1.ph
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ffs_data_do_entity(i32 noundef %type, ptr nocapture noundef readonly %valuep, ptr nocapture noundef readonly %desc, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_entity, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.77) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %type, label %do.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb19
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %1 = ptrtoint ptr %valuep to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valuep, align 1
  %conv = zext i8 %2 to i32
  %interfaces_count = getelementptr inbounds %struct.ffs_desc_helper, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %interfaces_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interfaces_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not = icmp ugt i32 %4, %conv
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then5

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %add = add nuw nsw i32 %conv, 1
  %5 = ptrtoint ptr %interfaces_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %interfaces_count, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  %6 = ptrtoint ptr %valuep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valuep, align 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %strings_count = getelementptr inbounds %struct.ffs_data, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %strings_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %strings_count, align 4
  %12 = zext i8 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp12 = icmp ult i16 %11, %12
  br i1 %cmp12, label %if.then14, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %strings_count to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %strings_count, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  %eps_count = getelementptr inbounds %struct.ffs_desc_helper, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %eps_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eps_count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %eps_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc)
  %cmp21 = icmp ugt i32 %inc, 30
  br i1 %cmp21, label %sw.bb19.cleanup_crit_edge, label %if.end24

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %sw.bb19
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %eps_count26 = getelementptr inbounds %struct.ffs_data, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %eps_count26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %eps_count26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool27.not = icmp eq i16 %19, 0
  br i1 %tobool27.not, label %land.lhs.true, label %if.end24.if.else_crit_edge

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %interfaces_count29 = getelementptr inbounds %struct.ffs_data, ptr %17, i32 0, i32 31
  %20 = ptrtoint ptr %interfaces_count29 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %interfaces_count29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool30.not = icmp eq i16 %21, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %22 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bEndpointAddress, align 1
  %arrayidx = getelementptr %struct.ffs_data, ptr %17, i32 0, i32 29, i32 %inc
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  %arrayidx37 = getelementptr %struct.ffs_data, ptr %17, i32 0, i32 29, i32 %inc
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx37, align 1
  %bEndpointAddress39 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp41.not = icmp eq i8 %26, %28
  br i1 %cmp41.not, label %if.else.sw.epilog_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.sw.epilog_crit_edge, %if.then31, %if.then14, %sw.bb9.sw.epilog_crit_edge, %if.then5, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb19.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_do_os_descs(i32 noundef %count, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readonly %entity, ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_os_descs.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_os_descs.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.78) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp149.not = icmp eq i32 %count, 0
  br i1 %cmp149.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %data.addr.0152 = phi ptr [ %add.ptr63, %for.inc.for.body_crit_edge ], [ %data, %do.end.for.body_crit_edge ]
  %len.addr.0151 = phi i32 [ %sub62, %for.inc.for.body_crit_edge ], [ %len, %do.end.for.body_crit_edge ]
  %num.0150 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len.addr.0151)
  %cmp4 = icmp ult i32 %len.addr.0151, 11
  br i1 %cmp4, label %for.body.cleanup68_crit_edge, label %if.end6

for.body.cleanup68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.end6:                                          ; preds = %for.body
  %dwLength = getelementptr inbounds %struct.usb_os_desc_header, ptr %data.addr.0152, i32 0, i32 1
  %0 = ptrtoint ptr %dwLength to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %dwLength, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %len.addr.0151)
  %cmp7 = icmp ugt i32 %2, %len.addr.0151
  br i1 %cmp7, label %if.end6.cleanup68_crit_edge, label %if.end9

if.end6.cleanup68_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

if.end9:                                          ; preds = %if.end6
  %bcdVersion.i = getelementptr inbounds %struct.usb_os_desc_header, ptr %data.addr.0152, i32 0, i32 2
  %3 = ptrtoint ptr %bcdVersion.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %bcdVersion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 256
  br i1 %cmp.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_do_os_desc_header.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %do.body13)) #15
          to label %if.then5.i [label %do.body13], !srcloc !480

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #15
  %conv.i.le = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_do_os_desc_header.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.81, i32 noundef %conv.i.le) #15
  br label %do.body13

if.end7.i:                                        ; preds = %if.end9
  %wIndex.i = getelementptr inbounds %struct.usb_os_desc_header, ptr %data.addr.0152, i32 0, i32 3
  %6 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wIndex.i, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #15
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %8, label %do.body10.i [
    i16 4, label %land.lhs.true
    i16 5, label %if.end31
  ]

do.body10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_do_os_desc_header.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %do.body13)) #15
          to label %if.then24.i [label %do.body13], !srcloc !480

if.then24.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv8.i.le = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_do_os_desc_header.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.82, i32 noundef %conv8.i.le) #15
  br label %do.body13

do.body13:                                        ; preds = %if.then24.i, %do.body10.i, %if.then5.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_os_descs.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %cleanup68)) #15
          to label %if.then27 [label %cleanup68], !srcloc !480

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_os_descs.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.79, i32 noundef %num.0150, i32 noundef -22) #15
  br label %cleanup68

if.end31:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = getelementptr inbounds %struct.usb_os_desc_header, ptr %data.addr.0152, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %10, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end7.i
  %14 = getelementptr inbounds %struct.usb_os_desc_header, ptr %data.addr.0152, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %14, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %17)
  %cmp33 = icmp ugt i16 %17, 255
  br i1 %cmp33, label %land.lhs.true.cleanup68_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

lor.lhs.false:                                    ; preds = %land.lhs.true
  %Reserved = getelementptr inbounds %struct.anon.83, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %Reserved to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %Reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool36.not = icmp eq i8 %19, 0
  br i1 %tobool36.not, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.cleanup68_crit_edge

lor.lhs.false.cleanup68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false.if.end38_crit_edge, %if.end31
  %20 = phi i16 [ %17, %lor.lhs.false.if.end38_crit_edge ], [ %13, %if.end31 ]
  %type.0.ph119 = phi i32 [ 1, %lor.lhs.false.if.end38_crit_edge ], [ 2, %if.end31 ]
  %sub = add i32 %len.addr.0151, -11
  %add.ptr = getelementptr i8, ptr %data.addr.0152, i32 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_os_desc.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_os_desc.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.83) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end38
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool4.not43.i = icmp eq i16 %20, 0
  br i1 %tobool4.not43.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %dec46.in.i = phi i16 [ %dec46.i, %if.end25.i.while.body.i_crit_edge ], [ %20, %do.end.i.while.body.i_crit_edge ]
  %data.addr.045.i = phi ptr [ %add.ptr.i, %if.end25.i.while.body.i_crit_edge ], [ %add.ptr, %do.end.i.while.body.i_crit_edge ]
  %len.addr.044.i = phi i32 [ %sub.i, %if.end25.i.while.body.i_crit_edge ], [ %sub, %do.end.i.while.body.i_crit_edge ]
  %call5.i = tail call i32 %entity(i32 noundef %type.0.ph119, ptr noundef %data.addr.0152, ptr noundef %data.addr.045.i, i32 noundef %len.addr.044.i, ptr noundef %priv) #15, !callees !496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.body7.i, label %if.end25.i

do.body7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_os_desc.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %ffs_do_single_os_desc.exit)) #15
          to label %ffs_do_single_os_desc.exit.thread [label %ffs_do_single_os_desc.exit], !srcloc !480

ffs_do_single_os_desc.exit.thread:                ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_os_desc.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.84, i32 noundef %type.0.ph119) #15
  br label %do.body43

if.end25.i:                                       ; preds = %while.body.i
  %dec46.i = add i16 %dec46.in.i, -1
  %add.ptr.i = getelementptr i8, ptr %data.addr.045.i, i32 %call5.i
  %sub.i = sub i32 %len.addr.044.i, %call5.i
  %tobool4.not.i = icmp eq i16 %dec46.i, 0
  br i1 %tobool4.not.i, label %if.end25.i.while.end.i_crit_edge, label %if.end25.i.while.body.i_crit_edge

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end25.i.while.end.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.end25.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge
  %len.addr.0.lcssa.i = phi i32 [ %sub, %do.end.i.while.end.i_crit_edge ], [ %sub.i, %if.end25.i.while.end.i_crit_edge ]
  %sub26.i = sub i32 %sub, %len.addr.0.lcssa.i
  br label %ffs_do_single_os_desc.exit

ffs_do_single_os_desc.exit:                       ; preds = %while.end.i, %do.body7.i
  %retval.0.i102 = phi i32 [ %sub26.i, %while.end.i ], [ %call5.i, %do.body7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i102)
  %cmp40 = icmp slt i32 %retval.0.i102, 0
  br i1 %cmp40, label %ffs_do_single_os_desc.exit.do.body43_crit_edge, label %for.inc

ffs_do_single_os_desc.exit.do.body43_crit_edge:   ; preds = %ffs_do_single_os_desc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body43

do.body43:                                        ; preds = %ffs_do_single_os_desc.exit.do.body43_crit_edge, %ffs_do_single_os_desc.exit.thread
  %retval.0.i102123 = phi i32 [ %call5.i, %ffs_do_single_os_desc.exit.thread ], [ %retval.0.i102, %ffs_do_single_os_desc.exit.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_os_descs.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_os_descs, %cleanup68)) #15
          to label %if.then57 [label %cleanup68], !srcloc !480

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_os_descs.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.78, i32 noundef %retval.0.i102123) #15
  br label %cleanup68

for.inc:                                          ; preds = %ffs_do_single_os_desc.exit
  %sub62 = sub i32 %sub, %retval.0.i102
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i102
  %inc = add nuw i32 %num.0150, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %len.addr.0.lcssa = phi i32 [ %len, %do.end.for.end_crit_edge ], [ %sub62, %for.inc.for.end_crit_edge ]
  %sub67 = sub i32 %len, %len.addr.0.lcssa
  br label %cleanup68

cleanup68:                                        ; preds = %for.end, %if.then57, %do.body43, %lor.lhs.false.cleanup68_crit_edge, %land.lhs.true.cleanup68_crit_edge, %if.then27, %do.body13, %if.end6.cleanup68_crit_edge, %for.body.cleanup68_crit_edge
  %retval.2 = phi i32 [ %sub67, %for.end ], [ %retval.0.i102123, %if.then57 ], [ -22, %if.then27 ], [ -22, %do.body13 ], [ %retval.0.i102123, %do.body43 ], [ -22, %for.body.cleanup68_crit_edge ], [ -22, %if.end6.cleanup68_crit_edge ], [ -22, %lor.lhs.false.cleanup68_crit_edge ], [ -22, %land.lhs.true.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ffs_data_do_os_desc(i32 noundef %type, ptr nocapture noundef readonly %h, ptr nocapture noundef %data, i32 noundef %len, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_os_desc, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.85) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %type, label %do.body149 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp = icmp ult i32 %len, 24
  br i1 %cmp, label %sw.bb.cleanup168_crit_edge, label %lor.lhs.false

sw.bb.cleanup168_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

lor.lhs.false:                                    ; preds = %sw.bb
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %interfaces_count = getelementptr inbounds %struct.ffs_data, ptr %priv, i32 0, i32 31
  %3 = ptrtoint ptr %interfaces_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %interfaces_count, align 2
  %5 = zext i8 %2 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %5)
  %cmp5.not = icmp ugt i16 %4, %5
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.cleanup168_crit_edge

lor.lhs.false.cleanup168_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

if.end8:                                          ; preds = %lor.lhs.false
  %Reserved1 = getelementptr inbounds %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %Reserved1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %Reserved1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp10.not = icmp eq i8 %7, 1
  br i1 %cmp10.not, label %if.end8.if.end32_crit_edge, label %do.body13

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

do.body13:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_os_desc, %do.end30)) #15
          to label %if.then27 [label %do.end30], !srcloc !480

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.86) #15
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body13
  %8 = ptrtoint ptr %Reserved1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %Reserved1, align 1
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end8.if.end32_crit_edge
  %arrayidx = getelementptr %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool35.not = icmp eq i8 %10, 0
  br i1 %tobool35.not, label %for.cond, label %if.end32.cleanup168_crit_edge

if.end32.cleanup168_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

for.cond:                                         ; preds = %if.end32
  %arrayidx.1 = getelementptr %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool35.not.1 = icmp eq i8 %12, 0
  br i1 %tobool35.not.1, label %for.cond.1, label %for.cond.cleanup168_crit_edge

for.cond.cleanup168_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool35.not.2 = icmp eq i8 %14, 0
  br i1 %tobool35.not.2, label %for.cond.2, label %for.cond.1.cleanup168_crit_edge

for.cond.1.cleanup168_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool35.not.3 = icmp eq i8 %16, 0
  br i1 %tobool35.not.3, label %for.cond.3, label %for.cond.2.cleanup168_crit_edge

for.cond.2.cleanup168_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool35.not.4 = icmp eq i8 %18, 0
  br i1 %tobool35.not.4, label %for.cond.4, label %for.cond.3.cleanup168_crit_edge

for.cond.3.cleanup168_crit_edge:                  ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.5 = getelementptr %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 4, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool35.not.5 = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool35.not.5, i32 24, i32 -22
  br label %cleanup168

sw.bb39:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len)
  %cmp42 = icmp ult i32 %len, 10
  br i1 %cmp42, label %sw.bb39.cleanup168_crit_edge, label %lor.lhs.false44

sw.bb39.cleanup168_crit_edge:                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

lor.lhs.false44:                                  ; preds = %sw.bb39
  %21 = ptrtoint ptr %h to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %h, align 1
  %interfaces_count46 = getelementptr inbounds %struct.ffs_data, ptr %priv, i32 0, i32 31
  %23 = ptrtoint ptr %interfaces_count46 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %interfaces_count46, align 2
  %25 = zext i8 %22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %25)
  %cmp48.not = icmp ugt i16 %24, %25
  br i1 %cmp48.not, label %if.end51, label %lor.lhs.false44.cleanup168_crit_edge

lor.lhs.false44.cleanup168_crit_edge:             ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

if.end51:                                         ; preds = %lor.lhs.false44
  %26 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %data, align 1
  %28 = lshr i32 %27, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %len)
  %cmp54 = icmp ugt i32 %28, %len
  br i1 %cmp54, label %if.end51.cleanup168_crit_edge, label %if.end57

if.end51.cleanup168_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup168

if.end57:                                         ; preds = %if.end51
  %dwPropertyDataType = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %dwPropertyDataType to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %dwPropertyDataType, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp58 = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %cmp61 = icmp ugt i32 %31, 7
  %or.cond = select i1 %cmp58, i1 true, i1 %cmp61
  br i1 %or.cond, label %do.body64, label %if.end82

do.body64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_os_desc, %cleanup168)) #15
          to label %if.then78 [label %cleanup168], !srcloc !480

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.87, i32 noundef %31) #15
  br label %cleanup168

if.end82:                                         ; preds = %if.end57
  %wPropertyNameLength = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %wPropertyNameLength to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wPropertyNameLength, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv84 = zext i16 %34 to i32
  %add = add nuw nsw i32 %conv84, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add)
  %cmp85 = icmp ult i32 %28, %add
  br i1 %cmp85, label %do.body88, label %if.end108

do.body88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_os_desc, %cleanup168)) #15
          to label %if.then102 [label %cleanup168], !srcloc !480

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.88, i32 noundef %28, i32 noundef %conv84, i32 noundef %31) #15
  br label %cleanup168

if.end108:                                        ; preds = %if.end82
  %add.ptr = getelementptr i8, ptr %data, i32 10
  %add.ptr110 = getelementptr i8, ptr %add.ptr, i32 %conv84
  %35 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr110, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %add114 = add i32 %37, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add114)
  %cmp115.not = icmp eq i32 %28, %add114
  br i1 %cmp115.not, label %cleanup143, label %do.body118

do.body118:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_os_desc, %cleanup168)) #15
          to label %if.then132 [label %cleanup168], !srcloc !480

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.89, i32 noundef %28, i32 noundef %conv84, i32 noundef %37, i32 noundef %31) #15
  br label %cleanup168

cleanup143:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %ms_os_descs_ext_prop_count = getelementptr inbounds %struct.ffs_data, ptr %priv, i32 0, i32 22
  %38 = ptrtoint ptr %ms_os_descs_ext_prop_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ms_os_descs_ext_prop_count, align 4
  %inc139 = add i32 %39, 1
  store i32 %inc139, ptr %ms_os_descs_ext_prop_count, align 4
  %mul = shl nuw nsw i32 %conv84, 1
  %ms_os_descs_ext_prop_name_len = getelementptr inbounds %struct.ffs_data, ptr %priv, i32 0, i32 23
  %40 = ptrtoint ptr %ms_os_descs_ext_prop_name_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ms_os_descs_ext_prop_name_len, align 4
  %add141 = add i32 %41, %mul
  store i32 %add141, ptr %ms_os_descs_ext_prop_name_len, align 4
  %ms_os_descs_ext_prop_data_len = getelementptr inbounds %struct.ffs_data, ptr %priv, i32 0, i32 24
  %42 = ptrtoint ptr %ms_os_descs_ext_prop_data_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ms_os_descs_ext_prop_data_len, align 4
  %add142 = add i32 %43, %37
  store i32 %add142, ptr %ms_os_descs_ext_prop_data_len, align 4
  br label %cleanup168

do.body149:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_data_do_os_desc, %cleanup168)) #15
          to label %if.then163 [label %cleanup168], !srcloc !480

if.then163:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.75, i32 noundef %type) #15
  br label %cleanup168

cleanup168:                                       ; preds = %if.then163, %do.body149, %cleanup143, %if.then132, %do.body118, %if.then102, %do.body88, %if.then78, %do.body64, %if.end51.cleanup168_crit_edge, %lor.lhs.false44.cleanup168_crit_edge, %sw.bb39.cleanup168_crit_edge, %for.cond.4, %for.cond.3.cleanup168_crit_edge, %for.cond.2.cleanup168_crit_edge, %for.cond.1.cleanup168_crit_edge, %for.cond.cleanup168_crit_edge, %if.end32.cleanup168_crit_edge, %lor.lhs.false.cleanup168_crit_edge, %sw.bb.cleanup168_crit_edge
  %retval.2 = phi i32 [ -22, %if.then163 ], [ -22, %lor.lhs.false.cleanup168_crit_edge ], [ -22, %sw.bb.cleanup168_crit_edge ], [ -22, %lor.lhs.false44.cleanup168_crit_edge ], [ -22, %sw.bb39.cleanup168_crit_edge ], [ -22, %if.end51.cleanup168_crit_edge ], [ -22, %if.then78 ], [ -22, %if.then102 ], [ -22, %if.then132 ], [ -22, %do.body64 ], [ -22, %do.body88 ], [ -22, %do.body118 ], [ -22, %do.body149 ], [ %28, %cleanup143 ], [ -22, %if.end32.cleanup168_crit_edge ], [ -22, %for.cond.cleanup168_crit_edge ], [ -22, %for.cond.1.cleanup168_crit_edge ], [ -22, %for.cond.2.cleanup168_crit_edge ], [ -22, %for.cond.3.cleanup168_crit_edge ], [ %spec.select, %for.cond.4 ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_do_single_desc(ptr noundef %data, i32 noundef %len, ptr nocapture noundef readonly %entity, ptr noundef %priv, ptr nocapture noundef %current_class) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.56) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp ult i32 %len, 2
  br i1 %cmp, label %do.body5, label %if.end23

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then19 [label %cleanup586], !srcloc !480

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.57) #15
  br label %cleanup586

if.end23:                                         ; preds = %do.end
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp24 = icmp ugt i32 %conv, %len
  br i1 %cmp24, label %do.body27, label %if.end45

do.body27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then41 [label %cleanup586], !srcloc !480

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.58) #15
  br label %cleanup586

if.end45:                                         ; preds = %if.end23
  %bDescriptorType = getelementptr inbounds %struct.usb_descriptor_header, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDescriptorType, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %3, label %do.body543 [
    i8 1, label %if.end45.do.body47_crit_edge
    i8 2, label %if.end45.do.body47_crit_edge763
    i8 3, label %if.end45.do.body47_crit_edge764
    i8 6, label %if.end45.do.body47_crit_edge765
    i8 4, label %sw.bb67
    i8 5, label %sw.bb214
    i8 33, label %sw.bb316
    i8 9, label %sw.bb390
    i8 11, label %sw.bb396
    i8 48, label %do.body499
    i8 7, label %if.end45.do.body523_crit_edge
    i8 8, label %if.end45.do.body523_crit_edge766
    i8 10, label %if.end45.do.body523_crit_edge767
    i8 12, label %if.end45.do.body523_crit_edge768
    i8 35, label %if.end45.do.body523_crit_edge769
  ]

if.end45.do.body523_crit_edge769:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body523

if.end45.do.body523_crit_edge768:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body523

if.end45.do.body523_crit_edge767:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body523

if.end45.do.body523_crit_edge766:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body523

if.end45.do.body523_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body523

if.end45.do.body47_crit_edge765:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body47

if.end45.do.body47_crit_edge764:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body47

if.end45.do.body47_crit_edge763:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body47

if.end45.do.body47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body47

do.body47:                                        ; preds = %if.end45.do.body47_crit_edge, %if.end45.do.body47_crit_edge763, %if.end45.do.body47_crit_edge764, %if.end45.do.body47_crit_edge765
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then61 [label %cleanup586], !srcloc !480

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bDescriptorType, align 1
  %conv63 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.59, i32 noundef %conv63) #15
  br label %cleanup586

sw.bb67:                                          ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end85)) #15
          to label %if.then82 [label %do.end85], !srcloc !480

if.then82:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.60) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %sw.bb67
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp87.not = icmp eq i8 %1, 9
  br i1 %cmp87.not, label %do.body92, label %do.end85.do.body563_crit_edge

do.end85.do.body563_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

do.body92:                                        ; preds = %do.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end110)) #15
          to label %if.then106 [label %do.end110], !srcloc !480

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #17
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 1
  %conv107 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.61, i32 noundef %conv107) #15
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %do.body92
  %bInterfaceNumber111 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %data, i32 0, i32 2
  %call112 = tail call i32 %entity(i32 noundef 1, ptr noundef %bInterfaceNumber111, ptr noundef %data, ptr noundef %priv) #15, !callees !495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.body116, label %do.end138

do.body116:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then130 [label %cleanup586], !srcloc !480

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %bInterfaceNumber111 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceNumber111, align 1
  %conv132 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.62, i32 noundef %conv132, i32 noundef %call112) #15
  br label %cleanup586

do.end138:                                        ; preds = %do.end110
  %iInterface = getelementptr inbounds %struct.usb_interface_descriptor, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %iInterface to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iInterface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool139.not = icmp eq i8 %12, 0
  br i1 %tobool139.not, label %do.end138.cleanup.thread734_crit_edge, label %do.body142

do.end138.cleanup.thread734_crit_edge:            ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread734

do.body142:                                       ; preds = %do.end138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end161)) #15
          to label %if.then156 [label %do.end161], !srcloc !480

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %iInterface to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %iInterface, align 1
  %conv158 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.63, i32 noundef %conv158) #15
  br label %do.end161

do.end161:                                        ; preds = %if.then156, %do.body142
  %15 = ptrtoint ptr %iInterface to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iInterface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool163.not = icmp eq i8 %16, 0
  br i1 %tobool163.not, label %do.body165, label %if.end183

do.body165:                                       ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then179 [label %cleanup586], !srcloc !480

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.64) #15
  br label %cleanup586

if.end183:                                        ; preds = %do.end161
  %call185 = tail call i32 %entity(i32 noundef 2, ptr noundef %iInterface, ptr noundef %data, ptr noundef %priv) #15, !callees !495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %do.body189, label %if.end183.cleanup.thread734_crit_edge

if.end183.cleanup.thread734_crit_edge:            ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread734

do.body189:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then203 [label %cleanup586], !srcloc !480

if.then203:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %iInterface to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iInterface, align 1
  %conv205 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.65, i32 noundef %conv205, i32 noundef %call185) #15
  br label %cleanup586

cleanup.thread734:                                ; preds = %if.end183.cleanup.thread734_crit_edge, %do.end138.cleanup.thread734_crit_edge
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterfaceClass, align 1
  %conv213 = zext i8 %20 to i32
  %21 = ptrtoint ptr %current_class to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv213, ptr %current_class, align 4
  br label %cleanup586

sw.bb214:                                         ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end233)) #15
          to label %if.then230 [label %do.end233], !srcloc !480

if.then230:                                       ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.66) #15
  br label %do.end233

do.end233:                                        ; preds = %if.then230, %sw.bb214
  %22 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %1, label %do.end233.do.body563_crit_edge [
    i8 7, label %do.end233.do.body243_crit_edge
    i8 9, label %do.end233.do.body243_crit_edge770
  ]

do.end233.do.body243_crit_edge770:                ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body243

do.end233.do.body243_crit_edge:                   ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body243

do.end233.do.body563_crit_edge:                   ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

do.body243:                                       ; preds = %do.end233.do.body243_crit_edge, %do.end233.do.body243_crit_edge770
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end261)) #15
          to label %if.then257 [label %do.end261], !srcloc !480

if.then257:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #17
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress, align 1
  %conv258 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.67, i32 noundef %conv258) #15
  br label %do.end261

do.end261:                                        ; preds = %if.then257, %do.body243
  %bEndpointAddress262 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %bEndpointAddress262 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bEndpointAddress262, align 1
  %27 = and i8 %26, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool264.not = icmp eq i8 %27, 0
  br i1 %tobool264.not, label %do.body266, label %if.end284

do.body266:                                       ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then280 [label %cleanup586], !srcloc !480

if.then280:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.64) #15
  br label %cleanup586

if.end284:                                        ; preds = %do.end261
  %call286 = tail call i32 %entity(i32 noundef 3, ptr noundef %bEndpointAddress262, ptr noundef %data, ptr noundef %priv) #15, !callees !495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %cmp287 = icmp slt i32 %call286, 0
  br i1 %cmp287, label %do.body290, label %if.end284.cleanup586_crit_edge

if.end284.cleanup586_crit_edge:                   ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

do.body290:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then304 [label %cleanup586], !srcloc !480

if.then304:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %bEndpointAddress262 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress262, align 1
  %conv306 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.68, i32 noundef %conv306, i32 noundef %call286) #15
  br label %cleanup586

sw.bb316:                                         ; preds = %if.end45
  %30 = ptrtoint ptr %current_class to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %current_class, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %31, label %do.body370 [
    i32 3, label %do.body320
    i32 11, label %do.body346
  ]

do.body320:                                       ; preds = %sw.bb316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end337)) #15
          to label %if.then334 [label %do.end337], !srcloc !480

if.then334:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.69) #15
  br label %do.end337

do.end337:                                        ; preds = %if.then334, %do.body320
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp339.not = icmp eq i8 %1, 9
  br i1 %cmp339.not, label %do.end337.cleanup586_crit_edge, label %do.end337.do.body563_crit_edge

do.end337.do.body563_crit_edge:                   ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

do.end337.cleanup586_crit_edge:                   ; preds = %do.end337
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

do.body346:                                       ; preds = %sw.bb316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end363)) #15
          to label %if.then360 [label %do.end363], !srcloc !480

if.then360:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.70) #15
  br label %do.end363

do.end363:                                        ; preds = %if.then360, %do.body346
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %1)
  %cmp365.not = icmp eq i8 %1, 54
  br i1 %cmp365.not, label %do.end363.cleanup586_crit_edge, label %do.end363.do.body563_crit_edge

do.end363.do.body563_crit_edge:                   ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

do.end363.cleanup586_crit_edge:                   ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

do.body370:                                       ; preds = %sw.bb316
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then384 [label %cleanup586], !srcloc !480

if.then384:                                       ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bDescriptorType, align 1
  %conv386 = zext i8 %34 to i32
  %35 = ptrtoint ptr %current_class to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %current_class, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.71, i32 noundef %conv386, i32 noundef %36) #15
  br label %cleanup586

sw.bb390:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp392.not = icmp eq i8 %1, 3
  br i1 %cmp392.not, label %sw.bb390.cleanup586_crit_edge, label %sw.bb390.do.body563_crit_edge

sw.bb390.do.body563_crit_edge:                    ; preds = %sw.bb390
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

sw.bb390.cleanup586_crit_edge:                    ; preds = %sw.bb390
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

sw.bb396:                                         ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end415)) #15
          to label %if.then412 [label %do.end415], !srcloc !480

if.then412:                                       ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.72) #15
  br label %do.end415

do.end415:                                        ; preds = %if.then412, %sw.bb396
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp417.not = icmp eq i8 %1, 8
  br i1 %cmp417.not, label %if.end420, label %do.end415.do.body563_crit_edge

do.end415.do.body563_crit_edge:                   ; preds = %do.end415
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

if.end420:                                        ; preds = %do.end415
  %iFunction = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %data, i32 0, i32 7
  %37 = ptrtoint ptr %iFunction to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iFunction, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool421.not = icmp eq i8 %38, 0
  br i1 %tobool421.not, label %if.end420.cleanup586_crit_edge, label %do.body424

if.end420.cleanup586_crit_edge:                   ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

do.body424:                                       ; preds = %if.end420
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end443)) #15
          to label %if.then438 [label %do.end443], !srcloc !480

if.then438:                                       ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %iFunction to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iFunction, align 1
  %conv440 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.63, i32 noundef %conv440) #15
  br label %do.end443

do.end443:                                        ; preds = %if.then438, %do.body424
  %41 = ptrtoint ptr %iFunction to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iFunction, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool445.not = icmp eq i8 %42, 0
  br i1 %tobool445.not, label %do.body447, label %if.end465

do.body447:                                       ; preds = %do.end443
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then461 [label %cleanup586], !srcloc !480

if.then461:                                       ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.64) #15
  br label %cleanup586

if.end465:                                        ; preds = %do.end443
  %call467 = tail call i32 %entity(i32 noundef 2, ptr noundef %iFunction, ptr noundef %data, ptr noundef %priv) #15, !callees !495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call467)
  %cmp468 = icmp slt i32 %call467, 0
  br i1 %cmp468, label %do.body471, label %if.end465.cleanup586_crit_edge

if.end465.cleanup586_crit_edge:                   ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

do.body471:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then485 [label %cleanup586], !srcloc !480

if.then485:                                       ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %iFunction to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iFunction, align 1
  %conv487 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.65, i32 noundef %conv487, i32 noundef %call467) #15
  br label %cleanup586

do.body499:                                       ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %do.end516)) #15
          to label %if.then513 [label %do.end516], !srcloc !480

if.then513:                                       ; preds = %do.body499
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.73) #15
  br label %do.end516

do.end516:                                        ; preds = %if.then513, %do.body499
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp518.not = icmp eq i8 %1, 6
  br i1 %cmp518.not, label %do.end516.cleanup586_crit_edge, label %do.end516.do.body563_crit_edge

do.end516.do.body563_crit_edge:                   ; preds = %do.end516
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body563

do.end516.cleanup586_crit_edge:                   ; preds = %do.end516
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup586

do.body523:                                       ; preds = %if.end45.do.body523_crit_edge, %if.end45.do.body523_crit_edge766, %if.end45.do.body523_crit_edge767, %if.end45.do.body523_crit_edge768, %if.end45.do.body523_crit_edge769
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then537 [label %cleanup586], !srcloc !480

if.then537:                                       ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bDescriptorType, align 1
  %conv539 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.74, i32 noundef %conv539) #15
  br label %cleanup586

do.body543:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then557 [label %cleanup586], !srcloc !480

if.then557:                                       ; preds = %do.body543
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bDescriptorType, align 1
  %conv559 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.75, i32 noundef %conv559) #15
  br label %cleanup586

do.body563:                                       ; preds = %do.end516.do.body563_crit_edge, %do.end415.do.body563_crit_edge, %sw.bb390.do.body563_crit_edge, %do.end363.do.body563_crit_edge, %do.end337.do.body563_crit_edge, %do.end233.do.body563_crit_edge, %do.end85.do.body563_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_do_single_desc, %cleanup586)) #15
          to label %if.then577 [label %cleanup586], !srcloc !480

if.then577:                                       ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data, align 1
  %conv579 = zext i8 %50 to i32
  %51 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bDescriptorType, align 1
  %conv581 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_single_desc.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.76, i32 noundef %conv579, i32 noundef %conv581) #15
  br label %cleanup586

cleanup586:                                       ; preds = %if.then577, %do.body563, %if.then557, %do.body543, %if.then537, %do.body523, %do.end516.cleanup586_crit_edge, %if.then485, %do.body471, %if.end465.cleanup586_crit_edge, %if.then461, %do.body447, %if.end420.cleanup586_crit_edge, %sw.bb390.cleanup586_crit_edge, %if.then384, %do.body370, %do.end363.cleanup586_crit_edge, %do.end337.cleanup586_crit_edge, %if.then304, %do.body290, %if.end284.cleanup586_crit_edge, %if.then280, %do.body266, %cleanup.thread734, %if.then203, %do.body189, %if.then179, %do.body165, %if.then130, %do.body116, %if.then61, %do.body47, %if.then41, %do.body27, %if.then19, %do.body5
  %retval.3 = phi i32 [ -22, %if.then19 ], [ -22, %if.then41 ], [ -22, %if.then61 ], [ -22, %if.then384 ], [ -22, %if.then537 ], [ -22, %if.then557 ], [ -22, %if.then577 ], [ 9, %cleanup.thread734 ], [ 6, %do.end516.cleanup586_crit_edge ], [ 3, %sw.bb390.cleanup586_crit_edge ], [ 54, %do.end363.cleanup586_crit_edge ], [ 9, %do.end337.cleanup586_crit_edge ], [ -22, %do.body5 ], [ -22, %do.body27 ], [ -22, %do.body47 ], [ %call185, %if.then203 ], [ -22, %if.then179 ], [ %call112, %if.then130 ], [ %call112, %do.body116 ], [ -22, %do.body165 ], [ %call185, %do.body189 ], [ %conv, %if.end284.cleanup586_crit_edge ], [ %call286, %if.then304 ], [ -22, %if.then280 ], [ -22, %do.body266 ], [ %call286, %do.body290 ], [ -22, %do.body370 ], [ %call467, %if.then485 ], [ -22, %if.then461 ], [ -22, %do.body447 ], [ %call467, %do.body471 ], [ 8, %if.end465.cleanup586_crit_edge ], [ 8, %if.end420.cleanup586_crit_edge ], [ -22, %do.body523 ], [ -22, %do.body543 ], [ -22, %do.body563 ]
  ret i32 %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_epfile_read_iter(ptr noundef %kiocb, ptr noundef %to) #0 align 64 {
entry:
  %io_data = alloca %struct.ffs_io_data, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %io_data.sroa.gep88 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 6
  %io_data.sroa.gep78 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 2
  %io_data.sroa.gep = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %io_data) #15
  %0 = call ptr @memset(ptr %io_data, i32 255, i32 120)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_read_iter.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_read_iter, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_read_iter.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.95) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %kiocb, i32 0, i32 2
  %1 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.else21, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 120) #19
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then15

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %if.then5
  %call7.i.i.sroa.gep87 = getelementptr inbounds %struct.ffs_io_data, ptr %call7.i.i, i32 0, i32 6
  %call7.i.i.sroa.gep = getelementptr inbounds %struct.ffs_io_data, ptr %call7.i.i, i32 0, i32 1
  %call7.i.i.sroa.gep79 = getelementptr inbounds %struct.ffs_io_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %call7.i.i.sroa.gep to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call7.i.i.sroa.gep, align 1
  %6 = ptrtoint ptr %call7.i.i.sroa.gep79 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %kiocb, ptr %call7.i.i.sroa.gep79, align 4
  %data = getelementptr inbounds %struct.ffs_io_data, ptr %call7.i.i, i32 0, i32 3
  %call16 = tail call ptr @dup_iter(ptr noundef %data, ptr noundef %to, i32 noundef 3264) #15
  %to_free = getelementptr inbounds %struct.ffs_io_data, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %to_free, align 8
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.then19, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.else21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = call ptr @memset(ptr %io_data, i32 0, i32 120)
  %9 = ptrtoint ptr %io_data.sroa.gep to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %io_data.sroa.gep, align 1
  %10 = ptrtoint ptr %io_data.sroa.gep78 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %kiocb, ptr %io_data.sroa.gep78, align 4
  %data22 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %data22, ptr %to, i32 24)
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then15.if.end24_crit_edge
  %p.0.sroa.phi7485 = phi ptr [ %call7.i.i, %if.then15.if.end24_crit_edge ], [ %io_data, %if.else21 ]
  %p.0.sroa.phi7485.sroa.phi = phi ptr [ %call7.i.i.sroa.gep87, %if.then15.if.end24_crit_edge ], [ %io_data.sroa.gep88, %if.else21 ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !470) #15
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm, align 8
  %18 = ptrtoint ptr %p.0.sroa.phi7485.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %p.0.sroa.phi7485.sroa.phi, align 8
  %private = getelementptr inbounds %struct.kiocb, ptr %kiocb, i32 0, i32 3
  %19 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %p.0.sroa.phi7485, ptr %private, align 4
  %20 = ptrtoint ptr %p.0.sroa.phi7485 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p.0.sroa.phi7485, align 8, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool28.not = icmp eq i8 %21, 0
  br i1 %tobool28.not, label %if.end24.if.end30_crit_edge, label %if.then29

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  call void @kiocb_set_cancel_fn(ptr noundef %kiocb, ptr noundef nonnull @ffs_aio_cancel) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24.if.end30_crit_edge
  %22 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kiocb, align 8
  %call31 = call fastcc i32 @ffs_epfile_io(ptr noundef %23, ptr noundef nonnull %p.0.sroa.phi7485)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call31)
  %cmp = icmp eq i32 %call31, -529
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %24 = ptrtoint ptr %p.0.sroa.phi7485 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p.0.sroa.phi7485, align 8, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool35.not = icmp eq i8 %25, 0
  br i1 %tobool35.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %to_free37 = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi7485, i32 0, i32 4
  %26 = ptrtoint ptr %to_free37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %to_free37, align 8
  call void @kfree(ptr noundef %27) #15
  call void @kfree(ptr noundef nonnull %p.0.sroa.phi7485) #15
  br label %cleanup

if.else38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %data39 = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi7485, i32 0, i32 3
  %28 = call ptr @memcpy(ptr %to, ptr %data39, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then36, %if.end30.cleanup_crit_edge, %if.then19, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ -12, %if.then5.cleanup_crit_edge ], [ -529, %if.end30.cleanup_crit_edge ], [ %call31, %if.else38 ], [ %call31, %if.then36 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %io_data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_epfile_write_iter(ptr noundef %kiocb, ptr nocapture noundef %from) #0 align 64 {
entry:
  %io_data = alloca %struct.ffs_io_data, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %io_data) #15
  %0 = call ptr @memset(ptr %io_data, i32 255, i32 120)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_write_iter.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_write_iter, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_write_iter.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.105) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %kiocb, i32 0, i32 2
  %1 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 120) #19
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call7.i.i, align 8
  br label %if.end11

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = call ptr @memset(ptr %io_data, i32 0, i32 120)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end9
  %p.0.sroa.phi59 = phi ptr [ %io_data, %if.else ], [ %call7.i.i, %if.end9 ]
  %p.0.sroa.phi59.sroa.phi78 = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi59, i32 0, i32 6
  %p.0.sroa.phi59.sroa.phi75 = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi59, i32 0, i32 3
  %p.0.sroa.phi59.sroa.phi = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi59, i32 0, i32 2
  %p.0.sroa.phi59.sroa.phi72 = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi59, i32 0, i32 1
  %6 = ptrtoint ptr %p.0.sroa.phi59.sroa.phi72 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %p.0.sroa.phi59.sroa.phi72, align 1
  %7 = ptrtoint ptr %p.0.sroa.phi59.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %kiocb, ptr %p.0.sroa.phi59.sroa.phi, align 4
  %8 = call ptr @memcpy(ptr %p.0.sroa.phi59.sroa.phi75, ptr %from, i32 24)
  %9 = tail call i32 @llvm.read_register.i32(metadata !470) #15
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mm, align 8
  %15 = ptrtoint ptr %p.0.sroa.phi59.sroa.phi78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %p.0.sroa.phi59.sroa.phi78, align 8
  %private = getelementptr inbounds %struct.kiocb, ptr %kiocb, i32 0, i32 3
  %16 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p.0.sroa.phi59, ptr %private, align 4
  %17 = ptrtoint ptr %p.0.sroa.phi59 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p.0.sroa.phi59, align 8, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br i1 %tobool16.not, label %if.end11.if.end18_crit_edge, label %if.then17

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  call void @kiocb_set_cancel_fn(ptr noundef %kiocb, ptr noundef nonnull @ffs_aio_cancel) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end11.if.end18_crit_edge
  %19 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kiocb, align 8
  %call19 = call fastcc i32 @ffs_epfile_io(ptr noundef %20, ptr noundef nonnull %p.0.sroa.phi59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call19)
  %cmp = icmp eq i32 %call19, -529
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %21 = ptrtoint ptr %p.0.sroa.phi59 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p.0.sroa.phi59, align 8, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %p.0.sroa.phi59) #15
  br label %cleanup

if.else25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %data26 = getelementptr inbounds %struct.ffs_io_data, ptr %p.0.sroa.phi59, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %from, ptr %data26, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.then24, %if.end18.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5.cleanup_crit_edge ], [ -529, %if.end18.cleanup_crit_edge ], [ %call19, %if.else25 ], [ %call19, %if.then24 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %io_data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_epfile_ioctl(ptr nocapture noundef readonly %file, i32 noundef %code, i32 noundef %value) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %desc1 = alloca %struct.usb_endpoint_descriptor, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_ioctl.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_ioctl, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_ioctl.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.106) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ffs = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs, align 4
  %state = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end35, label %do.end19, !prof !484

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1289, i32 noundef 9, ptr noundef null) #15
  br label %cleanup110

if.end35:                                         ; preds = %do.end
  %ep36 = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ep36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep36, align 4
  %tobool37.not = icmp eq ptr %7, null
  br i1 %tobool37.not, label %if.then38, label %if.end35.if.end69_crit_edge

if.end35.if.end69_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then38:                                        ; preds = %if.end35
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end41, label %if.then38.cleanup110_crit_edge

if.then38.cleanup110_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup110

if.end41:                                         ; preds = %if.then38
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1299) #15
  %10 = ptrtoint ptr %ep36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep36, align 4
  %tobool49.not = icmp eq ptr %11, null
  br i1 %tobool49.not, label %if.then50, label %if.end41.if.end69_crit_edge

if.end41.if.end69_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then50:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %13 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ffs, align 4
  %wait154 = getelementptr inbounds %struct.ffs_data, ptr %14, i32 0, i32 11
  %call53155 = call i32 @prepare_to_wait_event(ptr noundef %wait154, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %15 = ptrtoint ptr %ep36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep36, align 4
  %tobool55.not156 = icmp eq ptr %16, null
  br i1 %tobool55.not156, label %if.then50.if.end57_crit_edge, label %if.then50.if.end64.thread150_crit_edge

if.then50.if.end64.thread150_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64.thread150

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  br label %if.end57

if.end57:                                         ; preds = %cleanup.if.end57_crit_edge, %if.then50.if.end57_crit_edge
  %call53157 = phi i32 [ %call53, %cleanup.if.end57_crit_edge ], [ %call53155, %if.then50.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53157)
  %tobool58.not = icmp eq i32 %call53157, 0
  br i1 %tobool58.not, label %cleanup, label %if.end64

cleanup:                                          ; preds = %if.end57
  call void @schedule() #15
  %17 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ffs, align 4
  %wait = getelementptr inbounds %struct.ffs_data, ptr %18, i32 0, i32 11
  %call53 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %19 = ptrtoint ptr %ep36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep36, align 4
  %tobool55.not = icmp eq ptr %20, null
  br i1 %tobool55.not, label %cleanup.if.end57_crit_edge, label %cleanup.if.end64.thread150_crit_edge

cleanup.if.end64.thread150_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64.thread150

cleanup.if.end57_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.end64.thread150:                               ; preds = %cleanup.if.end64.thread150_crit_edge, %if.then50.if.end64.thread150_crit_edge
  %.lcssa = phi ptr [ %16, %if.then50.if.end64.thread150_crit_edge ], [ %20, %cleanup.if.end64.thread150_crit_edge ]
  %21 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ffs, align 4
  %wait62 = getelementptr inbounds %struct.ffs_data, ptr %22, i32 0, i32 11
  call void @finish_wait(ptr noundef %wait62, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end69

if.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %cleanup110

if.end69:                                         ; preds = %if.end64.thread150, %if.end41.if.end69_crit_edge, %if.end35.if.end69_crit_edge
  %ep.1 = phi ptr [ %7, %if.end35.if.end69_crit_edge ], [ %.lcssa, %if.end64.thread150 ], [ %11, %if.end41.if.end69_crit_edge ]
  %23 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ffs, align 4
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %eps_lock) #15
  %25 = ptrtoint ptr %ep36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep36, align 4
  %cmp72.not = icmp eq ptr %26, %ep.1
  br i1 %cmp72.not, label %if.end76, label %if.then73

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ffs, align 4
  %eps_lock75 = getelementptr inbounds %struct.ffs_data, ptr %28, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %eps_lock75) #15
  br label %cleanup110

if.end76:                                         ; preds = %if.end69
  %29 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %code, label %if.end76.sw.epilog107_crit_edge [
    i32 26369, label %sw.bb
    i32 26370, label %sw.bb80
    i32 26371, label %sw.bb83
    i32 26497, label %sw.bb87
    i32 -2146867326, label %sw.bb89
  ]

if.end76.sw.epilog107_crit_edge:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog107

sw.bb:                                            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep.1, align 4
  %call79 = call i32 @usb_ep_fifo_status(ptr noundef %31) #15
  br label %sw.epilog107

sw.bb80:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep.1, align 4
  call void @usb_ep_fifo_flush(ptr noundef %33) #15
  br label %sw.epilog107

sw.bb83:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep.1, align 4
  %call86 = call i32 @usb_ep_clear_halt(ptr noundef %35) #15
  br label %sw.epilog107

sw.bb87:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %num = getelementptr inbounds %struct.ffs_ep, ptr %ep.1, i32 0, i32 3
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num, align 4
  %conv = zext i8 %37 to i32
  br label %sw.epilog107

sw.bb89:                                          ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %desc1) #15
  %38 = call ptr @memset(ptr %desc1, i32 255, i32 9)
  %39 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ffs, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed, align 8
  %switch.tableidx = add i32 %44, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 4
  br i1 %45, label %switch.lookup, label %sw.bb89.sw.epilog_crit_edge

sw.bb89.sw.epilog_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ffs_epfile_ioctl, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb89.sw.epilog_crit_edge
  %desc_idx.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %sw.bb89.sw.epilog_crit_edge ]
  %arrayidx = getelementptr %struct.ffs_ep, ptr %ep.1, i32 0, i32 2, i32 %desc_idx.0
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv94 = zext i8 %50 to i32
  %51 = call ptr @memcpy(ptr %desc1, ptr %48, i32 %conv94)
  %52 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ffs, align 4
  %eps_lock96 = getelementptr inbounds %struct.ffs_data, ptr %53, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %eps_lock96) #15
  %54 = inttoptr i32 %value to ptr
  %55 = ptrtoint ptr %desc1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %desc1, align 1
  %conv98 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %56)
  %cmp1.i.i = icmp ugt i8 %56, 9
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !488

if.then3.i.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef 9, i32 noundef %conv98) #15
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__check_object_size(ptr noundef nonnull %desc1, i32 noundef %conv98, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %57 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 %conv98, i32 -1226833920) #23, !srcloc !493
  %asmresult.i.i = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %desc1, i32 noundef %conv98) #15
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %54, ptr noundef nonnull %desc1, i32 noundef %conv98) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv98, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv98, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool100.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool100.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then3.i.i
  %58 = phi i32 [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %desc1) #15
  br label %cleanup110

sw.epilog107:                                     ; preds = %sw.bb87, %sw.bb83, %sw.bb80, %sw.bb, %if.end76.sw.epilog107_crit_edge
  %ret.0 = phi i32 [ %conv, %sw.bb87 ], [ %call86, %sw.bb83 ], [ 0, %sw.bb80 ], [ %call79, %sw.bb ], [ -25, %if.end76.sw.epilog107_crit_edge ]
  %59 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ffs, align 4
  %eps_lock109 = getelementptr inbounds %struct.ffs_data, ptr %60, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %eps_lock109) #15
  br label %cleanup110

cleanup110:                                       ; preds = %sw.epilog107, %copy_to_user.exit.thread, %if.then73, %if.end64, %if.then38.cleanup110_crit_edge, %do.end19
  %retval.0 = phi i32 [ -19, %do.end19 ], [ -108, %if.then73 ], [ %ret.0, %sw.epilog107 ], [ %58, %copy_to_user.exit.thread ], [ -11, %if.then38.cleanup110_crit_edge ], [ -4, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_epfile_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_open.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_open, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_open.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.107) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ffs = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs, align 4
  %state = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end35, label %do.end19, !prof !484

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1151, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end35:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %private_data, align 4
  %7 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ffs, align 4
  tail call fastcc void @ffs_data_opened(ptr noundef %8)
  %call37 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end19
  %retval.0 = phi i32 [ -19, %do.end19 ], [ %call37, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_epfile_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_release.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_release, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_release.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.110) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %read_buffer.i = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_buffer.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @llvm.prefetch.p0(ptr %read_buffer.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -108, ptr %read_buffer.i) #15, !srcloc !498
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  %3 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !499
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  %cmp.not.i = icmp eq ptr %3, inttoptr (i32 -108 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %do.end.__ffs_epfile_read_buffer_free.exit_crit_edge, label %if.then.i

do.end.__ffs_epfile_read_buffer_free.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ffs_epfile_read_buffer_free.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %__ffs_epfile_read_buffer_free.exit

__ffs_epfile_read_buffer_free.exit:               ; preds = %if.then.i, %do.end.__ffs_epfile_read_buffer_free.exit_crit_edge
  %ffs = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ffs, align 4
  tail call fastcc void @ffs_data_closed(ptr noundef %5)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dup_iter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kiocb_set_cancel_fn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_aio_cancel(ptr nocapture noundef readonly %kiocb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.kiocb, ptr %kiocb, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kiocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_aio_cancel.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_aio_cancel, %do.body5)) #15
          to label %if.then [label %do.body5], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_aio_cancel.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.96) #15
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %ffs = getelementptr inbounds %struct.ffs_epfile, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ffs, align 4
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %7, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eps_lock) #15
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.body5.if.end21_crit_edge, label %land.lhs.true

do.body5.if.end21_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

land.lhs.true:                                    ; preds = %do.body5
  %ep = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true15

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

land.lhs.true15:                                  ; preds = %land.lhs.true
  %req = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %land.lhs.true15.if.end21_crit_edge, label %if.then17

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = tail call i32 @usb_ep_dequeue(ptr noundef nonnull %9, ptr noundef nonnull %11) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true15.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %do.body5.if.end21_crit_edge
  %value.0 = phi i32 [ %call20, %if.then17 ], [ -22, %land.lhs.true15.if.end21_crit_edge ], [ -22, %land.lhs.true.if.end21_crit_edge ], [ -22, %do.body5.if.end21_crit_edge ]
  %12 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ffs, align 4
  %eps_lock23 = getelementptr inbounds %struct.ffs_data, ptr %13, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eps_lock23, i32 noundef %call8) #15
  ret i32 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ffs_epfile_io(ptr nocapture noundef readonly %file, ptr noundef %io_data) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ffs = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs, align 4
  %state = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !484

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 951, i32 noundef 9, ptr noundef null) #15
  br label %cleanup267

if.end21:                                         ; preds = %entry
  %ep22 = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ep22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep22, align 4
  %tobool23.not = icmp eq ptr %7, null
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end54_crit_edge

if.end21.if.end54_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then24:                                        ; preds = %if.end21
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %if.then24.cleanup267_crit_edge

if.then24.cleanup267_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

if.end27:                                         ; preds = %if.then24
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 961) #15
  %10 = ptrtoint ptr %ep22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep22, align 4
  %tobool35.not = icmp eq ptr %11, null
  br i1 %tobool35.not, label %if.then36, label %if.end27.if.end54_crit_edge

if.end27.if.end54_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then36:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %13 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ffs, align 4
  %wait470 = getelementptr inbounds %struct.ffs_data, ptr %14, i32 0, i32 11
  %call471 = call i32 @prepare_to_wait_event(ptr noundef %wait470, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %15 = ptrtoint ptr %ep22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep22, align 4
  %tobool40.not472 = icmp eq ptr %16, null
  br i1 %tobool40.not472, label %if.then36.if.end42_crit_edge, label %if.then36.if.end49.thread433_crit_edge

if.then36.if.end49.thread433_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.thread433

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  br label %if.end42

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %if.then36.if.end42_crit_edge
  %call473 = phi i32 [ %call, %cleanup.if.end42_crit_edge ], [ %call471, %if.then36.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call473)
  %tobool43.not = icmp eq i32 %call473, 0
  br i1 %tobool43.not, label %cleanup, label %if.end49

cleanup:                                          ; preds = %if.end42
  call void @schedule() #15
  %17 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ffs, align 4
  %wait = getelementptr inbounds %struct.ffs_data, ptr %18, i32 0, i32 11
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %19 = ptrtoint ptr %ep22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep22, align 4
  %tobool40.not = icmp eq ptr %20, null
  br i1 %tobool40.not, label %cleanup.if.end42_crit_edge, label %cleanup.if.end49.thread433_crit_edge

cleanup.if.end49.thread433_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.thread433

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.end49.thread433:                               ; preds = %cleanup.if.end49.thread433_crit_edge, %if.then36.if.end49.thread433_crit_edge
  %.lcssa468 = phi ptr [ %16, %if.then36.if.end49.thread433_crit_edge ], [ %20, %cleanup.if.end49.thread433_crit_edge ]
  %21 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ffs, align 4
  %wait47 = getelementptr inbounds %struct.ffs_data, ptr %22, i32 0, i32 11
  call void @finish_wait(ptr noundef %wait47, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end54

if.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %cleanup267

if.end54:                                         ; preds = %if.end49.thread433, %if.end27.if.end54_crit_edge, %if.end21.if.end54_crit_edge
  %ep.1 = phi ptr [ %7, %if.end21.if.end54_crit_edge ], [ %.lcssa468, %if.end49.thread433 ], [ %11, %if.end27.if.end54_crit_edge ]
  %read = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 1
  %23 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %read, align 1, !range !481
  %25 = xor i8 %24, 1
  %in = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool58.not = icmp eq i8 %27, 0
  %28 = zext i1 %tobool58.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %28)
  %cmp61 = icmp eq i8 %25, %28
  br i1 %cmp61, label %land.lhs.true, label %if.end54.if.end66_crit_edge

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end54
  %isoc = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %isoc to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %isoc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool64.not = icmp eq i8 %30, 0
  br i1 %tobool64.not, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true.cleanup267_crit_edge

land.lhs.true.cleanup267_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end54.if.end66_crit_edge
  %f_flags67 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %31 = ptrtoint ptr %f_flags67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f_flags67, align 4
  %and68 = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool.not.i = icmp eq i32 %and68, 0
  br i1 %tobool.not.i, label %ffs_mutex_lock.exit, label %cond.true.i

cond.true.i:                                      ; preds = %if.end66
  %call.i = call i32 @mutex_trylock(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %cond.true.i.if.then265_crit_edge, label %cond.true.i.if.end72_crit_edge

cond.true.i.if.end72_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

cond.true.i.if.then265_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then265

ffs_mutex_lock.exit:                              ; preds = %if.end66
  %call2.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool70.not = icmp eq i32 %call2.i, 0
  br i1 %tobool70.not, label %ffs_mutex_lock.exit.if.end72_crit_edge, label %ffs_mutex_lock.exit.error_crit_edge

ffs_mutex_lock.exit.error_crit_edge:              ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %error

ffs_mutex_lock.exit.if.end72_crit_edge:           ; preds = %ffs_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.end72:                                         ; preds = %ffs_mutex_lock.exit.if.end72_crit_edge, %cond.true.i.if.end72_crit_edge
  br i1 %cmp61, label %if.end72.if.end122_crit_edge, label %if.then74

if.end72.if.end122_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.then74:                                        ; preds = %if.end72
  %33 = ptrtoint ptr %io_data to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %io_data, align 8, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool75.not = icmp eq i8 %34, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.then74.if.end86_crit_edge

if.then74.if.end86_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

land.lhs.true76:                                  ; preds = %if.then74
  %35 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %read, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool78.not = icmp eq i8 %36, 0
  br i1 %tobool78.not, label %land.lhs.true76.if.end86_crit_edge, label %if.then80

land.lhs.true76.if.end86_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then80:                                        ; preds = %land.lhs.true76
  %data81 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 3
  %read_buffer.i = getelementptr inbounds %struct.ffs_epfile, ptr %1, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %read_buffer.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !500
  call void @llvm.prefetch.p0(ptr %read_buffer.i, i32 1, i32 3, i32 1) #15
  %37 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %read_buffer.i) #15, !srcloc !498
  %asmresult.i.i = extractvalue { i32, i32 } %37, 0
  %38 = inttoptr i32 %asmresult.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !501
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i387 = icmp eq i32 %asmresult.i.i, 0
  %cmp.i388 = icmp eq ptr %38, inttoptr (i32 -108 to ptr)
  %or.cond.i = or i1 %tobool.not.i387, %cmp.i388
  br i1 %or.cond.i, label %if.then80.if.end86_crit_edge, label %if.end.i392

if.then80.if.end86_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.end.i392:                                      ; preds = %if.then80
  %data.i = getelementptr inbounds %struct.ffs_buffer, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp9.i.i.i396 = icmp slt i32 %40, 0
  br i1 %cmp9.i.i.i396, label %land.rhs16.i.i.i399, label %if.then.i.i.i.i402

land.rhs16.i.i.i399:                              ; preds = %if.end.i392
  %.b71.i.i.i398 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i398, label %land.rhs16.i.i.i399.copy_to_iter.exit.i_crit_edge, label %if.then27.i.i.i400, !prof !484

land.rhs16.i.i.i399.copy_to_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i399
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_iter.exit.i

if.then27.i.i.i400:                               ; preds = %land.rhs16.i.i.i399
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_to_iter.exit.i

if.then.i.i.i.i402:                               ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  call void @__check_object_size(ptr noundef %42, i32 noundef %40, i1 noundef zeroext true) #15
  %call3.i.i403 = call i32 @_copy_to_iter(ptr noundef %42, i32 noundef %40, ptr noundef %data81) #15
  br label %copy_to_iter.exit.i

copy_to_iter.exit.i:                              ; preds = %if.then.i.i.i.i402, %if.then27.i.i.i400, %land.rhs16.i.i.i399.copy_to_iter.exit.i_crit_edge
  %retval.0.i.i405 = phi i32 [ %call3.i.i403, %if.then.i.i.i.i402 ], [ 0, %if.then27.i.i.i400 ], [ 0, %land.rhs16.i.i.i399.copy_to_iter.exit.i_crit_edge ]
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %retval.0.i.i405)
  %cmp18.i = icmp eq i32 %44, %retval.0.i.i405
  br i1 %cmp18.i, label %copy_to_iter.exit.i.cleanup.sink.split.i_crit_edge, label %if.end20.i

copy_to_iter.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %copy_to_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end20.i:                                       ; preds = %copy_to_iter.exit.i
  %count.i.i = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool22.not.i = icmp eq i32 %46, 0
  br i1 %tobool22.not.i, label %if.else.i, label %if.end20.i.if.end26.i_crit_edge

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 %44, %retval.0.i.i405
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %38, align 4
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %49, i32 %retval.0.i.i405
  store ptr %add.ptr.i, ptr %data.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %if.end20.i.if.end26.i_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i.i405, %if.else.i ], [ -14, %if.end20.i.if.end26.i_crit_edge ]
  %call.i70.i = call zeroext i1 @__kasan_check_write(ptr noundef %read_buffer.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !502
  call void @llvm.prefetch.p0(ptr %read_buffer.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end26.i
  %50 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %read_buffer.i, i32 0, i32 %asmresult.i.i) #15, !srcloc !491
  %asmresult.i71.i = extractvalue { i32, i32 } %50, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i71.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %50, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !503
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool49.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool49.not.i, label %__cmpxchg.exit.i.__ffs_epfile_read_buffered.exit_crit_edge, label %__cmpxchg.exit.i.cleanup.sink.split.i_crit_edge

__cmpxchg.exit.i.cleanup.sink.split.i_crit_edge:  ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

__cmpxchg.exit.i.__ffs_epfile_read_buffered.exit_crit_edge: ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ffs_epfile_read_buffered.exit

cleanup.sink.split.i:                             ; preds = %__cmpxchg.exit.i.cleanup.sink.split.i_crit_edge, %copy_to_iter.exit.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %retval.0.i.i405, %copy_to_iter.exit.i.cleanup.sink.split.i_crit_edge ], [ %ret.0.i, %__cmpxchg.exit.i.cleanup.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %38) #15
  br label %__ffs_epfile_read_buffered.exit

__ffs_epfile_read_buffered.exit:                  ; preds = %cleanup.sink.split.i, %__cmpxchg.exit.i.__ffs_epfile_read_buffered.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %__cmpxchg.exit.i.__ffs_epfile_read_buffered.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool83.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool83.not, label %__ffs_epfile_read_buffered.exit.if.end86_crit_edge, label %__ffs_epfile_read_buffered.exit.error_mutex_crit_edge

__ffs_epfile_read_buffered.exit.error_mutex_crit_edge: ; preds = %__ffs_epfile_read_buffered.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_mutex

__ffs_epfile_read_buffered.exit.if.end86_crit_edge: ; preds = %__ffs_epfile_read_buffered.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.end86:                                         ; preds = %__ffs_epfile_read_buffered.exit.if.end86_crit_edge, %if.then80.if.end86_crit_edge, %land.lhs.true76.if.end86_crit_edge, %if.then74.if.end86_crit_edge
  %51 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ffs, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %52, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %eps_lock) #15
  %55 = ptrtoint ptr %ep22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ep22, align 4
  %cmp91.not = icmp eq ptr %56, %ep.1
  br i1 %cmp91.not, label %if.end94, label %if.end86.error_lock_crit_edge

if.end86.error_lock_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_lock

if.end94:                                         ; preds = %if.end86
  %data95 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 3
  %count.i = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i, align 8
  %59 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %read, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool98.not = icmp eq i8 %60, 0
  br i1 %tobool98.not, label %if.end94.if.end102_crit_edge, label %if.then99

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then99:                                        ; preds = %if.end94
  %quirk_ep_out_aligned_size.i = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 17
  %61 = ptrtoint ptr %quirk_ep_out_aligned_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i = load i32, ptr %quirk_ep_out_aligned_size.i, align 4
  %62 = and i32 %bf.load.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i406 = icmp eq i32 %62, 0
  br i1 %tobool.not.i406, label %if.then99.if.end102_crit_edge, label %cond.true.i407

if.then99.if.end102_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

cond.true.i407:                                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ep.1, align 4
  %desc.i.i = getelementptr inbounds %struct.usb_ep, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc.i.i, align 4
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %69 = and i16 %68, -249
  %70 = call i16 @llvm.bswap.i16(i16 %69) #15
  %and.i.i.i = zext i16 %70 to i32
  %sub.i.i = add i32 %58, -1
  %sub1.i.i = add nsw i32 %and.i.i.i, -1
  %or.i.i = or i32 %sub1.i.i, %sub.i.i
  %add.i.i = add i32 %or.i.i, 1
  br label %if.end102

if.end102:                                        ; preds = %cond.true.i407, %if.then99.if.end102_crit_edge, %if.end94.if.end102_crit_edge
  %data_len.0 = phi i32 [ %58, %if.end94.if.end102_crit_edge ], [ %add.i.i, %cond.true.i407 ], [ %58, %if.then99.if.end102_crit_edge ]
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 17
  %71 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load = load i32, ptr %sg_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %tobool103.not = icmp slt i32 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %data_len.0)
  %cmp104 = icmp ugt i32 %data_len.0, 4096
  %spec.select = select i1 %tobool103.not, i1 %cmp104, i1 false
  %use_sg = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 11
  %frombool = zext i1 %spec.select to i8
  %72 = ptrtoint ptr %use_sg to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %frombool, ptr %use_sg, align 4
  %73 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ffs, align 4
  %eps_lock107 = getelementptr inbounds %struct.ffs_data, ptr %74, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %eps_lock107) #15
  %75 = ptrtoint ptr %use_sg to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %use_sg, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i409 = icmp eq i8 %76, 0
  br i1 %tobool.not.i409, label %if.end8.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end102
  %sgt.i = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 10
  %call.i.i410 = call noalias ptr @vmalloc(i32 noundef %data_len.0) #22
  %tobool.not.i.i411 = icmp eq ptr %call.i.i410, null
  br i1 %tobool.not.i.i411, label %if.then.i.error_mutex_crit_edge, label %if.end.i4.i

if.then.i.error_mutex_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_mutex

if.end.i4.i:                                      ; preds = %if.then.i
  %add.i.i412 = add i32 %data_len.0, 4095
  %shr.i.i = lshr i32 %add.i.i412, 12
  %77 = shl nuw nsw i32 %shr.i.i, 2
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %77, i32 noundef 3264, i32 noundef -1) #22
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i4.i.cleanup.sink.split.i.i_crit_edge, label %for.cond.preheader.i.i

if.end.i4.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i412)
  %cmp31.not.i.i = icmp ult i32 %add.i.i412, 4096
  br i1 %cmp31.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %shr.i.i, i32 1) #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.033.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %ptr.032.i.i = phi ptr [ %add.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i410, %for.body.preheader.i.i ]
  %call5.i.i = call ptr @vmalloc_to_page(ptr noundef %ptr.032.i.i) #15
  %arrayidx.i.i = getelementptr ptr, ptr %call.i.i.i.i, i32 %i.033.i.i
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call5.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %ptr.032.i.i, i32 4096
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %call.i.i.i = call i32 @sg_alloc_table_from_pages_segment(ptr noundef %sgt.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %shr.i.i, i32 noundef 0, i32 noundef %data_len.0, i32 noundef -1, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i.i, 0
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #15
  br i1 %tobool7.not.i.i, label %for.end.i.i.ffs_alloc_buffer.exit_crit_edge, label %for.end.i.i.cleanup.sink.split.i.i_crit_edge

for.end.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i.i

for.end.i.i.ffs_alloc_buffer.exit_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_alloc_buffer.exit

cleanup.sink.split.i.i:                           ; preds = %for.end.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i4.i.cleanup.sink.split.i.i_crit_edge
  call void @vfree(ptr noundef nonnull %call.i.i410) #15
  br label %error_mutex

if.end8.i.i:                                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %data_len.0, i32 noundef 3264) #22
  br label %ffs_alloc_buffer.exit

ffs_alloc_buffer.exit:                            ; preds = %if.end8.i.i, %for.end.i.i.ffs_alloc_buffer.exit_crit_edge
  %retval.0.i416 = phi ptr [ %call.i.i410, %for.end.i.i.ffs_alloc_buffer.exit_crit_edge ], [ %call9.i.i, %if.end8.i.i ]
  %tobool109.not = icmp eq ptr %retval.0.i416, null
  br i1 %tobool109.not, label %ffs_alloc_buffer.exit.error_mutex_crit_edge, label %if.end111

ffs_alloc_buffer.exit.error_mutex_crit_edge:      ; preds = %ffs_alloc_buffer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_mutex

if.end111:                                        ; preds = %ffs_alloc_buffer.exit
  %79 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %read, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool113.not = icmp eq i8 %80, 0
  br i1 %tobool113.not, label %if.end8.i.i.i, label %if.end111.if.end122_crit_edge

if.end111.if.end122_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.end8.i.i.i:                                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0)
  %cmp9.i.i.i = icmp slt i32 %data_len.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !484

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__check_object_size(ptr noundef nonnull %retval.0.i416, i32 noundef %data_len.0, i1 noundef zeroext false) #15
  %call3.i.i = call i32 @_copy_from_iter(ptr noundef nonnull %retval.0.i416, i32 noundef %data_len.0, ptr noundef %data95) #15
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %data_len.0)
  %cmp.i = icmp eq i32 %retval.0.i.i, %data_len.0
  br i1 %cmp.i, label %copy_from_iter.exit.i.if.end122_crit_edge, label %copy_from_iter_full.exit, !prof !484

copy_from_iter.exit.i.if.end122_crit_edge:        ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @iov_iter_revert(ptr noundef %data95, i32 noundef %retval.0.i.i) #15
  br label %error_mutex

if.end122:                                        ; preds = %copy_from_iter.exit.i.if.end122_crit_edge, %if.end111.if.end122_crit_edge, %if.end72.if.end122_crit_edge
  %data_len.2 = phi i32 [ -22, %if.end72.if.end122_crit_edge ], [ %data_len.0, %if.end111.if.end122_crit_edge ], [ %data_len.0, %copy_from_iter.exit.i.if.end122_crit_edge ]
  %data.1 = phi ptr [ null, %if.end72.if.end122_crit_edge ], [ %retval.0.i416, %if.end111.if.end122_crit_edge ], [ %retval.0.i416, %copy_from_iter.exit.i.if.end122_crit_edge ]
  %81 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ffs, align 4
  %eps_lock124 = getelementptr inbounds %struct.ffs_data, ptr %82, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %eps_lock124) #15
  %83 = ptrtoint ptr %ep22 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ep22, align 4
  %cmp126.not = icmp eq ptr %84, %ep.1
  br i1 %cmp126.not, label %if.else, label %if.end122.error_lock_crit_edge

if.end122.error_lock_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_lock

if.else:                                          ; preds = %if.end122
  br i1 %cmp61, label %if.then130, label %if.else136

if.then130:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ep.1, align 4
  %call132 = call i32 @usb_ep_set_halt(ptr noundef %86) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  %spec.store.select = select i1 %tobool133.not, i32 -74, i32 %call132
  br label %error_lock

if.else136:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %data_len.2)
  %cmp137 = icmp eq i32 %data_len.2, -22
  br i1 %cmp137, label %do.end152, label %if.else166

do.end152:                                        ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1050, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.ffs_epfile_io) #15
  br label %error_lock

if.else166:                                       ; preds = %if.else136
  %87 = ptrtoint ptr %io_data to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %io_data, align 8, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool168.not = icmp eq i8 %88, 0
  br i1 %tobool168.not, label %if.then169, label %if.else218

if.then169:                                       ; preds = %if.else166
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #15
  %89 = getelementptr inbounds i8, ptr %done, i32 4
  %90 = call ptr @memset(ptr %89, i32 255, i32 52)
  %91 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #15
  %req171 = getelementptr inbounds %struct.ffs_ep, ptr %ep.1, i32 0, i32 1
  %92 = ptrtoint ptr %req171 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req171, align 4
  %use_sg172 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 11
  %94 = ptrtoint ptr %use_sg172 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %use_sg172, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool173.not = icmp eq i8 %95, 0
  br i1 %tobool173.not, label %if.else176, label %if.then174

if.then174:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %93, align 4
  %sgt = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 10
  %97 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sgt, align 8
  %sg = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 3
  %99 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %sg, align 4
  %nents = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 10, i32 1
  %100 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nents, align 4
  br label %if.end179

if.else176:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %data.1, ptr %93, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else176, %if.then174
  %.sink = phi i32 [ 0, %if.else176 ], [ %101, %if.then174 ]
  %103 = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink, ptr %103, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 1
  %105 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %data_len.2, ptr %length, align 4
  %buf180 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 5
  %106 = ptrtoint ptr %buf180 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %data.1, ptr %buf180, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 8
  %107 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %done, ptr %context, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 7
  %108 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @ffs_epfile_io_complete, ptr %complete, align 4
  %109 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ep.1, align 4
  %call182 = call i32 @usb_ep_queue(ptr noundef %110, ptr noundef %93, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %cleanup216, label %if.end186

if.end186:                                        ; preds = %if.end179
  %111 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ffs, align 4
  %eps_lock188 = getelementptr inbounds %struct.ffs_data, ptr %112, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %eps_lock188) #15
  %call189 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %done) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end186.if.else200_crit_edge, label %if.then191

if.end186.if.else200_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else200

if.then191:                                       ; preds = %if.end186
  %113 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ep.1, align 4
  %call193 = call i32 @usb_ep_dequeue(ptr noundef %114, ptr noundef %93) #15
  call void @wait_for_completion(ptr noundef nonnull %done) #15
  %status = getelementptr inbounds %struct.ffs_ep, ptr %ep.1, i32 0, i32 4
  %115 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp194 = icmp slt i32 %116, 0
  br i1 %cmp194, label %if.then191.cleanup216.thread_crit_edge, label %if.then191.if.else200_crit_edge

if.then191.if.else200_crit_edge:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else200

if.then191.cleanup216.thread_crit_edge:           ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup216.thread

if.else200:                                       ; preds = %if.then191.if.else200_crit_edge, %if.end186.if.else200_crit_edge
  %117 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %read, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool202.not = icmp eq i8 %118, 0
  br i1 %tobool202.not, label %if.else200.if.else212_crit_edge, label %land.lhs.true204

if.else200.if.else212_crit_edge:                  ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else212

land.lhs.true204:                                 ; preds = %if.else200
  %status205 = getelementptr inbounds %struct.ffs_ep, ptr %ep.1, i32 0, i32 4
  %119 = ptrtoint ptr %status205 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %status205, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp206 = icmp sgt i32 %120, 0
  br i1 %cmp206, label %if.then208, label %land.lhs.true204.if.else212_crit_edge

land.lhs.true204.if.else212_crit_edge:            ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else212

if.then208:                                       ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #17
  %data210 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 3
  %call211 = call fastcc i32 @__ffs_epfile_read_data(ptr noundef %1, ptr noundef %data.1, i32 noundef %120, ptr noundef %data210)
  br label %cleanup216.thread

if.else212:                                       ; preds = %land.lhs.true204.if.else212_crit_edge, %if.else200.if.else212_crit_edge
  %status213 = getelementptr inbounds %struct.ffs_ep, ptr %ep.1, i32 0, i32 4
  %121 = ptrtoint ptr %status213 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %status213, align 4
  br label %cleanup216.thread

cleanup216.thread:                                ; preds = %if.else212, %if.then208, %if.then191.cleanup216.thread_crit_edge
  %ret.3.ph = phi i32 [ -4, %if.then191.cleanup216.thread_crit_edge ], [ %122, %if.else212 ], [ %call211, %if.then208 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #15
  br label %error_mutex

cleanup216:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #15
  br label %error_lock

if.else218:                                       ; preds = %if.else166
  %123 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ep.1, align 4
  %call220 = call ptr @usb_ep_alloc_request(ptr noundef %124, i32 noundef 2592) #15
  %tobool221.not = icmp eq ptr %call220, null
  br i1 %tobool221.not, label %if.else218.error_lock_crit_edge, label %if.else223

if.else218.error_lock_crit_edge:                  ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_lock

if.else223:                                       ; preds = %if.else218
  %use_sg224 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 11
  %125 = ptrtoint ptr %use_sg224 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %use_sg224, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool225.not = icmp eq i8 %126, 0
  br i1 %tobool225.not, label %if.else234, label %if.then226

if.then226:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %call220 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %call220, align 4
  %sgt228 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 10
  %128 = ptrtoint ptr %sgt228 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sgt228, align 8
  %sg230 = getelementptr inbounds %struct.usb_request, ptr %call220, i32 0, i32 3
  %130 = ptrtoint ptr %sg230 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %sg230, align 4
  %nents232 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 10, i32 1
  %131 = ptrtoint ptr %nents232 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nents232, align 4
  br label %if.end237

if.else234:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %call220 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %data.1, ptr %call220, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.else234, %if.then226
  %.sink475 = phi i32 [ 0, %if.else234 ], [ %132, %if.then226 ]
  %134 = getelementptr inbounds %struct.usb_request, ptr %call220, i32 0, i32 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %.sink475, ptr %134, align 4
  %length238 = getelementptr inbounds %struct.usb_request, ptr %call220, i32 0, i32 1
  %136 = ptrtoint ptr %length238 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %data_len.2, ptr %length238, align 4
  %buf239 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 5
  %137 = ptrtoint ptr %buf239 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %data.1, ptr %buf239, align 4
  %138 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ep.1, align 4
  %ep241 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 8
  %140 = ptrtoint ptr %ep241 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %ep241, align 8
  %req242 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 9
  %141 = ptrtoint ptr %req242 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call220, ptr %req242, align 4
  %142 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ffs, align 4
  %ffs244 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 12
  %144 = ptrtoint ptr %ffs244 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %ffs244, align 8
  %context245 = getelementptr inbounds %struct.usb_request, ptr %call220, i32 0, i32 8
  %145 = ptrtoint ptr %context245 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %io_data, ptr %context245, align 4
  %complete246 = getelementptr inbounds %struct.usb_request, ptr %call220, i32 0, i32 7
  %146 = ptrtoint ptr %complete246 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @ffs_epfile_async_io_complete, ptr %complete246, align 4
  %147 = load ptr, ptr %ep.1, align 4
  %call248 = call i32 @usb_ep_queue(ptr noundef %147, ptr noundef nonnull %call220, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end237.error_lock_crit_edge, label %if.then250

if.end237.error_lock_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #17
  br label %error_lock

if.then250:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #17
  %148 = ptrtoint ptr %req242 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %req242, align 4
  %149 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ep.1, align 4
  call void @usb_ep_free_request(ptr noundef %150, ptr noundef nonnull %call220) #15
  br label %error_lock

error_lock:                                       ; preds = %if.then250, %if.end237.error_lock_crit_edge, %if.else218.error_lock_crit_edge, %cleanup216, %do.end152, %if.then130, %if.end122.error_lock_crit_edge, %if.end86.error_lock_crit_edge
  %ret.4 = phi i32 [ %spec.store.select, %if.then130 ], [ -22, %do.end152 ], [ %call248, %if.then250 ], [ %call182, %cleanup216 ], [ -108, %if.end122.error_lock_crit_edge ], [ -12, %if.else218.error_lock_crit_edge ], [ -529, %if.end237.error_lock_crit_edge ], [ -108, %if.end86.error_lock_crit_edge ]
  %151 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ffs, align 4
  %eps_lock261 = getelementptr inbounds %struct.ffs_data, ptr %152, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %eps_lock261) #15
  br label %error_mutex

error_mutex:                                      ; preds = %error_lock, %cleanup216.thread, %copy_from_iter_full.exit, %ffs_alloc_buffer.exit.error_mutex_crit_edge, %cleanup.sink.split.i.i, %if.then.i.error_mutex_crit_edge, %__ffs_epfile_read_buffered.exit.error_mutex_crit_edge
  %ret.5 = phi i32 [ %ret.4, %error_lock ], [ %ret.3.ph, %cleanup216.thread ], [ -14, %copy_from_iter_full.exit ], [ -12, %ffs_alloc_buffer.exit.error_mutex_crit_edge ], [ %retval.0.i, %__ffs_epfile_read_buffered.exit.error_mutex_crit_edge ], [ -12, %if.then.i.error_mutex_crit_edge ], [ -12, %cleanup.sink.split.i.i ]
  call void @mutex_unlock(ptr noundef %1) #15
  br label %error

error:                                            ; preds = %error_mutex, %ffs_mutex_lock.exit.error_crit_edge
  %ret.6 = phi i32 [ %call2.i, %ffs_mutex_lock.exit.error_crit_edge ], [ %ret.5, %error_mutex ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %ret.6)
  %cmp263.not = icmp eq i32 %ret.6, -529
  br i1 %cmp263.not, label %error.cleanup267_crit_edge, label %error.if.then265_crit_edge

error.if.then265_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then265

error.cleanup267_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

if.then265:                                       ; preds = %error.if.then265_crit_edge, %cond.true.i.if.then265_crit_edge
  %ret.6467 = phi i32 [ %ret.6, %error.if.then265_crit_edge ], [ -11, %cond.true.i.if.then265_crit_edge ]
  %buf.i = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 5
  %153 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %buf.i, align 4
  %tobool.not.i417 = icmp eq ptr %154, null
  br i1 %tobool.not.i417, label %if.then265.cleanup267_crit_edge, label %if.end.i420

if.then265.cleanup267_crit_edge:                  ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

if.end.i420:                                      ; preds = %if.then265
  %use_sg.i418 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 11
  %155 = ptrtoint ptr %use_sg.i418 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %use_sg.i418, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool1.not.i419 = icmp eq i8 %156, 0
  br i1 %tobool1.not.i419, label %if.else.i422, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #17
  %sgt.i421 = getelementptr inbounds %struct.ffs_io_data, ptr %io_data, i32 0, i32 10
  call void @sg_free_table(ptr noundef %sgt.i421) #15
  %157 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %buf.i, align 4
  call void @vfree(ptr noundef %158) #15
  br label %cleanup267

if.else.i422:                                     ; preds = %if.end.i420
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %154) #15
  br label %cleanup267

cleanup267:                                       ; preds = %if.else.i422, %if.then2.i, %if.then265.cleanup267_crit_edge, %error.cleanup267_crit_edge, %land.lhs.true.cleanup267_crit_edge, %if.end49, %if.then24.cleanup267_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -11, %if.then24.cleanup267_crit_edge ], [ -4, %if.end49 ], [ -22, %land.lhs.true.cleanup267_crit_edge ], [ -529, %error.cleanup267_crit_edge ], [ %ret.6467, %if.then265.cleanup267_crit_edge ], [ %ret.6467, %if.then2.i ], [ %ret.6467, %if.else.i422 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_epfile_io_complete(ptr nocapture noundef readonly %_ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_io_complete.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_io_complete, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_io_complete.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.98) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %if.then5

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %2 = ptrtoint ptr %_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_ep, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %cond.false, label %if.then5.cond.end_crit_edge

if.then5.cond.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then5.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ %5, %if.then5.cond.end_crit_edge ]
  %status8 = getelementptr inbounds %struct.ffs_ep, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %status8, align 4
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %10) #15
  br label %if.end10

if.end10:                                         ; preds = %cond.end, %do.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ffs_epfile_read_data(ptr noundef %epfile, ptr noundef %data, i32 noundef %data_len, ptr noundef %iter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp9.i.i = icmp slt i32 %data_len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit_crit_edge, label %if.then27.i.i, !prof !484

land.rhs16.i.i.copy_to_iter.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_iter.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_to_iter.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %data_len, i1 noundef zeroext true) #15
  %call3.i = tail call i32 @_copy_to_iter(ptr noundef %data, i32 noundef %data_len, ptr noundef %iter) #15
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.copy_to_iter.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %data_len)
  %cmp = icmp eq i32 %retval.0.i, %data_len
  br i1 %cmp, label %copy_to_iter.exit.cleanup_crit_edge, label %if.end

copy_to_iter.exit.cleanup_crit_edge:              ; preds = %copy_to_iter.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %copy_to_iter.exit
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %data_len, i32 noundef %retval.0.i) #21
  %sub = sub i32 %data_len, %retval.0.i
  %add = add i32 %sub, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #22
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %call9.i, align 128
  %storage = getelementptr inbounds %struct.ffs_buffer, ptr %call9.i, i32 0, i32 2
  %data9 = getelementptr inbounds %struct.ffs_buffer, ptr %call9.i, i32 0, i32 1
  %3 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storage, ptr %data9, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %retval.0.i
  %4 = call ptr @memcpy(ptr %storage, ptr %add.ptr, i32 %sub)
  %read_buffer = getelementptr inbounds %struct.ffs_epfile, ptr %epfile, i32 0, i32 4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_buffer, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !504
  %5 = ptrtoint ptr %call9.i to i32
  tail call void @llvm.prefetch.p0(ptr %read_buffer, i32 1, i32 3, i32 1) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end8
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %read_buffer, i32 0, i32 %5) #15, !srcloc !491
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool31.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool31.not, label %__cmpxchg.exit.cleanup_crit_edge, label %if.then32

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then32:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %__cmpxchg.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %copy_to_iter.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %data_len, %copy_to_iter.exit.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.i, %if.then32 ], [ %retval.0.i, %__cmpxchg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_epfile_async_io_complete(ptr nocapture noundef readnone %_ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ffs1 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfile_async_io_complete.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_epfile_async_io_complete, %do.body5)) #15
          to label %if.then [label %do.body5], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfile_async_io_complete.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.101) #15
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %work = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.102, ptr noundef nonnull @ffs_epfile_async_io_complete.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry9 = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 7, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ffs_io_data, ptr %1, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ffs_user_copy_worker, ptr %func, align 4
  %io_completion_wq = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 39
  %8 = ptrtoint ptr %io_completion_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_completion_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_user_copy_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %actual = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ %3, %entry.cond.end_crit_edge ]
  %kiocb = getelementptr i8, ptr %work, i32 -40
  %6 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kiocb, align 4
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ki_flags, align 8
  %and = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp ne i32 %and, 0
  %read = getelementptr i8, ptr %work, i32 -43
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %read, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp = icmp sgt i32 %cond, 0
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %cond.end
  %mm = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm, align 8
  tail call void @kthread_use_mm(ptr noundef %13) #15
  %buf = getelementptr i8, ptr %work, i32 -8
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %data = getelementptr i8, ptr %work, i32 -36
  tail call void @__check_object_size(ptr noundef %15, i32 noundef %cond, i1 noundef zeroext true) #15
  %call3.i.i = tail call i32 @_copy_to_iter(ptr noundef %15, i32 noundef %cond, ptr noundef %data) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %cond)
  %cmp.i = icmp eq i32 %call3.i.i, %cond
  br i1 %cmp.i, label %if.then.ffs_copy_to_iter.exit_crit_edge, label %if.end.i

if.then.ffs_copy_to_iter.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_copy_to_iter.exit

if.end.i:                                         ; preds = %if.then
  %count.i.i = getelementptr i8, ptr %work, i32 -28
  %16 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.ffs_copy_to_iter.exit_crit_edge

if.end.i.ffs_copy_to_iter.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_copy_to_iter.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %cond, i32 noundef %call3.i.i) #21
  br label %ffs_copy_to_iter.exit

ffs_copy_to_iter.exit:                            ; preds = %do.end.i, %if.end.i.ffs_copy_to_iter.exit_crit_edge, %if.then.ffs_copy_to_iter.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i.i, %do.end.i ], [ %cond, %if.then.ffs_copy_to_iter.exit_crit_edge ], [ -14, %if.end.i.ffs_copy_to_iter.exit_crit_edge ]
  %18 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm, align 8
  tail call void @kthread_unuse_mm(ptr noundef %19) #15
  br label %if.end

if.end:                                           ; preds = %ffs_copy_to_iter.exit, %cond.end.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %ffs_copy_to_iter.exit ], [ %cond, %cond.end.if.end_crit_edge ]
  %20 = ptrtoint ptr %kiocb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kiocb, align 4
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ki_complete, align 8
  tail call void %23(ptr noundef %21, i32 noundef %ret.0) #15
  %ffs = getelementptr i8, ptr %work, i32 68
  %24 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ffs, align 8
  %ffs_eventfd = getelementptr inbounds %struct.ffs_data, ptr %25, i32 0, i32 38
  %26 = ptrtoint ptr %ffs_eventfd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ffs_eventfd, align 4
  %tobool9.not = icmp eq ptr %27, null
  %brmerge = select i1 %tobool9.not, i1 true, i1 %tobool4.not
  br i1 %brmerge, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i64 @eventfd_signal(ptr noundef nonnull %27, i64 noundef 1) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  %ep = getelementptr i8, ptr %work, i32 44
  %28 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep, align 8
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %29, ptr noundef %31) #15
  %32 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %read, align 1, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool19.not = icmp eq i8 %33, 0
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %to_free = getelementptr i8, ptr %work, i32 -12
  %34 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %to_free, align 8
  tail call void @kfree(ptr noundef %35) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %buf.i = getelementptr i8, ptr %work, i32 -8
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf.i, align 4
  %tobool.not.i43 = icmp eq ptr %37, null
  br i1 %tobool.not.i43, label %if.end21.ffs_free_buffer.exit_crit_edge, label %if.end.i44

if.end21.ffs_free_buffer.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_free_buffer.exit

if.end.i44:                                       ; preds = %if.end21
  %use_sg.i = getelementptr i8, ptr %work, i32 64
  %38 = ptrtoint ptr %use_sg.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %use_sg.i, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not.i = icmp eq i8 %39, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #17
  %sgt.i = getelementptr i8, ptr %work, i32 52
  tail call void @sg_free_table(ptr noundef %sgt.i) #15
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf.i, align 4
  tail call void @vfree(ptr noundef %41) #15
  br label %ffs_free_buffer.exit

if.else.i:                                        ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %37) #15
  br label %ffs_free_buffer.exit

ffs_free_buffer.exit:                             ; preds = %if.else.i, %if.then2.i, %if.end21.ffs_free_buffer.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_use_mm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unuse_mm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_fifo_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_fifo_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ffs_data_opened(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_opened.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_opened, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_opened.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.108) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ref = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #15, !srcloc !506
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !488

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !484

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %opened = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !507
  tail call void @llvm.prefetch.p0(ptr %opened, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %opened, ptr %opened, i32 1, ptr elementtype(i32) %opened) #15, !srcloc !508
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp, label %land.lhs.true, label %refcount_inc.exit.if.end8_crit_edge

refcount_inc.exit.if.end8_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %refcount_inc.exit
  %state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 7
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp5 = icmp eq i32 %4, 3
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_reset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_opened, %ffs_data_reset.exit)) #15
          to label %if.then.i [label %ffs_data_reset.exit], !srcloc !480

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_reset.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.109) #15
  br label %ffs_data_reset.exit

ffs_data_reset.exit:                              ; preds = %if.then.i, %if.then6
  tail call fastcc void @ffs_data_clear(ptr noundef %ffs) #15
  %raw_descs_data.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 15
  %raw_strings.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 34
  %6 = ptrtoint ptr %raw_strings.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %raw_strings.i, align 4
  %stringtabs.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 35
  %7 = ptrtoint ptr %stringtabs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %stringtabs.i, align 4
  %strings_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 30
  %8 = ptrtoint ptr %strings_count.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %strings_count.i, align 4
  %interfaces_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 31
  %9 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %interfaces_count.i, align 2
  %eps_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %10 = ptrtoint ptr %eps_count.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %eps_count.i, align 4
  %count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %count.i, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %setup_state.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %13 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %setup_state.i, align 4
  %flags.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags.i, align 4
  %ms_os_descs_ext_prop_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 22
  %15 = ptrtoint ptr %ms_os_descs_ext_prop_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ms_os_descs_ext_prop_count.i, align 4
  %ms_os_descs_ext_prop_name_len.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 23
  %16 = ptrtoint ptr %ms_os_descs_ext_prop_name_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ms_os_descs_ext_prop_name_len.i, align 4
  %ms_os_descs_ext_prop_data_len.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 24
  %17 = ptrtoint ptr %ms_os_descs_ext_prop_data_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ms_os_descs_ext_prop_data_len.i, align 4
  %18 = call ptr @memset(ptr %raw_descs_data.i, i32 0, i32 24)
  br label %if.end8

if.end8:                                          ; preds = %ffs_data_reset.exit, %land.lhs.true.if.end8_crit_edge, %refcount_inc.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ffs_data_closed(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_closed.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_closed, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_closed.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.111) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %opened = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %opened, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !510
  tail call void @llvm.prefetch.p0(ptr %opened, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %opened, ptr %opened, i32 1, ptr elementtype(i32) %opened) #15, !srcloc !511
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then5, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then5:                                         ; preds = %do.end
  %no_disconnect = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 40
  %1 = ptrtoint ptr %no_disconnect to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %no_disconnect, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool6.not = icmp eq i8 %2, 0
  %state29 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 7
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  %3 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %state29, align 4
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 2
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eps_lock) #15
  %epfiles17 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 42
  %4 = ptrtoint ptr %epfiles17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epfiles17, align 4
  store ptr null, ptr %epfiles17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eps_lock, i32 noundef %call12) #15
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %if.then7.if.end23_crit_edge, label %if.then21

if.then7.if.end23_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then21:                                        ; preds = %if.then7
  %eps_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %6 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %eps_count, align 4
  %conv22 = zext i16 %7 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_closed, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not37.i = icmp eq i16 %7, 0
  br i1 %tobool4.not37.i, label %do.end.i.ffs_epfiles_destroy.exit_crit_edge, label %do.end.i.do.body5.i_crit_edge

do.end.i.do.body5.i_crit_edge:                    ; preds = %do.end.i
  br label %do.body5.i

do.end.i.ffs_epfiles_destroy.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_epfiles_destroy.exit

do.body5.i:                                       ; preds = %for.inc.i.do.body5.i_crit_edge, %do.end.i.do.body5.i_crit_edge
  %count.addr.039.i = phi i32 [ %dec.i, %for.inc.i.do.body5.i_crit_edge ], [ %conv22, %do.end.i.do.body5.i_crit_edge ]
  %epfile.038.i = phi ptr [ %incdec.ptr.i, %for.inc.i.do.body5.i_crit_edge ], [ %5, %do.end.i.do.body5.i_crit_edge ]
  %call6.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %epfile.038.i) #15
  br i1 %call6.i, label %do.body14.i, label %do.end22.i, !prof !488

do.body14.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_fs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1933, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

do.end22.i:                                       ; preds = %do.body5.i
  %dentry.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.038.i, i32 0, i32 3
  %8 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i, align 4
  %tobool23.not.i = icmp eq ptr %9, null
  br i1 %tobool23.not.i, label %do.end22.i.for.inc.i_crit_edge, label %if.then24.i

do.end22.i.for.inc.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then24.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_delete(ptr noundef nonnull %9) #15
  %10 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry.i, align 4
  tail call void @dput(ptr noundef %11) #15
  %12 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dentry.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %do.end22.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %count.addr.039.i, -1
  %incdec.ptr.i = getelementptr %struct.ffs_epfile, ptr %epfile.038.i, i32 1
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %for.inc.i.ffs_epfiles_destroy.exit_crit_edge, label %for.inc.i.do.body5.i_crit_edge

for.inc.i.do.body5.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5.i

for.inc.i.ffs_epfiles_destroy.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_epfiles_destroy.exit

ffs_epfiles_destroy.exit:                         ; preds = %for.inc.i.ffs_epfiles_destroy.exit_crit_edge, %do.end.i.ffs_epfiles_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %5) #15
  br label %if.end23

if.end23:                                         ; preds = %ffs_epfiles_destroy.exit, %if.then7.if.end23_crit_edge
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %13 = ptrtoint ptr %setup_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %setup_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp24 = icmp eq i32 %14, 1
  br i1 %cmp24, label %if.then26, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  %can_stall.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %can_stall.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %can_stall.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_ep0_stall.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_closed, %do.end.i57)) #15
          to label %if.then5.i [label %do.end.i57], !srcloc !480

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_ep0_stall.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.38) #15
  br label %do.end.i57

do.end.i57:                                       ; preds = %if.then5.i, %do.body.i
  %17 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ffs, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep0.i, align 4
  %call6.i56 = tail call i32 @usb_ep_set_halt(ptr noundef %20) #15
  %21 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %setup_state, align 4
  br label %if.end31

do.body7.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_ep0_stall.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_closed, %if.end31)) #15
          to label %if.then21.i [label %if.end31], !srcloc !480

if.then21.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_ep0_stall.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.39) #15
  br label %if.end31

if.else:                                          ; preds = %if.then5
  %22 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %state29, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_reset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_closed, %ffs_data_reset.exit)) #15
          to label %if.then.i59 [label %ffs_data_reset.exit], !srcloc !480

if.then.i59:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_reset.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.109) #15
  br label %ffs_data_reset.exit

ffs_data_reset.exit:                              ; preds = %if.then.i59, %if.else
  tail call fastcc void @ffs_data_clear(ptr noundef %ffs) #15
  %raw_descs_data.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 15
  %raw_strings.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 34
  %23 = ptrtoint ptr %raw_strings.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %raw_strings.i, align 4
  %stringtabs.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 35
  %24 = ptrtoint ptr %stringtabs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %stringtabs.i, align 4
  %strings_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 30
  %25 = ptrtoint ptr %strings_count.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %strings_count.i, align 4
  %interfaces_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 31
  %26 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %interfaces_count.i, align 2
  %eps_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %27 = ptrtoint ptr %eps_count.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %eps_count.i, align 4
  %count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %count.i, align 4
  %29 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state29, align 4
  %setup_state.i60 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %30 = ptrtoint ptr %setup_state.i60 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %setup_state.i60, align 4
  %flags.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags.i, align 4
  %ms_os_descs_ext_prop_count.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 22
  %32 = ptrtoint ptr %ms_os_descs_ext_prop_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ms_os_descs_ext_prop_count.i, align 4
  %ms_os_descs_ext_prop_name_len.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 23
  %33 = ptrtoint ptr %ms_os_descs_ext_prop_name_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ms_os_descs_ext_prop_name_len.i, align 4
  %ms_os_descs_ext_prop_data_len.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 24
  %34 = ptrtoint ptr %ms_os_descs_ext_prop_data_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ms_os_descs_ext_prop_data_len.i, align 4
  %35 = call ptr @memset(ptr %raw_descs_data.i, i32 0, i32 24)
  br label %if.end31

if.end31:                                         ; preds = %ffs_data_reset.exit, %if.then21.i, %do.body7.i, %do.end.i57, %if.end23.if.end31_crit_edge, %do.end.if.end31_crit_edge
  %call.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %opened, i32 noundef 4) #15
  %36 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp34 = icmp slt i32 %37, 0
  br i1 %cmp34, label %if.then36, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then36:                                        ; preds = %if.end31
  %state37 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 7
  %38 = ptrtoint ptr %state37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %state37, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_reset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_data_closed, %ffs_data_reset.exit77)) #15
          to label %if.then.i62 [label %ffs_data_reset.exit77], !srcloc !480

if.then.i62:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_reset.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.109) #15
  br label %ffs_data_reset.exit77

ffs_data_reset.exit77:                            ; preds = %if.then.i62, %if.then36
  tail call fastcc void @ffs_data_clear(ptr noundef %ffs) #15
  %raw_descs_data.i63 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 15
  %raw_strings.i64 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 34
  %39 = ptrtoint ptr %raw_strings.i64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %raw_strings.i64, align 4
  %stringtabs.i65 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 35
  %40 = ptrtoint ptr %stringtabs.i65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %stringtabs.i65, align 4
  %strings_count.i66 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 30
  %41 = ptrtoint ptr %strings_count.i66 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %strings_count.i66, align 4
  %interfaces_count.i67 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 31
  %42 = ptrtoint ptr %interfaces_count.i67 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %interfaces_count.i67, align 2
  %eps_count.i68 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 32
  %43 = ptrtoint ptr %eps_count.i68 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %eps_count.i68, align 4
  %count.i69 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %count.i69 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %count.i69, align 4
  %45 = ptrtoint ptr %state37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %state37, align 4
  %setup_state.i71 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %46 = ptrtoint ptr %setup_state.i71 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %setup_state.i71, align 4
  %flags.i72 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  %47 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %flags.i72, align 4
  %ms_os_descs_ext_prop_count.i73 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 22
  %48 = ptrtoint ptr %ms_os_descs_ext_prop_count.i73 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %ms_os_descs_ext_prop_count.i73, align 4
  %ms_os_descs_ext_prop_name_len.i74 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 23
  %49 = ptrtoint ptr %ms_os_descs_ext_prop_name_len.i74 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %ms_os_descs_ext_prop_name_len.i74, align 4
  %ms_os_descs_ext_prop_data_len.i75 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 24
  %50 = ptrtoint ptr %ms_os_descs_ext_prop_data_len.i75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %ms_os_descs_ext_prop_data_len.i75, align 4
  %51 = call ptr @memset(ptr %raw_descs_data.i63, i32 0, i32 24)
  br label %if.end38

if.end38:                                         ; preds = %ffs_data_reset.exit77, %if.end31.if.end38_crit_edge
  tail call fastcc void @ffs_data_put(ptr noundef %ffs)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_bool(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_func_bind(ptr noundef %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %f, i32 -36
  %fi.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_functionfs_bind.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_bind, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_functionfs_bind.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.130) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %no_configfs.i = getelementptr inbounds %struct.f_fs_opts, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %no_configfs.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_configfs.i, align 4, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not.i = icmp eq i8 %3, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end8.thread.i

if.end8.thread.i:                                 ; preds = %do.end.i
  %dev54.i = getelementptr inbounds %struct.f_fs_opts, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev54.i, align 4
  %desc_ready55.i = getelementptr inbounds %struct.ffs_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %desc_ready55.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %desc_ready55.i, align 2, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not56.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br i1 %tobool9.not56.i, label %if.end8.thread.i.if.then_crit_edge, label %if.end8.thread.i.if.end19.i_crit_edge

if.end8.thread.i.if.end19.i_crit_edge:            ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.end8.thread.i.if.then_crit_edge:               ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end8.i:                                        ; preds = %do.end.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @ffs_lock, i32 noundef 0) #15
  %10 = ptrtoint ptr %no_configfs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr.i = load i8, ptr %no_configfs.i, align 4
  %dev.i = getelementptr inbounds %struct.f_fs_opts, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %desc_ready.i = getelementptr inbounds %struct.ffs_dev, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %desc_ready.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %desc_ready.i, align 2, !range !481
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not.i = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool13.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end8.i
  tail call void @mutex_unlock(ptr noundef nonnull @ffs_lock) #15
  br i1 %tobool9.not.i, label %if.then14.i.if.then_crit_edge, label %if.then14.i.if.end19.i_crit_edge

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then14.i.if.then_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end15.i:                                       ; preds = %if.end8.i
  br i1 %tobool9.not.i, label %if.end15.i.if.then_crit_edge, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.end15.i.if.then_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end19.i:                                       ; preds = %if.end15.i.if.end19.i_crit_edge, %if.then14.i.if.end19.i_crit_edge, %if.end8.thread.i.if.end19.i_crit_edge
  %17 = phi ptr [ %9, %if.end8.thread.i.if.end19.i_crit_edge ], [ %16, %if.end15.i.if.end19.i_crit_edge ], [ %16, %if.then14.i.if.end19.i_crit_edge ]
  %ffs.i = getelementptr i8, ptr %f, i32 -28
  %18 = ptrtoint ptr %ffs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ffs.i, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %c, ptr %add.ptr.i.i, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %20 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cdev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %gadget20.i = getelementptr i8, ptr %f, i32 -32
  %24 = ptrtoint ptr %gadget20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %gadget20.i, align 4
  %refcnt.i = getelementptr inbounds %struct.f_fs_opts, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not.i = icmp eq i32 %26, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.if.end30.i_crit_edge

if.end19.i.if.end30.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then22.i:                                      ; preds = %if.end19.i
  %27 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdev.i, align 4
  %call25.i = tail call fastcc i32 @functionfs_bind(ptr noundef %17, ptr noundef %28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then22.i.if.end30.i_crit_edge, label %if.then27.i

if.then22.i.if.end30.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = inttoptr i32 %call25.i to ptr
  br label %ffs_do_functionfs_bind.exit

if.end30.i:                                       ; preds = %if.then22.i.if.end30.i_crit_edge, %if.end19.i.if.end30.i_crit_edge
  %30 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %refcnt.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %refcnt.i, align 4
  %32 = ptrtoint ptr %ffs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ffs.i, align 4
  %stringtabs.i = getelementptr inbounds %struct.ffs_data, ptr %33, i32 0, i32 35
  %34 = ptrtoint ptr %stringtabs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stringtabs.i, align 4
  %strings.i = getelementptr i8, ptr %f, i32 4
  %36 = ptrtoint ptr %strings.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %strings.i, align 4
  br label %ffs_do_functionfs_bind.exit

ffs_do_functionfs_bind.exit:                      ; preds = %if.end30.i, %if.then27.i
  %retval.0.i = phi ptr [ %1, %if.end30.i ], [ %29, %if.then27.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ffs_do_functionfs_bind.exit.if.then_crit_edge, label %if.end

ffs_do_functionfs_bind.exit.if.then_crit_edge:    ; preds = %ffs_do_functionfs_bind.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %ffs_do_functionfs_bind.exit.if.then_crit_edge, %if.end15.i.if.then_crit_edge, %if.then14.i.if.then_crit_edge, %if.end8.thread.i.if.then_crit_edge
  %retval.0.i18 = phi ptr [ %retval.0.i, %ffs_do_functionfs_bind.exit.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end15.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end8.thread.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then14.i.if.then_crit_edge ]
  %37 = ptrtoint ptr %retval.0.i18 to i32
  br label %cleanup

if.end:                                           ; preds = %ffs_do_functionfs_bind.exit
  %call4 = tail call fastcc i32 @_ffs_func_bind(ptr noundef %c, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_fs_opts, ptr %retval.0.i, i32 0, i32 2
  %38 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %refcnt, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %ffs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ffs.i, align 4
  tail call fastcc void @functionfs_unbind(ptr noundef %41)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %37, %if.then ], [ %call4, %if.then6 ], [ %call4, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_func_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -36
  %ffs1 = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %eps = getelementptr i8, ptr %f, i32 -24
  %4 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eps, align 4
  %eps_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %eps_count, align 4
  %conv = zext i16 %7 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_unbind.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_unbind, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_unbind.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.150) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %func7 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func7, align 4
  %cmp = icmp eq ptr %9, %add.ptr.i
  br i1 %cmp, label %if.then9, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ffs_func_eps_disable(ptr noundef %add.ptr.i)
  %10 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %func7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.end.if.end11_crit_edge
  %io_completion_wq = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 39
  %11 = ptrtoint ptr %io_completion_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_completion_wq, align 4
  tail call void @drain_workqueue(ptr noundef %12) #15
  %refcnt = getelementptr inbounds %struct.f_fs_opts, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcnt, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.do.body16_crit_edge

if.end11.do.body16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @functionfs_unbind(ptr noundef %1)
  br label %do.body16

do.body16:                                        ; preds = %if.then13, %if.end11.do.body16_crit_edge
  %15 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ffs1, align 4
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %16, i32 0, i32 2
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eps_lock) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool28.not70 = icmp eq i16 %7, 0
  br i1 %tobool28.not70, label %do.body16.while.end_crit_edge, label %do.body16.while.body_crit_edge

do.body16.while.body_crit_edge:                   ; preds = %do.body16
  br label %while.body

do.body16.while.end_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %do.body16.while.body_crit_edge
  %dec2772.in = phi i32 [ %dec2772, %if.end35.while.body_crit_edge ], [ %conv, %do.body16.while.body_crit_edge ]
  %ep.071 = phi ptr [ %incdec.ptr, %if.end35.while.body_crit_edge ], [ %5, %do.body16.while.body_crit_edge ]
  %dec2772 = add nsw i32 %dec2772.in, -1
  %17 = ptrtoint ptr %ep.071 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep.071, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %while.body.if.end35_crit_edge, label %land.lhs.true

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

land.lhs.true:                                    ; preds = %while.body
  %req = getelementptr inbounds %struct.ffs_ep, ptr %ep.071, i32 0, i32 1
  %19 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %land.lhs.true.if.end35_crit_edge, label %if.then32

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @usb_ep_free_request(ptr noundef nonnull %18, ptr noundef nonnull %20) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true.if.end35_crit_edge, %while.body.if.end35_crit_edge
  %req36 = getelementptr inbounds %struct.ffs_ep, ptr %ep.071, i32 0, i32 1
  %21 = ptrtoint ptr %req36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %req36, align 4
  %incdec.ptr = getelementptr %struct.ffs_ep, ptr %ep.071, i32 1
  %tobool28.not = icmp eq i32 %dec2772, 0
  br i1 %tobool28.not, label %if.end35.while.end_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %do.body16.while.end_crit_edge
  %22 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ffs1, align 4
  %eps_lock38 = getelementptr inbounds %struct.ffs_data, ptr %23, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eps_lock38, i32 noundef %call22) #15
  %24 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eps, align 4
  tail call void @kfree(ptr noundef %25) #15
  %26 = ptrtoint ptr %eps to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %eps, align 4
  %fs_descriptors = getelementptr i8, ptr %f, i32 8
  %interfaces_nums = getelementptr i8, ptr %f, i32 -4
  %27 = ptrtoint ptr %interfaces_nums to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %interfaces_nums, align 4
  %waitq.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %28 = call ptr @memset(ptr %fs_descriptors, i32 0, i32 16)
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq.i) #15
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 1) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.i, i32 noundef %call2.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_func_set_alt(ptr noundef %f, i32 noundef %interface, i32 noundef %alt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -36
  %ffs1 = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %alt)
  %cmp.not = icmp eq i32 %alt, -1
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %entry
  %interfaces_nums.i = getelementptr i8, ptr %f, i32 -4
  %2 = ptrtoint ptr %interfaces_nums.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interfaces_nums.i, align 4
  %interfaces_count.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %interfaces_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not16.i = icmp eq i16 %5, 0
  br i1 %tobool.not16.i, label %if.then.cleanup_crit_edge, label %for.body.lr.ph.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %conv.i = zext i16 %5 to i32
  %conv4.i = and i32 %interface, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.018.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %nums.017.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %nums.017.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nums.017.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i = icmp sgt i16 %7, -1
  %conv1.i = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv1.i)
  %cmp5.i = icmp eq i32 %conv4.i, %conv1.i
  %or.cond.i = and i1 %cmp.i, %cmp5.i
  br i1 %or.cond.i, label %ffs_func_revmap_intf.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %count.018.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %nums.017.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ffs_func_revmap_intf.exit:                        ; preds = %for.body.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %nums.017.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp3 = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp3, label %ffs_func_revmap_intf.exit.cleanup_crit_edge, label %ffs_func_revmap_intf.exit.if.end6_crit_edge

ffs_func_revmap_intf.exit.if.end6_crit_edge:      ; preds = %ffs_func_revmap_intf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

ffs_func_revmap_intf.exit.cleanup_crit_edge:      ; preds = %ffs_func_revmap_intf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %ffs_func_revmap_intf.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %func7 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %func7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func7, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ffs_func_eps_disable(ptr noundef nonnull %9)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %11, label %if.end10.cleanup_crit_edge [
    i32 3, label %if.then13
    i32 2, label %if.end28
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %state, align 4
  %reset_work = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 41
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #15
  %14 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 41, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.151, ptr noundef nonnull @ffs_func_set_alt.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry18 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 41, i32 1
  %15 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 41, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry18, ptr %prev.i, align 4
  %func20 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 41, i32 2
  %17 = ptrtoint ptr %func20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ffs_reset_work, ptr %func20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %reset_work) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  br i1 %cmp.not, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %func7, align 4
  %waitq.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq.i) #15
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 3) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.i, i32 noundef %call2.i) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %20 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %func7, align 4
  %21 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ffs1, align 4
  %eps_lock.i = getelementptr inbounds %struct.ffs_data, ptr %22, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eps_lock.i) #15
  %23 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ffs1, align 4
  %eps_count.i = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %eps_count.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %eps_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not56.i = icmp eq i16 %26, 0
  br i1 %tobool.not56.i, label %if.end33.ffs_func_eps_enable.exit_crit_edge, label %while.body.lr.ph.i

if.end33.ffs_func_eps_enable.exit_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_func_eps_enable.exit

while.body.lr.ph.i:                               ; preds = %if.end33
  %epfiles.i = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 42
  %27 = ptrtoint ptr %epfiles.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %epfiles.i, align 4
  %eps.i = getelementptr i8, ptr %f, i32 -24
  %29 = ptrtoint ptr %eps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eps.i, align 4
  %gadget.i = getelementptr i8, ptr %f, i32 -32
  br label %while.body.i

while.body.i:                                     ; preds = %if.then20.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec59.in.i = phi i16 [ %26, %while.body.lr.ph.i ], [ %dec59.i, %if.then20.i.while.body.i_crit_edge ]
  %ep.058.i = phi ptr [ %30, %while.body.lr.ph.i ], [ %incdec.ptr.i64, %if.then20.i.while.body.i_crit_edge ]
  %epfile.057.i = phi ptr [ %28, %while.body.lr.ph.i ], [ %incdec.ptr30.i, %if.then20.i.while.body.i_crit_edge ]
  %dec59.i = add i16 %dec59.in.i, -1
  %31 = ptrtoint ptr %ep.058.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep.058.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ep.058.i, ptr %32, align 4
  %34 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gadget.i, align 4
  %36 = load ptr, ptr %ep.058.i, align 4
  %call9.i = tail call i32 @config_ep_by_speed(ptr noundef %35, ptr noundef %f, ptr noundef %36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %37 = ptrtoint ptr %ep.058.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ep.058.i, align 4
  br i1 %tobool10.not.i, label %if.end.i, label %do.end13.i

do.end13.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef %40, i32 noundef %call9.i) #21
  br label %ffs_func_eps_enable.exit

if.end.i:                                         ; preds = %while.body.i
  %call18.i = tail call i32 @usb_ep_enable(ptr noundef %38) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end.i.ffs_func_eps_enable.exit_crit_edge

if.end.i.ffs_func_eps_enable.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_func_eps_enable.exit

if.then20.i:                                      ; preds = %if.end.i
  %ep21.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.057.i, i32 0, i32 2
  %41 = ptrtoint ptr %ep21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ep.058.i, ptr %ep21.i, align 4
  %42 = ptrtoint ptr %ep.058.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep.058.i, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc.i, align 4
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bEndpointAddress.i.i, align 1
  %.lobit.i.i = lshr i8 %47, 7
  %in.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.057.i, i32 0, i32 6
  %48 = ptrtoint ptr %in.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.lobit.i.i, ptr %in.i, align 1
  %49 = load ptr, ptr %ep.058.i, align 4
  %desc26.i = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %desc26.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc26.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bmAttributes.i.i, align 1
  %54 = and i8 %53, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp.i.i = icmp eq i8 %54, 1
  %conv28.i = zext i1 %cmp.i.i to i8
  %isoc.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.057.i, i32 0, i32 7
  %55 = ptrtoint ptr %isoc.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv28.i, ptr %isoc.i, align 2
  %incdec.ptr.i64 = getelementptr %struct.ffs_ep, ptr %ep.058.i, i32 1
  %incdec.ptr30.i = getelementptr %struct.ffs_epfile, ptr %epfile.057.i, i32 1
  %tobool.not.i65 = icmp eq i16 %dec59.i, 0
  br i1 %tobool.not.i65, label %if.then20.i.ffs_func_eps_enable.exit_crit_edge, label %if.then20.i.while.body.i_crit_edge

if.then20.i.while.body.i_crit_edge:               ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.then20.i.ffs_func_eps_enable.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ffs_func_eps_enable.exit

ffs_func_eps_enable.exit:                         ; preds = %if.then20.i.ffs_func_eps_enable.exit_crit_edge, %if.end.i.ffs_func_eps_enable.exit_crit_edge, %do.end13.i, %if.end33.ffs_func_eps_enable.exit_crit_edge
  %ret.1.i = phi i32 [ %call9.i, %do.end13.i ], [ 0, %if.end33.ffs_func_eps_enable.exit_crit_edge ], [ %call18.i, %if.end.i.ffs_func_eps_enable.exit_crit_edge ], [ 0, %if.then20.i.ffs_func_eps_enable.exit_crit_edge ]
  %wait.i = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  %56 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ffs1, align 4
  %eps_lock32.i = getelementptr inbounds %struct.ffs_data, ptr %57, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eps_lock32.i, i32 noundef %call3.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.i)
  %cmp36 = icmp sgt i32 %ret.1.i, -1
  br i1 %cmp36, label %if.then38, label %ffs_func_eps_enable.exit.cleanup_crit_edge

ffs_func_eps_enable.exit.cleanup_crit_edge:       ; preds = %ffs_func_eps_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then38:                                        ; preds = %ffs_func_eps_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %waitq.i66 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq.i66) #15
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 2) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.i66, i32 noundef %call2.i67) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %ffs_func_eps_enable.exit.cleanup_crit_edge, %if.then31, %if.then13, %if.end10.cleanup_crit_edge, %ffs_func_revmap_intf.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then13 ], [ 0, %if.then31 ], [ %sub.ptr.div.i, %ffs_func_revmap_intf.exit.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ %ret.1.i, %if.then38 ], [ %ret.1.i, %ffs_func_eps_enable.exit.cleanup_crit_edge ], [ -33, %if.then.cleanup_crit_edge ], [ -33, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_func_disable(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ffs_func_set_alt(ptr noundef %f, i32 noundef 0, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffs_func_setup(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %creq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -36
  %ffs1 = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_setup.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_setup, %do.body6)) #15
          to label %if.then [label %do.body6], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_setup.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.154) #15
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_setup.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_setup, %do.body24)) #15
          to label %if.then20 [label %do.body24], !srcloc !480

if.then20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %creq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %creq, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_setup.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.155, i32 noundef %conv) #15
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %do.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_setup.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_setup, %do.body43)) #15
          to label %if.then38 [label %do.body43], !srcloc !480

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 1
  %4 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequest, align 1
  %conv39 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_setup.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.156, i32 noundef %conv39) #15
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_setup.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_setup, %do.body62)) #15
          to label %if.then57 [label %do.body62], !srcloc !480

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 2
  %6 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wValue, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv58 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_setup.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.157, i32 noundef %conv58) #15
  br label %do.body62

do.body62:                                        ; preds = %if.then57, %do.body43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_setup.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_setup, %do.body81)) #15
          to label %if.then76 [label %do.body81], !srcloc !480

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #17
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 3
  %9 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wIndex, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv77 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_setup.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.158, i32 noundef %conv77) #15
  br label %do.body81

do.body81:                                        ; preds = %if.then76, %do.body62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_setup.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_setup, %do.end99)) #15
          to label %if.then95 [label %do.end99], !srcloc !480

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #17
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 4
  %12 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wLength, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv96 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_setup.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.159, i32 noundef %conv96) #15
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body81
  %state = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not = icmp eq i32 %16, 2
  br i1 %cmp.not, label %if.end102, label %do.end99.cleanup_crit_edge

do.end99.cleanup_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end102:                                        ; preds = %do.end99
  %17 = ptrtoint ptr %creq to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %creq, align 1
  %19 = and i8 %18, 31
  %and = zext i8 %19 to i32
  %20 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb112
  ]

sw.bb:                                            ; preds = %if.end102
  %interfaces_nums.i = getelementptr i8, ptr %f, i32 -4
  %21 = ptrtoint ptr %interfaces_nums.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %interfaces_nums.i, align 4
  %23 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ffs1, align 4
  %interfaces_count.i = getelementptr inbounds %struct.ffs_data, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %interfaces_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not16.i = icmp eq i16 %26, 0
  br i1 %tobool.not16.i, label %sw.bb.cleanup_crit_edge, label %for.body.lr.ph.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %wIndex105 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 3
  %27 = ptrtoint ptr %wIndex105 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wIndex105, align 1
  %29 = lshr i16 %28, 8
  %conv.i = zext i16 %26 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.018.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %nums.017.i = phi ptr [ %22, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %nums.017.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nums.017.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp.i = icmp sgt i16 %31, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %29)
  %cmp5.i = icmp eq i16 %31, %29
  %or.cond.i = and i1 %cmp.i, %cmp5.i
  br i1 %or.cond.i, label %ffs_func_revmap_intf.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %count.018.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %nums.017.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ffs_func_revmap_intf.exit:                        ; preds = %for.body.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %nums.017.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp108 = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp108, label %ffs_func_revmap_intf.exit.cleanup_crit_edge, label %ffs_func_revmap_intf.exit.do.body136_crit_edge

ffs_func_revmap_intf.exit.do.body136_crit_edge:   ; preds = %ffs_func_revmap_intf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body136

ffs_func_revmap_intf.exit.cleanup_crit_edge:      ; preds = %ffs_func_revmap_intf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb112:                                         ; preds = %if.end102
  %wIndex113 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 3
  %32 = ptrtoint ptr %wIndex113 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wIndex113, align 1
  %34 = lshr i16 %33, 8
  %35 = and i16 %34, 15
  %36 = zext i16 %35 to i32
  %arrayidx.i = getelementptr %struct.ffs_function, ptr %add.ptr.i, i32 0, i32 4, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i202 = icmp eq i8 %38, 0
  %conv1.i203 = zext i8 %38 to i32
  %spec.select.i = select i1 %tobool.not.i202, i32 -33, i32 %conv1.i203
  br i1 %tobool.not.i202, label %sw.bb112.cleanup_crit_edge, label %if.end119

sw.bb112.cleanup_crit_edge:                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end119:                                        ; preds = %sw.bb112
  %39 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ffs1, align 4
  %user_flags = getelementptr inbounds %struct.ffs_data, ptr %40, i32 0, i32 28
  %41 = ptrtoint ptr %user_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %user_flags, align 4
  %and121 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end119.do.body136_crit_edge, label %if.then123

if.end119.do.body136_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body136

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr %struct.ffs_data, ptr %40, i32 0, i32 29, i32 %spec.select.i
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %conv125 = zext i8 %44 to i32
  br label %do.body136

sw.default:                                       ; preds = %if.end102
  %45 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ffs1, align 4
  %user_flags128 = getelementptr inbounds %struct.ffs_data, ptr %46, i32 0, i32 28
  %47 = ptrtoint ptr %user_flags128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %user_flags128, align 4
  %and129 = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %sw.default.cleanup_crit_edge, label %if.then131

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then131:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %wIndex132 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 3
  %49 = ptrtoint ptr %wIndex132 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %wIndex132, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv133 = zext i16 %51 to i32
  br label %do.body136

do.body136:                                       ; preds = %if.then131, %if.then123, %if.end119.do.body136_crit_edge, %ffs_func_revmap_intf.exit.do.body136_crit_edge
  %ret.0 = phi i32 [ %conv133, %if.then131 ], [ %conv125, %if.then123 ], [ %conv1.i203, %if.end119.do.body136_crit_edge ], [ %sub.ptr.div.i, %ffs_func_revmap_intf.exit.do.body136_crit_edge ]
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %call141 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq) #15
  %setup = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 3
  %52 = ptrtoint ptr %creq to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %creq, align 1
  %54 = ptrtoint ptr %setup to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %setup, align 4
  %conv147 = trunc i32 %ret.0 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv147)
  %wIndex150 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 3, i32 3
  %56 = ptrtoint ptr %wIndex150 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %wIndex150, align 4
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq, i32 noundef %call141) #15
  %wLength154 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 4
  %57 = ptrtoint ptr %wLength154 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %wLength154, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp156 = icmp eq i16 %58, 0
  %cond = select i1 %cmp156, i32 32767, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.body136, %sw.default.cleanup_crit_edge, %sw.bb112.cleanup_crit_edge, %ffs_func_revmap_intf.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end99.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.body136 ], [ -19, %do.end99.cleanup_crit_edge ], [ %sub.ptr.div.i, %ffs_func_revmap_intf.exit.cleanup_crit_edge ], [ -33, %sw.bb112.cleanup_crit_edge ], [ -95, %sw.default.cleanup_crit_edge ], [ -33, %sw.bb.cleanup_crit_edge ], [ -33, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ffs_func_req_match(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %creq, i1 noundef zeroext %config0) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -36
  br i1 %config0, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ffs = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs, align 4
  %user_flags = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %user_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %user_flags, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %creq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %creq, align 1
  %6 = and i8 %5, 31
  %and2 = zext i8 %6 to i32
  %7 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %and2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %interfaces_nums.i = getelementptr i8, ptr %f, i32 -4
  %8 = ptrtoint ptr %interfaces_nums.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interfaces_nums.i, align 4
  %ffs.i = getelementptr i8, ptr %f, i32 -28
  %10 = ptrtoint ptr %ffs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ffs.i, align 4
  %interfaces_count.i = getelementptr inbounds %struct.ffs_data, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %interfaces_count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not16.i = icmp eq i16 %13, 0
  br i1 %tobool.not16.i, label %sw.bb.cleanup_crit_edge, label %for.body.lr.ph.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 3
  %14 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wIndex, align 1
  %16 = lshr i16 %15, 8
  %conv.i = zext i16 %13 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.018.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %nums.017.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %nums.017.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nums.017.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp.i = icmp sgt i16 %18, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %16)
  %cmp5.i = icmp eq i16 %18, %16
  %or.cond.i = and i1 %cmp.i, %cmp5.i
  br i1 %or.cond.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.lhs.cast.i = ptrtoint ptr %nums.017.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.ptr.sub.i)
  %phi.cmp = icmp sgt i32 %sub.ptr.sub.i, -1
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %count.018.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %nums.017.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %wIndex7 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %creq, i32 0, i32 3
  %19 = ptrtoint ptr %wIndex7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wIndex7, align 1
  %21 = lshr i16 %20, 8
  %22 = and i16 %21, 15
  %23 = zext i16 %22 to i32
  %arrayidx.i = getelementptr %struct.ffs_function, ptr %add.ptr.i, i32 0, i32 4, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i21 = icmp ne i8 %25, 0
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ffs12 = getelementptr i8, ptr %f, i32 -28
  %26 = ptrtoint ptr %ffs12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ffs12, align 4
  %user_flags13 = getelementptr inbounds %struct.ffs_data, ptr %27, i32 0, i32 28
  %28 = ptrtoint ptr %user_flags13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %user_flags13, align 4
  %and14 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15 = icmp ne i32 %and14, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %for.inc.i.cleanup_crit_edge, %if.then.i, %sw.bb.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool15, %sw.default ], [ %tobool.not.i21, %sw.bb6 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ %phi.cmp, %if.then.i ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_func_suspend(ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_suspend.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_suspend, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_suspend.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.160) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ffs = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs, align 4
  %waitq.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq.i) #15
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 5) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.i, i32 noundef %call2.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_func_resume(ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_func_resume.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_func_resume, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_func_resume.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.161) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ffs = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs, align 4
  %waitq.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq.i) #15
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 6) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.i, i32 noundef %call2.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_free(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -36
  tail call void @kfree(ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ffs_func_bind(ptr nocapture noundef readonly %c, ptr noundef %f) unnamed_addr #0 align 64 {
entry:
  %current_class.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -36
  %ffs1 = getelementptr i8, ptr %f, i32 -28
  %0 = ptrtoint ptr %ffs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs1, align 4
  %fs_descs_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %fs_descs_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fs_descs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %hs_descs_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %hs_descs_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_descs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %ss_descs_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ss_descs_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ss_descs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  %eps_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 32
  %add29 = add i32 %3, 1
  %spec.select786 = select i1 %tobool.not, i32 0, i32 %add29
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select786, i32 4) #15
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %retval.0.i709 = select i1 %9, i32 -1, i32 %10
  %11 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %eps_count, align 4
  %conv = zext i16 %12 to i32
  %13 = mul nuw nsw i32 %conv, 28
  %14 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %13, i32 %retval.0.i709)
  %15 = extractvalue { i32, i1 } %14, 1
  %spec.select = tail call i32 @llvm.uadd.sat.i32(i32 %13, i32 %retval.0.i709)
  %spec.select687 = select i1 %15, i32 0, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp63.not = icmp eq i32 %spec.select, -1
  br i1 %cmp63.not, label %entry.if.end114.thread_crit_edge, label %if.end83

entry.if.end114.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.thread

if.end83:                                         ; preds = %entry
  %add57 = add i32 %5, 1
  %spec.select787 = select i1 %tobool5.not, i32 0, i32 %add57
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select787, i32 4) #15
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %retval.0.i710 = select i1 %17, i32 -1, i32 %18
  %add67 = add i32 %spec.select, 3
  %and69 = and i32 %add67, -4
  %19 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and69, i32 %retval.0.i710)
  %20 = extractvalue { i32, i1 } %19, 1
  %spec.select688 = tail call i32 @llvm.uadd.sat.i32(i32 %and69, i32 %retval.0.i710)
  %spec.select689 = select i1 %20, i32 0, i32 %and69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select688)
  %cmp94.not = icmp eq i32 %spec.select688, -1
  br i1 %cmp94.not, label %if.end83.if.end114.thread_crit_edge, label %if.then96

if.end83.if.end114.thread_crit_edge:              ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.thread

if.then96:                                        ; preds = %if.end83
  %add88 = add i32 %7, 1
  %spec.select788 = select i1 %tobool11.not, i32 0, i32 %add88
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select788, i32 4) #15
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %retval.0.i711 = select i1 %22, i32 -1, i32 %23
  %add98 = add i32 %spec.select688, 3
  %and100 = and i32 %add98, -4
  %24 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and100, i32 %retval.0.i711)
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  br i1 %25, label %if.then96.if.end114.thread_crit_edge, label %if.end114

if.then96.if.end114.thread_crit_edge:             ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.thread

if.end114.thread:                                 ; preds = %if.then96.if.end114.thread_crit_edge, %if.end83.if.end114.thread_crit_edge, %entry.if.end114.thread_crit_edge
  %offset62.1815 = phi i32 [ %spec.select689, %if.end83.if.end114.thread_crit_edge ], [ %spec.select689, %if.then96.if.end114.thread_crit_edge ], [ 0, %entry.if.end114.thread_crit_edge ]
  %interfaces_count723 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 31
  %27 = ptrtoint ptr %interfaces_count723 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %interfaces_count723, align 2
  %conv116724 = zext i16 %28 to i32
  %29 = shl nuw nsw i32 %conv116724, 1
  br label %if.end139.thread

if.end114:                                        ; preds = %if.then96
  %interfaces_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 31
  %30 = ptrtoint ptr %interfaces_count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %interfaces_count, align 2
  %conv116 = zext i16 %31 to i32
  %32 = shl nuw nsw i32 %conv116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp119.not = icmp eq i32 %26, -1
  br i1 %cmp119.not, label %if.end114.if.end139.thread_crit_edge, label %if.end139

if.end114.if.end139.thread_crit_edge:             ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139.thread

if.end139.thread:                                 ; preds = %if.end114.if.end139.thread_crit_edge, %if.end114.thread
  %offset62.1814.ph = phi i32 [ %offset62.1815, %if.end114.thread ], [ %spec.select689, %if.end114.if.end139.thread_crit_edge ]
  %retval.0.i712731.ph = phi i32 [ %29, %if.end114.thread ], [ %32, %if.end114.if.end139.thread_crit_edge ]
  %conv116730.ph = phi i32 [ %conv116724, %if.end114.thread ], [ %conv116, %if.end114.if.end139.thread_crit_edge ]
  %interfaces_count728.ph = phi ptr [ %interfaces_count723, %if.end114.thread ], [ %interfaces_count, %if.end114.if.end139.thread_crit_edge ]
  %offset93.1727.ph = phi i32 [ 0, %if.end114.thread ], [ %and100, %if.end114.if.end139.thread_crit_edge ]
  %cdev823 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %33 = ptrtoint ptr %cdev823 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cdev823, align 4
  %use_os_string824 = getelementptr inbounds %struct.usb_composite_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %use_os_string824 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load825 = load i8, ptr %use_os_string824, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load825)
  %tobool141.not826 = icmp sgt i8 %bf.load825, -1
  br label %if.end170

if.end139:                                        ; preds = %if.end114
  %add123 = add nuw i32 %26, 1
  %and125 = and i32 %add123, -2
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and125, i32 %32)
  %37 = extractvalue { i32, i1 } %36, 1
  %spec.select692 = tail call i32 @llvm.uadd.sat.i32(i32 %and125, i32 %32)
  %spec.select693 = select i1 %37, i32 0, i32 %and125
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %38 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cdev, align 4
  %use_os_string = getelementptr inbounds %struct.usb_composite_dev, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %use_os_string to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %use_os_string, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool141.not = icmp sgt i8 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select692)
  %cmp150.not = icmp eq i32 %spec.select692, -1
  br i1 %cmp150.not, label %if.end139.if.end170_crit_edge, label %if.then152

if.end139.if.end170_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end170

if.then152:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  %conv116730.op = shl nuw nsw i32 %conv116, 3
  %41 = select i1 %tobool141.not, i32 0, i32 %conv116730.op
  %add154 = add i32 %spec.select692, 3
  %and156 = and i32 %add154, -4
  %42 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and156, i32 %41)
  %43 = extractvalue { i32, i1 } %42, 1
  %spec.select694 = tail call i32 @llvm.uadd.sat.i32(i32 %and156, i32 %41)
  %spec.select695 = select i1 %43, i32 0, i32 %and156
  br label %if.end170

if.end170:                                        ; preds = %if.then152, %if.end139.if.end170_crit_edge, %if.end139.thread
  %tobool141.not837 = phi i1 [ %tobool141.not, %if.then152 ], [ %tobool141.not, %if.end139.if.end170_crit_edge ], [ %tobool141.not826, %if.end139.thread ]
  %cdev836 = phi ptr [ %cdev, %if.then152 ], [ %cdev, %if.end139.if.end170_crit_edge ], [ %cdev823, %if.end139.thread ]
  %offset118.1835 = phi i32 [ %spec.select693, %if.then152 ], [ %spec.select693, %if.end139.if.end170_crit_edge ], [ 0, %if.end139.thread ]
  %offset93.1727834 = phi i32 [ %and100, %if.then152 ], [ %and100, %if.end139.if.end170_crit_edge ], [ %offset93.1727.ph, %if.end139.thread ]
  %interfaces_count728831 = phi ptr [ %interfaces_count, %if.then152 ], [ %interfaces_count, %if.end139.if.end170_crit_edge ], [ %interfaces_count728.ph, %if.end139.thread ]
  %conv116730830 = phi i32 [ %conv116, %if.then152 ], [ %conv116, %if.end139.if.end170_crit_edge ], [ %conv116730.ph, %if.end139.thread ]
  %retval.0.i712731829 = phi i32 [ %32, %if.then152 ], [ %32, %if.end139.if.end170_crit_edge ], [ %retval.0.i712731.ph, %if.end139.thread ]
  %offset62.1814828 = phi i32 [ %spec.select689, %if.then152 ], [ %spec.select689, %if.end139.if.end170_crit_edge ], [ %offset62.1814.ph, %if.end139.thread ]
  %d__next.11 = phi i32 [ %spec.select694, %if.then152 ], [ -1, %if.end139.if.end170_crit_edge ], [ -1, %if.end139.thread ]
  %offset149.1 = phi i32 [ %spec.select695, %if.then152 ], [ 0, %if.end139.if.end170_crit_edge ], [ 0, %if.end139.thread ]
  %conv116730.op793 = shl nuw nsw i32 %conv116730830, 4
  %44 = select i1 %tobool141.not837, i32 0, i32 %conv116730.op793
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %d__next.11)
  %cmp186.not = icmp eq i32 %d__next.11, -1
  %45 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %d__next.11, i32 %44)
  %46 = extractvalue { i32, i1 } %45, 1
  %spec.select696 = tail call i32 @llvm.uadd.sat.i32(i32 %d__next.11, i32 %44)
  %47 = select i1 %cmp186.not, i1 true, i1 %46
  %offset185.1 = select i1 %47, i32 0, i32 %d__next.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select696)
  %cmp222.not795 = icmp eq i32 %spec.select696, -1
  %cmp222.not = select i1 %cmp186.not, i1 true, i1 %cmp222.not795
  br i1 %cmp222.not, label %if.end170.if.end314.thread_crit_edge, label %if.then224

if.end170.if.end314.thread_crit_edge:             ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.then224:                                       ; preds = %if.end170
  %conv116730.op794 = mul nuw nsw i32 %conv116730830, 108
  %48 = select i1 %tobool141.not837, i32 0, i32 %conv116730.op794
  %add226 = add i32 %spec.select696, 3
  %and228 = and i32 %add226, -4
  %49 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %and228, i32 %48)
  %50 = extractvalue { i32, i1 } %49, 1
  %51 = extractvalue { i32, i1 } %49, 0
  br i1 %50, label %if.then224.if.end314.thread_crit_edge, label %if.then248

if.then224.if.end314.thread_crit_edge:            ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.then248:                                       ; preds = %if.then224
  %ms_os_descs_ext_prop_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 22
  %52 = ptrtoint ptr %ms_os_descs_ext_prop_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ms_os_descs_ext_prop_count, align 4
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 80) #15
  %55 = extractvalue { i32, i1 } %54, 1
  %56 = extractvalue { i32, i1 } %54, 0
  %retval.0.i716 = select i1 %55, i32 -1, i32 %56
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %51, i32 %retval.0.i716)
  %58 = extractvalue { i32, i1 } %57, 1
  %59 = extractvalue { i32, i1 } %57, 0
  br i1 %58, label %if.then248.if.end314.thread_crit_edge, label %if.end266

if.then248.if.end314.thread_crit_edge:            ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.end266:                                        ; preds = %if.then248
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp270.not = icmp eq i32 %59, -1
  br i1 %cmp270.not, label %if.end266.if.end314.thread_crit_edge, label %if.then272

if.end266.if.end314.thread_crit_edge:             ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.then272:                                       ; preds = %if.end266
  %ms_os_descs_ext_prop_name_len = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 23
  %60 = ptrtoint ptr %ms_os_descs_ext_prop_name_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ms_os_descs_ext_prop_name_len, align 4
  %62 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %59, i32 %61)
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  br i1 %63, label %if.then272.if.end314.thread_crit_edge, label %if.end290

if.then272.if.end314.thread_crit_edge:            ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.end290:                                        ; preds = %if.then272
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp294.not = icmp eq i32 %64, -1
  br i1 %cmp294.not, label %if.end290.if.end314.thread_crit_edge, label %if.then296

if.end290.if.end314.thread_crit_edge:             ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.then296:                                       ; preds = %if.end290
  %ms_os_descs_ext_prop_data_len = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 24
  %65 = ptrtoint ptr %ms_os_descs_ext_prop_data_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ms_os_descs_ext_prop_data_len, align 4
  %67 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %64, i32 %66)
  %68 = extractvalue { i32, i1 } %67, 1
  %69 = extractvalue { i32, i1 } %67, 0
  br i1 %68, label %if.then296.if.end314.thread_crit_edge, label %if.end314

if.then296.if.end314.thread_crit_edge:            ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314.thread

if.end314.thread:                                 ; preds = %if.then296.if.end314.thread_crit_edge, %if.end290.if.end314.thread_crit_edge, %if.then272.if.end314.thread_crit_edge, %if.end266.if.end314.thread_crit_edge, %if.then248.if.end314.thread_crit_edge, %if.then224.if.end314.thread_crit_edge, %if.end170.if.end314.thread_crit_edge
  %offset269.1758.ph = phi i32 [ %59, %if.end290.if.end314.thread_crit_edge ], [ 0, %if.end266.if.end314.thread_crit_edge ], [ 0, %if.end170.if.end314.thread_crit_edge ], [ 0, %if.then224.if.end314.thread_crit_edge ], [ 0, %if.then248.if.end314.thread_crit_edge ], [ 0, %if.then272.if.end314.thread_crit_edge ], [ %59, %if.then296.if.end314.thread_crit_edge ]
  %offset221.1738746757.ph = phi i32 [ %and228, %if.end290.if.end314.thread_crit_edge ], [ %and228, %if.end266.if.end314.thread_crit_edge ], [ 0, %if.end170.if.end314.thread_crit_edge ], [ 0, %if.then224.if.end314.thread_crit_edge ], [ %and228, %if.then248.if.end314.thread_crit_edge ], [ %and228, %if.then272.if.end314.thread_crit_edge ], [ %and228, %if.then296.if.end314.thread_crit_edge ]
  %offset245.1747756.ph = phi i32 [ %51, %if.end290.if.end314.thread_crit_edge ], [ %51, %if.end266.if.end314.thread_crit_edge ], [ 0, %if.end170.if.end314.thread_crit_edge ], [ 0, %if.then224.if.end314.thread_crit_edge ], [ 0, %if.then248.if.end314.thread_crit_edge ], [ %51, %if.then272.if.end314.thread_crit_edge ], [ %51, %if.then296.if.end314.thread_crit_edge ]
  %raw_descs_length765 = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 17
  %70 = ptrtoint ptr %raw_descs_length765 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %raw_descs_length765, align 4
  br label %if.end338

if.end314:                                        ; preds = %if.then296
  %raw_descs_length = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 17
  %72 = ptrtoint ptr %raw_descs_length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %raw_descs_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp318.not = icmp eq i32 %69, -1
  br i1 %cmp318.not, label %if.end314.if.end338_crit_edge, label %if.then320

if.end314.if.end338_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end338

if.then320:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #17
  %74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %69, i32 %73)
  %75 = extractvalue { i32, i1 } %74, 1
  %spec.select706 = tail call i32 @llvm.uadd.sat.i32(i32 %69, i32 %73)
  %spec.select707 = select i1 %75, i32 0, i32 %69
  br label %if.end338

if.end338:                                        ; preds = %if.then320, %if.end314.if.end338_crit_edge, %if.end314.thread
  %retval.0.i719773 = phi i32 [ %73, %if.then320 ], [ %73, %if.end314.if.end338_crit_edge ], [ %71, %if.end314.thread ]
  %raw_descs_length772 = phi ptr [ %raw_descs_length, %if.then320 ], [ %raw_descs_length, %if.end314.if.end338_crit_edge ], [ %raw_descs_length765, %if.end314.thread ]
  %offset293.1771 = phi i32 [ %64, %if.then320 ], [ %64, %if.end314.if.end338_crit_edge ], [ 0, %if.end314.thread ]
  %offset245.1747756770 = phi i32 [ %51, %if.then320 ], [ %51, %if.end314.if.end338_crit_edge ], [ %offset245.1747756.ph, %if.end314.thread ]
  %offset221.1738746757769 = phi i32 [ %and228, %if.then320 ], [ %and228, %if.end314.if.end338_crit_edge ], [ %offset221.1738746757.ph, %if.end314.thread ]
  %offset269.1758768 = phi i32 [ %59, %if.then320 ], [ %59, %if.end314.if.end338_crit_edge ], [ %offset269.1758.ph, %if.end314.thread ]
  %d__next.23 = phi i32 [ %spec.select706, %if.then320 ], [ -1, %if.end314.if.end338_crit_edge ], [ -1, %if.end314.thread ]
  %offset317.1 = phi i32 [ %spec.select707, %if.then320 ], [ 0, %if.end314.if.end338_crit_edge ], [ 0, %if.end314.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ffs_func_bind.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_ffs_func_bind, %do.end)) #15
          to label %if.then351 [label %do.end], !srcloc !480

if.then351:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ffs_func_bind.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.133) #15
  br label %do.end

do.end:                                           ; preds = %if.then351, %if.end338
  %76 = or i32 %5, %3
  %77 = or i32 %76, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %.not = icmp eq i32 %77, 0
  br i1 %.not, label %do.end.cleanup_crit_edge, label %if.end8.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %do.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %d__next.23, i32 noundef 3520) #22
  %tobool358.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool358.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end360

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end360:                                        ; preds = %if.end8.i.i
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %offset245.1747756770
  %ms_os_descs_ext_prop_avail = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 25
  %78 = ptrtoint ptr %ms_os_descs_ext_prop_avail to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr, ptr %ms_os_descs_ext_prop_avail, align 4
  %add.ptr361 = getelementptr i8, ptr %call9.i.i, i32 %offset269.1758768
  %ms_os_descs_ext_prop_name_avail = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 26
  %79 = ptrtoint ptr %ms_os_descs_ext_prop_name_avail to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr361, ptr %ms_os_descs_ext_prop_name_avail, align 4
  %add.ptr362 = getelementptr i8, ptr %call9.i.i, i32 %offset293.1771
  %ms_os_descs_ext_prop_data_avail = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 27
  %80 = ptrtoint ptr %ms_os_descs_ext_prop_data_avail to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr362, ptr %ms_os_descs_ext_prop_data_avail, align 4
  %add.ptr363 = getelementptr i8, ptr %call9.i.i, i32 %offset317.1
  %raw_descs = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 16
  %81 = ptrtoint ptr %raw_descs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %raw_descs, align 4
  %83 = ptrtoint ptr %raw_descs_length772 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %raw_descs_length772, align 4
  %85 = call ptr @memcpy(ptr %add.ptr363, ptr %82, i32 %84)
  %add.ptr365 = getelementptr i8, ptr %call9.i.i, i32 %offset118.1835
  %86 = call ptr @memset(ptr %add.ptr365, i32 255, i32 %retval.0.i712731829)
  %87 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %eps_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp369800.not = icmp eq i16 %88, 0
  br i1 %cmp369800.not, label %if.end360.for.end_crit_edge, label %if.end360.for.body_crit_edge

if.end360.for.body_crit_edge:                     ; preds = %if.end360
  br label %for.body

if.end360.for.end_crit_edge:                      ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end360.for.body_crit_edge
  %i.0801 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end360.for.body_crit_edge ]
  %num = getelementptr %struct.ffs_ep, ptr %call9.i.i, i32 %i.0801, i32 3
  %89 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %num, align 4
  %inc = add nuw nsw i32 %i.0801, 1
  %90 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %eps_count, align 4
  %conv368 = zext i16 %91 to i32
  %cmp369 = icmp ult i32 %inc, %conv368
  br i1 %cmp369, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end360.for.end_crit_edge
  %eps = getelementptr i8, ptr %f, i32 -24
  %92 = ptrtoint ptr %eps to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call9.i.i, ptr %eps, align 4
  %interfaces_nums = getelementptr i8, ptr %f, i32 -4
  %93 = ptrtoint ptr %interfaces_nums to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr365, ptr %interfaces_nums, align 4
  br i1 %tobool.not, label %for.end.if.end383_crit_edge, label %if.then374

for.end.if.end383_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end383

if.then374:                                       ; preds = %for.end
  %add.ptr375 = getelementptr i8, ptr %call9.i.i, i32 %spec.select687
  %fs_descriptors = getelementptr i8, ptr %f, i32 8
  %94 = ptrtoint ptr %fs_descriptors to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr375, ptr %fs_descriptors, align 4
  %95 = ptrtoint ptr %fs_descs_count to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fs_descs_count, align 4
  %call378 = tail call fastcc i32 @ffs_do_descs(i32 noundef %96, ptr noundef %add.ptr363, i32 noundef %retval.0.i719773, ptr noundef nonnull @__ffs_func_bind_do_descs, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %cmp379 = icmp slt i32 %call378, 0
  br i1 %cmp379, label %if.then374.cleanup_crit_edge, label %if.then374.if.end383_crit_edge

if.then374.if.end383_crit_edge:                   ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end383

if.then374.cleanup_crit_edge:                     ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end383:                                        ; preds = %if.then374.if.end383_crit_edge, %for.end.if.end383_crit_edge
  %fs_len.0 = phi i32 [ %call378, %if.then374.if.end383_crit_edge ], [ 0, %for.end.if.end383_crit_edge ]
  br i1 %tobool5.not, label %if.end383.if.end397_crit_edge, label %if.then385

if.end383.if.end397_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end397

if.then385:                                       ; preds = %if.end383
  %add.ptr386 = getelementptr i8, ptr %call9.i.i, i32 %offset62.1814828
  %hs_descriptors = getelementptr i8, ptr %f, i32 12
  %97 = ptrtoint ptr %hs_descriptors to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr386, ptr %hs_descriptors, align 4
  %98 = ptrtoint ptr %hs_descs_count to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hs_descs_count, align 4
  %add.ptr390 = getelementptr i8, ptr %add.ptr363, i32 %fs_len.0
  %sub = sub i32 %retval.0.i719773, %fs_len.0
  %call391 = tail call fastcc i32 @ffs_do_descs(i32 noundef %99, ptr noundef %add.ptr390, i32 noundef %sub, ptr noundef nonnull @__ffs_func_bind_do_descs, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %cmp392 = icmp slt i32 %call391, 0
  br i1 %cmp392, label %if.then385.cleanup_crit_edge, label %if.then385.if.end397_crit_edge

if.then385.if.end397_crit_edge:                   ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end397

if.then385.cleanup_crit_edge:                     ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end397:                                        ; preds = %if.then385.if.end397_crit_edge, %if.end383.if.end397_crit_edge
  %hs_len.0 = phi i32 [ %call391, %if.then385.if.end397_crit_edge ], [ 0, %if.end383.if.end397_crit_edge ]
  br i1 %tobool11.not, label %if.end397.if.end415_crit_edge, label %if.then399

if.end397.if.end415_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end415

if.then399:                                       ; preds = %if.end397
  %add.ptr400 = getelementptr i8, ptr %call9.i.i, i32 %offset93.1727834
  %ssp_descriptors = getelementptr i8, ptr %f, i32 20
  %100 = ptrtoint ptr %ssp_descriptors to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr400, ptr %ssp_descriptors, align 4
  %ss_descriptors = getelementptr i8, ptr %f, i32 16
  %101 = ptrtoint ptr %ss_descriptors to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr400, ptr %ss_descriptors, align 4
  %102 = ptrtoint ptr %ss_descs_count to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ss_descs_count, align 4
  %add.ptr405 = getelementptr i8, ptr %add.ptr363, i32 %fs_len.0
  %add.ptr406 = getelementptr i8, ptr %add.ptr405, i32 %hs_len.0
  %104 = add nuw i32 %fs_len.0, %hs_len.0
  %sub408 = sub i32 %retval.0.i719773, %104
  %call409 = tail call fastcc i32 @ffs_do_descs(i32 noundef %103, ptr noundef %add.ptr406, i32 noundef %sub408, ptr noundef nonnull @__ffs_func_bind_do_descs, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %cmp410 = icmp slt i32 %call409, 0
  br i1 %cmp410, label %if.then399.cleanup_crit_edge, label %if.then399.if.end415_crit_edge

if.then399.if.end415_crit_edge:                   ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end415

if.then399.cleanup_crit_edge:                     ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end415:                                        ; preds = %if.then399.if.end415_crit_edge, %if.end397.if.end415_crit_edge
  %ss_len.0 = phi i32 [ %call409, %if.then399.if.end415_crit_edge ], [ 0, %if.end397.if.end415_crit_edge ]
  %105 = ptrtoint ptr %fs_descs_count to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fs_descs_count, align 4
  br i1 %tobool5.not, label %if.end415.cond.end421_crit_edge, label %cond.true418

if.end415.cond.end421_crit_edge:                  ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end421

cond.true418:                                     ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %hs_descs_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hs_descs_count, align 4
  br label %cond.end421

cond.end421:                                      ; preds = %cond.true418, %if.end415.cond.end421_crit_edge
  %cond422 = phi i32 [ %108, %cond.true418 ], [ 0, %if.end415.cond.end421_crit_edge ]
  %add423 = add i32 %cond422, %106
  br i1 %tobool11.not, label %cond.end421.cond.end428_crit_edge, label %cond.true425

cond.end421.cond.end428_crit_edge:                ; preds = %cond.end421
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end428

cond.true425:                                     ; preds = %cond.end421
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %ss_descs_count to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ss_descs_count, align 4
  br label %cond.end428

cond.end428:                                      ; preds = %cond.true425, %cond.end421.cond.end428_crit_edge
  %cond429 = phi i32 [ %110, %cond.true425 ], [ 0, %cond.end421.cond.end428_crit_edge ]
  %add430 = add i32 %add423, %cond429
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_class.i) #15
  %111 = ptrtoint ptr %current_class.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %current_class.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_ffs_func_bind, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %cond.end428
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.53) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %cond.end428
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add430)
  %cmp96.i = icmp eq i32 %add430, 0
  %tobool28.not.i802810 = icmp eq ptr %add.ptr363, null
  %tobool28.not.i802 = select i1 %cmp96.i, i1 true, i1 %tobool28.not.i802810
  br i1 %tobool28.not.i802, label %do.end.i.if.then29.i_crit_edge, label %do.end.i.if.end30.i_crit_edge

do.end.i.if.end30.i_crit_edge:                    ; preds = %do.end.i
  br label %if.end30.i

do.end.i.if.then29.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

if.then29.i:                                      ; preds = %cleanup.i.if.then29.i_crit_edge, %do.end.i.if.then29.i_crit_edge
  %len.addr.0101.i.lcssa = phi i32 [ %retval.0.i719773, %do.end.i.if.then29.i_crit_edge ], [ %sub53.i, %cleanup.i.if.then29.i_crit_edge ]
  %sub.i = sub i32 %retval.0.i719773, %len.addr.0101.i.lcssa
  br label %ffs_do_descs.exit

if.end30.i:                                       ; preds = %cleanup.i.if.end30.i_crit_edge, %do.end.i.if.end30.i_crit_edge
  %num.0100.i805 = phi i32 [ %inc.i, %cleanup.i.if.end30.i_crit_edge ], [ 0, %do.end.i.if.end30.i_crit_edge ]
  %len.addr.0101.i804 = phi i32 [ %sub53.i, %cleanup.i.if.end30.i_crit_edge ], [ %retval.0.i719773, %do.end.i.if.end30.i_crit_edge ]
  %spec.select102.i803 = phi ptr [ %add.ptr.i720, %cleanup.i.if.end30.i_crit_edge ], [ %add.ptr363, %do.end.i.if.end30.i_crit_edge ]
  %call31.i = call fastcc i32 @ffs_do_single_desc(ptr noundef nonnull %spec.select102.i803, i32 noundef %len.addr.0101.i804, ptr noundef nonnull @__ffs_func_bind_do_nums, ptr noundef %add.ptr.i, ptr noundef nonnull %current_class.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.body34.i, label %cleanup.i

do.body34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_do_descs.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@_ffs_func_bind, %ffs_do_descs.exit)) #15
          to label %ffs_do_descs.exit.thread [label %ffs_do_descs.exit], !srcloc !480

ffs_do_descs.exit.thread:                         ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_do_descs.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %call31.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_class.i) #15
  br label %cleanup

cleanup.i:                                        ; preds = %if.end30.i
  %sub53.i = sub i32 %len.addr.0101.i804, %call31.i
  %add.ptr.i720 = getelementptr i8, ptr %spec.select102.i803, i32 %call31.i
  %inc.i = add i32 %num.0100.i805, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %add430)
  %cmp.i = icmp eq i32 %inc.i, %add430
  %tobool28.not.i839 = icmp eq ptr %add.ptr.i720, null
  %tobool28.not.i = select i1 %cmp.i, i1 true, i1 %tobool28.not.i839
  br i1 %tobool28.not.i, label %cleanup.i.if.then29.i_crit_edge, label %cleanup.i.if.end30.i_crit_edge

cleanup.i.if.end30.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

cleanup.i.if.then29.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29.i

ffs_do_descs.exit:                                ; preds = %do.body34.i, %if.then29.i
  %retval.1.ph.i = phi i32 [ %sub.i, %if.then29.i ], [ %call31.i, %do.body34.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_class.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.ph.i)
  %cmp433 = icmp slt i32 %retval.1.ph.i, 0
  br i1 %cmp433, label %ffs_do_descs.exit.cleanup_crit_edge, label %if.end436

ffs_do_descs.exit.cleanup_crit_edge:              ; preds = %ffs_do_descs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end436:                                        ; preds = %ffs_do_descs.exit
  %add.ptr437 = getelementptr i8, ptr %call9.i.i, i32 %offset149.1
  %os_desc_table = getelementptr i8, ptr %f, i32 28
  %112 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr437, ptr %os_desc_table, align 4
  %113 = ptrtoint ptr %cdev836 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cdev836, align 4
  %use_os_string440 = getelementptr inbounds %struct.usb_composite_dev, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %use_os_string440 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load441 = load i8, ptr %use_os_string440, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load441)
  %tobool444.not = icmp sgt i8 %bf.load441, -1
  br i1 %tobool444.not, label %if.end436.if.end475_crit_edge, label %for.cond446.preheader

if.end436.if.end475_crit_edge:                    ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end475

for.cond446.preheader:                            ; preds = %if.end436
  %116 = ptrtoint ptr %interfaces_count728831 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %interfaces_count728831, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %cmp449807.not = icmp eq i16 %117, 0
  br i1 %cmp449807.not, label %for.cond446.preheader.for.end462_crit_edge, label %for.body451.lr.ph

for.cond446.preheader.for.end462_crit_edge:       ; preds = %for.cond446.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end462

for.body451.lr.ph:                                ; preds = %for.cond446.preheader
  %add.ptr452 = getelementptr i8, ptr %call9.i.i, i32 %offset221.1738746757769
  %add.ptr457 = getelementptr i8, ptr %call9.i.i, i32 %offset185.1
  br label %for.body451

for.body451:                                      ; preds = %for.body451.for.body451_crit_edge, %for.body451.lr.ph
  %i.1808 = phi i32 [ 0, %for.body451.lr.ph ], [ %inc461, %for.body451.for.body451_crit_edge ]
  %mul = mul nuw nsw i32 %i.1808, 108
  %add.ptr453 = getelementptr i8, ptr %add.ptr452, i32 %mul
  %118 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %os_desc_table, align 4
  %os_desc = getelementptr %struct.usb_os_desc_table, ptr %119, i32 %i.1808, i32 1
  %120 = ptrtoint ptr %os_desc to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %add.ptr453, ptr %os_desc, align 4
  %mul458 = shl i32 %i.1808, 4
  %add.ptr459 = getelementptr i8, ptr %add.ptr457, i32 %mul458
  %121 = ptrtoint ptr %add.ptr453 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr459, ptr %add.ptr453, align 4
  %ext_prop = getelementptr inbounds %struct.usb_os_desc, ptr %add.ptr453, i32 0, i32 1
  %122 = ptrtoint ptr %ext_prop to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %ext_prop, ptr %ext_prop, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ext_prop, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %ext_prop, ptr %prev.i, align 4
  %inc461 = add nuw nsw i32 %i.1808, 1
  %124 = ptrtoint ptr %interfaces_count728831 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %interfaces_count728831, align 2
  %conv448 = zext i16 %125 to i32
  %cmp449 = icmp ult i32 %inc461, %conv448
  br i1 %cmp449, label %for.body451.for.body451_crit_edge, label %for.body451.for.end462_crit_edge

for.body451.for.end462_crit_edge:                 ; preds = %for.body451
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end462

for.body451.for.body451_crit_edge:                ; preds = %for.body451
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body451

for.end462:                                       ; preds = %for.body451.for.end462_crit_edge, %for.cond446.preheader.for.end462_crit_edge
  %ms_os_descs_count = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 21
  %126 = ptrtoint ptr %ms_os_descs_count to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ms_os_descs_count, align 4
  %add.ptr464 = getelementptr i8, ptr %add.ptr363, i32 %fs_len.0
  %add.ptr465 = getelementptr i8, ptr %add.ptr464, i32 %hs_len.0
  %add.ptr466 = getelementptr i8, ptr %add.ptr465, i32 %ss_len.0
  %128 = add i32 %fs_len.0, %hs_len.0
  %129 = add i32 %128, %ss_len.0
  %sub469 = sub i32 %retval.0.i719773, %129
  %call470 = tail call fastcc i32 @ffs_do_os_descs(i32 noundef %127, ptr noundef %add.ptr466, i32 noundef %sub469, ptr noundef nonnull @__ffs_func_bind_do_os_desc, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %cmp471 = icmp slt i32 %call470, 0
  br i1 %cmp471, label %for.end462.cleanup_crit_edge, label %for.end462.if.end475_crit_edge

for.end462.if.end475_crit_edge:                   ; preds = %for.end462
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end475

for.end462.cleanup_crit_edge:                     ; preds = %for.end462
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end475:                                        ; preds = %for.end462.if.end475_crit_edge, %if.end436.if.end475_crit_edge
  %130 = ptrtoint ptr %cdev836 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cdev836, align 4
  %use_os_string477 = getelementptr inbounds %struct.usb_composite_dev, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %use_os_string477 to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load478 = load i8, ptr %use_os_string477, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load478)
  %tobool481.not = icmp sgt i8 %bf.load478, -1
  br i1 %tobool481.not, label %if.end475.cond.end486_crit_edge, label %cond.true482

if.end475.cond.end486_crit_edge:                  ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end486

cond.true482:                                     ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %interfaces_count728831 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %interfaces_count728831, align 2
  %conv484 = zext i16 %134 to i32
  br label %cond.end486

cond.end486:                                      ; preds = %cond.true482, %if.end475.cond.end486_crit_edge
  %cond487 = phi i32 [ %conv484, %cond.true482 ], [ 0, %if.end475.cond.end486_crit_edge ]
  %os_desc_n = getelementptr i8, ptr %f, i32 32
  %135 = ptrtoint ptr %os_desc_n to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond487, ptr %os_desc_n, align 4
  %waitq.i = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 9, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %waitq.i) #15
  tail call fastcc void @__ffs_event_add(ptr noundef %1, i32 noundef 0) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %waitq.i, i32 noundef %call2.i) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end486, %for.end462.cleanup_crit_edge, %ffs_do_descs.exit.cleanup_crit_edge, %ffs_do_descs.exit.thread, %if.then399.cleanup_crit_edge, %if.then385.cleanup_crit_edge, %if.then374.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end486 ], [ -524, %do.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %retval.1.ph.i, %ffs_do_descs.exit.cleanup_crit_edge ], [ %call470, %for.end462.cleanup_crit_edge ], [ %call378, %if.then374.cleanup_crit_edge ], [ %call391, %if.then385.cleanup_crit_edge ], [ %call409, %if.then399.cleanup_crit_edge ], [ %call31.i, %ffs_do_descs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @functionfs_unbind(ptr noundef %ffs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @functionfs_unbind.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@functionfs_unbind, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @functionfs_unbind.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.149) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end21, label %if.then36.critedge, !prof !488

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1884, i32 noundef 9, ptr noundef null) #15
  br label %if.end40

if.then36.critedge:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep0, align 4
  %ep0req = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 3
  %4 = ptrtoint ptr %ep0req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0req, align 4
  tail call void @usb_ep_free_request(ptr noundef %3, ptr noundef %5) #15
  %6 = ptrtoint ptr %ep0req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ep0req, align 4
  %7 = ptrtoint ptr %ffs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ffs, align 4
  %flags = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #15
  tail call fastcc void @ffs_data_put(ptr noundef %ffs)
  br label %if.end40

if.end40:                                         ; preds = %if.then36.critedge, %do.end21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @functionfs_bind(ptr noundef %ffs, ptr noundef %cdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @functionfs_bind.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@functionfs_bind, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @functionfs_bind.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.131) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.rhs, label %do.end.do.end21_crit_edge

do.end.do.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

lor.rhs:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 10
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end37, label %lor.rhs.do.end21_crit_edge, !prof !484

lor.rhs.do.end21_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21

do.end21:                                         ; preds = %lor.rhs.do.end21_crit_edge, %do.end.do.end21_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1852, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end37:                                         ; preds = %lor.rhs
  %strings_count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 30
  %2 = ptrtoint ptr %strings_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %strings_count, align 4
  %conv = zext i16 %3 to i32
  %call38 = tail call i32 @usb_string_ids_n(ptr noundef %cdev, i32 noundef %conv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0, align 4
  %call43 = tail call ptr @usb_ep_alloc_request(ptr noundef %7, i32 noundef 3264) #15
  %ep0req = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 3
  %8 = ptrtoint ptr %ep0req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call43, ptr %ep0req, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %if.end42.cleanup_crit_edge, label %if.end47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %complete = getelementptr inbounds %struct.usb_request, ptr %call43, i32 0, i32 7
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ffs_ep0_complete, ptr %complete, align 4
  %10 = ptrtoint ptr %ep0req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0req, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ffs, ptr %context, align 4
  %stringtabs = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 35
  %13 = ptrtoint ptr %stringtabs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stringtabs, align 4
  %tobool50.not = icmp eq ptr %14, null
  br i1 %tobool50.not, label %if.end47.if.end61_crit_edge, label %for.cond.preheader

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

for.cond.preheader:                               ; preds = %if.end47
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool52.not92 = icmp eq ptr %16, null
  br i1 %tobool52.not92, label %for.cond.preheader.if.end61_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end61_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %17 = phi ptr [ %26, %for.end.for.body_crit_edge ], [ %16, %for.cond.preheader.for.body_crit_edge ]
  %lang.093 = phi ptr [ %incdec.ptr59, %for.end.for.body_crit_edge ], [ %14, %for.cond.preheader.for.body_crit_edge ]
  %strings = getelementptr inbounds %struct.usb_gadget_strings, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %strings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %strings, align 4
  %s88 = getelementptr inbounds %struct.usb_string, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %s88 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s88, align 4
  %tobool54.not89 = icmp eq ptr %21, null
  br i1 %tobool54.not89, label %for.body.for.end_crit_edge, label %for.body.for.body55_crit_edge

for.body.for.body55_crit_edge:                    ; preds = %for.body
  br label %for.body55

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body.for.body55_crit_edge
  %id.091 = phi i32 [ %inc, %for.body55.for.body55_crit_edge ], [ %call38, %for.body.for.body55_crit_edge ]
  %str.090 = phi ptr [ %incdec.ptr, %for.body55.for.body55_crit_edge ], [ %19, %for.body.for.body55_crit_edge ]
  %conv56 = trunc i32 %id.091 to i8
  %22 = ptrtoint ptr %str.090 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv56, ptr %str.090, align 4
  %inc = add i32 %id.091, 1
  %incdec.ptr = getelementptr %struct.usb_string, ptr %str.090, i32 1
  %s = getelementptr %struct.usb_string, ptr %str.090, i32 1, i32 1
  %23 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s, align 4
  %tobool54.not = icmp eq ptr %24, null
  br i1 %tobool54.not, label %for.body55.for.end_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body55

for.body55.for.end_crit_edge:                     ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body55.for.end_crit_edge, %for.body.for.end_crit_edge
  %incdec.ptr59 = getelementptr ptr, ptr %lang.093, i32 1
  %25 = ptrtoint ptr %incdec.ptr59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %incdec.ptr59, align 4
  %tobool52.not = icmp eq ptr %26, null
  br i1 %tobool52.not, label %for.end.if.end61_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.end61:                                         ; preds = %for.end.if.end61_crit_edge, %for.cond.preheader.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  %27 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdev, align 4
  %29 = ptrtoint ptr %ffs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %ffs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_get.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@functionfs_bind, %do.end.i)) #15
          to label %if.then.i [label %do.end.i], !srcloc !480

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_get.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.132) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end61
  %ref.i = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #15
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #15, !srcloc !506
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !488

do.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !484

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end21
  %retval.0 = phi i32 [ -77, %do.end21 ], [ %call38, %if.end37.cleanup_crit_edge ], [ -12, %if.end42.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_n(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_ep0_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ep0req_completion = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %ep0req_completion) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ffs_func_bind_do_descs(i32 noundef %type, ptr noundef %valuep, ptr noundef %desc, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup131_crit_edge

entry.cleanup131_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

if.end:                                           ; preds = %entry
  %ss_descriptors = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %ss_descriptors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss_descriptors, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.else:                                          ; preds = %if.end
  %hs_descriptors = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %hs_descriptors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hs_descriptors, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.else10, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %fs_descriptors = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %fs_descriptors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_descriptors, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.else.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %.sink = phi ptr [ %5, %if.else10 ], [ %1, %if.end.if.end14_crit_edge ], [ %3, %if.else.if.end14_crit_edge ]
  %ep_desc_id.0 = phi i32 [ 0, %if.else10 ], [ 2, %if.end.if.end14_crit_edge ], [ 1, %if.else.if.end14_crit_edge ]
  %6 = ptrtoint ptr %valuep to i32
  %arrayidx9 = getelementptr ptr, ptr %.sink, i32 %6
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %desc, ptr %arrayidx9, align 4
  %tobool15.not = icmp eq ptr %desc, null
  br i1 %tobool15.not, label %if.end14.cleanup131_crit_edge, label %lor.lhs.false

if.end14.cleanup131_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

lor.lhs.false:                                    ; preds = %if.end14
  %bDescriptorType = getelementptr inbounds %struct.usb_descriptor_header, ptr %desc, i32 0, i32 1
  %8 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp16.not = icmp eq i8 %9, 5
  br i1 %cmp16.not, label %if.end19, label %lor.lhs.false.cleanup131_crit_edge

lor.lhs.false.cleanup131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

if.end19:                                         ; preds = %lor.lhs.false
  %ffs = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ffs, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19
  %i.07.i = phi i32 [ 1, %if.end19 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ffs_data, ptr %11, i32 0, i32 29, i32 %i.07.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %13)
  %cmp2.i = icmp eq i8 %15, %13
  br i1 %cmp2.i, label %ffs_ep_addr2idx.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.cleanup131_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cleanup131_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

ffs_ep_addr2idx.exit:                             ; preds = %for.body.i
  %sub = add nsw i32 %i.07.i, -1
  %eps = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eps, align 4
  %add.ptr = getelementptr %struct.ffs_ep, ptr %17, i32 %sub
  %descs = getelementptr %struct.ffs_ep, ptr %17, i32 %sub, i32 2
  %arrayidx24 = getelementptr %struct.ffs_ep, ptr %17, i32 %sub, i32 2, i32 %ep_desc_id.0
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %if.end31, label %do.end

do.end:                                           ; preds = %ffs_ep_addr2idx.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx27 = getelementptr [3 x ptr], ptr @__ffs_func_bind_do_descs.speed_names, i32 0, i32 %ep_desc_id.0
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx27, align 4
  %22 = and i8 %13, 15
  %and = zext i8 %22 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %21, i32 noundef %and) #21
  br label %cleanup131

if.end31:                                         ; preds = %ffs_ep_addr2idx.exit
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %desc, ptr %arrayidx24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_func_bind_do_descs, %do.end45)) #15
          to label %if.then41 [label %do.end45], !srcloc !480

if.then41:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %desc, align 1
  %conv42 = zext i8 %25 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %desc, i32 noundef %conv42, i1 noundef zeroext true) #15
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %if.end31
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %tobool46.not = icmp eq ptr %27, null
  br i1 %tobool46.not, label %if.else59, label %if.then47

if.then47:                                        ; preds = %do.end45
  %28 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %descs, align 4
  %bEndpointAddress50 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress50 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress50, align 1
  %32 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %bEndpointAddress, align 1
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %33 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool52.not = icmp eq i16 %34, 0
  br i1 %tobool52.not, label %if.then53, label %if.then47.do.body111_crit_edge

if.then47.do.body111_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body111

if.then53:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %descs, align 4
  %wMaxPacketSize56 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %wMaxPacketSize56 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %wMaxPacketSize56, align 1
  %39 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %wMaxPacketSize, align 1
  br label %do.body111

if.else59:                                        ; preds = %do.end45
  %40 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bEndpointAddress, align 1
  %wMaxPacketSize64 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %42 = ptrtoint ptr %wMaxPacketSize64 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wMaxPacketSize64, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_func_bind_do_descs, %do.end82)) #15
          to label %if.then79 [label %do.end82], !srcloc !480

if.then79:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.140) #15
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %if.else59
  %gadget = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gadget, align 4
  %call83 = tail call ptr @usb_ep_autoconfig(ptr noundef %45, ptr noundef nonnull %desc) #15
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %do.end82.cleanup131_crit_edge, label %if.end86

do.end82.cleanup131_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

if.end86:                                         ; preds = %do.end82
  %46 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eps, align 4
  %add.ptr88 = getelementptr %struct.ffs_ep, ptr %47, i32 %sub
  %48 = ptrtoint ptr %call83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr88, ptr %call83, align 4
  %call89 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %call83, i32 noundef 3264) #15
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.end86.cleanup131_crit_edge, label %if.end92

if.end86.cleanup131_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

if.end92:                                         ; preds = %if.end86
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call83, ptr %add.ptr, align 4
  %req94 = getelementptr %struct.ffs_ep, ptr %17, i32 %sub, i32 1
  %50 = ptrtoint ptr %req94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call89, ptr %req94, align 4
  %conv95 = trunc i32 %i.07.i to i8
  %51 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bEndpointAddress, align 1
  %53 = and i8 %52, 15
  %and98 = zext i8 %53 to i32
  %arrayidx99 = getelementptr %struct.ffs_function, ptr %priv, i32 0, i32 4, i32 %and98
  %54 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv95, ptr %arrayidx99, align 1
  %55 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ffs, align 4
  %user_flags = getelementptr inbounds %struct.ffs_data, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %user_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %user_flags, align 4
  %and101 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end92.cleanup_crit_edge, label %if.then103

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then103:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %41, ptr %bEndpointAddress, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.end92.cleanup_crit_edge
  %60 = ptrtoint ptr %wMaxPacketSize64 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %43, ptr %wMaxPacketSize64, align 1
  br label %do.body111

do.body111:                                       ; preds = %cleanup, %if.then53, %if.then47.do.body111_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_func_bind_do_descs, %cleanup131)) #15
          to label %if.then125 [label %cleanup131], !srcloc !480

if.then125:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %desc, align 1
  %conv127 = zext i8 %62 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %desc, i32 noundef %conv127, i1 noundef zeroext true) #15
  br label %cleanup131

cleanup131:                                       ; preds = %if.then125, %do.body111, %if.end86.cleanup131_crit_edge, %do.end82.cleanup131_crit_edge, %do.end, %for.inc.i.cleanup131_crit_edge, %lor.lhs.false.cleanup131_crit_edge, %if.end14.cleanup131_crit_edge, %entry.cleanup131_crit_edge
  %retval.1 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup131_crit_edge ], [ 0, %lor.lhs.false.cleanup131_crit_edge ], [ 0, %if.end14.cleanup131_crit_edge ], [ 0, %if.then125 ], [ -12, %if.end86.cleanup131_crit_edge ], [ -524, %do.end82.cleanup131_crit_edge ], [ 0, %do.body111 ], [ -3, %for.inc.i.cleanup131_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ffs_func_bind_do_nums(i32 noundef %type, ptr nocapture noundef %valuep, ptr nocapture noundef readonly %desc, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %type, label %entry.cleanup45_crit_edge [
    i32 3, label %sw.bb19
    i32 1, label %sw.bb1
    i32 2, label %sw.bb14
  ]

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

sw.bb1:                                           ; preds = %entry
  %1 = ptrtoint ptr %valuep to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valuep, align 1
  %conv = zext i8 %2 to i32
  %interfaces_nums = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %interfaces_nums to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interfaces_nums, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp slt i16 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb1.if.end10_crit_edge

sw.bb1.if.end10_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then:                                          ; preds = %sw.bb1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %function = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 6
  %call = tail call i32 @usb_interface_id(ptr noundef %8, ptr noundef %function) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.cleanup45_crit_edge, label %if.end

if.then.cleanup45_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %conv7 = trunc i32 %call to i16
  %9 = ptrtoint ptr %interfaces_nums to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interfaces_nums, align 4
  %arrayidx9 = getelementptr i16, ptr %10, i32 %conv
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %arrayidx9, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %sw.bb1.if.end10_crit_edge
  %12 = ptrtoint ptr %interfaces_nums to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interfaces_nums, align 4
  %arrayidx12 = getelementptr i16, ptr %13, i32 %conv
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx12, align 2
  %conv13 = trunc i16 %15 to i8
  br label %do.body

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ffs = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ffs, align 4
  %stringtabs = getelementptr inbounds %struct.ffs_data, ptr %17, i32 0, i32 35
  %18 = ptrtoint ptr %stringtabs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stringtabs, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %strings = getelementptr inbounds %struct.usb_gadget_strings, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %strings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %strings, align 4
  %24 = ptrtoint ptr %valuep to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valuep, align 1
  %conv16 = zext i8 %25 to i32
  %sub = add nsw i32 %conv16, -1
  %arrayidx17 = getelementptr %struct.usb_string, ptr %23, i32 %sub
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17, align 4
  br label %do.body

sw.bb19:                                          ; preds = %entry
  %bDescriptorType = getelementptr inbounds %struct.usb_descriptor_header, ptr %desc, i32 0, i32 1
  %28 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %cmp21 = icmp eq i8 %29, 5
  br i1 %cmp21, label %sw.bb19.cleanup45_crit_edge, label %if.end24

sw.bb19.cleanup45_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

if.end24:                                         ; preds = %sw.bb19
  %30 = ptrtoint ptr %valuep to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valuep, align 1
  %32 = and i8 %31, 15
  %and = zext i8 %32 to i32
  %sub26 = add nsw i32 %and, -1
  %eps = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 3
  %33 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eps, align 4
  %arrayidx27 = getelementptr %struct.ffs_ep, ptr %34, i32 %sub26
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx27, align 4
  %tobool.not = icmp eq ptr %36, null
  br i1 %tobool.not, label %if.end24.cleanup45_crit_edge, label %if.end29

if.end24.cleanup45_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %descs32 = getelementptr %struct.ffs_ep, ptr %34, i32 %sub26, i32 2
  %37 = ptrtoint ptr %descs32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %descs32, align 4
  %tobool34.not = icmp eq ptr %38, null
  %cond = zext i1 %tobool34.not to i32
  %arrayidx35 = getelementptr ptr, ptr %descs32, i32 %cond
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx35, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bEndpointAddress, align 1
  br label %do.body

do.body:                                          ; preds = %if.end29, %sw.bb14, %if.end10
  %newValue.0 = phi i8 [ %27, %sw.bb14 ], [ %conv13, %if.end10 ], [ %42, %if.end29 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_func_bind_do_nums.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_func_bind_do_nums, %do.end)) #15
          to label %if.then41 [label %do.end], !srcloc !480

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %valuep to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %valuep, align 1
  %conv42 = zext i8 %44 to i32
  %conv43 = zext i8 %newValue.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_func_bind_do_nums.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.143, i32 noundef %conv42, i32 noundef %conv43) #15
  br label %do.end

do.end:                                           ; preds = %if.then41, %do.body
  %45 = ptrtoint ptr %valuep to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %newValue.0, ptr %valuep, align 1
  br label %cleanup45

cleanup45:                                        ; preds = %do.end, %if.end24.cleanup45_crit_edge, %sw.bb19.cleanup45_crit_edge, %if.then.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup45_crit_edge ], [ 0, %sw.bb19.cleanup45_crit_edge ], [ -22, %if.end24.cleanup45_crit_edge ], [ %call, %if.then.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ffs_func_bind_do_os_desc(i32 noundef %type, ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %type, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %os_desc_table = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 6, i32 7
  %1 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %os_desc_table, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr %struct.usb_os_desc_table, ptr %2, i32 %idxprom
  %interfaces_nums = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 5
  %5 = ptrtoint ptr %interfaces_nums to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interfaces_nums, align 4
  %arrayidx3 = getelementptr i16, ptr %6, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx3, align 2
  %conv = sext i16 %8 to i32
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %arrayidx, align 4
  %os_desc = getelementptr %struct.usb_os_desc_table, ptr %2, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %os_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %os_desc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %CompatibleID = getelementptr inbounds %struct.usb_ext_compat_desc, ptr %data, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %13, ptr %CompatibleID, i32 16)
  br label %sw.epilog63

sw.bb4:                                           ; preds = %entry
  %os_desc_table8 = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 6, i32 7
  %15 = ptrtoint ptr %os_desc_table8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %os_desc_table8, align 4
  %17 = ptrtoint ptr %h to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h, align 1
  %idxprom9 = zext i8 %18 to i32
  %arrayidx10 = getelementptr %struct.usb_os_desc_table, ptr %16, i32 %idxprom9
  %interfaces_nums11 = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 5
  %19 = ptrtoint ptr %interfaces_nums11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interfaces_nums11, align 4
  %arrayidx14 = getelementptr i16, ptr %20, i32 %idxprom9
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx14, align 2
  %conv15 = sext i16 %22 to i32
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv15, ptr %arrayidx10, align 4
  %ffs = getelementptr inbounds %struct.ffs_function, ptr %priv, i32 0, i32 2
  %24 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ffs, align 4
  %ms_os_descs_ext_prop_avail = getelementptr inbounds %struct.ffs_data, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %ms_os_descs_ext_prop_avail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ms_os_descs_ext_prop_avail, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 80
  store ptr %add.ptr, ptr %ms_os_descs_ext_prop_avail, align 4
  %dwPropertyDataType = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %dwPropertyDataType to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %dwPropertyDataType, align 1
  %30 = lshr i32 %29, 24
  %conv19 = trunc i32 %30 to i8
  %type20 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %type20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv19, ptr %type20, align 4
  %wPropertyNameLength = getelementptr inbounds %struct.usb_ext_prop_desc, ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %wPropertyNameLength to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wPropertyNameLength, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv21 = zext i16 %34 to i32
  %name_len = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %27, i32 0, i32 2
  %35 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv21, ptr %name_len, align 4
  %add.i = add nuw nsw i32 %conv21, 10
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %add.i
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %data_len = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %27, i32 0, i32 4
  %39 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %data_len, align 4
  %add = add nuw nsw i32 %conv21, 14
  %conv26 = add i32 %add, %38
  %40 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ffs, align 4
  %ms_os_descs_ext_prop_name_avail = getelementptr inbounds %struct.ffs_data, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %ms_os_descs_ext_prop_name_avail to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ms_os_descs_ext_prop_name_avail, align 4
  %add.ptr31 = getelementptr i8, ptr %43, i32 %conv21
  store ptr %add.ptr31, ptr %ms_os_descs_ext_prop_name_avail, align 4
  %44 = load ptr, ptr %ffs, align 4
  %ms_os_descs_ext_prop_data_avail = getelementptr inbounds %struct.ffs_data, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %ms_os_descs_ext_prop_data_avail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ms_os_descs_ext_prop_data_avail, align 4
  %47 = load i32, ptr %data_len, align 4
  %add.ptr36 = getelementptr i8, ptr %46, i32 %47
  store ptr %add.ptr36, ptr %ms_os_descs_ext_prop_data_avail, align 4
  %48 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %name_len, align 4
  %add.i107 = add i32 %49, 14
  %add.ptr.i.i108 = getelementptr i8, ptr %data, i32 %add.i107
  %50 = load i32, ptr %data_len, align 4
  %51 = call ptr @memcpy(ptr %46, ptr %add.ptr.i.i108, i32 %50)
  %52 = ptrtoint ptr %type20 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type20, align 4
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %53, label %sw.bb4.sw.epilog_crit_edge [
    i8 1, label %sw.bb4.sw.bb42_crit_edge
    i8 2, label %sw.bb4.sw.bb42_crit_edge111
    i8 6, label %sw.bb4.sw.bb42_crit_edge112
    i8 7, label %sw.bb4.sw.bb42_crit_edge113
  ]

sw.bb4.sw.bb42_crit_edge113:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb42

sw.bb4.sw.bb42_crit_edge112:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb42

sw.bb4.sw.bb42_crit_edge111:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb42

sw.bb4.sw.bb42_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb42

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb42:                                          ; preds = %sw.bb4.sw.bb42_crit_edge, %sw.bb4.sw.bb42_crit_edge111, %sw.bb4.sw.bb42_crit_edge112, %sw.bb4.sw.bb42_crit_edge113
  %55 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len, align 4
  %mul = shl i32 %56, 1
  store i32 %mul, ptr %data_len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb4.sw.epilog_crit_edge
  %data44 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %27, i32 0, i32 5
  %57 = ptrtoint ptr %data44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %46, ptr %data44, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %data, i32 10
  %58 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %name_len, align 4
  %60 = call ptr @memcpy(ptr %43, ptr %add.ptr.i.i109, i32 %59)
  %61 = load i32, ptr %name_len, align 4
  %mul48 = shl i32 %61, 1
  store i32 %mul48, ptr %name_len, align 4
  %name = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %27, i32 0, i32 3
  %62 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %43, ptr %name, align 4
  %63 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len, align 4
  %os_desc53 = getelementptr %struct.usb_os_desc_table, ptr %16, i32 %idxprom9, i32 1
  %65 = ptrtoint ptr %os_desc53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %os_desc53, align 4
  %ext_prop_len = getelementptr inbounds %struct.usb_os_desc, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ext_prop_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ext_prop_len, align 4
  %add51 = add i32 %mul48, 14
  %add52 = add i32 %add51, %64
  %add54 = add i32 %add52, %68
  store i32 %add54, ptr %ext_prop_len, align 4
  %69 = load ptr, ptr %os_desc53, align 4
  %ext_prop_count = getelementptr inbounds %struct.usb_os_desc, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ext_prop_count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ext_prop_count, align 4
  %inc = add i32 %71, 1
  store i32 %inc, ptr %ext_prop_count, align 4
  %72 = load ptr, ptr %os_desc53, align 4
  %ext_prop58 = getelementptr inbounds %struct.usb_os_desc, ptr %72, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.usb_os_desc, ptr %72, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %27, ptr noundef %74, ptr noundef %ext_prop58) #15
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %27, ptr %prev.i, align 4
  %76 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %ext_prop58, ptr %27, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %27, ptr %74, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  %phi.cast = and i32 %conv26, 255
  br label %sw.epilog63

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_func_bind_do_os_desc.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_func_bind_do_os_desc, %sw.epilog63)) #15
          to label %if.then [label %sw.epilog63], !srcloc !480

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_func_bind_do_os_desc.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.75, i32 noundef %type) #15
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %if.then, %do.body, %list_add_tail.exit, %sw.bb
  %length.0 = phi i32 [ 0, %if.then ], [ %phi.cast, %list_add_tail.exit ], [ 24, %sw.bb ], [ 0, %do.body ]
  ret i32 %length.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ffs_event_add(ptr noundef %ffs, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_state = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 8
  %0 = ptrtoint ptr %setup_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %setup_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %setup_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %setup_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %3 = icmp ult i32 %type, 7
  br i1 %3, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2780, i32 noundef 9, ptr noundef nonnull @.str.145, i32 noundef %type) #15
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.__ffs_event_add, i32 0, i32 %type
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep120 = getelementptr inbounds [7 x i32], ptr @switch.table.__ffs_event_add.162, i32 0, i32 %type
  %5 = ptrtoint ptr %switch.gep120 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load121 = load i32, ptr %switch.gep120, align 4
  %switch.gep122 = getelementptr inbounds [7 x i32], ptr @switch.table.__ffs_event_add.163, i32 0, i32 %type
  %6 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load123 = load i32, ptr %switch.gep122, align 4
  %ev20 = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9
  %count = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool22.not115 = icmp eq i16 %8, 0
  br i1 %tobool22.not115, label %switch.lookup.for.end_crit_edge, label %for.body.preheader

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %switch.lookup
  %conv = zext i16 %8 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %n.0119 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %out.0118 = phi ptr [ %out.1, %for.inc.for.body_crit_edge ], [ %ev20, %for.body.preheader ]
  %ev.0116 = phi ptr [ %incdec.ptr49, %for.inc.for.body_crit_edge ], [ %ev20, %for.body.preheader ]
  %9 = ptrtoint ptr %ev.0116 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ev.0116, align 1
  %conv23 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load123, i32 %conv23)
  %cmp24 = icmp eq i32 %switch.load123, %conv23
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load121, i32 %conv23)
  %cmp27 = icmp eq i32 %switch.load121, %conv23
  %spec.select = or i1 %cmp24, %cmp27
  %lor.ext = zext i1 %spec.select to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %lor.ext)
  %cmp29 = icmp eq i32 %switch.load, %lor.ext
  br i1 %cmp29, label %if.then31, label %do.body32

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i8, ptr %out.0118, i32 1
  %11 = ptrtoint ptr %out.0118 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %out.0118, align 1
  br label %for.inc

do.body32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_event_add.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_event_add, %for.inc)) #15
          to label %if.then43 [label %for.inc], !srcloc !480

if.then43:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %ev.0116 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ev.0116, align 1
  %conv44 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_event_add.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.147, i32 noundef %conv44) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %do.body32, %if.then31
  %out.1 = phi ptr [ %incdec.ptr, %if.then31 ], [ %out.0118, %if.then43 ], [ %out.0118, %do.body32 ]
  %dec = add nsw i32 %n.0119, -1
  %incdec.ptr49 = getelementptr i8, ptr %ev.0116, i32 1
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %out.0.lcssa = phi ptr [ %ev20, %switch.lookup.for.end_crit_edge ], [ %out.1, %for.inc.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %ev20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv53 = trunc i32 %sub.ptr.sub to i16
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv53, ptr %count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ffs_event_add.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__ffs_event_add, %do.end73)) #15
          to label %if.then70 [label %do.end73], !srcloc !480

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ffs_event_add.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.148, i32 noundef %type) #15
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %for.end
  %conv74 = trunc i32 %type to i8
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %count, align 4
  %inc = add i16 %16, 1
  store i16 %inc, ptr %count, align 4
  %idxprom = zext i16 %16 to i32
  %arrayidx = getelementptr [4 x i8], ptr %ev20, i32 0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv74, ptr %arrayidx, align 1
  %waitq = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 9, i32 4
  tail call void @__wake_up_locked(ptr noundef %waitq, i32 noundef 3, i32 noundef 1) #15
  %ffs_eventfd = getelementptr inbounds %struct.ffs_data, ptr %ffs, i32 0, i32 38
  %18 = ptrtoint ptr %ffs_eventfd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ffs_eventfd, align 4
  %tobool80.not = icmp eq ptr %19, null
  br i1 %tobool80.not, label %do.end73.cleanup_crit_edge, label %if.then81

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then81:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #17
  %call83 = tail call i64 @eventfd_signal(ptr noundef nonnull %19, i64 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.end73.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ffs_func_eps_disable(ptr nocapture noundef readonly %func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ffs = getelementptr inbounds %struct.ffs_function, ptr %func, i32 0, i32 2
  %0 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffs, align 4
  %eps_lock = getelementptr inbounds %struct.ffs_data, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %eps_lock) #15
  %2 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ffs, align 4
  %eps_count = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %eps_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %eps_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not28 = icmp eq i16 %5, 0
  br i1 %tobool.not28, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %eps = getelementptr inbounds %struct.ffs_function, ptr %func, i32 0, i32 3
  %6 = ptrtoint ptr %eps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eps, align 4
  %epfiles = getelementptr inbounds %struct.ffs_data, ptr %3, i32 0, i32 42
  %8 = ptrtoint ptr %epfiles to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epfiles, align 4
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.preheader
  %dec31.in = phi i16 [ %dec31, %if.end15.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %ep.030 = phi ptr [ %incdec.ptr, %if.end15.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %epfile.029 = phi ptr [ %epfile.1, %if.end15.while.body_crit_edge ], [ %9, %while.body.preheader ]
  %dec31 = add i16 %dec31.in, -1
  %10 = ptrtoint ptr %ep.030 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep.030, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @usb_ep_disable(ptr noundef nonnull %11) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.ffs_ep, ptr %ep.030, i32 1
  %tobool11.not = icmp eq ptr %epfile.029, null
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then12:                                        ; preds = %if.end
  %ep13 = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.029, i32 0, i32 2
  %12 = ptrtoint ptr %ep13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ep13, align 4
  %read_buffer.i = getelementptr inbounds %struct.ffs_epfile, ptr %epfile.029, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %read_buffer.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @llvm.prefetch.p0(ptr %read_buffer.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -108, ptr %read_buffer.i) #15, !srcloc !498
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  %14 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !499
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  %cmp.not.i = icmp eq ptr %14, inttoptr (i32 -108 to ptr)
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then12.__ffs_epfile_read_buffer_free.exit_crit_edge, label %if.then.i

if.then12.__ffs_epfile_read_buffer_free.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ffs_epfile_read_buffer_free.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %14) #15
  br label %__ffs_epfile_read_buffer_free.exit

__ffs_epfile_read_buffer_free.exit:               ; preds = %if.then.i, %if.then12.__ffs_epfile_read_buffer_free.exit_crit_edge
  %incdec.ptr14 = getelementptr %struct.ffs_epfile, ptr %epfile.029, i32 1
  br label %if.end15

if.end15:                                         ; preds = %__ffs_epfile_read_buffer_free.exit, %if.end.if.end15_crit_edge
  %epfile.1 = phi ptr [ %incdec.ptr14, %__ffs_epfile_read_buffer_free.exit ], [ null, %if.end.if.end15_crit_edge ]
  %tobool.not = icmp eq i16 %dec31, 0
  br i1 %tobool.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %entry.while.end_crit_edge
  %15 = ptrtoint ptr %ffs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ffs, align 4
  %eps_lock17 = getelementptr inbounds %struct.ffs_data, ptr %16, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %eps_lock17, i32 noundef %call2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ffs_reset_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ffs_data_reset.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ffs_reset_work, %ffs_data_reset.exit)) #15
          to label %if.then.i [label %ffs_data_reset.exit], !srcloc !480

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ffs_data_reset.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.109) #15
  br label %ffs_data_reset.exit

ffs_data_reset.exit:                              ; preds = %if.then.i, %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -484
  tail call fastcc void @ffs_data_clear(ptr noundef %add.ptr) #15
  %raw_descs_data.i = getelementptr i8, ptr %work, i32 -132
  %raw_strings.i = getelementptr i8, ptr %work, i32 -36
  %0 = ptrtoint ptr %raw_strings.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %raw_strings.i, align 4
  %stringtabs.i = getelementptr i8, ptr %work, i32 -32
  %1 = ptrtoint ptr %stringtabs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %stringtabs.i, align 4
  %strings_count.i = getelementptr i8, ptr %work, i32 -44
  %2 = ptrtoint ptr %strings_count.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %strings_count.i, align 4
  %interfaces_count.i = getelementptr i8, ptr %work, i32 -42
  %3 = ptrtoint ptr %interfaces_count.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %interfaces_count.i, align 2
  %eps_count.i = getelementptr i8, ptr %work, i32 -40
  %4 = ptrtoint ptr %eps_count.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %eps_count.i, align 4
  %count.i = getelementptr i8, ptr %work, i32 -264
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %count.i, align 4
  %state.i = getelementptr i8, ptr %work, i32 -276
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state.i, align 4
  %setup_state.i = getelementptr i8, ptr %work, i32 -272
  %7 = ptrtoint ptr %setup_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %setup_state.i, align 4
  %flags.i = getelementptr i8, ptr %work, i32 -200
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags.i, align 4
  %ms_os_descs_ext_prop_count.i = getelementptr i8, ptr %work, i32 -104
  %9 = ptrtoint ptr %ms_os_descs_ext_prop_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ms_os_descs_ext_prop_count.i, align 4
  %ms_os_descs_ext_prop_name_len.i = getelementptr i8, ptr %work, i32 -100
  %10 = ptrtoint ptr %ms_os_descs_ext_prop_name_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ms_os_descs_ext_prop_name_len.i, align 4
  %ms_os_descs_ext_prop_data_len.i = getelementptr i8, ptr %work, i32 -96
  %11 = ptrtoint ptr %ms_os_descs_ext_prop_data_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ms_os_descs_ext_prop_data_len.i, align 4
  %12 = call ptr @memset(ptr %raw_descs_data.i, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !108, !109, !111, !112, !114, !116, !117, !119, !121, !122, !123, !125, !126, !128, !129, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !190, !191, !193, !194, !196, !197, !198, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !271, !272, !274, !275, !277, !278, !280, !282, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !300, !301, !303, !304, !306, !307, !309, !310, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !349, !351, !353, !355, !357, !359, !361, !362, !364, !365, !367, !368, !369, !371, !372, !373, !375, !377, !379, !380, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !398, !400, !402, !404, !405, !406, !407, !409, !410, !412, !413, !415, !416, !418, !419, !420, !422, !423, !425, !427, !428, !429, !431, !432, !434, !435, !437, !438, !440, !441, !443, !444, !445, !446, !448, !449, !451, !452, !454, !455, !457, !458, !460, !461, !463, !464, !466, !467, !469}
!llvm.named.register.sp = !{!470}
!llvm.module.flags = !{!471, !472, !473, !474, !475, !476, !477, !478}
!llvm.ident = !{!479}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 247, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ffs_lock, !1, !"ffs_lock", i1 false, i1 false}
!4 = !{ptr @__ksymtab_ffs_lock, !5, !"__ksymtab_ffs_lock", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 248, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias297, !7, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1642, i32 1}
!8 = !{ptr @__ksymtab_ffs_name_dev, !9, !"__ksymtab_ffs_name_dev", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3701, i32 1}
!10 = !{ptr @__ksymtab_ffs_single_dev, !11, !"__ksymtab_ffs_single_dev", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3718, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias381, !13, !"__UNIQUE_ID_alias381", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3873, i32 1}
!14 = !{ptr @__initcall__kmod_usb_f_fs__382_3873_ffsmod_init6, !13, !"__initcall__kmod_usb_f_fs__382_3873_ffsmod_init6", i1 false, i1 false}
!15 = !{ptr @__exitcall_ffsmod_exit, !13, !"__exitcall_ffsmod_exit", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_file383, !17, !"__UNIQUE_ID_file383", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3874, i32 1}
!18 = !{ptr @__UNIQUE_ID_license384, !17, !"__UNIQUE_ID_license384", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author385, !20, !"__UNIQUE_ID_author385", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3875, i32 1}
!21 = !{ptr @ffs_devices, !22, !"ffs_devices", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3460, i32 8}
!23 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ffsusb_func, !13, !"ffsusb_func", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3574, i32 54}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3760, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ffs_release_dev.__UNIQUE_ID_ddebug376, !28, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1664, i32 2}
!35 = !{ptr @functionfs_cleanup.__UNIQUE_ID_ddebug299, !34, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1666, i32 2}
!38 = !{ptr @functionfs_cleanup._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @functionfs_cleanup._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1637, i32 11}
!42 = !{ptr @ffs_fs_type, !43, !"ffs_fs_type", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1635, i32 32}
!44 = !{ptr @ffs_fs_context_ops, !45, !"ffs_fs_context_ops", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1600, i32 43}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1697, i32 2}
!48 = !{ptr @ffs_data_put.__UNIQUE_ID_ddebug302, !47, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1700, i32 3}
!51 = !{ptr @ffs_data_put._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ffs_data_put._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1781, i32 2}
!55 = !{ptr @ffs_data_clear.__UNIQUE_ID_ddebug305, !54, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3815, i32 2}
!58 = !{ptr @ffs_closed.__UNIQUE_ID_ddebug378, !57, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1930, i32 2}
!61 = !{ptr @ffs_epfiles_destroy.__UNIQUE_ID_ddebug310, !60, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1509, i32 2}
!64 = !{ptr @ffs_fs_parse_param.__UNIQUE_ID_ddebug294, !63, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1531, i32 31}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1536, i32 31}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1548, i32 9}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1560, i32 2}
!73 = !{ptr @ffs_fs_get_tree.__UNIQUE_ID_ddebug295, !72, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1563, i32 10}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1753, i32 2}
!78 = !{ptr @ffs_data_new.__UNIQUE_ID_ddebug304, !77, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1755, i32 26}
!81 = !{ptr @ffs_data_new.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1764, i32 2}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ffs_data_new.__key.24, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1765, i32 2}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ffs_data_new.__key.26, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1766, i32 2}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ffs_data_new.__key.28, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1767, i32 2}
!92 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @init_completion.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../include/linux/completion.h", i32 87, i32 2}
!95 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3737, i32 2}
!98 = !{ptr @ffs_acquire_dev.__UNIQUE_ID_ddebug375, !97, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1456, i32 2}
!101 = !{ptr @ffs_sb_fill.__UNIQUE_ID_ddebug293, !100, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1478, i32 30}
!104 = !{ptr @ffs_sb_operations, !105, !"ffs_sb_operations", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1437, i32 38}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1387, i32 2}
!108 = !{ptr @ffs_sb_make_inode.__UNIQUE_ID_ddebug291, !107, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1420, i32 2}
!111 = !{ptr @ffs_sb_create_file.__UNIQUE_ID_ddebug292, !110, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!112 = !{ptr @ffs_ep0_operations, !113, !"ffs_ep0_operations", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 694, i32 37}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 509, i32 2}
!116 = !{ptr @ffs_ep0_read.__UNIQUE_ID_ddebug274, !115, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 549, i32 7}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 315, i32 3}
!121 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @__ffs_ep0_stall.__UNIQUE_ID_ddebug269, !120, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 320, i32 3}
!125 = !{ptr @__ffs_ep0_stall.__UNIQUE_ID_ddebug270, !124, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!128 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 332, i32 2}
!135 = !{ptr @ffs_ep0_write.__UNIQUE_ID_ddebug271, !134, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 361, i32 4}
!138 = !{ptr @ffs_ep0_write._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ffs_ep0_write._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 369, i32 4}
!142 = !{ptr @ffs_ep0_write._entry.45, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ffs_ep0_write._entry_ptr.47, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3867, i32 2}
!146 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ffs_prepare_buffer.__UNIQUE_ID_ddebug379, !145, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3868, i32 2}
!150 = !{ptr @ffs_prepare_buffer.__UNIQUE_ID_ddebug380, !149, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!151 = !{ptr @.str.51, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2474, i32 2}
!154 = !{ptr @__ffs_data_got_descs.__UNIQUE_ID_ddebug354, !153, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2188, i32 2}
!157 = !{ptr @ffs_do_descs.__UNIQUE_ID_ddebug337, !156, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!158 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2199, i32 4}
!160 = !{ptr @ffs_do_descs.__UNIQUE_ID_ddebug338, !159, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2210, i32 4}
!163 = !{ptr @ffs_do_descs.__UNIQUE_ID_ddebug339, !162, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!164 = !{ptr @.str.56, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2048, i32 2}
!166 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug311, !165, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!167 = !{ptr @.str.57, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2052, i32 3}
!169 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug312, !168, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2059, i32 3}
!172 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug313, !171, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2087, i32 3}
!175 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug314, !174, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2093, i32 3}
!178 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug315, !177, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2097, i32 3}
!181 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug316, !180, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!182 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug318, !180, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!184 = !{ptr @.str.63, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2099, i32 4}
!186 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug319, !185, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!187 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug320, !185, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!189 = !{ptr @.str.65, !185, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug321, !185, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2106, i32 3}
!193 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug322, !192, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!194 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2110, i32 3}
!196 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug323, !195, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!197 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug324, !195, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!198 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug325, !195, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!200 = !{ptr @.str.69, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2116, i32 4}
!202 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug326, !201, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!203 = !{ptr @.str.70, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2121, i32 4}
!205 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug327, !204, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2126, i32 4}
!208 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug328, !207, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!209 = !{ptr @.str.72, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2138, i32 3}
!211 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug329, !210, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!212 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug330, !213, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2142, i32 4}
!214 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug331, !213, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!215 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug332, !213, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!216 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2147, i32 3}
!218 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug333, !217, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!219 = !{ptr @.str.74, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2158, i32 3}
!221 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug334, !220, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!222 = !{ptr @.str.75, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2163, i32 3}
!224 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug335, !223, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!225 = !{ptr @.str.76, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2167, i32 3}
!227 = !{ptr @ffs_do_single_desc.__UNIQUE_ID_ddebug336, !226, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!228 = !{ptr @.str.77, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2227, i32 2}
!230 = !{ptr @__ffs_data_do_entity.__UNIQUE_ID_ddebug340, !229, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!231 = !{ptr @.str.78, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2333, i32 2}
!233 = !{ptr @ffs_do_os_descs.__UNIQUE_ID_ddebug345, !232, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!234 = !{ptr @.str.79, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2356, i32 4}
!236 = !{ptr @ffs_do_os_descs.__UNIQUE_ID_ddebug346, !235, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!237 = !{ptr @ffs_do_os_descs.__UNIQUE_ID_ddebug347, !238, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2377, i32 4}
!239 = !{ptr @.str.80, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2277, i32 3}
!241 = !{ptr @.str.81, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__ffs_do_os_desc_header.__UNIQUE_ID_ddebug341, !240, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!243 = !{ptr @.str.82, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2289, i32 3}
!245 = !{ptr @__ffs_do_os_desc_header.__UNIQUE_ID_ddebug342, !244, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!246 = !{ptr @.str.83, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2310, i32 2}
!248 = !{ptr @ffs_do_single_os_desc.__UNIQUE_ID_ddebug343, !247, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!249 = !{ptr @.str.84, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2316, i32 4}
!251 = !{ptr @ffs_do_single_os_desc.__UNIQUE_ID_ddebug344, !250, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!252 = !{ptr @.str.85, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2397, i32 2}
!254 = !{ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug348, !253, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!255 = !{ptr @.str.86, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2414, i32 4}
!257 = !{ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug349, !256, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!258 = !{ptr @.str.87, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2437, i32 4}
!260 = !{ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug350, !259, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!261 = !{ptr @.str.88, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2443, i32 4}
!263 = !{ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug351, !262, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!264 = !{ptr @.str.89, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2449, i32 4}
!266 = !{ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug352, !265, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!267 = !{ptr @__ffs_data_do_os_desc.__UNIQUE_ID_ddebug353, !268, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!268 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2460, i32 3}
!269 = !{ptr @.str.90, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2606, i32 2}
!271 = !{ptr @__ffs_data_got_strings.__UNIQUE_ID_ddebug355, !270, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!272 = !{ptr @.str.91, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1898, i32 2}
!274 = !{ptr @ffs_epfiles_create.__UNIQUE_ID_ddebug309, !273, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!275 = !{ptr @ffs_epfiles_create.__key, !276, !"__key", i1 false, i1 false}
!276 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1908, i32 3}
!277 = !{ptr @.str.92, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1910, i32 26}
!280 = !{ptr @.str.94, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1912, i32 26}
!282 = !{ptr @ffs_epfile_operations, !283, !"ffs_epfile_operations", i1 false, i1 false}
!283 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1360, i32 37}
!284 = !{ptr @.str.95, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1223, i32 2}
!286 = !{ptr @ffs_epfile_read_iter.__UNIQUE_ID_ddebug288, !285, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!287 = !{ptr @.str.96, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1167, i32 2}
!289 = !{ptr @ffs_aio_cancel.__UNIQUE_ID_ddebug286, !288, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!290 = !{ptr @.str.97, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1050, i32 3}
!292 = !{ptr @__func__.ffs_epfile_io, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.98, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 710, i32 2}
!295 = !{ptr @ffs_epfile_io_complete.__UNIQUE_ID_ddebug283, !294, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!296 = !{ptr @.str.99, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 918, i32 2}
!298 = !{ptr @.str.100, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @__ffs_epfile_read_data._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @__ffs_epfile_read_data._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.101, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 853, i32 2}
!303 = !{ptr @ffs_epfile_async_io_complete.__UNIQUE_ID_ddebug284, !302, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!304 = !{ptr @ffs_epfile_async_io_complete.__key, !305, !"__key", i1 false, i1 false}
!305 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 855, i32 2}
!306 = !{ptr @.str.102, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.103, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 754, i32 2}
!309 = !{ptr @.str.104, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @ffs_copy_to_iter._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @ffs_copy_to_iter._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.105, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1186, i32 2}
!314 = !{ptr @ffs_epfile_write_iter.__UNIQUE_ID_ddebug287, !313, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!315 = !{ptr @.str.106, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1287, i32 2}
!317 = !{ptr @ffs_epfile_ioctl.__UNIQUE_ID_ddebug290, !316, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!318 = !{ptr @.str.107, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1149, i32 2}
!320 = !{ptr @ffs_epfile_open.__UNIQUE_ID_ddebug285, !319, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!321 = !{ptr @.str.108, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1685, i32 2}
!323 = !{ptr @ffs_data_opened.__UNIQUE_ID_ddebug301, !322, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!324 = !{ptr @.str.109, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1814, i32 2}
!326 = !{ptr @ffs_data_reset.__UNIQUE_ID_ddebug306, !325, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!327 = !{ptr @.str.110, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1272, i32 2}
!329 = !{ptr @ffs_epfile_release.__UNIQUE_ID_ddebug289, !328, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!330 = !{ptr @.str.111, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1717, i32 2}
!332 = !{ptr @ffs_data_closed.__UNIQUE_ID_ddebug303, !331, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!333 = !{ptr @.str.112, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3782, i32 2}
!335 = !{ptr @ffs_ready.__UNIQUE_ID_ddebug377, !334, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!336 = !{ptr @.str.113, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 637, i32 2}
!338 = !{ptr @ffs_ep0_ioctl.__UNIQUE_ID_ddebug282, !337, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!339 = !{ptr @.str.114, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 609, i32 2}
!341 = !{ptr @ffs_ep0_open.__UNIQUE_ID_ddebug280, !340, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!342 = !{ptr @.str.115, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 624, i32 2}
!344 = !{ptr @ffs_ep0_release.__UNIQUE_ID_ddebug281, !343, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!345 = !{ptr @.str.116, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1494, i32 2}
!347 = !{ptr @.str.117, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1495, i32 2}
!349 = !{ptr @.str.118, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1496, i32 2}
!351 = !{ptr @.str.119, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1497, i32 2}
!353 = !{ptr @.str.120, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1498, i32 2}
!355 = !{ptr @.str.121, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1499, i32 2}
!357 = !{ptr @ffs_fs_fs_parameters, !358, !"ffs_fs_fs_parameters", i1 false, i1 false}
!358 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1493, i32 39}
!359 = !{ptr @.str.122, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1628, i32 2}
!361 = !{ptr @ffs_fs_kill_sb.__UNIQUE_ID_ddebug296, !360, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!362 = !{ptr @.str.123, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1651, i32 2}
!364 = !{ptr @functionfs_init.__UNIQUE_ID_ddebug298, !363, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!365 = !{ptr @.str.124, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1655, i32 3}
!367 = !{ptr @functionfs_init._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @functionfs_init._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.126, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1657, i32 3}
!371 = !{ptr @functionfs_init._entry.125, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @functionfs_init._entry_ptr.127, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @ffs_func_type, !374, !"ffs_func_type", i1 false, i1 false}
!374 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3526, i32 38}
!375 = !{ptr @ffs_item_ops, !376, !"ffs_item_ops", i1 false, i1 false}
!376 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3522, i32 40}
!377 = !{ptr @.str.128, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3635, i32 2}
!379 = !{ptr @ffs_alloc.__UNIQUE_ID_ddebug374, !378, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!380 = !{ptr @.str.129, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3641, i32 27}
!382 = !{ptr @.str.130, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3066, i32 2}
!384 = !{ptr @ffs_do_functionfs_bind.__UNIQUE_ID_ddebug363, !383, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!385 = !{ptr @.str.131, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1849, i32 2}
!387 = !{ptr @functionfs_bind.__UNIQUE_ID_ddebug307, !386, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!388 = !{ptr @.str.132, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1678, i32 2}
!390 = !{ptr @ffs_data_get.__UNIQUE_ID_ddebug300, !389, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!391 = !{ptr @.str.133, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3144, i32 2}
!393 = !{ptr @_ffs_func_bind.__UNIQUE_ID_ddebug364, !392, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!394 = !{ptr @.str.134, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2832, i32 39}
!396 = !{ptr @.str.135, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2832, i32 47}
!398 = !{ptr @.str.136, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2832, i32 55}
!400 = !{ptr @__ffs_func_bind_do_descs.speed_names, !401, !"speed_names", i1 false, i1 false}
!401 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2832, i32 21}
!402 = !{ptr @.str.137, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2864, i32 3}
!404 = !{ptr @.str.138, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @__ffs_func_bind_do_descs._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @__ffs_func_bind_do_descs._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.139, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2871, i32 2}
!409 = !{ptr @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug358, !408, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!410 = !{ptr @.str.140, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2892, i32 3}
!412 = !{ptr @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug359, !411, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!413 = !{ptr @.str.141, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2918, i32 2}
!415 = !{ptr @__ffs_func_bind_do_descs.__UNIQUE_ID_ddebug360, !414, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!416 = !{ptr @.str.142, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2973, i32 2}
!418 = !{ptr @.str.143, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @__ffs_func_bind_do_nums.__UNIQUE_ID_ddebug361, !417, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!420 = !{ptr @.str.144, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3051, i32 3}
!422 = !{ptr @__ffs_func_bind_do_os_desc.__UNIQUE_ID_ddebug362, !421, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!423 = !{ptr @.str.145, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2780, i32 3}
!425 = !{ptr @.str.146, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2791, i32 5}
!427 = !{ptr @.str.147, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @__ffs_event_add.__UNIQUE_ID_ddebug356, !426, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!429 = !{ptr @.str.148, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 2795, i32 2}
!431 = !{ptr @__ffs_event_add.__UNIQUE_ID_ddebug357, !430, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!432 = !{ptr @.str.149, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1882, i32 2}
!434 = !{ptr @functionfs_unbind.__UNIQUE_ID_ddebug308, !433, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!435 = !{ptr @.str.150, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3595, i32 2}
!437 = !{ptr @ffs_func_unbind.__UNIQUE_ID_ddebug373, !436, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!438 = !{ptr @ffs_func_set_alt.__key, !439, !"__key", i1 false, i1 false}
!439 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3315, i32 3}
!440 = !{ptr @.str.151, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.152, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 1989, i32 4}
!443 = !{ptr @.str.153, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @ffs_func_eps_enable._entry, !442, !"_entry", i1 false, i1 false}
!445 = !{ptr @ffs_func_eps_enable._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.154, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3349, i32 2}
!448 = !{ptr @ffs_func_setup.__UNIQUE_ID_ddebug365, !447, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!449 = !{ptr @.str.155, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3351, i32 2}
!451 = !{ptr @ffs_func_setup.__UNIQUE_ID_ddebug366, !450, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!452 = !{ptr @.str.156, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3352, i32 2}
!454 = !{ptr @ffs_func_setup.__UNIQUE_ID_ddebug367, !453, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!455 = !{ptr @.str.157, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3353, i32 2}
!457 = !{ptr @ffs_func_setup.__UNIQUE_ID_ddebug368, !456, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!458 = !{ptr @.str.158, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3354, i32 2}
!460 = !{ptr @ffs_func_setup.__UNIQUE_ID_ddebug369, !459, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!461 = !{ptr @.str.159, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3355, i32 2}
!463 = !{ptr @ffs_func_setup.__UNIQUE_ID_ddebug370, !462, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!464 = !{ptr @.str.160, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3425, i32 2}
!466 = !{ptr @ffs_func_suspend.__UNIQUE_ID_ddebug371, !465, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!467 = !{ptr @.str.161, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/usb/gadget/function/f_fs.c", i32 3431, i32 2}
!469 = !{ptr @ffs_func_resume.__UNIQUE_ID_ddebug372, !468, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!470 = !{!"sp"}
!471 = !{i32 1, !"wchar_size", i32 2}
!472 = !{i32 1, !"min_enum_size", i32 4}
!473 = !{i32 8, !"branch-target-enforcement", i32 0}
!474 = !{i32 8, !"sign-return-address", i32 0}
!475 = !{i32 8, !"sign-return-address-all", i32 0}
!476 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!477 = !{i32 7, !"uwtable", i32 1}
!478 = !{i32 7, !"frame-pointer", i32 2}
!479 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!480 = !{i64 2148362826, i64 2148362831, i64 2148362844, i64 2148362888, i64 2148362922, i64 2148362943}
!481 = !{i8 0, i8 2}
!482 = !{i64 2148638964}
!483 = !{i64 2148553428, i64 2148553460, i64 2148553489, i64 2148553523, i64 2148553554, i64 2148553577}
!484 = !{!"branch_weights", i32 2000, i32 1}
!485 = !{i64 2149684934}
!486 = !{i64 2155048745, i64 2155049245, i64 2155048782, i64 2155048838, i64 2155048872, i64 2155048896, i64 2155048937, i64 2155048958, i64 2155048986, i64 2155049020}
!487 = !{i64 2155058220, i64 2155058720, i64 2155058257, i64 2155058313, i64 2155058347, i64 2155058371, i64 2155058412, i64 2155058433, i64 2155058461, i64 2155058495}
!488 = !{!"branch_weights", i32 1, i32 2000}
!489 = !{i64 2155072954, i64 2155073454, i64 2155072991, i64 2155073047, i64 2155073081, i64 2155073105, i64 2155073146, i64 2155073167, i64 2155073195, i64 2155073229}
!490 = !{i64 2154934779}
!491 = !{i64 1058925, i64 1058946, i64 1058969, i64 1058988, i64 1059007}
!492 = !{i64 2154935209}
!493 = !{i64 2152342862, i64 2152342887}
!494 = !{!"auto-init"}
!495 = !{ptr @__ffs_data_do_entity, ptr @__ffs_func_bind_do_descs, ptr @__ffs_func_bind_do_nums}
!496 = !{ptr @__ffs_data_do_os_desc, ptr @__ffs_func_bind_do_os_desc}
!497 = !{i64 2154980171}
!498 = !{i64 1056201, i64 1056218, i64 1056242, i64 1056268, i64 1056286}
!499 = !{i64 2154980551}
!500 = !{i64 2154981495}
!501 = !{i64 2154981848}
!502 = !{i64 2154982891}
!503 = !{i64 2154983304}
!504 = !{i64 2154986531}
!505 = !{i64 2154986944}
!506 = !{i64 2148550963, i64 2148550995, i64 2148551024, i64 2148551058, i64 2148551089, i64 2148551112}
!507 = !{i64 2148634844}
!508 = !{i64 2148550153, i64 2148550185, i64 2148550214, i64 2148550248, i64 2148550279, i64 2148550302}
!509 = !{i64 2148635073}
!510 = !{i64 2148637885}
!511 = !{i64 2148552618, i64 2148552650, i64 2148552679, i64 2148552713, i64 2148552744, i64 2148552767}
!512 = !{i64 2148638114}
