; ModuleID = '/llk/IR_all_yes/drivers/char/virtio_console.c_pt.bc'
source_filename = "../drivers/char/virtio_console.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hv_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ports_driver_data = type { ptr, ptr, %struct.list_head, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.virtio_device_id = type { i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.console = type { %struct.list_head, ptr, %struct.winsize, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.hvc_struct = type { %struct.tty_port, %struct.spinlock, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.winsize, %struct.work_struct, %struct.list_head, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ports_device = type { %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, ptr, ptr, %struct.virtio_console_control, ptr, ptr, i32 }
%struct.virtio_console_control = type { i32, i16, i16 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.port = type { %struct.list_head, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.port_stats, %struct.console, ptr, ptr, %struct.kref, %struct.wait_queue_head, ptr, ptr, i32, i8, i8, i8 }
%struct.port_stats = type { i32, i32, i32 }
%struct.port_buffer = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, i32, [0 x %struct.scatterlist] }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.73 = type { ptr }
%struct.sg_list = type { i32, i32, i32, ptr }
%struct.splice_desc = type { i32, i32, i32, %union.anon.78, i64, ptr, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@early_put_chars = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hv_ops = internal constant { %struct.hv_ops, [60 x i8] } { %struct.hv_ops { ptr @get_chars, ptr @put_chars, ptr null, ptr @notifier_add_vio, ptr @notifier_del_vio, ptr @notifier_del_vio, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@virtio_console = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 2, ptr null, i32 0, ptr null, ptr @virtcons_probe, ptr null, ptr @virtcons_remove, ptr @config_intr, ptr @virtcons_freeze, ptr @virtcons_restore }, [36 x i8] zeroinitializer }, align 32
@virtio_rproc_serial = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str.92, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rproc_serial_id_table, ptr @rproc_serial_features, i32 0, ptr null, i32 0, ptr null, ptr @virtcons_probe, ptr null, ptr @virtcons_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pdrvdata = internal global { %struct.ports_driver_data, [36 x i8] } { %struct.ports_driver_data { ptr null, ptr null, %struct.list_head zeroinitializer, i32 1, %struct.list_head zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_virtio_console__260_2293_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_fini = internal global ptr @fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description261 = internal constant [49 x i8] c"virtio_console.description=Virtio console driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [48 x i8] c"virtio_console.file=drivers/char/virtio_console\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [27 x i8] c"virtio_console.license=GPL\00", section ".modinfo", align 1
@pdrvdata_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdrvdata_lock\00", [18 x i8] zeroinitializer }, align 32
@fill_readbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed add_buf\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fill_readbuf\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/char/virtio_console.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fill_readbuf._entry_ptr = internal global ptr @fill_readbuf._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dma_bufs_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@pending_free_dma_bufs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pending_free_dma_bufs, ptr @pending_free_dma_bufs }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_bufs_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virtio_console\00", [17 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 3, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@virtcons_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 2012, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failure: config access disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virtcons_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@virtcons_probe._entry_ptr = internal global ptr @virtcons_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virtio-portsdev\00", [16 x i8] zeroinitializer }, align 32
@portdev_fops = internal constant { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@virtcons_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 2034, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error %d registering chrdev for device %u\0A\00", [53 x i8] zeroinitializer }, align 32
@virtcons_probe._entry_ptr.18 = internal global ptr @virtcons_probe._entry.16, section ".printk_index", align 4
@virtcons_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.3, i32 2051, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalidate max_nr_ports %d\00", [37 x i8] zeroinitializer }, align 32
@virtcons_probe._entry_ptr.21 = internal global ptr @virtcons_probe._entry.19, section ".printk_index", align 4
@virtcons_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.3, i32 2060, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error %d initializing vqs\0A\00", [37 x i8] zeroinitializer }, align 32
@virtcons_probe._entry_ptr.24 = internal global ptr @virtcons_probe._entry.22, section ".printk_index", align 4
@virtcons_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&portdev->ports_lock\00", [43 x i8] zeroinitializer }, align 32
@virtcons_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&portdev->config_work)\00", [55 x i8] zeroinitializer }, align 32
@virtcons_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&portdev->control_work)\00", [54 x i8] zeroinitializer }, align 32
@virtcons_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&portdev->c_ivq_lock\00", [43 x i8] zeroinitializer }, align 32
@virtcons_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&portdev->c_ovq_lock\00", [43 x i8] zeroinitializer }, align 32
@virtcons_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.3, i32 2080, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error allocating buffers for control queue\0A\00", [52 x i8] zeroinitializer }, align 32
@virtcons_probe._entry_ptr.36 = internal global ptr @virtcons_probe._entry.34, section ".printk_index", align 4
@early_console_added = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.91, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @early_console_added, i64 48), ptr getelementptr (i8, ptr @early_console_added, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"control-i\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"control-o\00", [22 x i8] zeroinitializer }, align 32
@discard_port_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Errors adding %d buffers back to vq\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"discard_port_data\00", [46 x i8] zeroinitializer }, align 32
@discard_port_data._entry_ptr = internal global ptr @discard_port_data._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@control_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1721, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error adding buffer to queue\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"control_work_handler\00", [43 x i8] zeroinitializer }, align 32
@control_work_handler._entry_ptr = internal global ptr @control_work_handler._entry, section ".printk_index", align 4
@handle_control_message.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 1, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"handle_control_message\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid index %u in control packet\0A\00", [60 x i8] zeroinitializer }, align 32
@handle_control_message.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.45, ptr @.str.3, ptr @.str.47, i8 1, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Port %u already added\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_control_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.3, i32 1595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Request for adding port with out-of-bound id %u, max. supported id: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@handle_control_message._entry_ptr = internal global ptr @handle_control_message._entry, section ".printk_index", align 4
@handle_control_message._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 1670, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Not enough space to store port name\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_control_message._entry_ptr.51 = internal global ptr @handle_control_message._entry.49, section ".printk_index", align 4
@port_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@handle_control_message._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.3, i32 1686, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error %d creating sysfs device attributes\0A\00", [53 x i8] zeroinitializer }, align 32
@handle_control_message._entry_ptr.54 = internal global ptr @handle_control_message._entry.52, section ".printk_index", align 4
@init_port_console._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1253, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error %d allocating hvc for port\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_port_console\00", [46 x i8] zeroinitializer }, align 32
@init_port_console._entry_ptr = internal global ptr @init_port_console._entry, section ".printk_index", align 4
@port_sysfs_entries = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_name, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_port_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1394, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error allocating cdev\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_port\00", [23 x i8] zeroinitializer }, align 32
@add_port._entry_ptr = internal global ptr @add_port._entry, section ".printk_index", align 4
@port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @port_fops_read, ptr @port_fops_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @port_fops_poll, ptr null, ptr null, ptr null, i32 0, ptr @port_fops_open, ptr null, ptr @port_fops_release, ptr null, ptr @port_fops_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @port_fops_splice_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@add_port._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1404, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error %d adding cdev for port %u\0A\00", [62 x i8] zeroinitializer }, align 32
@add_port._entry_ptr.63 = internal global ptr @add_port._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vport%up%u\00", [21 x i8] zeroinitializer }, align 32
@add_port._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.60, ptr @.str.3, i32 1414, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error %d creating device for port %u\0A\00", [58 x i8] zeroinitializer }, align 32
@add_port._entry_ptr.67 = internal global ptr @add_port._entry.65, section ".printk_index", align 4
@add_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->inbuf_lock\00", [46 x i8] zeroinitializer }, align 32
@add_port.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->outvq_lock\00", [46 x i8] zeroinitializer }, align 32
@add_port.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&port->waitqueue\00", [47 x i8] zeroinitializer }, align 32
@add_port._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.3, i32 1428, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error allocating inbufs\0A\00", [39 x i8] zeroinitializer }, align 32
@add_port._entry_ptr.75 = internal global ptr @add_port._entry.73, section ".printk_index", align 4
@port_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @port_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.77 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"guest_connected: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"host_connected: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"outvq_full: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bytes_sent: %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bytes_received: %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bytes_discarded: %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is_console: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"console_vtermno: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(early_console_added).wait.lock\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"virtio_rproc_serial\00", [44 x i8] zeroinitializer }, align 32
@rproc_serial_id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 11, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@rproc_serial_features = internal constant { [0 x i32], [32 x i8] } zeroinitializer, align 32
@init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"virtio-ports\00", [19 x i8] zeroinitializer }, align 32
@init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 2255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Error %d creating virtio-ports class\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@init._entry_ptr = internal global ptr @init._entry, section ".printk_index", align 4
@init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Error %d registering virtio driver\0A\00", [58 x i8] zeroinitializer }, align 32
@init._entry_ptr.98 = internal global ptr @init._entry.96, section ".printk_index", align 4
@init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 2271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Error %d registering virtio rproc serial driver\0A\00", [45 x i8] zeroinitializer }, align 32
@init._entry_ptr.101 = internal global ptr @init._entry.99, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"early_put_chars\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 241, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"hv_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1203, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"virtio_console\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2223, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"virtio_rproc_serial\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2238, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"pdrvdata\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 66, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"pdrvdata_lock\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 68, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 697, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 230, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 214, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 174, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"dma_bufs_lock\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"pending_free_dma_bufs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 356, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 717, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 355, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2226, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2128, i32 38 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2134, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2011, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2029, i32 42 }
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"portdev_fops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1929, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2032, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2049, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2060, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2064, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2070, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2071, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2074, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2075, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2079, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"early_console_added\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1874, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1875, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1881, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1882, i32 21 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 529, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1720, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1577, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1585, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1592, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1669, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [21 x i8] c"port_attribute_group\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1293, i32 37 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1684, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1252, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"port_sysfs_entries\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1288, i32 26 }
@___asan_gen_.318 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1286, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1283, i32 25 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1394, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [10 x i8] c"port_fops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1097, i32 37 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1403, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1408, i32 19 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1412, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1418, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1419, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1420, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1428, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [18 x i8] c"port_debugfs_fops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1316, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 57, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1160, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1302, i32 16 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1302, i32 56 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1303, i32 16 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1304, i32 16 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1305, i32 16 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1306, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1307, i32 16 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1308, i32 16 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1309, i32 16 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1310, i32 30 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1310, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 1311, i32 16 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 69, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2241, i32 17 }
@___asan_gen_.429 = private unnamed_addr constant [22 x i8] c"rproc_serial_id_table\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2139, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"rproc_serial_features\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2147, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2252, i32 19 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2255, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2265, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.460 = private constant [33 x i8] c"../drivers/char/virtio_console.c\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.460, i32 2270, i32 3 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_fini, ptr @__initcall__kmod_virtio_console__260_2293_init6, ptr @add_port._entry, ptr @add_port._entry.61, ptr @add_port._entry.65, ptr @add_port._entry.73, ptr @add_port._entry_ptr, ptr @add_port._entry_ptr.63, ptr @add_port._entry_ptr.67, ptr @add_port._entry_ptr.75, ptr @control_work_handler._entry, ptr @control_work_handler._entry_ptr, ptr @discard_port_data._entry, ptr @discard_port_data._entry_ptr, ptr @fill_readbuf._entry, ptr @fill_readbuf._entry_ptr, ptr @fini, ptr @handle_control_message._entry, ptr @handle_control_message._entry.49, ptr @handle_control_message._entry.52, ptr @handle_control_message._entry_ptr, ptr @handle_control_message._entry_ptr.51, ptr @handle_control_message._entry_ptr.54, ptr @init._entry, ptr @init._entry.96, ptr @init._entry.99, ptr @init._entry_ptr, ptr @init._entry_ptr.101, ptr @init._entry_ptr.98, ptr @init_port_console._entry, ptr @init_port_console._entry_ptr, ptr @virtcons_probe._entry, ptr @virtcons_probe._entry.16, ptr @virtcons_probe._entry.19, ptr @virtcons_probe._entry.22, ptr @virtcons_probe._entry.34, ptr @virtcons_probe._entry_ptr, ptr @virtcons_probe._entry_ptr.18, ptr @virtcons_probe._entry_ptr.21, ptr @virtcons_probe._entry_ptr.24, ptr @virtcons_probe._entry_ptr.36, ptr @early_put_chars, ptr @hv_ops, ptr @virtio_console, ptr @virtio_rproc_serial, ptr @pdrvdata, ptr @pdrvdata_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dma_bufs_lock, ptr @pending_free_dma_bufs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @id_table, ptr @features, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @portdev_fops, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @virtcons_probe.__key, ptr @.str.25, ptr @virtcons_probe.__key.26, ptr @.str.27, ptr @virtcons_probe.__key.28, ptr @.str.29, ptr @virtcons_probe.__key.30, ptr @.str.31, ptr @virtcons_probe.__key.32, ptr @.str.33, ptr @.str.35, ptr @early_console_added, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @port_attribute_group, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @port_sysfs_entries, ptr @dev_attr_name, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @port_fops, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @add_port.__key, ptr @.str.68, ptr @add_port.__key.69, ptr @.str.70, ptr @add_port.__key.71, ptr @.str.72, ptr @.str.74, ptr @port_debugfs_fops, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @rproc_serial_id_table, ptr @rproc_serial_features, ptr @init.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_put_chars to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_console to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_rproc_serial to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdrvdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdrvdata_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_readbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_bufs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pending_free_dma_bufs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtcons_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_console_added to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @discard_port_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_control_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_control_message._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_control_message._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_port_console._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_sysfs_entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_serial_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_serial_features to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_cons_early_init(ptr noundef %put_chars) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %put_chars, ptr @early_put_chars, align 4
  %call = tail call i32 @hvc_instantiate(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @hv_ops) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hvc_instantiate(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @reclaim_dma_bufs()
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_console) #14
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_rproc_serial) #14
  %0 = load ptr, ptr @pdrvdata, align 4
  tail call void @class_destroy(ptr noundef %0) #14
  %1 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reclaim_dma_bufs() unnamed_addr #2 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp_list.sroa.gep = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #14
  %0 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %1 = ptrtoint ptr %tmp_list.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list.sroa.gep, align 4
  %2 = load volatile ptr, ptr @pending_free_dma_bufs, align 4
  %cmp.i.not = icmp eq ptr %2, @pending_free_dma_bufs
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dma_bufs_lock) #14
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pending_free_dma_bufs, i32 0, i32 1), align 4
  %4 = load volatile ptr, ptr @pending_free_dma_bufs, align 4
  %cmp.i.not.i = icmp eq ptr %4, @pending_free_dma_bufs
  br i1 %cmp.i.not.i, label %do.body1.list_cut_position.exit_crit_edge, label %if.end.i

do.body1.list_cut_position.exit_crit_edge:        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_cut_position.exit

if.end.i:                                         ; preds = %do.body1
  %5 = load volatile ptr, ptr @pending_free_dma_bufs, align 4
  %cmp.i4.not.i = icmp eq ptr %3, @pending_free_dma_bufs
  br i1 %cmp.i4.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tmp_list, ptr %tmp_list, align 4
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %.sroa.gep = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %tmp_list, align 4
  %prev.i6.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tmp_list, ptr %prev.i6.i, align 4
  %11 = ptrtoint ptr %tmp_list.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %tmp_list.sroa.gep, align 4
  store ptr %tmp_list, ptr %3, align 4
  store ptr %8, ptr @pending_free_dma_bufs, align 4
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i, %if.then11.i
  %pending_free_dma_bufs.sink.i = phi ptr [ @pending_free_dma_bufs, %if.else.i ], [ %tmp_list, %if.then11.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.gep, %if.else.i ], [ %tmp_list.sroa.gep, %if.then11.i ]
  %12 = ptrtoint ptr %.sink.i.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_free_dma_bufs.sink.i, ptr %.sink.i.sroa.phi, align 4
  br label %list_cut_position.exit

list_cut_position.exit:                           ; preds = %if.end12.sink.split.i, %do.body1.list_cut_position.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_bufs_lock, i32 noundef %call4) #14
  %13 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmp_list, align 4
  %cmp14.not30 = icmp eq ptr %14, %tmp_list
  br i1 %cmp14.not30, label %list_cut_position.exit.cleanup_crit_edge, label %list_cut_position.exit.for.body_crit_edge

list_cut_position.exit.for.body_crit_edge:        ; preds = %list_cut_position.exit
  br label %for.body

list_cut_position.exit.cleanup_crit_edge:         ; preds = %list_cut_position.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %list_cut_position.exit.for.body_crit_edge
  %.pn.in31 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %14, %list_cut_position.exit.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in31, i32 -24
  %15 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in31, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in31, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call fastcc void @free_buf(ptr noundef %buf.0, i1 noundef zeroext true)
  %cmp14.not = icmp eq ptr %.pn, %tmp_list
  br i1 %cmp14.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %list_cut_position.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @init.__key) #14
  store ptr %call, ptr @pdrvdata, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %0) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.93, ptr noundef null) #14
  store ptr %call5, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  %call6 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_console) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %call6) #17
  br label %free

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_rproc_serial) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %call14) #17
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_console) #14
  br label %free

free:                                             ; preds = %do.end19, %do.end10
  %err.0 = phi i32 [ %call6, %do.end10 ], [ %call14, %do.end19 ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  %2 = load ptr, ptr @pdrvdata, align 4
  tail call void @class_destroy(ptr noundef %2) #14
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end13.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %free ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_chars(i32 noundef %vtermno, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @early_put_chars, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !239

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %cons.0.in.i = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), %if.end ], [ %cons.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %cons.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %cons.0.i = load ptr, ptr %cons.0.in.i, align 4
  %cmp6.not.i = icmp eq ptr %cons.0.i, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)
  br i1 %cmp6.not.i, label %find_port_by_vtermno.exit.thread, label %for.body.i

find_port_by_vtermno.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vtermno8.i = getelementptr inbounds %struct.console, ptr %cons.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %vtermno8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vtermno8.i, align 4
  %cmp9.i = icmp eq i32 %3, %vtermno
  br i1 %cmp9.i, label %find_port_by_vtermno.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_port_by_vtermno.exit:                        ; preds = %for.body.i
  %add.ptr13.i = getelementptr i8, ptr %cons.0.i, i32 -128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  %tobool3.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool3.not, label %find_port_by_vtermno.exit.cleanup_crit_edge, label %do.body

find_port_by_vtermno.exit.cleanup_crit_edge:      ; preds = %find_port_by_vtermno.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %find_port_by_vtermno.exit
  %in_vq = getelementptr i8, ptr %cons.0.i, i32 -24
  %4 = ptrtoint ptr %in_vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_vq, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.body16, label %do.end22, !prof !240

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/virtio_console.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1161, 0\0A.popsection", ""() #14, !srcloc !241
  unreachable

do.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call fastcc i32 @fill_readbuf(ptr noundef nonnull %add.ptr13.i, ptr noundef %buf, i32 noundef %count, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %find_port_by_vtermno.exit.cleanup_crit_edge, %find_port_by_vtermno.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end22 ], [ 0, %entry.cleanup_crit_edge ], [ -32, %find_port_by_vtermno.exit.cleanup_crit_edge ], [ -32, %find_port_by_vtermno.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @put_chars(i32 noundef %vtermno, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #14
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = load ptr, ptr @early_put_chars, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %1(i32 noundef %vtermno, ptr noundef %buf, i32 noundef %count) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %cons.0.in.i = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), %if.end ], [ %cons.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %cons.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cons.0.i = load ptr, ptr %cons.0.in.i, align 4
  %cmp6.not.i = icmp eq ptr %cons.0.i, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)
  br i1 %cmp6.not.i, label %find_port_by_vtermno.exit.thread, label %for.body.i

find_port_by_vtermno.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vtermno8.i = getelementptr inbounds %struct.console, ptr %cons.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %vtermno8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtermno8.i, align 4
  %cmp9.i = icmp eq i32 %4, %vtermno
  br i1 %cmp9.i, label %find_port_by_vtermno.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_port_by_vtermno.exit:                        ; preds = %for.body.i
  %add.ptr13.i = getelementptr i8, ptr %cons.0.i, i32 -128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  %tobool4.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool4.not, label %find_port_by_vtermno.exit.cleanup_crit_edge, label %if.end6

find_port_by_vtermno.exit.cleanup_crit_edge:      ; preds = %find_port_by_vtermno.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %find_port_by_vtermno.exit
  %call7 = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %count, i32 noundef 2592) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call7, i32 noundef %count) #14
  %call12 = call fastcc i32 @__send_to_port(ptr noundef nonnull %add.ptr13.i, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %count, ptr noundef nonnull %call7, i1 noundef zeroext false)
  call void @kfree(ptr noundef nonnull %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %find_port_by_vtermno.exit.cleanup_crit_edge, %find_port_by_vtermno.exit.thread, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call12, %if.end10 ], [ -32, %find_port_by_vtermno.exit.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -32, %find_port_by_vtermno.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @notifier_add_vio(ptr nocapture noundef %hp, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vtermno = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 7
  %0 = ptrtoint ptr %vtermno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtermno, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %cons.0.in.i = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), %entry ], [ %cons.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %cons.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cons.0.i = load ptr, ptr %cons.0.in.i, align 4
  %cmp6.not.i = icmp eq ptr %cons.0.i, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)
  br i1 %cmp6.not.i, label %find_port_by_vtermno.exit.thread, label %for.body.i

find_port_by_vtermno.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vtermno8.i = getelementptr inbounds %struct.console, ptr %cons.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %vtermno8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vtermno8.i, align 4
  %cmp9.i = icmp eq i32 %4, %1
  br i1 %cmp9.i, label %find_port_by_vtermno.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_port_by_vtermno.exit:                        ; preds = %for.body.i
  %add.ptr13.i = getelementptr i8, ptr %cons.0.i, i32 -128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %find_port_by_vtermno.exit.cleanup_crit_edge, label %lor.lhs.false.i

find_port_by_vtermno.exit.cleanup_crit_edge:      ; preds = %find_port_by_vtermno.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %find_port_by_vtermno.exit
  %irq_requested = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 9
  %5 = ptrtoint ptr %irq_requested to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %irq_requested, align 4
  %hvc.i.i = getelementptr i8, ptr %cons.0.i, i32 8
  %6 = ptrtoint ptr %hvc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hvc.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %portdev.i = getelementptr i8, ptr %cons.0.i, i32 -120
  %8 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %portdev.i, align 4
  %vdev1.i = getelementptr inbounds %struct.ports_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %vdev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev1.i, align 4
  %id.i.i = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 11
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  tail call void @virtio_check_driver_offered_feature(ptr noundef %11, i32 noundef 0) #14
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %15, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then4.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %hvc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hvc.i.i, align 4
  %ws.i = getelementptr i8, ptr %cons.0.i, i32 12
  %18 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i = load i32, ptr %ws.i, align 4
  %19 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt12.i = getelementptr i8, ptr %cons.0.i, i32 16
  %20 = ptrtoint ptr %.elt12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack13.i = load i32, ptr %.elt12.i, align 4
  %21 = insertvalue [2 x i32] %19, i32 %.unpack13.i, 1
  %lock.i.i = getelementptr inbounds %struct.hvc_struct, ptr %17, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  tail call void @__hvc_resize(ptr noundef %17, [2 x i32] %21) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %find_port_by_vtermno.exit.cleanup_crit_edge, %find_port_by_vtermno.exit.thread
  %retval.0 = phi i32 [ -22, %find_port_by_vtermno.exit.cleanup_crit_edge ], [ -22, %find_port_by_vtermno.exit.thread ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @notifier_del_vio(ptr nocapture noundef writeonly %hp, i32 noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_requested = getelementptr inbounds %struct.hvc_struct, ptr %hp, i32 0, i32 9
  %0 = ptrtoint ptr %irq_requested to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_requested, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_readbuf(ptr noundef %port, ptr noundef %out_buf, i32 noundef %out_count, i1 noundef zeroext %to_user) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  %len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_count)
  %tobool.not = icmp eq i32 %out_count, 0
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %lor.lhs.false

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

lor.lhs.false:                                    ; preds = %entry
  %inbuf_lock.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %inbuf_lock.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #14
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len.i.i, align 4, !annotation !242
  %inbuf.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inbuf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i63, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i63:                                     ; preds = %lor.lhs.false
  %in_vq.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %3 = ptrtoint ptr %in_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in_vq.i.i, align 4
  %call.i.i62 = call ptr @virtqueue_get_buf(ptr noundef %4, ptr noundef nonnull %len.i.i) #14
  %tobool2.not.i.i = icmp eq ptr %call.i.i62, null
  br i1 %tobool2.not.i.i, label %port_has_data.exit, label %if.then3.i.i64

if.then3.i.i64:                                   ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i62, i32 0, i32 1
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i.i, align 4
  %9 = call i32 @llvm.umin.i32(i32 %6, i32 %8) #14
  %len4.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i62, i32 0, i32 2
  %10 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %len4.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i62, i32 0, i32 3
  %11 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %offset.i.i, align 4
  %bytes_received.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bytes_received.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes_received.i.i, align 4
  %add.i.i = add i32 %13, %6
  store i32 %add.i.i, ptr %bytes_received.i.i, align 4
  br label %if.end

port_has_data.exit:                               ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  %14 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i) #14
  br label %cleanup36

if.end:                                           ; preds = %if.then3.i.i64, %lor.lhs.false.if.end_crit_edge
  %retval.0.i.i.ph = phi ptr [ %call.i.i62, %if.then3.i.i64 ], [ %2, %lor.lhs.false.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  %15 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i.i.ph, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i) #14
  %16 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inbuf.i.i, align 4
  %len = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %offset = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %sub = sub i32 %19, %21
  %22 = call i32 @llvm.umin.i32(i32 %sub, i32 %out_count)
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %17, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %21
  br i1 %to_user, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.i.i = icmp slt i32 %22, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup36_crit_edge, label %if.then27.i.i, !prof !239

land.rhs16.i.i.cleanup36_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup36

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %22, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %out_buf, i32 %22, i32 -1226833920) #18, !srcloc !243
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %22) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %out_buf, ptr noundef %add.ptr, i32 noundef %22) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %22, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %22, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool6.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool6.not, label %copy_to_user.exit.if.end12_crit_edge, label %copy_to_user.exit.cleanup36_crit_edge

copy_to_user.exit.cleanup36_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

copy_to_user.exit.if.end12_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %26 = call ptr @memcpy(ptr %out_buf, ptr %add.ptr, i32 %22)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %copy_to_user.exit.if.end12_crit_edge
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add = add i32 %28, %22
  store i32 %add, ptr %offset, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp16 = icmp eq i32 %add, %30
  br i1 %cmp16, label %do.body18, label %if.end12.cleanup36_crit_edge

if.end12.cleanup36_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

do.body18:                                        ; preds = %if.end12
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %inbuf_lock.i) #14
  %31 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %inbuf.i.i, align 4
  %in_vq = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %32 = ptrtoint ptr %in_vq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in_vq, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #14
  %34 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %17, align 4
  %size.i = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 1
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %36, i32 noundef %38) #14
  %call.i = call i32 @virtqueue_add_inbuf(ptr noundef %33, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef %17, i32 noundef 2592) #14
  %call3.i = call zeroext i1 @virtqueue_kick(ptr noundef %33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i65 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i65, label %if.then.i66, label %do.body18.add_inbuf.exit_crit_edge

do.body18.add_inbuf.exit_crit_edge:               ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_inbuf.exit

if.then.i66:                                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %num_free.i = getelementptr inbounds %struct.virtqueue, ptr %33, i32 0, i32 5
  %39 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_free.i, align 4
  br label %add_inbuf.exit

add_inbuf.exit:                                   ; preds = %if.then.i66, %do.body18.add_inbuf.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %do.body18.add_inbuf.exit_crit_edge ], [ %40, %if.then.i66 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp27 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp27, label %do.end32, label %add_inbuf.exit.if.end33_crit_edge

add_inbuf.exit.if.end33_crit_edge:                ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

do.end32:                                         ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.1) #17
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %add_inbuf.exit.if.end33_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call22) #14
  br label %cleanup36

cleanup36:                                        ; preds = %if.end33, %if.end12.cleanup36_crit_edge, %copy_to_user.exit.cleanup36_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup36_crit_edge, %port_has_data.exit, %entry.cleanup36_crit_edge
  %retval.1 = phi i32 [ -14, %copy_to_user.exit.cleanup36_crit_edge ], [ 0, %port_has_data.exit ], [ 0, %entry.cleanup36_crit_edge ], [ %22, %if.end33 ], [ %22, %if.end12.cleanup36_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup36_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__send_to_port(ptr noundef %port, ptr noundef %sg, i32 noundef %nents, i32 noundef %in_count, ptr noundef %data, i1 noundef zeroext %nonblock) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #14
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !242
  %out_vq1 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 6
  %1 = ptrtoint ptr %out_vq1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %out_vq1, align 4
  %outvq_lock = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %outvq_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %portdev.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %4 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.reclaim_consumed_buffers.exit_crit_edge, label %while.cond.preheader.i

entry.reclaim_consumed_buffers.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.cond.preheader.i:                           ; preds = %entry
  %6 = ptrtoint ptr %out_vq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_vq1, align 4
  %call5.i = call ptr @virtqueue_get_buf(ptr noundef %7, ptr noundef nonnull %len.i) #14
  %tobool1.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool1.not6.i, label %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %outvq_full.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call7.i = phi ptr [ %call5.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call7.i, i1 noundef zeroext false) #14
  %8 = ptrtoint ptr %outvq_full.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %outvq_full.i, align 4
  %9 = ptrtoint ptr %out_vq1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_vq1, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %10, ptr noundef nonnull %len.i) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %while.body.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

reclaim_consumed_buffers.exit:                    ; preds = %while.body.i.reclaim_consumed_buffers.exit_crit_edge, %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, %entry.reclaim_consumed_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  %call6 = call i32 @virtqueue_add_outbuf(ptr noundef %2, ptr noundef %sg, i32 noundef %nents, ptr noundef %data, i32 noundef 2592) #14
  %call7 = call zeroext i1 @virtqueue_kick(ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %reclaim_consumed_buffers.exit.done_crit_edge

reclaim_consumed_buffers.exit.done_crit_edge:     ; preds = %reclaim_consumed_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end:                                           ; preds = %reclaim_consumed_buffers.exit
  %num_free = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %outvq_full = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  %13 = ptrtoint ptr %outvq_full to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %outvq_full, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  br i1 %nonblock, label %if.end11.done_crit_edge, label %while.cond.preheader

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

while.cond.preheader:                             ; preds = %if.end11
  %call1538 = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #14
  %tobool16.not39 = icmp eq ptr %call1538, null
  br i1 %tobool16.not39, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.done_crit_edge

while.cond.preheader.done_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %do.end22.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %call17 = call zeroext i1 @virtqueue_is_broken(ptr noundef %2) #14
  br i1 %call17, label %land.rhs.done_crit_edge, label %do.end22

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

do.end22:                                         ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !245
  %call15 = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #14
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end22.land.rhs_crit_edge, label %do.end22.done_crit_edge

do.end22.done_crit_edge:                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

do.end22.land.rhs_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

done:                                             ; preds = %do.end22.done_crit_edge, %land.rhs.done_crit_edge, %while.cond.preheader.done_crit_edge, %if.end11.done_crit_edge, %reclaim_consumed_buffers.exit.done_crit_edge
  %in_count.addr.0 = phi i32 [ %in_count, %if.end11.done_crit_edge ], [ 0, %reclaim_consumed_buffers.exit.done_crit_edge ], [ %in_count, %while.cond.preheader.done_crit_edge ], [ %in_count, %land.rhs.done_crit_edge ], [ %in_count, %do.end22.done_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %outvq_lock, i32 noundef %call3) #14
  %stats = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 8
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats, align 4
  %add = add i32 %15, %in_count.addr.0
  store i32 %add, ptr %stats, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #14
  ret i32 %in_count.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_buf(ptr noundef %buf, i1 noundef zeroext %can_sleep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sgpages = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 7
  %0 = ptrtoint ptr %sgpages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sgpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41.not = icmp eq i32 %1, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.port_buffer, ptr %buf, i32 0, i32 8, i32 %i.042
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !239

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !246
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %sg_page.exit.for.end_crit_edge, label %if.end

sg_page.exit.for.end_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %sg_page.exit
  %4 = inttoptr i32 %and.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i37 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i, label %if.end._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !239

if.end._compound_head.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %7, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %4, %if.end._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !240

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.9) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !247
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !249
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@free_buf, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !251

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %.pre-phi) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge
  %inc = add nuw i32 %i.042, 1
  %11 = ptrtoint ptr %sgpages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sgpages, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sg_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %16) #14
  br label %if.end19

if.else:                                          ; preds = %for.end
  br i1 %can_sleep, label %if.end12, label %do.body6

do.body6:                                         ; preds = %if.else
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dma_bufs_lock) #14
  %list = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 6
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pending_free_dma_bufs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %17, ptr noundef nonnull @pending_free_dma_bufs) #14
  br i1 %call.i.i, label %if.end.i.i38, label %do.body6.list_add_tail.exit_crit_edge

do.body6.list_add_tail.exit_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i38:                                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @pending_free_dma_bufs, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pending_free_dma_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i38, %do.body6.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_bufs_lock, i32 noundef %call9) #14
  br label %cleanup20

if.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %size = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 1
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %dma = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef nonnull %14, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #14
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %28) #14
  br label %if.end19

if.end19:                                         ; preds = %if.end12, %if.then2
  tail call void @kfree(ptr noundef %buf) #14
  br label %cleanup20

cleanup20:                                        ; preds = %if.end19, %list_add_tail.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hvc_resize(ptr noundef, [2 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtcons_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @early_put_chars, align 4
  %cmp.not = icmp eq ptr %0, null
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #14
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %5 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %lor.lhs.false, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #14
  %7 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i.i, align 8
  %and.i.i186 = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i186)
  %tobool13.i.i187.not = icmp eq i64 %and.i.i186, 0
  br i1 %tobool13.i.i187.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 272) #19
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vdev6 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 8
  %10 = ptrtoint ptr %vdev6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vdev, ptr %vdev6, align 8
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %priv, align 8
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.15, ptr noundef nonnull @portdev_fops) #14
  %chr_major = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 14
  %12 = ptrtoint ptr %chr_major to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %chr_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %dev14 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %13 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.17, i32 noundef %call.i, i32 noundef %14) #17
  %15 = ptrtoint ptr %chr_major to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chr_major, align 4
  br label %free

if.end17:                                         ; preds = %if.end5
  %max_nr_ports = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 7
  %17 = ptrtoint ptr %max_nr_ports to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %max_nr_ports, align 4
  %id.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 7
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %19)
  %cmp.i = icmp eq i32 %19, 11
  br i1 %cmp.i, label %if.end17.if.end55_crit_edge, label %land.lhs.true19

if.end17.if.end55_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true19:                                  ; preds = %if.end17
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #14
  %features.i.i188 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %20 = ptrtoint ptr %features.i.i188 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %features.i.i188, align 8
  %and.i.i189 = and i64 %21, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i189)
  %tobool13.i.i190.not = icmp eq i64 %and.i.i189, 0
  br i1 %tobool13.i.i190.not, label %land.lhs.true19.if.end55_crit_edge, label %do.body22

land.lhs.true19.if.end55_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

do.body22:                                        ; preds = %land.lhs.true19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #14
  %22 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !242
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2046) #14
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config, align 8
  %get31 = getelementptr inbounds %struct.virtio_config_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %get31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get31, align 4
  call void %26(ptr noundef %vdev, i32 noundef 4, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #14
  %27 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %virtio_cread_v, align 4
  %29 = ptrtoint ptr %features.i.i188 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features.i.i188, align 8
  %and.i.i.i.i = and i64 %30, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %31 = call i32 @llvm.bswap.i32(i32 %28) #14
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %28, i32 %31
  %32 = ptrtoint ptr %max_nr_ports to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i, ptr %max_nr_ports, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #14
  %33 = add i32 %retval.0.i.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %33)
  %34 = icmp ult i32 %33, -32768
  br i1 %34, label %do.end51, label %do.body22.if.end55_crit_edge

do.body22.if.end55_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

do.end51:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  %dev52 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.i) #17
  br label %free

if.end55:                                         ; preds = %do.body22.if.end55_crit_edge, %land.lhs.true19.if.end55_crit_edge, %if.end17.if.end55_crit_edge
  %multiport.0.off0 = phi i1 [ false, %if.end17.if.end55_crit_edge ], [ true, %do.body22.if.end55_crit_edge ], [ false, %land.lhs.true19.if.end55_crit_edge ]
  %call56 = call fastcc i32 @init_vqs(ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end62, label %do.body65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %dev63 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.23, i32 noundef %call56) #17
  %35 = ptrtoint ptr %chr_major to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chr_major, align 4
  call void @__unregister_chrdev(i32 noundef %36, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.15) #14
  br label %free

do.body65:                                        ; preds = %if.end55
  %ports_lock = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %ports_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @virtcons_probe.__key, i16 noundef signext 3) #14
  %ports = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 3
  %37 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ports, ptr %ports, align 8
  %prev.i = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ports, ptr %prev.i, align 4
  %39 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i191 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i, ptr %prev.i191, align 4
  %41 = ptrtoint ptr %vdev6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdev6, align 8
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_status.i, align 4
  %call.i192 = call zeroext i8 %46(ptr noundef %42) #14
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %do.body65.do.body.i_crit_edge, label %if.then.i

do.body65.do.body.i_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then.i:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  call void %50(ptr noundef %42) #14
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %do.body65.do.body.i_crit_edge
  %51 = and i8 %call.i192, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool4.not.i = icmp eq i8 %51, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !239

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #14, !srcloc !253
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i192, 4
  call void %55(ptr noundef %42, i8 noundef zeroext %or.i) #14
  %config_work = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 2
  call void @__init_work(ptr noundef %config_work, i32 noundef 0) #14
  %56 = ptrtoint ptr %config_work to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -64, ptr %config_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @virtcons_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry74 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %entry74 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry74, ptr %entry74, align 8
  %prev.i193 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 2, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry74, ptr %prev.i193, align 4
  %func = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @config_work_handler, ptr %func, align 8
  %control_work = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 1
  call void @__init_work(ptr noundef %control_work, i32 noundef 0) #14
  %60 = ptrtoint ptr %control_work to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -64, ptr %control_work, align 8
  %lockdep_map84 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 1, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map84, ptr noundef nonnull @.str.29, ptr noundef nonnull @virtcons_probe.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry86 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %entry86 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %entry86, ptr %entry86, align 4
  %prev.i194 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 1, i32 1, i32 1
  %62 = ptrtoint ptr %prev.i194 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %entry86, ptr %prev.i194, align 8
  %func88 = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %func88 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @control_work_handler, ptr %func88, align 4
  br i1 %multiport.0.off0, label %do.body93, label %if.else112

do.body93:                                        ; preds = %virtio_device_ready.exit
  %c_ivq_lock = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %c_ivq_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @virtcons_probe.__key.30, i16 noundef signext 3) #14
  %c_ovq_lock = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %c_ovq_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @virtcons_probe.__key.32, i16 noundef signext 3) #14
  %c_ivq = getelementptr inbounds %struct.ports_device, ptr %call7.i, i32 0, i32 9
  %64 = ptrtoint ptr %c_ivq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %c_ivq, align 4
  %call102 = call fastcc i32 @fill_queue(ptr noundef %65, ptr noundef %c_ivq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %do.end108, label %land.lhs.true119.critedge

do.end108:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #16
  %dev109 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109, ptr noundef nonnull @.str.35) #17
  call fastcc void @__send_control_msg(ptr noundef nonnull %call7.i, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  call void @virtcons_remove(ptr noundef %vdev)
  br label %cleanup

if.else112:                                       ; preds = %virtio_device_ready.exit
  call fastcc void @add_port(ptr noundef nonnull %call7.i, i32 noundef 0)
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %66 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %66, ptr noundef getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2)) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.else112.list_add_tail.exit_crit_edge

if.else112.list_add_tail.exit_crit_edge:          ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  %67 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr %call7.i, align 8
  %68 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %prev.i191, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call7.i, ptr %66, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else112.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  call fastcc void @__send_control_msg(ptr noundef nonnull %call7.i, i32 noundef -1, i32 noundef 0, i32 noundef 1)
  br label %cleanup

land.lhs.true119.critedge:                        ; preds = %do.body93
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %70 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  %call.i.i195 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %70, ptr noundef getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2)) #14
  br i1 %call.i.i195, label %if.end.i.i197, label %land.lhs.true119.critedge.list_add_tail.exit198_crit_edge

land.lhs.true119.critedge.list_add_tail.exit198_crit_edge: ; preds = %land.lhs.true119.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit198

if.end.i.i197:                                    ; preds = %land.lhs.true119.critedge
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  %71 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr %call7.i, align 8
  %72 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %prev.i191, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i, ptr %70, align 4
  br label %list_add_tail.exit198

list_add_tail.exit198:                            ; preds = %if.end.i.i197, %land.lhs.true119.critedge.list_add_tail.exit198_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  call fastcc void @__send_control_msg(ptr noundef nonnull %call7.i, i32 noundef -1, i32 noundef 0, i32 noundef 1)
  br i1 %cmp.not, label %list_add_tail.exit198.cleanup_crit_edge, label %if.then122

list_add_tail.exit198.cleanup_crit_edge:          ; preds = %list_add_tail.exit198
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then122:                                       ; preds = %list_add_tail.exit198
  call void @__sanitizer_cov_trace_pc() #16
  call void @wait_for_completion(ptr noundef nonnull @early_console_added) #14
  br label %cleanup

free:                                             ; preds = %do.end62, %do.end51, %do.end13
  %err.0 = phi i32 [ %16, %do.end13 ], [ %call56, %do.end62 ], [ -22, %do.end51 ]
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then122, %list_add_tail.exit198.cleanup_crit_edge, %list_add_tail.exit, %do.end108, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call102, %do.end108 ], [ -22, %do.end ], [ 0, %list_add_tail.exit ], [ 0, %if.then122 ], [ 0, %list_add_tail.exit198.cleanup_crit_edge ], [ %err.0, %free ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtcons_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  tail call void @virtio_break_device(ptr noundef %vdev) #14
  %vdev.i = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %list_del.exit.if.else_crit_edge, label %use_multiport.exit

list_del.exit.if.else_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

use_multiport.exit:                               ; preds = %list_del.exit
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %13, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.if.else_crit_edge, label %if.then

use_multiport.exit.if.else_crit_edge:             ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  %control_work = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %use_multiport.exit.if.else_crit_edge, %list_del.exit.if.else_crit_edge
  %config_work = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %config_work.sink = phi ptr [ %config_work, %if.else ], [ %control_work, %if.then ]
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %config_work.sink) #14
  tail call void @virtio_reset_device(ptr noundef %vdev) #14
  %14 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i40 = icmp eq ptr %15, null
  br i1 %tobool.not.i40, label %if.end.if.else7_crit_edge, label %use_multiport.exit46

if.end.if.else7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else7

use_multiport.exit46:                             ; preds = %if.end
  %features.i.i41 = getelementptr inbounds %struct.virtio_device, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %features.i.i41 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i.i41, align 8
  %and.i.i42 = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i42)
  %tobool13.i.i43.not = icmp eq i64 %and.i.i42, 0
  br i1 %tobool13.i.i43.not, label %use_multiport.exit46.if.else7_crit_edge, label %if.then4

use_multiport.exit46.if.else7_crit_edge:          ; preds = %use_multiport.exit46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else7

if.then4:                                         ; preds = %use_multiport.exit46
  call void @__sanitizer_cov_trace_pc() #16
  %control_work5 = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 1
  br label %if.end10

if.else7:                                         ; preds = %use_multiport.exit46.if.else7_crit_edge, %if.end.if.else7_crit_edge
  %config_work8 = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 2
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then4
  %config_work8.sink = phi ptr [ %config_work8, %if.else7 ], [ %control_work5, %if.then4 ]
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %config_work8.sink) #14
  %ports = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports, align 4
  %cmp.not49 = icmp eq ptr %19, %ports
  br i1 %cmp.not49, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %port.050 = phi ptr [ %port2.0, %for.body.for.body_crit_edge ], [ %19, %if.end10.for.body_crit_edge ]
  %20 = ptrtoint ptr %port.050 to i32
  call void @__asan_load4_noabort(i32 %20)
  %port2.0 = load ptr, ptr %port.050, align 4
  tail call fastcc void @unplug_port(ptr noundef %port.050)
  %cmp.not = icmp eq ptr %port2.0, %ports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %chr_major = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %chr_major to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chr_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %22, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.15) #14
  tail call fastcc void @remove_vqs(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @config_intr(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %vdev.i = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %use_multiport.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

use_multiport.exit:                               ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.if.then_crit_edge, label %use_multiport.exit.if.end_crit_edge

use_multiport.exit.if.end_crit_edge:              ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

use_multiport.exit.if.then_crit_edge:             ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %use_multiport.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %config_work = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %config_work) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %use_multiport.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtcons_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @virtio_reset_device(ptr noundef %vdev) #14
  %vdev.i = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %use_multiport.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

use_multiport.exit:                               ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.if.end_crit_edge, label %if.then

use_multiport.exit.if.end_crit_edge:              ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  %c_ivq = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %c_ivq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_ivq, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %use_multiport.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %control_work = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %control_work) #14
  %config_work = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %config_work) #14
  %8 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i28 = icmp eq ptr %9, null
  br i1 %tobool.not.i28, label %if.end.if.end6_crit_edge, label %use_multiport.exit34

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

use_multiport.exit34:                             ; preds = %if.end
  %features.i.i29 = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %features.i.i29 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features.i.i29, align 8
  %and.i.i30 = and i64 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i30)
  %tobool13.i.i31.not = icmp eq i64 %and.i.i30, 0
  br i1 %tobool13.i.i31.not, label %use_multiport.exit34.if.end6_crit_edge, label %if.then4

use_multiport.exit34.if.end6_crit_edge:           ; preds = %use_multiport.exit34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %use_multiport.exit34
  call void @__sanitizer_cov_trace_pc() #16
  %c_ivq5 = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %c_ivq5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c_ivq5, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %13) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %use_multiport.exit34.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ports = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %port.037 = load ptr, ptr %ports, align 4
  %cmp.not38 = icmp eq ptr %port.037, %ports
  br i1 %cmp.not38, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %port.039 = phi ptr [ %port.0, %for.body.for.body_crit_edge ], [ %port.037, %if.end6.for.body_crit_edge ]
  %in_vq = getelementptr inbounds %struct.port, ptr %port.039, i32 0, i32 5
  %15 = ptrtoint ptr %in_vq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_vq, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %16) #14
  %out_vq = getelementptr inbounds %struct.port, ptr %port.039, i32 0, i32 6
  %17 = ptrtoint ptr %out_vq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_vq, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %18) #14
  %host_connected = getelementptr inbounds %struct.port, ptr %port.039, i32 0, i32 18
  %19 = ptrtoint ptr %host_connected to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %host_connected, align 1
  tail call fastcc void @remove_port_data(ptr noundef %port.039)
  %20 = ptrtoint ptr %port.039 to i32
  call void @__asan_load4_noabort(i32 %20)
  %port.0 = load ptr, ptr %port.039, align 4
  %cmp.not = icmp eq ptr %port.0, %ports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call fastcc void @remove_vqs(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtcons_restore(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @init_vqs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdev1 = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev1, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %3) #14
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %11(ptr noundef %3) #14
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %12 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not.i = icmp eq i8 %12, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !239

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #14, !srcloc !253
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i, 4
  tail call void %16(ptr noundef %3, i8 noundef zeroext %or.i) #14
  %17 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdev1, align 4
  %tobool.not.i42 = icmp eq ptr %18, null
  br i1 %tobool.not.i42, label %virtio_device_ready.exit.if.end5_crit_edge, label %use_multiport.exit

virtio_device_ready.exit.if.end5_crit_edge:       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

use_multiport.exit:                               ; preds = %virtio_device_ready.exit
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %20, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.if.end5_crit_edge, label %if.then3

use_multiport.exit.if.end5_crit_edge:             ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  %c_ivq = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %c_ivq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c_ivq, align 4
  %c_ivq_lock = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 5
  %call4 = tail call fastcc i32 @fill_queue(ptr noundef %22, ptr noundef %c_ivq_lock)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %use_multiport.exit.if.end5_crit_edge, %virtio_device_ready.exit.if.end5_crit_edge
  %ports = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %port.051 = load ptr, ptr %ports, align 4
  %cmp.not52 = icmp eq ptr %port.051, %ports
  br i1 %cmp.not52, label %if.end5.cleanup_crit_edge, label %for.body.lr.ph

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %in_vqs = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 12
  %out_vqs = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.053 = phi ptr [ %port.051, %for.body.lr.ph ], [ %port.0, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %in_vqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_vqs, align 4
  %id = getelementptr inbounds %struct.port, ptr %port.053, i32 0, i32 16
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %arrayidx = getelementptr ptr, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %in_vq = getelementptr inbounds %struct.port, ptr %port.053, i32 0, i32 5
  %30 = ptrtoint ptr %in_vq to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %in_vq, align 4
  %31 = ptrtoint ptr %out_vqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %out_vqs, align 4
  %arrayidx8 = getelementptr ptr, ptr %32, i32 %27
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx8, align 4
  %out_vq = getelementptr inbounds %struct.port, ptr %port.053, i32 0, i32 6
  %35 = ptrtoint ptr %out_vq to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %out_vq, align 4
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %port.053, i32 0, i32 3
  %call10 = tail call fastcc i32 @fill_queue(ptr noundef %29, ptr noundef %inbuf_lock)
  %portdev.i = getelementptr inbounds %struct.port, ptr %port.053, i32 0, i32 1
  %36 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i43 = icmp eq ptr %37, null
  br i1 %tobool.not.i43, label %for.body.send_control_msg.exit_crit_edge, label %if.then.i44

for.body.send_control_msg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_control_msg.exit

if.then.i44:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %37, i32 noundef %39, i32 noundef 3, i32 noundef 1) #14
  br label %send_control_msg.exit

send_control_msg.exit:                            ; preds = %if.then.i44, %for.body.send_control_msg.exit_crit_edge
  %guest_connected = getelementptr inbounds %struct.port, ptr %port.053, i32 0, i32 19
  %40 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool12.not = icmp eq i8 %41, 0
  br i1 %tobool12.not, label %send_control_msg.exit.for.inc_crit_edge, label %if.then13

send_control_msg.exit.for.inc_crit_edge:          ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then13:                                        ; preds = %send_control_msg.exit
  %42 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i46 = icmp eq ptr %43, null
  br i1 %tobool.not.i46, label %if.then13.for.inc_crit_edge, label %if.then.i48

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then.i48:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %43, i32 noundef %45, i32 noundef 6, i32 noundef 1) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then.i48, %if.then13.for.inc_crit_edge, %send_control_msg.exit.for.inc_crit_edge
  %46 = ptrtoint ptr %port.053 to i32
  call void @__asan_load4_noabort(i32 %46)
  %port.0 = load ptr, ptr %port.053, align 4
  %cmp.not = icmp eq ptr %port.0, %ports
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_vqs(ptr nocapture noundef %portdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_nr_ports = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 7
  %0 = ptrtoint ptr %max_nr_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_nr_ports, align 4
  %vdev.i = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 8
  %2 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.use_multiport.exit.thread_crit_edge, label %use_multiport.exit

entry.use_multiport.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %use_multiport.exit.thread

use_multiport.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  %add = shl i32 %1, 1
  %mul = add i32 %add, 2
  %spec.select = select i1 %tobool13.i.i.not, i32 2, i32 %mul
  br label %use_multiport.exit.thread

use_multiport.exit.thread:                        ; preds = %use_multiport.exit, %entry.use_multiport.exit.thread_crit_edge
  %6 = phi i32 [ 2, %entry.use_multiport.exit.thread_crit_edge ], [ %spec.select, %use_multiport.exit ]
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #14
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %use_multiport.exit.thread.kmalloc_array.exit221_crit_edge, label %if.end7.i219, !prof !240

use_multiport.exit.thread.kmalloc_array.exit221_crit_edge: ; preds = %use_multiport.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %kmalloc_array.exit221

if.end7.i219:                                     ; preds = %use_multiport.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #20
  %call8.i185 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #20
  %call8.i218 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #20
  br label %kmalloc_array.exit221

kmalloc_array.exit221:                            ; preds = %if.end7.i219, %use_multiport.exit.thread.kmalloc_array.exit221_crit_edge
  %retval.0.i187315 = phi ptr [ %call8.i185, %if.end7.i219 ], [ null, %use_multiport.exit.thread.kmalloc_array.exit221_crit_edge ]
  %retval.0.i155309313 = phi ptr [ %call8.i, %if.end7.i219 ], [ null, %use_multiport.exit.thread.kmalloc_array.exit221_crit_edge ]
  %retval.0.i220 = phi ptr [ %call8.i218, %if.end7.i219 ], [ null, %use_multiport.exit.thread.kmalloc_array.exit221_crit_edge ]
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #14
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kmalloc_array.exit254, label %if.end7.i285, !prof !240

kmalloc_array.exit254:                            ; preds = %kmalloc_array.exit221
  call void @__sanitizer_cov_trace_pc() #16
  %in_vqs = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 12
  %12 = ptrtoint ptr %in_vqs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %in_vqs, align 4
  br label %kmalloc_array.exit287

if.end7.i285:                                     ; preds = %kmalloc_array.exit221
  call void @__sanitizer_cov_trace_pc() #16
  %13 = extractvalue { i32, i1 } %10, 0
  %call8.i251 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #20
  %in_vqs317 = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 12
  %14 = ptrtoint ptr %in_vqs317 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i251, ptr %in_vqs317, align 4
  %call8.i284 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #20
  br label %kmalloc_array.exit287

kmalloc_array.exit287:                            ; preds = %if.end7.i285, %kmalloc_array.exit254
  %in_vqs319 = phi ptr [ %in_vqs317, %if.end7.i285 ], [ %in_vqs, %kmalloc_array.exit254 ]
  %retval.0.i286 = phi ptr [ %call8.i284, %if.end7.i285 ], [ null, %kmalloc_array.exit254 ]
  %out_vqs = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 13
  %15 = ptrtoint ptr %out_vqs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i286, ptr %out_vqs, align 4
  %tobool.not = icmp eq ptr %retval.0.i155309313, null
  %tobool6.not = icmp eq ptr %retval.0.i187315, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  %tobool8.not = icmp eq ptr %retval.0.i220, null
  %or.cond152 = select i1 %or.cond, i1 true, i1 %tobool8.not
  br i1 %or.cond152, label %kmalloc_array.exit287.free_crit_edge, label %lor.lhs.false9

kmalloc_array.exit287.free_crit_edge:             ; preds = %kmalloc_array.exit287
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

lor.lhs.false9:                                   ; preds = %kmalloc_array.exit287
  %16 = ptrtoint ptr %in_vqs319 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in_vqs319, align 4
  %tobool11.not = icmp eq ptr %17, null
  %tobool14.not = icmp eq ptr %retval.0.i286, null
  %or.cond153 = select i1 %tobool11.not, i1 true, i1 %tobool14.not
  br i1 %or.cond153, label %lor.lhs.false9.free_crit_edge, label %if.end

lor.lhs.false9.free_crit_edge:                    ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

if.end:                                           ; preds = %lor.lhs.false9
  %18 = ptrtoint ptr %retval.0.i187315 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @in_intr, ptr %retval.0.i187315, align 128
  %arrayidx16 = getelementptr ptr, ptr %retval.0.i187315, i32 1
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @out_intr, ptr %arrayidx16, align 4
  %20 = ptrtoint ptr %retval.0.i220 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.37, ptr %retval.0.i220, align 128
  %arrayidx19 = getelementptr ptr, ptr %retval.0.i220, i32 1
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.38, ptr %arrayidx19, align 4
  %22 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i289 = icmp eq ptr %23, null
  br i1 %tobool.not.i289, label %if.end.if.end36_crit_edge, label %use_multiport.exit295

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

use_multiport.exit295:                            ; preds = %if.end
  %features.i.i290 = getelementptr inbounds %struct.virtio_device, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %features.i.i290 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features.i.i290, align 8
  %and.i.i291 = and i64 %25, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i291)
  %tobool13.i.i292.not = icmp eq i64 %and.i.i291, 0
  br i1 %tobool13.i.i292.not, label %use_multiport.exit295.if.end36_crit_edge, label %if.then22

use_multiport.exit295.if.end36_crit_edge:         ; preds = %use_multiport.exit295
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then22:                                        ; preds = %use_multiport.exit295
  %arrayidx23 = getelementptr ptr, ptr %retval.0.i187315, i32 2
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @control_intr, ptr %arrayidx23, align 8
  %arrayidx25 = getelementptr ptr, ptr %retval.0.i187315, i32 3
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr ptr, ptr %retval.0.i220, i32 2
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.39, ptr %arrayidx26, align 8
  %arrayidx28 = getelementptr ptr, ptr %retval.0.i220, i32 3
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.40, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp323 = icmp ugt i32 %1, 1
  br i1 %cmp323, label %if.then22.for.body_crit_edge, label %if.then22.if.end36_crit_edge

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then22.for.body_crit_edge:                     ; preds = %if.then22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then22.for.body_crit_edge
  %j.0325 = phi i32 [ %add29, %for.body.for.body_crit_edge ], [ 2, %if.then22.for.body_crit_edge ]
  %i.0324 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then22.for.body_crit_edge ]
  %add29 = add i32 %j.0325, 2
  %arrayidx30 = getelementptr ptr, ptr %retval.0.i187315, i32 %add29
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @in_intr, ptr %arrayidx30, align 8
  %add31 = add i32 %j.0325, 3
  %arrayidx32 = getelementptr ptr, ptr %retval.0.i187315, i32 %add31
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @out_intr, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr ptr, ptr %retval.0.i220, i32 %add29
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.37, ptr %arrayidx33, align 8
  %arrayidx35 = getelementptr ptr, ptr %retval.0.i220, i32 %add31
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.38, ptr %arrayidx35, align 4
  %inc = add nuw i32 %i.0324, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.if.end36_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end36:                                         ; preds = %for.body.if.end36_crit_edge, %if.then22.if.end36_crit_edge, %use_multiport.exit295.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %34 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev.i, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %find_vqs.i, align 4
  %call.i = tail call i32 %39(ptr noundef %35, i32 noundef %6, ptr noundef %retval.0.i155309313, ptr noundef %retval.0.i187315, ptr noundef %retval.0.i220, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not = icmp eq i32 %call.i, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.free_crit_edge

if.end36.free_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

if.end40:                                         ; preds = %if.end36
  %40 = ptrtoint ptr %retval.0.i155309313 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %retval.0.i155309313, align 128
  %42 = ptrtoint ptr %in_vqs319 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_vqs319, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %43, align 4
  %arrayidx44 = getelementptr ptr, ptr %retval.0.i155309313, i32 1
  %45 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx44, align 4
  %47 = ptrtoint ptr %out_vqs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %out_vqs, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %48, align 4
  %50 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i297 = icmp eq ptr %51, null
  br i1 %tobool.not.i297, label %if.end40.if.end67_crit_edge, label %use_multiport.exit303

if.end40.if.end67_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

use_multiport.exit303:                            ; preds = %if.end40
  %features.i.i298 = getelementptr inbounds %struct.virtio_device, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %features.i.i298 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i.i298, align 8
  %and.i.i299 = and i64 %53, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i299)
  %tobool13.i.i300.not = icmp eq i64 %and.i.i299, 0
  br i1 %tobool13.i.i300.not, label %use_multiport.exit303.if.end67_crit_edge, label %if.then49

use_multiport.exit303.if.end67_crit_edge:         ; preds = %use_multiport.exit303
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then49:                                        ; preds = %use_multiport.exit303
  %arrayidx50 = getelementptr ptr, ptr %retval.0.i155309313, i32 2
  %54 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx50, align 8
  %c_ivq = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 9
  %56 = ptrtoint ptr %c_ivq to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %c_ivq, align 4
  %arrayidx52 = getelementptr ptr, ptr %retval.0.i155309313, i32 3
  %57 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx52, align 4
  %c_ovq = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 10
  %59 = ptrtoint ptr %c_ovq to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %c_ovq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp54326 = icmp ugt i32 %1, 1
  br i1 %cmp54326, label %if.then49.for.body55_crit_edge, label %if.then49.if.end67_crit_edge

if.then49.if.end67_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then49.for.body55_crit_edge:                   ; preds = %if.then49
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %if.then49.for.body55_crit_edge
  %j.1328 = phi i32 [ %add56, %for.body55.for.body55_crit_edge ], [ 2, %if.then49.for.body55_crit_edge ]
  %i.1327 = phi i32 [ %inc65, %for.body55.for.body55_crit_edge ], [ 1, %if.then49.for.body55_crit_edge ]
  %add56 = add i32 %j.1328, 2
  %arrayidx57 = getelementptr ptr, ptr %retval.0.i155309313, i32 %add56
  %60 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx57, align 8
  %62 = ptrtoint ptr %in_vqs319 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_vqs319, align 4
  %arrayidx59 = getelementptr ptr, ptr %63, i32 %i.1327
  %64 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %arrayidx59, align 4
  %add60 = add i32 %j.1328, 3
  %arrayidx61 = getelementptr ptr, ptr %retval.0.i155309313, i32 %add60
  %65 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx61, align 4
  %67 = ptrtoint ptr %out_vqs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_vqs, align 4
  %arrayidx63 = getelementptr ptr, ptr %68, i32 %i.1327
  %69 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %arrayidx63, align 4
  %inc65 = add nuw i32 %i.1327, 1
  %exitcond329.not = icmp eq i32 %inc65, %1
  br i1 %exitcond329.not, label %for.body55.if.end67_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body55

for.body55.if.end67_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.end67:                                         ; preds = %for.body55.if.end67_crit_edge, %if.then49.if.end67_crit_edge, %use_multiport.exit303.if.end67_crit_edge, %if.end40.if.end67_crit_edge
  tail call void @kfree(ptr noundef nonnull %retval.0.i220) #14
  tail call void @kfree(ptr noundef nonnull %retval.0.i187315) #14
  tail call void @kfree(ptr noundef nonnull %retval.0.i155309313) #14
  br label %cleanup

free:                                             ; preds = %if.end36.free_crit_edge, %lor.lhs.false9.free_crit_edge, %kmalloc_array.exit287.free_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end36.free_crit_edge ], [ -12, %lor.lhs.false9.free_crit_edge ], [ -12, %kmalloc_array.exit287.free_crit_edge ]
  %70 = ptrtoint ptr %out_vqs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %out_vqs, align 4
  tail call void @kfree(ptr noundef %71) #14
  %72 = ptrtoint ptr %in_vqs319 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %in_vqs319, align 4
  tail call void @kfree(ptr noundef %73) #14
  tail call void @kfree(ptr noundef %retval.0.i220) #14
  tail call void @kfree(ptr noundef %retval.0.i187315) #14
  tail call void @kfree(ptr noundef %retval.0.i155309313) #14
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end67
  %retval.0 = phi i32 [ %err.0, %free ], [ 0, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @config_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %virtio_cread_v = alloca i16, align 2
  %virtio_cread_v11 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev.i = getelementptr i8, ptr %work, i32 188
  %0 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %use_multiport.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

use_multiport.exit:                               ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.if.then_crit_edge, label %use_multiport.exit.if.end_crit_edge

use_multiport.exit.if.end_crit_edge:              ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

use_multiport.exit.if.then_crit_edge:             ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %use_multiport.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #14
  %6 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !242
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1824) #14
  %config = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get, align 4
  call void %10(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #14
  %11 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %virtio_cread_v, align 2
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %14, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %15 = call i16 @llvm.bswap.i16(i16 %12) #14
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i16 %12, i16 %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v11) #14
  %16 = ptrtoint ptr %virtio_cread_v11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %virtio_cread_v11, align 2, !annotation !242
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1825) #14
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 8
  %get24 = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %get24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get24, align 4
  call void %20(ptr noundef %5, i32 noundef 2, ptr noundef nonnull %virtio_cread_v11, i32 noundef 2) #14
  %21 = ptrtoint ptr %virtio_cread_v11 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %virtio_cread_v11, align 2
  %23 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i38 = and i64 %24, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i38)
  %tobool13.i.i.i.not.i39 = icmp eq i64 %and.i.i.i.i38, 0
  %25 = call i16 @llvm.bswap.i16(i16 %22) #14
  %retval.0.i.i40 = select i1 %tobool13.i.i.i.not.i39, i16 %22, i16 %25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v11) #14
  %ports_lock.i = getelementptr i8, ptr %work, i32 52
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %ports_lock.i) #14
  %ports.i = getelementptr i8, ptr %work, i32 44
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %port.0.in.i = phi ptr [ %ports.i, %if.then ], [ %port.0.i, %for.body.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %port.0.i = load ptr, ptr %port.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp7.not.i, label %find_port_by_id.exit.thread, label %for.body.i

find_port_by_id.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %id9.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 16
  %27 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id9.i, align 4
  %cmp10.i = icmp eq i32 %28, 0
  br i1 %cmp10.i, label %find_port_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_port_by_id.exit:                             ; preds = %for.body.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  %tobool.not.i41 = icmp eq ptr %port.0.i, null
  br i1 %tobool.not.i41, label %find_port_by_id.exit.if.end_crit_edge, label %lor.lhs.false.i

find_port_by_id.exit.if.end_crit_edge:            ; preds = %find_port_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.i:                                  ; preds = %find_port_by_id.exit
  %hvc.i.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %hvc.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hvc.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i46

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.i46:                                ; preds = %lor.lhs.false.i
  %ws.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %ws.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %retval.0.i.i40, ptr %ws.i, align 4
  %ws_col.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 9, i32 2, i32 1
  %32 = ptrtoint ptr %ws_col.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %retval.0.i.i, ptr %ws_col.i, align 2
  %33 = ptrtoint ptr %hvc.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load ptr, ptr %hvc.i.i, align 4
  %tobool.not.i.not.i45 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.not.i45, label %lor.lhs.false.i46.if.end_crit_edge, label %if.end.i47

lor.lhs.false.i46.if.end_crit_edge:               ; preds = %lor.lhs.false.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i47:                                       ; preds = %lor.lhs.false.i46
  %portdev.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %portdev.i, align 4
  %vdev1.i = getelementptr inbounds %struct.ports_device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %vdev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev1.i, align 4
  %id.i.i = getelementptr inbounds %struct.virtio_device, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 11
  br i1 %cmp.i.i, label %if.end.i47.if.end_crit_edge, label %land.lhs.true.i

if.end.i47.if.end_crit_edge:                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i47
  call void @virtio_check_driver_offered_feature(ptr noundef %37, i32 noundef 0) #14
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %37, i32 0, i32 11
  %40 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %41, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then4.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %hvc.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hvc.i.i, align 4
  %ws.i48 = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %ws.i48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack.i = load i32, ptr %ws.i48, align 4
  %45 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt12.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 9, i32 2, i32 2
  %46 = ptrtoint ptr %.elt12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack13.i = load i32, ptr %.elt12.i, align 4
  %47 = insertvalue [2 x i32] %45, i32 %.unpack13.i, 1
  %lock.i.i = getelementptr inbounds %struct.hvc_struct, ptr %43, i32 0, i32 1
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  call void @__hvc_resize(ptr noundef %43, [2 x i32] %47) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i47.if.end_crit_edge, %lor.lhs.false.i46.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %find_port_by_id.exit.if.end_crit_edge, %find_port_by_id.exit.thread, %use_multiport.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @control_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #14
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !242
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %c_ivq = getelementptr i8, ptr %work, i32 236
  %1 = ptrtoint ptr %c_ivq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %c_ivq, align 4
  %c_ivq_lock = getelementptr i8, ptr %work, i32 140
  tail call void @_raw_spin_lock(ptr noundef %c_ivq_lock) #14
  %call26 = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #14
  %tobool.not27 = icmp eq ptr %call26, null
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 3
  %vdev8 = getelementptr i8, ptr %work, i32 232
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call28 = phi ptr [ %call26, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %c_ivq_lock) #14
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %size = getelementptr inbounds %struct.port_buffer, ptr %call28, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %len3 = getelementptr inbounds %struct.port_buffer, ptr %call28, i32 0, i32 2
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len3, align 4
  %offset = getelementptr inbounds %struct.port_buffer, ptr %call28, i32 0, i32 3
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %offset, align 4
  %10 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev, align 4
  call fastcc void @handle_control_message(ptr noundef %11, ptr noundef %add.ptr, ptr noundef nonnull %call28)
  call void @_raw_spin_lock(ptr noundef %c_ivq_lock) #14
  %12 = ptrtoint ptr %c_ivq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c_ivq, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #14
  %14 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %15 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call28, align 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %16, i32 noundef %18) #14
  %call.i = call i32 @virtqueue_add_inbuf(ptr noundef %13, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call28, i32 noundef 2592) #14
  %call3.i = call zeroext i1 @virtqueue_kick(ptr noundef %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.add_inbuf.exit_crit_edge

while.body.add_inbuf.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_inbuf.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %num_free.i = getelementptr inbounds %struct.virtqueue, ptr %13, i32 0, i32 5
  %19 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_free.i, align 4
  br label %add_inbuf.exit

add_inbuf.exit:                                   ; preds = %if.then.i, %while.body.add_inbuf.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %while.body.add_inbuf.exit_crit_edge ], [ %20, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp7 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp7, label %do.end, label %add_inbuf.exit.if.end_crit_edge

add_inbuf.exit.if.end_crit_edge:                  ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %vdev8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdev8, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %22, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #17
  call fastcc void @free_buf(ptr noundef nonnull %call28, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %do.end, %add_inbuf.exit.if.end_crit_edge
  %call = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %c_ivq_lock) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_queue(ptr noundef %vq, ptr noundef %lock) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %num_free.i = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end3.do.body_crit_edge, %entry
  %nr_added_bufs.0 = phi i32 [ 0, %entry ], [ %inc, %if.end3.do.body_crit_edge ]
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = call fastcc ptr @alloc_buf(ptr noundef %1, i32 noundef 4096, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #14
  %2 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %size.i = getelementptr inbounds %struct.port_buffer, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %4, i32 noundef %6) #14
  %call.i = call i32 @virtqueue_add_inbuf(ptr noundef %vq, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call, i32 noundef 2592) #14
  %call3.i = call zeroext i1 @virtqueue_kick(ptr noundef %vq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.add_inbuf.exit_crit_edge

if.end.add_inbuf.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_inbuf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_free.i, align 4
  br label %add_inbuf.exit

add_inbuf.exit:                                   ; preds = %if.then.i, %if.end.add_inbuf.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.end.add_inbuf.exit_crit_edge ], [ %8, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  call fastcc void @free_buf(ptr noundef nonnull %call, i1 noundef zeroext true)
  br label %cleanup

if.end3:                                          ; preds = %add_inbuf.exit
  %inc = add i32 %nr_added_bufs.0, 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %cmp4.not = icmp eq i32 %ret.0.i, 0
  br i1 %cmp4.not, label %if.end3.cleanup_crit_edge, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %if.then2 ], [ %inc, %if.end3.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__send_control_msg(ptr noundef %portdev, i32 noundef %port_id, i32 noundef %event, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #14
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #14
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !242
  %vdev.i = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 8
  %2 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %use_multiport.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

use_multiport.exit:                               ; preds = %entry
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.cleanup_crit_edge, label %if.end

use_multiport.exit.cleanup_crit_edge:             ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %use_multiport.exit
  %c_ovq = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 10
  %6 = ptrtoint ptr %c_ovq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c_ovq, align 4
  %c_ovq_lock = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %c_ovq_lock) #14
  %8 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %11, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %port_id) #14
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %port_id, i32 %12
  %cpkt = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 11
  %13 = ptrtoint ptr %cpkt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i, ptr %cpkt, align 4
  %conv = trunc i32 %event to i16
  %14 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i2 = and i64 %15, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i2)
  %tobool13.i.i.i.not.i3 = icmp eq i64 %and.i.i.i.i2, 0
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv) #14
  %retval.0.i.i4 = select i1 %tobool13.i.i.i.not.i3, i16 %conv, i16 %16
  %event5 = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %event5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i.i4, ptr %event5, align 4
  %conv7 = trunc i32 %value to i16
  %18 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i6 = and i64 %19, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i6)
  %tobool13.i.i.i.not.i7 = icmp eq i64 %and.i.i.i.i6, 0
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv7) #14
  %retval.0.i.i8 = select i1 %tobool13.i.i.i.not.i7, i16 %conv7, i16 %20
  %value10 = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %value10 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %retval.0.i.i8, ptr %value10, align 2
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %cpkt, i32 noundef 8) #14
  %call14 = call i32 @virtqueue_add_outbuf(ptr noundef %7, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %cpkt, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.then16, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then16:                                        ; preds = %if.end
  %call17 = call zeroext i1 @virtqueue_kick(ptr noundef %7) #14
  %call1810 = call ptr @virtqueue_get_buf(ptr noundef %7, ptr noundef nonnull %len) #14
  %tobool.not11 = icmp eq ptr %call1810, null
  br i1 %tobool.not11, label %if.then16.land.rhs_crit_edge, label %if.then16.if.end26_crit_edge

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then16.land.rhs_crit_edge:                     ; preds = %if.then16
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %if.then16.land.rhs_crit_edge
  %call19 = call zeroext i1 @virtqueue_is_broken(ptr noundef %7) #14
  br i1 %call19, label %land.rhs.if.end26_crit_edge, label %do.end

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !255
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !256
  %call18 = call ptr @virtqueue_get_buf(ptr noundef %7, ptr noundef nonnull %len) #14
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %do.end.land.rhs_crit_edge, label %do.end.if.end26_crit_edge

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end26:                                         ; preds = %do.end.if.end26_crit_edge, %land.rhs.if.end26_crit_edge, %if.then16.if.end26_crit_edge, %if.end.if.end26_crit_edge
  call void @_raw_spin_unlock(ptr noundef %c_ovq_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %use_multiport.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_port(ptr noundef %portdev, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %debugfs_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %debugfs_name) #14
  %0 = call ptr @memset(ptr %debugfs_name, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 232) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %2 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %kref, align 8
  %portdev1 = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %portdev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %portdev, ptr %portdev1, align 8
  %id2 = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 16
  %4 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %id2, align 8
  %name = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 14
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %name, align 8
  %inbuf = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inbuf, align 4
  %hvc = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 9, i32 1
  %async_queue = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 15
  %7 = ptrtoint ptr %async_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %async_queue, align 4
  %vtermno = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %vtermno to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vtermno, align 4
  %guest_connected = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 19
  %9 = ptrtoint ptr %guest_connected to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %guest_connected, align 2
  %host_connected = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 18
  %10 = ptrtoint ptr %host_connected to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %host_connected, align 1
  %stats = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 8
  %11 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %stats, align 4
  %.compoundliteral.sroa.2.0.stats.sroa_idx = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %.compoundliteral.sroa.2.0.stats.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %.compoundliteral.sroa.2.0.stats.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.stats.sroa_idx = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %.compoundliteral.sroa.3.0.stats.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %.compoundliteral.sroa.3.0.stats.sroa_idx, align 4
  %outvq_full = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 17
  %14 = ptrtoint ptr %outvq_full to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %outvq_full, align 4
  %in_vqs = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 12
  %15 = ptrtoint ptr %hvc to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %hvc, align 8
  %16 = ptrtoint ptr %in_vqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in_vqs, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %id
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %in_vq = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 5
  %20 = ptrtoint ptr %in_vq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %in_vq, align 8
  %out_vqs = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 13
  %21 = ptrtoint ptr %out_vqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out_vqs, align 4
  %arrayidx9 = getelementptr ptr, ptr %22, i32 %id
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx9, align 4
  %out_vq = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 6
  %25 = ptrtoint ptr %out_vq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %out_vq, align 4
  %call10 = tail call ptr @cdev_alloc() #14
  %cdev = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 10
  %26 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call10, ptr %cdev, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %portdev1, align 8
  %vdev = getelementptr inbounds %struct.ports_device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdev, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %30, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #17
  br label %free_port

if.end15:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.cdev, ptr %call10, i32 0, i32 2
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @port_fops, ptr %ops, align 4
  %chr_major = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 14
  %32 = ptrtoint ptr %chr_major to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chr_major, align 4
  %shl = shl i32 %33, 20
  %or = or i32 %shl, %id
  %34 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdev, align 8
  %call18 = tail call i32 @cdev_add(ptr noundef %35, i32 noundef %or, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %portdev1, align 8
  %vdev24 = getelementptr inbounds %struct.ports_device, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %vdev24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdev24, align 4
  %dev25 = getelementptr inbounds %struct.virtio_device, ptr %39, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.62, i32 noundef %call18, i32 noundef %id) #17
  br label %free_cdev

if.end26:                                         ; preds = %if.end15
  %40 = load ptr, ptr @pdrvdata, align 4
  %41 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %portdev1, align 8
  %vdev28 = getelementptr inbounds %struct.ports_device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %vdev28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev28, align 4
  %dev29 = getelementptr inbounds %struct.virtio_device, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %call32 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %40, ptr noundef %dev29, i32 noundef %or, ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.64, i32 noundef %46, i32 noundef %id) #14
  %dev33 = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 11
  %47 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call32, ptr %dev33, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %do.body46

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %call32 to i32
  %49 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %portdev1, align 8
  %vdev43 = getelementptr inbounds %struct.ports_device, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %vdev43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vdev43, align 4
  %dev44 = getelementptr inbounds %struct.virtio_device, ptr %52, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.66, i32 noundef %48, i32 noundef %id) #17
  br label %free_cdev

do.body46:                                        ; preds = %if.end26
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %inbuf_lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @add_port.__key, i16 noundef signext 3) #14
  %outvq_lock = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %outvq_lock, ptr noundef nonnull @.str.70, ptr noundef nonnull @add_port.__key.69, i16 noundef signext 3) #14
  %waitqueue = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %waitqueue, ptr noundef nonnull @.str.72, ptr noundef nonnull @add_port.__key.71) #14
  %53 = ptrtoint ptr %in_vq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %in_vq, align 8
  %call59 = tail call fastcc i32 @fill_queue(ptr noundef %54, ptr noundef %inbuf_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59)
  %cmp60 = icmp sgt i32 %call59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call59)
  %cmp61.not = icmp eq i32 %call59, -28
  %or.cond = or i1 %cmp60, %cmp61.not
  br i1 %or.cond, label %if.end67, label %do.end65

do.end65:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.74) #17
  br label %free_device

if.end67:                                         ; preds = %do.body46
  %57 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %portdev1, align 8
  %vdev69 = getelementptr inbounds %struct.ports_device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %vdev69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vdev69, align 4
  %id.i = getelementptr inbounds %struct.virtio_device, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %62)
  %cmp.i1 = icmp eq i32 %62, 11
  br i1 %cmp.i1, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %host_connected to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %host_connected, align 1
  br label %if.end81

if.else:                                          ; preds = %if.end67
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.else.if.then75_crit_edge, label %use_multiport.exit

if.else.if.then75_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then75

use_multiport.exit:                               ; preds = %if.else
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %60, i32 0, i32 11
  %64 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %65, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %use_multiport.exit.if.then75_crit_edge, label %use_multiport.exit.if.end81_crit_edge

use_multiport.exit.if.end81_crit_edge:            ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

use_multiport.exit.if.then75_crit_edge:           ; preds = %use_multiport.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then75

if.then75:                                        ; preds = %use_multiport.exit.if.then75_crit_edge, %if.else.if.then75_crit_edge
  %call76 = tail call fastcc i32 @init_port_console(ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.if.end81_crit_edge, label %if.then75.free_device_crit_edge

if.then75.free_device_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_device

if.then75.if.end81_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.end81:                                         ; preds = %if.then75.if.end81_crit_edge, %use_multiport.exit.if.end81_crit_edge, %if.then71
  %ports_lock = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %ports_lock) #14
  %66 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %portdev1, align 8
  %ports = getelementptr inbounds %struct.ports_device, ptr %67, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.ports_device, ptr %67, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %69, ptr noundef %ports) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end81.list_add_tail.exit_crit_edge

if.end81.list_add_tail.exit_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i, ptr %prev.i, align 4
  %71 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ports, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i, ptr %69, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end81.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ports_lock) #14
  %74 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %portdev1, align 8
  %tobool.not.i2 = icmp eq ptr %75, null
  br i1 %tobool.not.i2, label %list_add_tail.exit.send_control_msg.exit_crit_edge, label %if.then.i

list_add_tail.exit.send_control_msg.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_control_msg.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id2, align 8
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %75, i32 noundef %77, i32 noundef 3, i32 noundef 1) #14
  br label %send_control_msg.exit

send_control_msg.exit:                            ; preds = %if.then.i, %list_add_tail.exit.send_control_msg.exit_crit_edge
  %78 = ptrtoint ptr %portdev1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %portdev1, align 8
  %vdev86 = getelementptr inbounds %struct.ports_device, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %vdev86 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vdev86, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %call88 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %debugfs_name, i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %83, i32 noundef %id)
  %84 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  %call90 = call ptr @debugfs_create_file(ptr noundef nonnull %debugfs_name, i16 noundef zeroext 292, ptr noundef %84, ptr noundef nonnull %call7.i, ptr noundef nonnull @port_debugfs_fops) #14
  %debugfs_file = getelementptr inbounds %struct.port, ptr %call7.i, i32 0, i32 7
  %85 = ptrtoint ptr %debugfs_file to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call90, ptr %debugfs_file, align 8
  br label %cleanup

free_device:                                      ; preds = %if.then75.free_device_crit_edge, %do.end65
  %86 = load ptr, ptr @pdrvdata, align 4
  %87 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev33, align 4
  %devt92 = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 29
  %89 = ptrtoint ptr %devt92 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %devt92, align 8
  tail call void @device_destroy(ptr noundef %86, i32 noundef %90) #14
  br label %free_cdev

free_cdev:                                        ; preds = %free_device, %if.then36, %do.end22
  %91 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cdev, align 8
  tail call void @cdev_del(ptr noundef %92) #14
  br label %free_port

free_port:                                        ; preds = %free_cdev, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %fail

fail:                                             ; preds = %free_port, %entry.fail_crit_edge
  tail call fastcc void @__send_control_msg(ptr noundef %portdev, i32 noundef %id, i32 noundef 3, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %fail, %send_control_msg.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %debugfs_name) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @in_intr(ptr noundef %vq) #2 align 64 {
entry:
  %len.i35 = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ports_lock.i = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ports_lock.i) #14
  %ports.i = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i.for.cond.i_crit_edge, %entry
  %port.0.in.i = phi ptr [ %ports.i, %entry ], [ %port.0.i, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %port.0.i = load ptr, ptr %port.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp7.not.i, label %find_port_by_vq.exit.thread, label %for.body.i

find_port_by_vq.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %in_vq.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %in_vq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_vq.i, align 4
  %cmp9.i = icmp eq ptr %6, %vq
  br i1 %cmp9.i, label %for.body.i.find_port_by_vq.exit_crit_edge, label %lor.lhs.false.i

for.body.i.find_port_by_vq.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_port_by_vq.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %out_vq.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 6
  %7 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_vq.i, align 4
  %cmp11.i = icmp eq ptr %8, %vq
  br i1 %cmp11.i, label %lor.lhs.false.i.find_port_by_vq.exit_crit_edge, label %lor.lhs.false.i.for.cond.i_crit_edge

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

lor.lhs.false.i.find_port_by_vq.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_port_by_vq.exit

find_port_by_vq.exit:                             ; preds = %lor.lhs.false.i.find_port_by_vq.exit_crit_edge, %for.body.i.find_port_by_vq.exit_crit_edge
  %in_vq.i.le = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  %tobool.not = icmp eq ptr %port.0.i, null
  br i1 %tobool.not, label %find_port_by_vq.exit.if.then_crit_edge, label %do.body1

find_port_by_vq.exit.if.then_crit_edge:           ; preds = %find_port_by_vq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %find_port_by_vq.exit.if.then_crit_edge, %find_port_by_vq.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %call2.i34 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len.i) #14
  %tobool.not3.i = icmp eq ptr %call2.i34, null
  br i1 %tobool.not3.i, label %if.then.flush_bufs.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.flush_bufs.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %flush_bufs.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i34, %if.then.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call4.i, i1 noundef zeroext false) #14
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.flush_bufs.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.flush_bufs.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flush_bufs.exit

flush_bufs.exit:                                  ; preds = %while.body.i.flush_bufs.exit_crit_edge, %if.then.flush_bufs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  br label %cleanup

do.body1:                                         ; preds = %find_port_by_vq.exit
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %inbuf_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i35) #14
  %10 = ptrtoint ptr %len.i35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %len.i35, align 4, !annotation !242
  %inbuf.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inbuf.i, align 4
  %tobool.not.i36 = icmp eq ptr %12, null
  br i1 %tobool.not.i36, label %if.end.i, label %do.body1.get_inbuf.exit_crit_edge

do.body1.get_inbuf.exit_crit_edge:                ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_inbuf.exit

if.end.i:                                         ; preds = %do.body1
  %13 = ptrtoint ptr %in_vq.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_vq.i.le, align 4
  %call.i38 = call ptr @virtqueue_get_buf(ptr noundef %14, ptr noundef nonnull %len.i35) #14
  %tobool2.not.i = icmp eq ptr %call.i38, null
  br i1 %tobool2.not.i, label %if.end.i.get_inbuf.exit_crit_edge, label %if.then3.i

if.end.i.get_inbuf.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_inbuf.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %len.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i35, align 4
  %size.i = getelementptr inbounds %struct.port_buffer, ptr %call.i38, i32 0, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %19 = call i32 @llvm.umin.i32(i32 %16, i32 %18) #14
  %len4.i = getelementptr inbounds %struct.port_buffer, ptr %call.i38, i32 0, i32 2
  %20 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %len4.i, align 4
  %offset.i = getelementptr inbounds %struct.port_buffer, ptr %call.i38, i32 0, i32 3
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %offset.i, align 4
  %bytes_received.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %bytes_received.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes_received.i, align 4
  %add.i = add i32 %23, %16
  store i32 %add.i, ptr %bytes_received.i, align 4
  br label %get_inbuf.exit

get_inbuf.exit:                                   ; preds = %if.then3.i, %if.end.i.get_inbuf.exit_crit_edge, %do.body1.get_inbuf.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %do.body1.get_inbuf.exit_crit_edge ], [ %call.i38, %if.then3.i ], [ null, %if.end.i.get_inbuf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i35) #14
  %24 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i, ptr %inbuf.i, align 4
  %guest_connected = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 19
  %25 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not = icmp eq i8 %26, 0
  br i1 %tobool7.not, label %land.lhs.true, label %get_inbuf.exit.if.end11_crit_edge

get_inbuf.exit.if.end11_crit_edge:                ; preds = %get_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true:                                    ; preds = %get_inbuf.exit
  %portdev = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %portdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %portdev, align 4
  %vdev8 = getelementptr inbounds %struct.ports_device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %vdev8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdev8, align 4
  %id.i = getelementptr inbounds %struct.virtio_device, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %32)
  %cmp.i = icmp eq i32 %32, 11
  br i1 %cmp.i, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @discard_port_data(ptr noundef nonnull %port.0.i)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %get_inbuf.exit.if.end11_crit_edge
  %async_queue.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 15
  %33 = ptrtoint ptr %async_queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %async_queue.i, align 4
  %tobool.not.i39 = icmp eq ptr %34, null
  br i1 %tobool.not.i39, label %if.end11.send_sigio_to_port.exit_crit_edge, label %land.lhs.true.i

if.end11.send_sigio_to_port.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_sigio_to_port.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %35 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.not.i = icmp eq i8 %36, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.send_sigio_to_port.exit_crit_edge, label %if.then.i

land.lhs.true.i.send_sigio_to_port.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_sigio_to_port.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 2) #14
  br label %send_sigio_to_port.exit

send_sigio_to_port.exit:                          ; preds = %if.then.i, %land.lhs.true.i.send_sigio_to_port.exit_crit_edge, %if.end11.send_sigio_to_port.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock, i32 noundef %call3) #14
  %waitqueue = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 13
  call void @__wake_up(ptr noundef %waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %hvc.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %hvc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hvc.i, align 4
  %tobool.not.i41.not = icmp eq ptr %38, null
  br i1 %tobool.not.i41.not, label %send_sigio_to_port.exit.cleanup_crit_edge, label %land.lhs.true15

send_sigio_to_port.exit.cleanup_crit_edge:        ; preds = %send_sigio_to_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true15:                                  ; preds = %send_sigio_to_port.exit
  %call16 = call i32 @hvc_poll(ptr noundef nonnull %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then18

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  call void @hvc_kick() #14
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true15.cleanup_crit_edge, %send_sigio_to_port.exit.cleanup_crit_edge, %flush_bufs.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @out_intr(ptr noundef %vq) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ports_lock.i = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ports_lock.i) #14
  %ports.i = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i.for.cond.i_crit_edge, %entry
  %port.0.in.i = phi ptr [ %ports.i, %entry ], [ %port.0.i, %lor.lhs.false.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %port.0.i = load ptr, ptr %port.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp7.not.i, label %find_port_by_vq.exit.thread, label %for.body.i

find_port_by_vq.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %in_vq.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %in_vq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_vq.i, align 4
  %cmp9.i = icmp eq ptr %6, %vq
  br i1 %cmp9.i, label %for.body.i.find_port_by_vq.exit_crit_edge, label %lor.lhs.false.i

for.body.i.find_port_by_vq.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_port_by_vq.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %out_vq.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 6
  %7 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_vq.i, align 4
  %cmp11.i = icmp eq ptr %8, %vq
  br i1 %cmp11.i, label %lor.lhs.false.i.find_port_by_vq.exit_crit_edge, label %lor.lhs.false.i.for.cond.i_crit_edge

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

lor.lhs.false.i.find_port_by_vq.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_port_by_vq.exit

find_port_by_vq.exit:                             ; preds = %lor.lhs.false.i.find_port_by_vq.exit_crit_edge, %for.body.i.find_port_by_vq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  %tobool.not = icmp eq ptr %port.0.i, null
  br i1 %tobool.not, label %find_port_by_vq.exit.if.then_crit_edge, label %if.end

find_port_by_vq.exit.if.then_crit_edge:           ; preds = %find_port_by_vq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %find_port_by_vq.exit.if.then_crit_edge, %find_port_by_vq.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %call2.i4 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len.i) #14
  %tobool.not3.i = icmp eq ptr %call2.i4, null
  br i1 %tobool.not3.i, label %if.then.flush_bufs.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.flush_bufs.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %flush_bufs.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i4, %if.then.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call4.i, i1 noundef zeroext false) #14
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.flush_bufs.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.flush_bufs.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flush_bufs.exit

flush_bufs.exit:                                  ; preds = %while.body.i.flush_bufs.exit_crit_edge, %if.then.flush_bufs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  br label %cleanup

if.end:                                           ; preds = %find_port_by_vq.exit
  call void @__sanitizer_cov_trace_pc() #16
  %waitqueue = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %flush_bufs.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @control_intr(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %control_work = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %control_work) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @discard_port_data(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  %len.i26 = alloca i32, align 4
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %portdev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %portdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %portdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %inbuf.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inbuf.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.while.body.lr.ph_crit_edge

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph

if.end.i:                                         ; preds = %if.end
  %in_vq.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %in_vq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_vq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i) #14
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %while.end.thread, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %size.i = getelementptr inbounds %struct.port_buffer, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  %11 = call i32 @llvm.umin.i32(i32 %8, i32 %10) #14
  %len4.i = getelementptr inbounds %struct.port_buffer, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len4.i, align 4
  %offset.i = getelementptr inbounds %struct.port_buffer, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %offset.i, align 4
  %bytes_received.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bytes_received.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_received.i, align 4
  %add.i = add i32 %15, %8
  store i32 %add.i, ptr %bytes_received.i, align 4
  br label %while.body.lr.ph

while.end.thread:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then3.i, %if.end.while.body.lr.ph_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i, %if.then3.i ], [ %4, %if.end.while.body.lr.ph_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  %bytes_discarded = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 8, i32 2
  %in_vq = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %bytes_received.i36 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 8, i32 1
  br label %while.body

while.body:                                       ; preds = %get_inbuf.exit40, %while.body.lr.ph
  %err.043 = phi i32 [ 0, %while.body.lr.ph ], [ %err.1, %get_inbuf.exit40 ]
  %buf.042 = phi ptr [ %retval.0.i.ph, %while.body.lr.ph ], [ %call.i30, %get_inbuf.exit40 ]
  %len = getelementptr inbounds %struct.port_buffer, ptr %buf.042, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %offset = getelementptr inbounds %struct.port_buffer, ptr %buf.042, i32 0, i32 3
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %sub = sub i32 %17, %19
  %20 = ptrtoint ptr %bytes_discarded to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes_discarded, align 4
  %add = add i32 %sub, %21
  store i32 %add, ptr %bytes_discarded, align 4
  %22 = ptrtoint ptr %in_vq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_vq, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #14
  %24 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %25 = ptrtoint ptr %buf.042 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.042, align 4
  %size.i22 = getelementptr inbounds %struct.port_buffer, ptr %buf.042, i32 0, i32 1
  %27 = ptrtoint ptr %size.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i22, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %26, i32 noundef %28) #14
  %call.i23 = call i32 @virtqueue_add_inbuf(ptr noundef %23, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %buf.042, i32 noundef 2592) #14
  %call3.i = call zeroext i1 @virtqueue_kick(ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.then.i, label %while.body.add_inbuf.exit_crit_edge

while.body.add_inbuf.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_inbuf.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %num_free.i = getelementptr inbounds %struct.virtqueue, ptr %23, i32 0, i32 5
  %29 = ptrtoint ptr %num_free.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_free.i, align 4
  br label %add_inbuf.exit

add_inbuf.exit:                                   ; preds = %if.then.i, %while.body.add_inbuf.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i23, %while.body.add_inbuf.exit_crit_edge ], [ %30, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %if.then3, label %add_inbuf.exit.if.end.i32_crit_edge

add_inbuf.exit.if.end.i32_crit_edge:              ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i32

if.then3:                                         ; preds = %add_inbuf.exit
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %err.043, 1
  call fastcc void @free_buf(ptr noundef nonnull %buf.042, i1 noundef zeroext false)
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then3, %add_inbuf.exit.if.end.i32_crit_edge
  %err.1 = phi i32 [ %inc, %if.then3 ], [ %err.043, %add_inbuf.exit.if.end.i32_crit_edge ]
  %31 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %inbuf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i26) #14
  %32 = ptrtoint ptr %len.i26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %len.i26, align 4, !annotation !242
  %33 = ptrtoint ptr %in_vq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in_vq, align 4
  %call.i30 = call ptr @virtqueue_get_buf(ptr noundef %34, ptr noundef nonnull %len.i26) #14
  %tobool2.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool2.not.i31, label %while.end, label %get_inbuf.exit40

get_inbuf.exit40:                                 ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %len.i26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i26, align 4
  %size.i33 = getelementptr inbounds %struct.port_buffer, ptr %call.i30, i32 0, i32 1
  %37 = ptrtoint ptr %size.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i33, align 4
  %39 = call i32 @llvm.umin.i32(i32 %36, i32 %38) #14
  %len4.i34 = getelementptr inbounds %struct.port_buffer, ptr %call.i30, i32 0, i32 2
  %40 = ptrtoint ptr %len4.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %len4.i34, align 4
  %offset.i35 = getelementptr inbounds %struct.port_buffer, ptr %call.i30, i32 0, i32 3
  %41 = ptrtoint ptr %offset.i35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %offset.i35, align 4
  %42 = ptrtoint ptr %bytes_received.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes_received.i36, align 4
  %add.i37 = add i32 %43, %36
  store i32 %add.i37, ptr %bytes_received.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i26) #14
  br label %while.body

while.end:                                        ; preds = %if.end.i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool6.not = icmp eq i32 %err.1, 0
  br i1 %tobool6.not, label %while.end.cleanup_crit_edge, label %do.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.41, i32 noundef %err.1) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge, %while.end.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hvc_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hvc_kick() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_control_message(ptr nocapture noundef readonly %vdev, ptr noundef %portdev, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %offset = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %6 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %7, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %5, i32 %8
  %ports_lock.i = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ports_lock.i) #14
  %ports.i = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %port.0.in.i = phi ptr [ %ports.i, %entry ], [ %port.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %port.0.i = load ptr, ptr %port.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %port.0.i, %ports.i
  br i1 %cmp7.not.i, label %find_port_by_id.exit.thread, label %for.body.i

find_port_by_id.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.cond.i
  %id9.i = getelementptr inbounds %struct.port, ptr %port.0.i, i32 0, i32 16
  %10 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id9.i, align 4
  %cmp10.i = icmp eq i32 %11, %retval.0.i.i
  br i1 %cmp10.i, label %find_port_by_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_port_by_id.exit:                             ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i, i32 noundef %call2.i) #14
  %tobool.not = icmp eq ptr %port.0.i, null
  br i1 %tobool.not, label %find_port_by_id.exit.land.lhs.true_crit_edge, label %find_port_by_id.exit.if.end13_crit_edge

find_port_by_id.exit.if.end13_crit_edge:          ; preds = %find_port_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

find_port_by_id.exit.land.lhs.true_crit_edge:     ; preds = %find_port_by_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %find_port_by_id.exit.land.lhs.true_crit_edge, %find_port_by_id.exit.thread
  %event = getelementptr inbounds %struct.virtio_console_control, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %event, align 4
  %14 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i182 = and i64 %15, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i182)
  %tobool13.i.i.i.not.i183 = icmp eq i64 %and.i.i.i.i182, 0
  %retval.0.i.i184 = select i1 %tobool13.i.i.i.not.i183, i16 1, i16 256
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %retval.0.i.i184)
  %cmp.not = icmp eq i16 %13, %retval.0.i.i184
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %do.body

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_message.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_control_message, %if.then10)) #14
          to label %cleanup118 [label %if.then10], !srcloc !251

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %vdev11 = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 8
  %16 = ptrtoint ptr %vdev11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdev11, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_message.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %19) #14
  br label %cleanup118

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %find_port_by_id.exit.if.end13_crit_edge
  %tobool.not229 = phi i1 [ true, %land.lhs.true.if.end13_crit_edge ], [ false, %find_port_by_id.exit.if.end13_crit_edge ]
  %port.1.i225 = phi ptr [ null, %land.lhs.true.if.end13_crit_edge ], [ %port.0.i, %find_port_by_id.exit.if.end13_crit_edge ]
  %event14 = getelementptr inbounds %struct.virtio_console_control, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %event14 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %event14, align 4
  %22 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i186 = and i64 %23, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i186)
  %tobool13.i.i.i.not.i187 = icmp eq i64 %and.i.i.i.i186, 0
  %24 = tail call i16 @llvm.bswap.i16(i16 %21) #14
  %retval.0.i.i188 = select i1 %tobool13.i.i.i.not.i187, i16 %21, i16 %24
  %25 = zext i16 %retval.0.i.i188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i16 %retval.0.i.i188, label %if.end13.cleanup118_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb56
    i16 4, label %sw.bb57
    i16 5, label %sw.bb65
    i16 6, label %sw.bb73
    i16 7, label %sw.bb80
  ]

if.end13.cleanup118_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

sw.bb:                                            ; preds = %if.end13
  br i1 %tobool.not229, label %if.end39, label %do.body19

do.body19:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_control_message.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_control_message, %if.then31)) #14
          to label %do.end37 [label %if.then31], !srcloc !251

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  %vdev32 = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 8
  %26 = ptrtoint ptr %vdev32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev32, align 4
  %dev33 = getelementptr inbounds %struct.virtio_device, ptr %27, i32 0, i32 6
  %id34 = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 16
  %28 = ptrtoint ptr %id34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_control_message.__UNIQUE_ID_ddebug257, ptr noundef %dev33, ptr noundef nonnull @.str.47, i32 noundef %29) #14
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  %portdev.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 1
  %30 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %do.end37.cleanup118_crit_edge, label %if.then.i189

do.end37.cleanup118_crit_edge:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.then.i189:                                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  %id.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 16
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %31, i32 noundef %33, i32 noundef 3, i32 noundef 1) #14
  br label %cleanup118

if.end39:                                         ; preds = %sw.bb
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #14
  %retval.0.i.i193 = select i1 %tobool13.i.i.i.not.i187, i32 %35, i32 %36
  %max_nr_ports = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 7
  %37 = ptrtoint ptr %max_nr_ports to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_nr_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i193, i32 %38)
  %cmp42.not = icmp ult i32 %retval.0.i.i193, %38
  br i1 %cmp42.not, label %if.end52, label %do.end47

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %vdev48 = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 8
  %39 = ptrtoint ptr %vdev48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vdev48, align 4
  %dev49 = getelementptr inbounds %struct.virtio_device, ptr %40, i32 0, i32 6
  %sub = add i32 %38, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev49, ptr noundef nonnull @.str.48, i32 noundef %35, i32 noundef %sub) #17
  br label %cleanup118

if.end52:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @add_port(ptr noundef %portdev, i32 noundef %retval.0.i.i193)
  br label %cleanup118

sw.bb56:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @unplug_port(ptr noundef %port.1.i225)
  br label %cleanup118

sw.bb57:                                          ; preds = %if.end13
  %value = getelementptr inbounds %struct.virtio_console_control, ptr %add.ptr, i32 0, i32 2
  %41 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool58.not = icmp eq i16 %42, 0
  br i1 %tobool58.not, label %sw.bb57.cleanup118_crit_edge, label %if.end60

sw.bb57.cleanup118_crit_edge:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.end60:                                         ; preds = %sw.bb57
  %hvc.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %hvc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hvc.i, align 4
  %tobool.not.i198.not = icmp eq ptr %44, null
  br i1 %tobool.not.i198.not, label %if.end63, label %if.end60.cleanup118_crit_edge

if.end60.cleanup118_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.end63:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %call64 = tail call fastcc i32 @init_port_console(ptr noundef %port.1.i225)
  tail call void @complete(ptr noundef nonnull @early_console_added) #14
  br label %cleanup118

sw.bb65:                                          ; preds = %if.end13
  %hvc.i199 = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %hvc.i199 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hvc.i199, align 4
  %tobool.not.i200.not = icmp eq ptr %46, null
  br i1 %tobool.not.i200.not, label %sw.bb65.cleanup118_crit_edge, label %if.end68

sw.bb65.cleanup118_crit_edge:                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.end68:                                         ; preds = %sw.bb65
  br i1 %tobool.not229, label %set_console_size.exit.thread, label %lor.lhs.false.i206

set_console_size.exit.thread:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %hvc.i199 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hvc.i199, align 4
  %irq_requested233 = getelementptr inbounds %struct.hvc_struct, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %irq_requested233 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %irq_requested233, align 4
  br label %cleanup118

lor.lhs.false.i206:                               ; preds = %if.end68
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf, align 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset, align 4
  %add.ptr71 = getelementptr i8, ptr %51, i32 %53
  %add.ptr72 = getelementptr i8, ptr %add.ptr71, i32 8
  %size.sroa.5.0.add.ptr72.sroa_idx = getelementptr inbounds i8, ptr %add.ptr72, i32 2
  %54 = ptrtoint ptr %size.sroa.5.0.add.ptr72.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %size.sroa.5.0.copyload = load i16, ptr %size.sroa.5.0.add.ptr72.sroa_idx, align 1
  %55 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %size.sroa.0.0.copyload = load i16, ptr %add.ptr72, align 1
  %ws.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 9, i32 2
  %56 = ptrtoint ptr %ws.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %size.sroa.0.0.copyload, ptr %ws.i, align 4
  %ws_col.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 9, i32 2, i32 1
  %57 = ptrtoint ptr %ws_col.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %size.sroa.5.0.copyload, ptr %ws_col.i, align 2
  %58 = ptrtoint ptr %hvc.i199 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hvc.i199, align 4
  %irq_requested = getelementptr inbounds %struct.hvc_struct, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %irq_requested to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %irq_requested, align 4
  %61 = load ptr, ptr %hvc.i199, align 4
  %tobool.not.i.not.i205 = icmp eq ptr %61, null
  br i1 %tobool.not.i.not.i205, label %lor.lhs.false.i206.cleanup118_crit_edge, label %if.end.i209

lor.lhs.false.i206.cleanup118_crit_edge:          ; preds = %lor.lhs.false.i206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.end.i209:                                      ; preds = %lor.lhs.false.i206
  %portdev.i207 = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 1
  %62 = ptrtoint ptr %portdev.i207 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %portdev.i207, align 4
  %vdev1.i = getelementptr inbounds %struct.ports_device, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %vdev1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vdev1.i, align 4
  %id.i.i = getelementptr inbounds %struct.virtio_device, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %67)
  %cmp.i.i208 = icmp eq i32 %67, 11
  br i1 %cmp.i.i208, label %if.end.i209.cleanup118_crit_edge, label %land.lhs.true.i

if.end.i209.cleanup118_crit_edge:                 ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

land.lhs.true.i:                                  ; preds = %if.end.i209
  tail call void @virtio_check_driver_offered_feature(ptr noundef %65, i32 noundef 0) #14
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %65, i32 0, i32 11
  %68 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %69, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %land.lhs.true.i.cleanup118_crit_edge, label %if.then4.i

land.lhs.true.i.cleanup118_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %hvc.i199 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hvc.i199, align 4
  %72 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack.i = load i32, ptr %ws.i, align 4
  %73 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %.elt12.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 9, i32 2, i32 2
  %74 = ptrtoint ptr %.elt12.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack13.i = load i32, ptr %.elt12.i, align 4
  %75 = insertvalue [2 x i32] %73, i32 %.unpack13.i, 1
  %lock.i.i = getelementptr inbounds %struct.hvc_struct, ptr %71, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  tail call void @__hvc_resize(ptr noundef %71, [2 x i32] %75) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  br label %cleanup118

sw.bb73:                                          ; preds = %if.end13
  %value74 = getelementptr inbounds %struct.virtio_console_control, ptr %add.ptr, i32 0, i32 2
  %76 = ptrtoint ptr %value74 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %value74, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #14
  %retval.0.i.i214 = select i1 %tobool13.i.i.i.not.i187, i16 %77, i16 %78
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i214)
  %tobool76 = icmp ne i16 %retval.0.i.i214, 0
  %host_connected = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 18
  %frombool77 = zext i1 %tobool76 to i8
  %79 = ptrtoint ptr %host_connected to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool77, ptr %host_connected, align 1
  %waitqueue = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %outvq_lock = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %outvq_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %portdev.i215 = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 1
  %81 = ptrtoint ptr %portdev.i215 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %portdev.i215, align 4
  %tobool.not.i216 = icmp eq ptr %82, null
  br i1 %tobool.not.i216, label %sw.bb73.reclaim_consumed_buffers.exit_crit_edge, label %while.cond.preheader.i

sw.bb73.reclaim_consumed_buffers.exit_crit_edge:  ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.cond.preheader.i:                           ; preds = %sw.bb73
  %out_vq.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 6
  %83 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %out_vq.i, align 4
  %call5.i = call ptr @virtqueue_get_buf(ptr noundef %84, ptr noundef nonnull %len.i) #14
  %tobool1.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool1.not6.i, label %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %outvq_full.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call7.i217 = phi ptr [ %call5.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call7.i217, i1 noundef zeroext false) #14
  %85 = ptrtoint ptr %outvq_full.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %outvq_full.i, align 4
  %86 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %out_vq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %87, ptr noundef nonnull %len.i) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %while.body.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

reclaim_consumed_buffers.exit:                    ; preds = %while.body.i.reclaim_consumed_buffers.exit_crit_edge, %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, %sw.bb73.reclaim_consumed_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  call void @_raw_spin_unlock_irq(ptr noundef %outvq_lock) #14
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %inbuf_lock) #14
  %async_queue.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 15
  %88 = ptrtoint ptr %async_queue.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %async_queue.i, align 4
  %tobool.not.i218 = icmp eq ptr %89, null
  br i1 %tobool.not.i218, label %reclaim_consumed_buffers.exit.send_sigio_to_port.exit_crit_edge, label %land.lhs.true.i220

reclaim_consumed_buffers.exit.send_sigio_to_port.exit_crit_edge: ; preds = %reclaim_consumed_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_sigio_to_port.exit

land.lhs.true.i220:                               ; preds = %reclaim_consumed_buffers.exit
  %guest_connected.i = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 19
  %90 = ptrtoint ptr %guest_connected.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %guest_connected.i, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool1.not.i219 = icmp eq i8 %91, 0
  br i1 %tobool1.not.i219, label %land.lhs.true.i220.send_sigio_to_port.exit_crit_edge, label %if.then.i221

land.lhs.true.i220.send_sigio_to_port.exit_crit_edge: ; preds = %land.lhs.true.i220
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_sigio_to_port.exit

if.then.i221:                                     ; preds = %land.lhs.true.i220
  call void @__sanitizer_cov_trace_pc() #16
  call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 2) #14
  br label %send_sigio_to_port.exit

send_sigio_to_port.exit:                          ; preds = %if.then.i221, %land.lhs.true.i220.send_sigio_to_port.exit_crit_edge, %reclaim_consumed_buffers.exit.send_sigio_to_port.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %inbuf_lock) #14
  br label %cleanup118

sw.bb80:                                          ; preds = %if.end13
  %name = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 14
  %92 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name, align 4
  %tobool81.not = icmp eq ptr %93, null
  br i1 %tobool81.not, label %if.end83, label %sw.bb80.cleanup118_crit_edge

sw.bb80.cleanup118_crit_edge:                     ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup118

if.end83:                                         ; preds = %sw.bb80
  %len = getelementptr inbounds %struct.port_buffer, ptr %buf, i32 0, i32 2
  %94 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len, align 4
  %96 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset, align 4
  %sub85 = sub i32 %95, %97
  %add = add i32 %sub85, -7
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #20
  %98 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call9.i, ptr %name, align 4
  %tobool90.not = icmp eq ptr %call9.i, null
  br i1 %tobool90.not, label %do.end94, label %if.end96

do.end94:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %dev95 = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 11
  %99 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.50) #17
  br label %cleanup118

if.end96:                                         ; preds = %if.end83
  %sub86 = add i32 %sub85, -8
  %101 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buf, align 4
  %103 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset, align 4
  %add.ptr100 = getelementptr i8, ptr %102, i32 %104
  %add.ptr101 = getelementptr i8, ptr %add.ptr100, i32 8
  %call103 = tail call ptr @strncpy(ptr noundef nonnull %call9.i, ptr noundef %add.ptr101, i32 noundef %sub86)
  %105 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr i8, ptr %106, i32 %sub86
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx, align 1
  %dev106 = getelementptr inbounds %struct.port, ptr %port.1.i225, i32 0, i32 11
  %108 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev106, align 4
  %call107 = tail call i32 @sysfs_create_group(ptr noundef %109, ptr noundef nonnull @port_attribute_group) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  %110 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev106, align 4
  br i1 %tobool108.not, label %if.else, label %do.end112

do.end112:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.53, i32 noundef %call107) #17
  br label %cleanup118

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %call116 = tail call i32 @kobject_uevent(ptr noundef %111, i32 noundef 2) #14
  br label %cleanup118

cleanup118:                                       ; preds = %if.else, %do.end112, %do.end94, %sw.bb80.cleanup118_crit_edge, %send_sigio_to_port.exit, %if.then4.i, %land.lhs.true.i.cleanup118_crit_edge, %if.end.i209.cleanup118_crit_edge, %lor.lhs.false.i206.cleanup118_crit_edge, %set_console_size.exit.thread, %sw.bb65.cleanup118_crit_edge, %if.end63, %if.end60.cleanup118_crit_edge, %sw.bb57.cleanup118_crit_edge, %sw.bb56, %if.end52, %do.end47, %if.then.i189, %do.end37.cleanup118_crit_edge, %if.end13.cleanup118_crit_edge, %if.then10, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unplug_port(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %portdev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %portdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %portdev, align 4
  %ports_lock = getelementptr inbounds %struct.ports_device, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %ports_lock) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %port, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %portdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %portdev, align 4
  %ports_lock2 = getelementptr inbounds %struct.ports_device, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %ports_lock2) #14
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %inbuf_lock) #14
  %guest_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %12 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %async_queue.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 15
  %14 = ptrtoint ptr %async_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %async_queue.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.send_sigio_to_port.exit_crit_edge, label %if.then.i

if.then.send_sigio_to_port.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_sigio_to_port.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 2) #14
  br label %send_sigio_to_port.exit

send_sigio_to_port.exit:                          ; preds = %if.then.i, %if.then.send_sigio_to_port.exit_crit_edge
  %16 = ptrtoint ptr %guest_connected to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %guest_connected, align 2
  %host_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 18
  %17 = ptrtoint ptr %host_connected to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %host_connected, align 1
  %waitqueue = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %waitqueue, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %send_sigio_to_port.exit, %list_del.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %inbuf_lock) #14
  %hvc.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %hvc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hvc.i, align 4
  %tobool.not.i33.not = icmp eq ptr %19, null
  br i1 %tobool.not.i33.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %cons = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cons) #14
  br i1 %call.i.i34, label %if.end.i.i37, label %if.then5.list_del.exit39_crit_edge

if.then5.list_del.exit39_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit39

if.end.i.i37:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i35 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i35, align 4
  %22 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cons, align 4
  %prev1.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i36, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit39

list_del.exit39:                                  ; preds = %if.end.i.i37, %if.then5.list_del.exit39_crit_edge
  %26 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %cons, align 4
  %prev.i38 = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i38, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %28 = ptrtoint ptr %hvc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hvc.i, align 4
  %call8 = tail call i32 @hvc_remove(ptr noundef %29) #14
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit39, %if.end.if.end9_crit_edge
  tail call fastcc void @remove_port_data(ptr noundef %port)
  %30 = ptrtoint ptr %portdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %portdev, align 4
  %dev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %32, ptr noundef nonnull @port_attribute_group) #14
  %33 = load ptr, ptr @pdrvdata, align 4
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %devt = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 29
  %36 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devt, align 8
  tail call void @device_destroy(ptr noundef %33, i32 noundef %37) #14
  %cdev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 10
  %38 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cdev, align 4
  tail call void @cdev_del(ptr noundef %39) #14
  %debugfs_file = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 7
  %40 = ptrtoint ptr %debugfs_file to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %debugfs_file, align 4
  tail call void @debugfs_remove(ptr noundef %41) #14
  %name = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 14
  %42 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %43) #14
  %kref = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i40, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !239

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i40:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @kfree(ptr noundef %port) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i40, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_port_console(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 3), align 4
  %vtermno = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9, i32 3
  %1 = ptrtoint ptr %vtermno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %vtermno, align 4
  %call = tail call ptr @hvc_alloc(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @hv_ops, i32 noundef 4096) #14
  %hvc = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %hvc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hvc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call to i32
  %dev = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55, i32 noundef %3) #17
  %6 = ptrtoint ptr %hvc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hvc, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cons = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %7 = load i32, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 3), align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 3), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cons, ptr noundef %8, ptr noundef getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %cons, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4, i32 1), align 4
  %9 = ptrtoint ptr %cons to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), ptr %cons, align 4
  %prev3.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 9, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %cons, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pdrvdata_lock) #14
  %guest_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %12 = ptrtoint ptr %guest_connected to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %guest_connected, align 2
  %13 = load ptr, ptr @early_put_chars, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %list_add_tail.exit.if.end14_crit_edge, label %if.then13

list_add_tail.exit.if.end14_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @early_put_chars, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %list_add_tail.exit.if.end14_crit_edge
  %portdev.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %14 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.then.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %id.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 16
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %15, i32 noundef %17, i32 noundef 6, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end14.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hvc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_port_data(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %inbuf_lock) #14
  tail call fastcc void @discard_port_data(ptr noundef %port)
  tail call void @_raw_spin_unlock_irq(ptr noundef %inbuf_lock) #14
  %outvq_lock = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %outvq_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %portdev.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.reclaim_consumed_buffers.exit_crit_edge, label %while.cond.preheader.i

entry.reclaim_consumed_buffers.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.cond.preheader.i:                           ; preds = %entry
  %out_vq.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 6
  %3 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %out_vq.i, align 4
  %call5.i = call ptr @virtqueue_get_buf(ptr noundef %4, ptr noundef nonnull %len.i) #14
  %tobool1.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool1.not6.i, label %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %outvq_full.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call7.i = phi ptr [ %call5.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call7.i, i1 noundef zeroext false) #14
  %5 = ptrtoint ptr %outvq_full.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %outvq_full.i, align 4
  %6 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_vq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %7, ptr noundef nonnull %len.i) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %while.body.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

reclaim_consumed_buffers.exit:                    ; preds = %while.body.i.reclaim_consumed_buffers.exit_crit_edge, %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, %entry.reclaim_consumed_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  call void @_raw_spin_unlock_irq(ptr noundef %outvq_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hvc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buffer) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.58, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_buf(ptr nocapture noundef readonly %vdev, i32 noundef %buf_size, i32 noundef %pages) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @reclaim_dma_bufs()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %pages, i32 20) #14
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 36) #14
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sgpages = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 7
  %3 = ptrtoint ptr %sgpages to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pages, ptr %sgpages, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages)
  %cmp = icmp sgt i32 %pages, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dev, align 4
  %5 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call9.i, align 128
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 7
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp.i78 = icmp eq i32 %7, 11
  br i1 %cmp.i78, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %parent = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %dev8 = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 5
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dev8, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.then6.free_buf_crit_edge, label %if.end12

if.then6.free_buf_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_buf

if.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = tail call ptr @get_device(ptr noundef nonnull %9) #14
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %dma = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef %buf_size, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #14
  br label %if.end21

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %dev18 = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 5
  %13 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dev18, align 4
  %call9.i74 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buf_size, i32 noundef 3264) #20
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end12
  %storemerge = phi ptr [ %call.i, %if.end12 ], [ %call9.i74, %if.else ]
  %14 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %storemerge, ptr %call9.i, align 128
  %tobool23.not = icmp eq ptr %storemerge, null
  br i1 %tobool23.not, label %if.end21.free_buf_crit_edge, label %if.end25

if.end21.free_buf_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_buf

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %len, align 8
  %offset = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 3
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %offset, align 4
  %size = getelementptr inbounds %struct.port_buffer, ptr %call9.i, i32 0, i32 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %buf_size, ptr %size, align 4
  br label %cleanup

free_buf:                                         ; preds = %if.end21.free_buf_crit_edge, %if.then6.free_buf_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_buf, %if.end25, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.then2 ], [ %call9.i, %if.end25 ], [ null, %entry.cleanup_crit_edge ], [ null, %free_buf ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %offp) #2 align 64 {
entry:
  %len.i.i52 = alloca i32, align 4
  %len.i.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %guest_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end:                                           ; preds = %entry
  %inbuf_lock.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %inbuf_lock.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #14
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len.i.i, align 4, !annotation !242
  %inbuf.i.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %inbuf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.port_has_data.exit.thread_crit_edge

if.end.port_has_data.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %port_has_data.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %in_vq.i.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %in_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_vq.i.i, align 4
  %call.i.i = call ptr @virtqueue_get_buf(ptr noundef %8, ptr noundef nonnull %len.i.i) #14
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %if.then1, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i.i, align 4
  %13 = call i32 @llvm.umin.i32(i32 %10, i32 %12) #14
  %len4.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len4.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %offset.i.i, align 4
  %bytes_received.i.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bytes_received.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_received.i.i, align 4
  %add.i.i = add i32 %17, %10
  store i32 %add.i.i, ptr %bytes_received.i.i, align 4
  br label %port_has_data.exit.thread

port_has_data.exit.thread:                        ; preds = %if.then3.i.i, %if.end.port_has_data.exit.thread_crit_edge
  %retval.0.i.i.ph = phi ptr [ %call.i.i, %if.then3.i.i ], [ %6, %if.end.port_has_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  %18 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i.i.ph, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i) #14
  br label %if.end26

if.then1:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  %19 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i) #14
  %host_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %host_connected to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %host_connected, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not = icmp eq i8 %21, 0
  br i1 %tobool2.not, label %if.then1.cleanup37_crit_edge, label %if.end4

if.then1.cleanup37_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end4:                                          ; preds = %if.then1
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup37_crit_edge

if.end4.cleanup37_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end7:                                          ; preds = %if.end4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 762) #14
  %call11 = call fastcc zeroext i1 @will_read_block(ptr noundef %1)
  br i1 %call11, label %if.then12, label %if.end7.if.end26_crit_edge

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then12:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %24 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %waitqueue = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13
  %call1485 = call i32 @prepare_to_wait_event(ptr noundef %waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call1586 = call fastcc zeroext i1 @will_read_block(ptr noundef %1)
  br i1 %call1586, label %if.then12.if.end17_crit_edge, label %if.then12.if.end22.thread_crit_edge

if.then12.if.end22.thread_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.then12.if.end17_crit_edge
  %call1487 = phi i32 [ %call14, %cleanup.if.end17_crit_edge ], [ %call1485, %if.then12.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1487)
  %tobool18.not = icmp eq i32 %call1487, 0
  br i1 %tobool18.not, label %if.end20, label %if.end22

if.end20:                                         ; preds = %if.end17
  %25 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %30, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #14
  %31 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i1.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %36, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  %37 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end20.if.end.i.i.i_crit_edge

if.end20.if.end.i.i.i_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  call void @debug_check_no_locks_held() #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end20.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.76, i32 noundef 57) #14
  %43 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %47 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %freezing.exit.i.i.i.i, !prof !239

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %46) #14
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.cleanup_crit_edge, !prof !240

freezing.exit.i.i.i.i.cleanup_crit_edge:          ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call15 = call fastcc zeroext i1 @will_read_block(ptr noundef %1)
  br i1 %call15, label %cleanup.if.end17_crit_edge, label %cleanup.if.end22.thread_crit_edge

cleanup.if.end22.thread_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end22.thread:                                  ; preds = %cleanup.if.end22.thread_crit_edge, %if.then12.if.end22.thread_crit_edge
  call void @finish_wait(ptr noundef %waitqueue, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end26

if.end22:                                         ; preds = %if.end17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1487)
  %cmp = icmp slt i32 %call1487, 0
  br i1 %cmp, label %if.end22.cleanup37_crit_edge, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end22.cleanup37_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end26:                                         ; preds = %if.end22.if.end26_crit_edge, %if.end22.thread, %if.end7.if.end26_crit_edge, %port_has_data.exit.thread
  %48 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool28.not = icmp eq i8 %49, 0
  br i1 %tobool28.not, label %if.end26.cleanup37_crit_edge, label %if.end30

if.end26.cleanup37_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end30:                                         ; preds = %if.end26
  %call2.i54 = call i32 @_raw_spin_lock_irqsave(ptr noundef %inbuf_lock.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i52) #14
  %50 = ptrtoint ptr %len.i.i52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %len.i.i52, align 4, !annotation !242
  %51 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %inbuf.i.i, align 4
  %tobool.not.i.i56 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i56, label %if.end.i.i60, label %if.end30.port_has_data.exit69.thread_crit_edge

if.end30.port_has_data.exit69.thread_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %port_has_data.exit69.thread

if.end.i.i60:                                     ; preds = %if.end30
  %in_vq.i.i57 = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %in_vq.i.i57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %in_vq.i.i57, align 4
  %call.i.i58 = call ptr @virtqueue_get_buf(ptr noundef %54, ptr noundef nonnull %len.i.i52) #14
  %tobool2.not.i.i59 = icmp eq ptr %call.i.i58, null
  br i1 %tobool2.not.i.i59, label %land.lhs.true, label %if.then3.i.i66

if.then3.i.i66:                                   ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %len.i.i52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i52, align 4
  %size.i.i61 = getelementptr inbounds %struct.port_buffer, ptr %call.i.i58, i32 0, i32 1
  %57 = ptrtoint ptr %size.i.i61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i.i61, align 4
  %59 = call i32 @llvm.umin.i32(i32 %56, i32 %58) #14
  %len4.i.i62 = getelementptr inbounds %struct.port_buffer, ptr %call.i.i58, i32 0, i32 2
  %60 = ptrtoint ptr %len4.i.i62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %len4.i.i62, align 4
  %offset.i.i63 = getelementptr inbounds %struct.port_buffer, ptr %call.i.i58, i32 0, i32 3
  %61 = ptrtoint ptr %offset.i.i63 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %offset.i.i63, align 4
  %bytes_received.i.i64 = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %bytes_received.i.i64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytes_received.i.i64, align 4
  %add.i.i65 = add i32 %63, %56
  store i32 %add.i.i65, ptr %bytes_received.i.i64, align 4
  br label %port_has_data.exit69.thread

port_has_data.exit69.thread:                      ; preds = %if.then3.i.i66, %if.end30.port_has_data.exit69.thread_crit_edge
  %retval.0.i.i67.ph = phi ptr [ %call.i.i58, %if.then3.i.i66 ], [ %52, %if.end30.port_has_data.exit69.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i52) #14
  %64 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %retval.0.i.i67.ph, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i54) #14
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end.i.i60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i52) #14
  %65 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i54) #14
  %host_connected32 = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 18
  %66 = ptrtoint ptr %host_connected32 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %host_connected32, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool33.not = icmp eq i8 %67, 0
  br i1 %tobool33.not, label %land.lhs.true.cleanup37_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true.cleanup37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup37

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %port_has_data.exit69.thread
  %call36 = call fastcc i32 @fill_readbuf(ptr noundef %1, ptr noundef %ubuf, i32 noundef %count, i1 noundef zeroext true)
  br label %cleanup37

cleanup37:                                        ; preds = %if.end35, %land.lhs.true.cleanup37_crit_edge, %if.end26.cleanup37_crit_edge, %if.end22.cleanup37_crit_edge, %if.end4.cleanup37_crit_edge, %if.then1.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end35 ], [ -19, %entry.cleanup37_crit_edge ], [ 0, %if.then1.cleanup37_crit_edge ], [ -11, %if.end4.cleanup37_crit_edge ], [ %call1487, %if.end22.cleanup37_crit_edge ], [ -19, %if.end26.cleanup37_crit_edge ], [ 0, %land.lhs.true.cleanup37_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_write(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %offp) #2 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  %call = tail call fastcc i32 @wait_port_writable(ptr noundef %2, i1 noundef zeroext %tobool1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 32768)
  %portdev = getelementptr inbounds %struct.port, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %portdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %portdev, align 4
  %vdev = getelementptr inbounds %struct.ports_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 4
  %call6 = tail call fastcc ptr @alloc_buf(ptr noundef %9, i32 noundef %5, i32 noundef 0)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call6, align 4
  tail call void @__check_object_size(ptr noundef %11, i32 noundef %5, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end9.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.if.then11.i.i_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end9
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %5, i32 -1226833920) #18, !srcloc !261
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !239

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef %5) #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !262
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %11, ptr noundef %ubuf, i32 noundef %5) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !239

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end9.if.then11.i.i_crit_edge
  %res.0.i.i49 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %5, %if.end9.if.then11.i.i_crit_edge ], [ %5, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %5, %res.0.i.i49
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i49)
  br label %free_buf

if.end14:                                         ; preds = %if.end.i.i
  %17 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call6, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %18, i32 noundef %5) #14
  %call18 = call fastcc i32 @__send_to_port(ptr noundef %2, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %5, ptr noundef nonnull %call6, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp sgt i32 %call18, 0
  br i1 %cmp20, label %if.end14.cleanup_crit_edge, label %if.end14.free_buf_crit_edge

if.end14.free_buf_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_buf

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

free_buf:                                         ; preds = %if.end14.free_buf_crit_edge, %if.then11.i.i
  %ret.0 = phi i32 [ %call18, %if.end14.free_buf_crit_edge ], [ -14, %if.then11.i.i ]
  call fastcc void @free_buf(ptr noundef nonnull %call6, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %free_buf, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %ret.0, %free_buf ], [ %call18, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitqueue = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitqueue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %waitqueue, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %guest_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %poll_wait.exit.cleanup_crit_edge, label %if.end

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc zeroext i1 @will_read_block(ptr noundef %1)
  %spec.select = select i1 %call, i32 0, i32 65
  %call3 = tail call fastcc zeroext i1 @will_write_block(ptr noundef %1)
  %or5 = or i32 %spec.select, 4
  %ret.1 = select i1 %call3, i32 %spec.select, i32 %or5
  %host_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %host_connected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_connected, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %or9 = or i32 %ret.1, 16
  %ret.2 = select i1 %tobool7.not, i32 %or9, i32 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end ], [ 16, %poll_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %find_port_by_devt_in_portdev.exit.i.for.cond.i_crit_edge, %entry
  %portdev.0.in.i = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), %entry ], [ %portdev.0.i, %find_port_by_devt_in_portdev.exit.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %portdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %portdev.0.i = load ptr, ptr %portdev.0.in.i, align 4
  %cmp6.not.i = icmp eq ptr %portdev.0.i, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2)
  br i1 %cmp6.not.i, label %find_port_by_devt.exit.thread, label %for.body.i

find_port_by_devt.exit.thread:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ports_lock.i.i = getelementptr inbounds %struct.ports_device, ptr %portdev.0.i, i32 0, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ports_lock.i.i) #14
  %ports.i.i = getelementptr inbounds %struct.ports_device, ptr %portdev.0.i, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %port.0.in.i.i = phi ptr [ %ports.i.i, %for.body.i ], [ %port.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %port.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %port.0.i.i = load ptr, ptr %port.0.in.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %port.0.i.i, %ports.i.i
  br i1 %cmp7.not.i.i, label %for.cond.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_port_by_devt_in_portdev.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cdev.i.i = getelementptr inbounds %struct.port, ptr %port.0.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %cdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdev.i.i, align 4
  %dev9.i.i = getelementptr inbounds %struct.cdev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev9.i.i, align 4
  %cmp10.i.i = icmp eq i32 %10, %4
  br i1 %cmp10.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %kref.i.i = getelementptr inbounds %struct.port, ptr %port.0.i.i, i32 0, i32 12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #14, !srcloc !265
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !240

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !239

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_port_by_devt_in_portdev.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %find_port_by_devt_in_portdev.exit.i

find_port_by_devt_in_portdev.exit.i:              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge, %for.cond.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge
  %port.1.i.i = phi ptr [ %port.0.i.i, %if.else.i.i.i.i.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge ], [ %port.0.i.i, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %for.cond.i.i.find_port_by_devt_in_portdev.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ports_lock.i.i, i32 noundef %call2.i.i) #14
  %tobool.not.i = icmp eq ptr %port.1.i.i, null
  br i1 %tobool.not.i, label %find_port_by_devt_in_portdev.exit.i.for.cond.i_crit_edge, label %if.end

find_port_by_devt_in_portdev.exit.i.for.cond.i_crit_edge: ; preds = %find_port_by_devt_in_portdev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.end:                                           ; preds = %find_port_by_devt_in_portdev.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %call2.i) #14
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %port.1.i.i, ptr %private_data, align 4
  %hvc.i = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %hvc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hvc.i, align 4
  %tobool.not.i31.not = icmp eq ptr %15, null
  br i1 %tobool.not.i31.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3:                                          ; preds = %if.end
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %inbuf_lock) #14
  %guest_connected = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %inbuf_lock) #14
  br label %out

if.end7:                                          ; preds = %if.end3
  %18 = ptrtoint ptr %guest_connected to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %guest_connected, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %inbuf_lock) #14
  %outvq_lock = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %outvq_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %portdev.i = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i32 = icmp eq ptr %21, null
  br i1 %tobool.not.i32, label %if.end7.reclaim_consumed_buffers.exit_crit_edge, label %while.cond.preheader.i

if.end7.reclaim_consumed_buffers.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.cond.preheader.i:                           ; preds = %if.end7
  %out_vq.i = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_vq.i, align 4
  %call5.i = call ptr @virtqueue_get_buf(ptr noundef %23, ptr noundef nonnull %len.i) #14
  %tobool1.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool1.not6.i, label %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %outvq_full.i = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call7.i = phi ptr [ %call5.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call7.i, i1 noundef zeroext false) #14
  %24 = ptrtoint ptr %outvq_full.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %outvq_full.i, align 4
  %25 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %out_vq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %26, ptr noundef nonnull %len.i) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %while.body.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

reclaim_consumed_buffers.exit:                    ; preds = %while.body.i.reclaim_consumed_buffers.exit_crit_edge, %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, %if.end7.reclaim_consumed_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  call void @_raw_spin_unlock_irq(ptr noundef %outvq_lock) #14
  %call11 = call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #14
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 4
  %portdev.i33 = getelementptr inbounds %struct.port, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %portdev.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %portdev.i33, align 4
  %tobool.not.i34 = icmp eq ptr %30, null
  br i1 %tobool.not.i34, label %reclaim_consumed_buffers.exit.cleanup_crit_edge, label %if.then.i

reclaim_consumed_buffers.exit.cleanup_crit_edge:  ; preds = %reclaim_consumed_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %reclaim_consumed_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  %id.i = getelementptr inbounds %struct.port, ptr %28, i32 0, i32 16
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 4
  call fastcc void @__send_control_msg(ptr noundef nonnull %30, i32 noundef %32, i32 noundef 6, i32 noundef 1) #14
  br label %cleanup

out:                                              ; preds = %if.then5, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -16, %if.then5 ], [ -6, %if.end.out_crit_edge ]
  %kref = getelementptr inbounds %struct.port, ptr %port.1.i.i, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i35, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !239

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %cleanup

if.then.i35:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @kfree(ptr noundef nonnull %port.1.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i35, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then.i, %reclaim_consumed_buffers.exit.cleanup_crit_edge, %find_port_by_devt.exit.thread
  %retval.0 = phi i32 [ -6, %find_port_by_devt.exit.thread ], [ 0, %reclaim_consumed_buffers.exit.cleanup_crit_edge ], [ 0, %if.then.i ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %portdev.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.send_control_msg.exit_crit_edge, label %if.then.i

entry.send_control_msg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %send_control_msg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %id.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %3, i32 noundef %5, i32 noundef 6, i32 noundef 0) #14
  br label %send_control_msg.exit

send_control_msg.exit:                            ; preds = %if.then.i, %entry.send_control_msg.exit_crit_edge
  %inbuf_lock = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %inbuf_lock) #14
  %guest_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %guest_connected to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %guest_connected, align 2
  tail call fastcc void @discard_port_data(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %inbuf_lock) #14
  %outvq_lock = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %outvq_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %8 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i13 = icmp eq ptr %9, null
  br i1 %tobool.not.i13, label %send_control_msg.exit.reclaim_consumed_buffers.exit_crit_edge, label %while.cond.preheader.i

send_control_msg.exit.reclaim_consumed_buffers.exit_crit_edge: ; preds = %send_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.cond.preheader.i:                           ; preds = %send_control_msg.exit
  %out_vq.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_vq.i, align 4
  %call5.i = call ptr @virtqueue_get_buf(ptr noundef %11, ptr noundef nonnull %len.i) #14
  %tobool1.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool1.not6.i, label %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %outvq_full.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call7.i = phi ptr [ %call5.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call7.i, i1 noundef zeroext false) #14
  %12 = ptrtoint ptr %outvq_full.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %outvq_full.i, align 4
  %13 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_vq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %14, ptr noundef nonnull %len.i) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %while.body.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

reclaim_consumed_buffers.exit:                    ; preds = %while.body.i.reclaim_consumed_buffers.exit_crit_edge, %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, %send_control_msg.exit.reclaim_consumed_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  call void @_raw_spin_unlock_irq(ptr noundef %outvq_lock) #14
  call fastcc void @reclaim_dma_bufs()
  %kref = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 12
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !257
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i14, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %reclaim_consumed_buffers.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !239

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i14:                                      ; preds = %reclaim_consumed_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !259
  call void @kfree(ptr noundef %1) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i14, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 15
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %mode, ptr noundef %async_queue) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_fops_splice_write(ptr noundef %pipe, ptr nocapture noundef readonly %filp, ptr nocapture noundef readonly %ppos, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %sgl = alloca %struct.sg_list, align 4
  %sd = alloca %struct.splice_desc, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sgl) #14
  %2 = getelementptr inbounds %struct.sg_list, ptr %sgl, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sg_list, ptr %sgl, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sg_list, ptr %sgl, i32 0, i32 3
  %5 = call ptr @memset(ptr %sgl, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sd) #14
  %6 = getelementptr inbounds i8, ptr %sd, i32 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %6, align 8, !annotation !242
  %8 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %sd, align 8
  %len1 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %9 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %len1, align 4
  %flags2 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 2
  %10 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags2, align 8
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sgl, ptr %u, align 4
  %pos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %12 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ppos, align 8
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %pos, align 8
  %opos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 5
  %15 = ptrtoint ptr %opos to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %opos, align 8
  %num_spliced = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 6
  %16 = ptrtoint ptr %num_spliced to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %num_spliced, align 4
  %need_wakeup = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 7
  %17 = ptrtoint ptr %need_wakeup to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %need_wakeup, align 8
  %out_vq = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %out_vq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_vq, align 4
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev, align 4
  %id.i = getelementptr inbounds %struct.virtio_device, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %23)
  %cmp.i = icmp eq i32 %23, 11
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @pipe_lock(ptr noundef %pipe) #14
  %head = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 3
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 4
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i66 = icmp eq i32 %25, %27
  br i1 %cmp.i66, label %if.end.error_out_crit_edge, label %if.end5

if.end.error_out_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.end5:                                          ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %28 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_flags, align 4
  %and = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call6 = call fastcc i32 @wait_port_writable(ptr noundef %1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.error_out_crit_edge, label %if.end8

if.end5.error_out_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.end8:                                          ; preds = %if.end5
  %30 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %head, align 4
  %32 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail, align 4
  %sub.i = sub i32 %31, %33
  %portdev = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %portdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %portdev, align 4
  %vdev12 = getelementptr inbounds %struct.ports_device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %vdev12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev12, align 4
  %call13 = call fastcc ptr @alloc_buf(ptr noundef %37, i32 noundef 0, i32 noundef %sub.i)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end8.error_out_crit_edge, label %if.end16

if.end8.error_out_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.end16:                                         ; preds = %if.end8
  %38 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %sgl, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %3, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i, ptr %2, align 4
  %sg = getelementptr inbounds %struct.port_buffer, ptr %call13, i32 0, i32 8
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sg, ptr %4, align 4
  call void @sg_init_table(ptr noundef %sg, i32 noundef %sub.i) #14
  %call21 = call i32 @__splice_from_pipe(ptr noundef %pipe, ptr noundef nonnull %sd, ptr noundef nonnull @pipe_to_sg) #14
  call void @pipe_unlock(ptr noundef %pipe) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, 0
  br i1 %cmp22, label %if.end31, label %if.end16.if.then39_crit_edge, !prof !239

if.end16.if.then39_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

if.end31:                                         ; preds = %if.end16
  %42 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sgl, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %3, align 4
  %call30 = call fastcc i32 @__send_to_port(ptr noundef %1, ptr noundef %sg, i32 noundef %43, i32 noundef %45, ptr noundef nonnull %call13, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp32 = icmp slt i32 %call30, 1
  br i1 %cmp32, label %if.end31.if.then39_crit_edge, label %if.end31.cleanup_crit_edge, !prof !240

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31.if.then39_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

if.then39:                                        ; preds = %if.end31.if.then39_crit_edge, %if.end16.if.then39_crit_edge
  %ret.069 = phi i32 [ %call30, %if.end31.if.then39_crit_edge ], [ %call21, %if.end16.if.then39_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call13, i1 noundef zeroext true)
  br label %cleanup

error_out:                                        ; preds = %if.end8.error_out_crit_edge, %if.end5.error_out_crit_edge, %if.end.error_out_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.error_out_crit_edge ], [ %call6, %if.end5.error_out_crit_edge ], [ -12, %if.end8.error_out_crit_edge ]
  call void @pipe_unlock(ptr noundef %pipe) #14
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.then39, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_out ], [ -22, %entry.cleanup_crit_edge ], [ %ret.069, %if.then39 ], [ %call30, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sd) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sgl) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @will_read_block(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %guest_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %0 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %inbuf_lock.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %inbuf_lock.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #14
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len.i.i, align 4, !annotation !242
  %inbuf.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inbuf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.port_has_data.exit.thread_crit_edge

if.end.port_has_data.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %port_has_data.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %in_vq.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %in_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_vq.i.i, align 4
  %call.i.i = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len.i.i) #14
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %land.rhs, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i, align 4
  %11 = call i32 @llvm.umin.i32(i32 %8, i32 %10) #14
  %len4.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len4.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.port_buffer, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %offset.i.i, align 4
  %bytes_received.i.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bytes_received.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_received.i.i, align 4
  %add.i.i = add i32 %15, %8
  store i32 %add.i.i, ptr %bytes_received.i.i, align 4
  br label %port_has_data.exit.thread

port_has_data.exit.thread:                        ; preds = %if.then3.i.i, %if.end.port_has_data.exit.thread_crit_edge
  %retval.0.i.i.ph = phi ptr [ %call.i.i, %if.then3.i.i ], [ %4, %if.end.port_has_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  %16 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i.ph, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i) #14
  br label %return

land.rhs:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  %17 = ptrtoint ptr %inbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %inbuf.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %inbuf_lock.i, i32 noundef %call2.i) #14
  %host_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 18
  %18 = ptrtoint ptr %host_connected to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %host_connected, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1 = icmp ne i8 %19, 0
  br label %return

return:                                           ; preds = %land.rhs, %port_has_data.exit.thread, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool1, %land.rhs ], [ false, %port_has_data.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_port_writable(ptr noundef %port, i1 noundef zeroext %nonblock) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @will_write_block(ptr noundef %port)
  br i1 %call, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then:                                          ; preds = %entry
  br i1 %nonblock, label %if.then.cleanup24_crit_edge, label %if.end

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup24

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 794) #14
  %call5 = tail call fastcc zeroext i1 @will_write_block(ptr noundef %port)
  br i1 %call5, label %if.then6, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %waitqueue = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 13
  %call843 = call i32 @prepare_to_wait_event(ptr noundef %waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call944 = call fastcc zeroext i1 @will_write_block(ptr noundef %port)
  br i1 %call944, label %if.then6.if.end11_crit_edge, label %if.then6.if.end16.thread_crit_edge

if.then6.if.end16.thread_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.thread

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  br label %if.end11

if.end11:                                         ; preds = %cleanup.if.end11_crit_edge, %if.then6.if.end11_crit_edge
  %call845 = phi i32 [ %call8, %cleanup.if.end11_crit_edge ], [ %call843, %if.then6.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call845)
  %tobool12.not = icmp eq i32 %call845, 0
  br i1 %tobool12.not, label %if.end14, label %if.end16

if.end14:                                         ; preds = %if.end11
  %1 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %6, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #14
  %7 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %12, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  %13 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end14.if.end.i.i.i_crit_edge

if.end14.if.end.i.i.i_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  call void @debug_check_no_locks_held() #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end14.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.76, i32 noundef 57) #14
  %19 = call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %23 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %freezing.exit.i.i.i.i, !prof !239

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %22) #14
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.cleanup_crit_edge, !prof !240

freezing.exit.i.i.i.i.cleanup_crit_edge:          ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call9 = call fastcc zeroext i1 @will_write_block(ptr noundef %port)
  br i1 %call9, label %cleanup.if.end11_crit_edge, label %cleanup.if.end16.thread_crit_edge

cleanup.if.end16.thread_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.thread

cleanup.if.end11_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end16.thread:                                  ; preds = %cleanup.if.end16.thread_crit_edge, %if.then6.if.end16.thread_crit_edge
  call void @finish_wait(ptr noundef %waitqueue, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end20

if.end16:                                         ; preds = %if.end11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call845)
  %cmp = icmp slt i32 %call845, 0
  br i1 %cmp, label %if.end16.cleanup24_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end16.cleanup24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup24

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end16.thread, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %guest_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %24 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21.not = icmp eq i8 %25, 0
  %. = select i1 %tobool21.not, i32 -19, i32 0
  br label %cleanup24

cleanup24:                                        ; preds = %if.end20, %if.end16.cleanup24_crit_edge, %if.then.cleanup24_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup24_crit_edge ], [ %call845, %if.end16.cleanup24_crit_edge ], [ %., %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @will_write_block(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %guest_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 19
  %0 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %guest_connected, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_connected = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 18
  %2 = ptrtoint ptr %host_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %host_connected, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %outvq_lock = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %outvq_lock) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %portdev.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %portdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %portdev.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end3.reclaim_consumed_buffers.exit_crit_edge, label %while.cond.preheader.i

if.end3.reclaim_consumed_buffers.exit_crit_edge:  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.cond.preheader.i:                           ; preds = %if.end3
  %out_vq.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 6
  %7 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_vq.i, align 4
  %call5.i = call ptr @virtqueue_get_buf(ptr noundef %8, ptr noundef nonnull %len.i) #14
  %tobool1.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool1.not6.i, label %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %outvq_full.i = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call7.i = phi ptr [ %call5.i, %while.body.lr.ph.i ], [ %call.i, %while.body.i.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call7.i, i1 noundef zeroext false) #14
  %9 = ptrtoint ptr %outvq_full.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %outvq_full.i, align 4
  %10 = ptrtoint ptr %out_vq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_vq.i, align 4
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %11, ptr noundef nonnull %len.i) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %while.body.i.reclaim_consumed_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.reclaim_consumed_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %reclaim_consumed_buffers.exit

reclaim_consumed_buffers.exit:                    ; preds = %while.body.i.reclaim_consumed_buffers.exit_crit_edge, %while.cond.preheader.i.reclaim_consumed_buffers.exit_crit_edge, %if.end3.reclaim_consumed_buffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  %outvq_full = getelementptr inbounds %struct.port, ptr %port, i32 0, i32 17
  %12 = ptrtoint ptr %outvq_full to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %outvq_full, align 4, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4 = icmp ne i8 %13, 0
  call void @_raw_spin_unlock_irq(ptr noundef %outvq_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %reclaim_consumed_buffers.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool4, %reclaim_consumed_buffers.exit ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__splice_from_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pipe_to_sg(ptr noundef %pipe, ptr noundef %buf, ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %size = getelementptr inbounds %struct.sg_list, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %try_steal.i = getelementptr inbounds %struct.pipe_buf_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %try_steal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %try_steal.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %pipe_buf_try_steal.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

pipe_buf_try_steal.exit:                          ; preds = %if.end
  %call.i = tail call zeroext i1 %9(ptr noundef %pipe, ptr noundef %buf) #14
  br i1 %call.i, label %if.then1, label %pipe_buf_try_steal.exit.if.else_crit_edge

pipe_buf_try_steal.exit.if.else_crit_edge:        ; preds = %pipe_buf_try_steal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then1:                                         ; preds = %pipe_buf_try_steal.exit
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !239

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %17 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !240

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.77) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #14, !srcloc !266
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #14, !srcloc !267
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@pipe_to_sg, %if.then.i.i.i.i)) #14
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !251

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %16, i32 noundef 1) #14
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  tail call void @unlock_page(ptr noundef %21) #14
  %len3 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 2
  %22 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len3, align 4
  %len4 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %24 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len4, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  %sg = getelementptr inbounds %struct.sg_list, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %28, i32 %30
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %offset8 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %33 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset8, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %32 to i32
  %and2.i.i = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i69 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i69, label %do.body11.i.i, label %do.body5.i.i, !prof !239

do.body5.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !268
  unreachable

do.body11.i.i:                                    ; preds = %get_page.exit
  %and.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !239

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !269
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i70 = and i32 %36, 3
  %or.i.i = or i32 %and.i.i70, %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %28, i32 %30, i32 1
  %39 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %34, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %28, i32 %30, i32 2
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %26, ptr %length.i, align 4
  br label %if.end30

if.else:                                          ; preds = %pipe_buf_try_steal.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.else.cleanup34_crit_edge, label %if.end12

if.else.cleanup34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup34

if.end12:                                         ; preds = %if.else
  %pos = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 4
  %41 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pos, align 8
  %43 = trunc i64 %42 to i32
  %conv = and i32 %43, 4095
  %len13 = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %44 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len13, align 4
  %add = add i32 %conv, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp14 = icmp ugt i32 %add, 4096
  %sub = sub nuw nsw i32 4096, %conv
  %spec.select = select i1 %cmp14, i32 %sub, i32 %45
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %48 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %48, 512
  %49 = tail call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !270
  %53 = tail call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i1.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !271
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %or.i) #14
  %call20 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #14
  %add.ptr = getelementptr i8, ptr %call20, i32 %conv
  %offset21 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %59 = ptrtoint ptr %offset21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset21, align 4
  %add.ptr22 = getelementptr i8, ptr %call.i.i, i32 %60
  %61 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr22, i32 %spec.select)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !272
  %62 = tail call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i1.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 213
  %66 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %67, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !273
  %68 = tail call i32 @llvm.read_register.i32(metadata !229) #14
  %and.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i71 = add i32 %71, -1
  store volatile i32 %sub.i.i71, ptr %preempt_count.i.i.i, align 4
  %sg26 = getelementptr inbounds %struct.sg_list, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %sg26 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sg26, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %1, align 4
  %arrayidx28 = getelementptr %struct.scatterlist, ptr %73, i32 %75
  %76 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx28, align 4
  %78 = ptrtoint ptr %call38.i.i.i to i32
  %and2.i.i72 = and i32 %78, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %and2.i.i72, 0
  br i1 %tobool.not.i.i73, label %do.body11.i.i77, label %do.body5.i.i74, !prof !239

do.body5.i.i74:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !268
  unreachable

do.body11.i.i77:                                  ; preds = %if.end12
  %and.i.i.i75 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i75)
  %tobool.i.not.i.i76 = icmp eq i32 %and.i.i.i75, 0
  br i1 %tobool.i.not.i.i76, label %cleanup, label %do.body19.i.i78, !prof !239

do.body19.i.i78:                                  ; preds = %do.body11.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !269
  unreachable

cleanup:                                          ; preds = %do.body11.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  %and.i.i79 = and i32 %77, 3
  %or.i.i80 = or i32 %and.i.i79, %78
  %79 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i.i80, ptr %arrayidx28, align 4
  %offset1.i81 = getelementptr %struct.scatterlist, ptr %73, i32 %75, i32 1
  %80 = ptrtoint ptr %offset1.i81 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv, ptr %offset1.i81, align 4
  %length.i82 = getelementptr %struct.scatterlist, ptr %73, i32 %75, i32 2
  %81 = ptrtoint ptr %length.i82 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select, ptr %length.i82, align 4
  br label %if.end30

if.end30:                                         ; preds = %cleanup, %sg_set_page.exit
  %len.2 = phi i32 [ %26, %sg_set_page.exit ], [ %spec.select, %cleanup ]
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %1, align 4
  %len32 = getelementptr inbounds %struct.sg_list, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len32, align 4
  %add33 = add i32 %85, %len.2
  store i32 %add33, ptr %len32, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %if.end30, %if.else.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ %len.2, %if.end30 ], [ 0, %entry.cleanup34_crit_edge ], [ -12, %if.else.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @port_debugfs_show, ptr noundef %1) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %name = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.80, ptr %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull %spec.select) #14
  %guest_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %guest_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %guest_connected, align 2, !range !254
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, i32 noundef %6) #14
  %host_connected = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %host_connected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %host_connected, align 1, !range !254
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %9) #14
  %outvq_full = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %outvq_full to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %outvq_full, align 4, !range !254
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, i32 noundef %12) #14
  %stats = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stats, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i32 noundef %14) #14
  %bytes_received = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %bytes_received to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes_received, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef %16) #14
  %bytes_discarded = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %bytes_discarded to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes_discarded, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.86, i32 noundef %18) #14
  %hvc.i = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %hvc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hvc.i, align 4
  %tobool.not.i.not = icmp eq ptr %20, null
  %cond10 = select i1 %tobool.not.i.not, ptr @.str.89, ptr @.str.88
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, ptr noundef nonnull %cond10) #14
  %vtermno = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %vtermno to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vtermno, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.90, i32 noundef %22) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_break_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_vqs(ptr nocapture noundef readonly %portdev) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 8
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %vqs = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %vq.021 = load ptr, ptr %vqs, align 4
  %cmp.not23 = icmp eq ptr %vq.021, %vqs
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.loopexit:                                ; preds = %while.body.for.cond.loopexit_crit_edge, %flush_bufs.exit.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %vq.024 to i32
  call void @__asan_load4_noabort(i32 %3)
  %vq.0 = load ptr, ptr %vq.024, align 4
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %vqs2 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 10
  %cmp.not = icmp eq ptr %vq.0, %vqs2
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %vq.024 = phi ptr [ %vq.0, %for.cond.loopexit.for.body_crit_edge ], [ %vq.021, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #14
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %len.i, align 4, !annotation !242
  %call2.i = call ptr @virtqueue_get_buf(ptr noundef %vq.024, ptr noundef nonnull %len.i) #14
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %for.body.flush_bufs.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.flush_bufs.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %flush_bufs.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %for.body.while.body.i_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call4.i, i1 noundef zeroext true) #14
  %call.i = call ptr @virtqueue_get_buf(ptr noundef %vq.024, ptr noundef nonnull %len.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.flush_bufs.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.flush_bufs.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flush_bufs.exit

flush_bufs.exit:                                  ; preds = %while.body.i.flush_bufs.exit_crit_edge, %for.body.flush_bufs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #14
  %call18 = call ptr @virtqueue_detach_unused_buf(ptr noundef %vq.024) #14
  %tobool.not19 = icmp eq ptr %call18, null
  br i1 %tobool.not19, label %flush_bufs.exit.for.cond.loopexit_crit_edge, label %flush_bufs.exit.while.body_crit_edge

flush_bufs.exit.while.body_crit_edge:             ; preds = %flush_bufs.exit
  br label %while.body

flush_bufs.exit.for.cond.loopexit_crit_edge:      ; preds = %flush_bufs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

while.body:                                       ; preds = %while.body.while.body_crit_edge, %flush_bufs.exit.while.body_crit_edge
  %call20 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call18, %flush_bufs.exit.while.body_crit_edge ]
  call fastcc void @free_buf(ptr noundef nonnull %call20, i1 noundef zeroext true)
  %call = call ptr @virtqueue_detach_unused_buf(ptr noundef %vq.024) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.for.cond.loopexit_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.for.cond.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %5, %for.cond.loopexit.for.end_crit_edge ]
  %config = getelementptr inbounds %struct.virtio_device, ptr %.lcssa, i32 0, i32 8
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %del_vqs, align 4
  call void %10(ptr noundef %.lcssa) #14
  %in_vqs = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 12
  %11 = ptrtoint ptr %in_vqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_vqs, align 4
  call void @kfree(ptr noundef %12) #14
  %out_vqs = getelementptr inbounds %struct.ports_device, ptr %portdev, i32 0, i32 13
  %13 = ptrtoint ptr %out_vqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_vqs, align 4
  call void @kfree(ptr noundef %14) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !133, !135, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !205, !207, !209, !211, !213, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228}
!llvm.named.register.sp = !{!229}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @__initcall__kmod_virtio_console__260_2293_init6, !1, !"__initcall__kmod_virtio_console__260_2293_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/virtio_console.c", i32 2293, i32 1}
!2 = !{ptr @__exitcall_fini, !3, !"__exitcall_fini", i1 false, i1 false}
!3 = !{!"../drivers/char/virtio_console.c", i32 2294, i32 1}
!4 = !{ptr @__UNIQUE_ID_description261, !5, !"__UNIQUE_ID_description261", i1 false, i1 false}
!5 = !{!"../drivers/char/virtio_console.c", i32 2296, i32 1}
!6 = !{ptr @__UNIQUE_ID_file262, !7, !"__UNIQUE_ID_file262", i1 false, i1 false}
!7 = !{!"../drivers/char/virtio_console.c", i32 2297, i32 1}
!8 = !{ptr @__UNIQUE_ID_license263, !7, !"__UNIQUE_ID_license263", i1 false, i1 false}
!9 = !{ptr @early_put_chars, !10, !"early_put_chars", i1 false, i1 false}
!10 = !{!"../drivers/char/virtio_console.c", i32 241, i32 14}
!11 = !{ptr @hv_ops, !12, !"hv_ops", i1 false, i1 false}
!12 = !{!"../drivers/char/virtio_console.c", i32 1203, i32 28}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/virtio_console.c", i32 68, i32 8}
!15 = !{ptr @pdrvdata_lock, !14, !"pdrvdata_lock", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/virtio_console.c", i32 697, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fill_readbuf._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @fill_readbuf._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/mm.h", i32 717, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/virtio_console.c", i32 355, i32 8}
!35 = !{ptr @dma_bufs_lock, !34, !"dma_bufs_lock", i1 false, i1 false}
!36 = !{ptr @pending_free_dma_bufs, !37, !"pending_free_dma_bufs", i1 false, i1 false}
!37 = !{!"../drivers/char/virtio_console.c", i32 356, i32 8}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/virtio_console.c", i32 2226, i32 17}
!40 = !{ptr @virtio_console, !41, !"virtio_console", i1 false, i1 false}
!41 = !{!"../drivers/char/virtio_console.c", i32 2223, i32 29}
!42 = !{ptr @id_table, !43, !"id_table", i1 false, i1 false}
!43 = !{!"../drivers/char/virtio_console.c", i32 2128, i32 38}
!44 = !{ptr @features, !45, !"features", i1 false, i1 false}
!45 = !{!"../drivers/char/virtio_console.c", i32 2134, i32 27}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/virtio_console.c", i32 2011, i32 3}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @virtcons_probe._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @virtcons_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/virtio_console.c", i32 2029, i32 42}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/virtio_console.c", i32 2032, i32 3}
!56 = !{ptr @virtcons_probe._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @virtcons_probe._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/virtio_console.c", i32 2049, i32 4}
!60 = !{ptr @virtcons_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @virtcons_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/virtio_console.c", i32 2060, i32 3}
!64 = !{ptr @virtcons_probe._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @virtcons_probe._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @virtcons_probe.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/char/virtio_console.c", i32 2064, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @virtcons_probe.__key.26, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/char/virtio_console.c", i32 2070, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @virtcons_probe.__key.28, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/char/virtio_console.c", i32 2071, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @virtcons_probe.__key.30, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/char/virtio_console.c", i32 2074, i32 3}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @virtcons_probe.__key.32, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/char/virtio_console.c", i32 2075, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/char/virtio_console.c", i32 2079, i32 4}
!83 = !{ptr @virtcons_probe._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @virtcons_probe._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @portdev_fops, !86, !"portdev_fops", i1 false, i1 false}
!86 = !{!"../drivers/char/virtio_console.c", i32 1929, i32 37}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/char/virtio_console.c", i32 1874, i32 16}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/virtio_console.c", i32 1875, i32 20}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/char/virtio_console.c", i32 1881, i32 17}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/virtio_console.c", i32 1882, i32 21}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/virtio_console.c", i32 529, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @discard_port_data._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @discard_port_data._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/char/virtio_console.c", i32 1720, i32 4}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @control_work_handler._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @control_work_handler._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/char/virtio_console.c", i32 1577, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @handle_control_message.__UNIQUE_ID_ddebug256, !106, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/char/virtio_console.c", i32 1585, i32 4}
!111 = !{ptr @handle_control_message.__UNIQUE_ID_ddebug257, !110, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/char/virtio_console.c", i32 1592, i32 4}
!114 = !{ptr @handle_control_message._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @handle_control_message._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/char/virtio_console.c", i32 1669, i32 4}
!118 = !{ptr @handle_control_message._entry.49, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @handle_control_message._entry_ptr.51, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/char/virtio_console.c", i32 1684, i32 4}
!122 = !{ptr @handle_control_message._entry.52, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @handle_control_message._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/char/virtio_console.c", i32 1252, i32 3}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @init_port_console._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @init_port_console._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @port_attribute_group, !130, !"port_attribute_group", i1 false, i1 false}
!130 = !{!"../drivers/char/virtio_console.c", i32 1293, i32 37}
!131 = !{ptr @port_sysfs_entries, !132, !"port_sysfs_entries", i1 false, i1 false}
!132 = !{!"../drivers/char/virtio_console.c", i32 1288, i32 26}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/char/virtio_console.c", i32 1286, i32 8}
!135 = !{ptr @dev_attr_name, !134, !"dev_attr_name", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/char/virtio_console.c", i32 1283, i32 25}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/char/virtio_console.c", i32 1394, i32 3}
!140 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @add_port._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @add_port._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/char/virtio_console.c", i32 1403, i32 3}
!145 = !{ptr @add_port._entry.61, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @add_port._entry_ptr.63, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/char/virtio_console.c", i32 1408, i32 19}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/char/virtio_console.c", i32 1412, i32 3}
!151 = !{ptr @add_port._entry.65, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @add_port._entry_ptr.67, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @add_port.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/char/virtio_console.c", i32 1418, i32 2}
!155 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @add_port.__key.69, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/char/virtio_console.c", i32 1419, i32 2}
!158 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @add_port.__key.71, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/char/virtio_console.c", i32 1420, i32 2}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/char/virtio_console.c", i32 1428, i32 3}
!164 = !{ptr @add_port._entry.73, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @add_port._entry_ptr.75, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @port_fops, !167, !"port_fops", i1 false, i1 false}
!167 = !{!"../drivers/char/virtio_console.c", i32 1097, i32 37}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!174 = !{ptr @port_debugfs_fops, !175, !"port_debugfs_fops", i1 false, i1 false}
!175 = !{!"../drivers/char/virtio_console.c", i32 1316, i32 1}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/char/virtio_console.c", i32 1302, i32 16}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/char/virtio_console.c", i32 1302, i32 56}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/char/virtio_console.c", i32 1303, i32 16}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/char/virtio_console.c", i32 1304, i32 16}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/char/virtio_console.c", i32 1305, i32 16}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/char/virtio_console.c", i32 1306, i32 16}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/char/virtio_console.c", i32 1307, i32 16}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/char/virtio_console.c", i32 1308, i32 16}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/char/virtio_console.c", i32 1309, i32 16}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/char/virtio_console.c", i32 1310, i32 30}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/char/virtio_console.c", i32 1310, i32 38}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/char/virtio_console.c", i32 1311, i32 16}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/char/virtio_console.c", i32 69, i32 8}
!202 = !{ptr @early_console_added, !201, !"early_console_added", i1 false, i1 false}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/char/virtio_console.c", i32 2241, i32 17}
!205 = !{ptr @virtio_rproc_serial, !206, !"virtio_rproc_serial", i1 false, i1 false}
!206 = !{!"../drivers/char/virtio_console.c", i32 2238, i32 29}
!207 = !{ptr @rproc_serial_id_table, !208, !"rproc_serial_id_table", i1 false, i1 false}
!208 = !{!"../drivers/char/virtio_console.c", i32 2139, i32 38}
!209 = !{ptr @rproc_serial_features, !210, !"rproc_serial_features", i1 false, i1 false}
!210 = !{!"../drivers/char/virtio_console.c", i32 2147, i32 27}
!211 = !{ptr @pdrvdata, !212, !"pdrvdata", i1 false, i1 false}
!212 = !{!"../drivers/char/virtio_console.c", i32 66, i32 33}
!213 = !{ptr @init.__key, !214, !"__key", i1 false, i1 false}
!214 = !{!"../drivers/char/virtio_console.c", i32 2252, i32 19}
!215 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/char/virtio_console.c", i32 2255, i32 3}
!218 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @init._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @init._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/char/virtio_console.c", i32 2265, i32 3}
!223 = !{ptr @init._entry.96, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @init._entry_ptr.98, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/char/virtio_console.c", i32 2270, i32 3}
!227 = !{ptr @init._entry.99, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @init._entry_ptr.101, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{!"sp"}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{!"branch_weights", i32 1, i32 2000}
!241 = !{i64 2154618447, i64 2154618942, i64 2154618484, i64 2154618540, i64 2154618574, i64 2154618598, i64 2154618639, i64 2154618660, i64 2154618688, i64 2154618722}
!242 = !{!"auto-init"}
!243 = !{i64 2152710610, i64 2152710635}
!244 = !{i64 2154606310}
!245 = !{i64 2154606152}
!246 = !{i64 2154249044, i64 2154249536, i64 2154249081, i64 2154249137, i64 2154249171, i64 2154249195, i64 2154249236, i64 2154249257, i64 2154249285, i64 2154249319}
!247 = !{i64 2153677209, i64 2153677692, i64 2153677246, i64 2153677302, i64 2153677336, i64 2153677360, i64 2153677401, i64 2153677422, i64 2153677450, i64 2153677484}
!248 = !{i64 2148644838}
!249 = !{i64 2148559547, i64 2148559579, i64 2148559608, i64 2148559642, i64 2148559673, i64 2148559696}
!250 = !{i64 2148645067}
!251 = !{i64 2148380177, i64 2148380182, i64 2148380195, i64 2148380239, i64 2148380273, i64 2148380294}
!252 = !{i64 2154669415}
!253 = !{i64 2154329317, i64 2154329811, i64 2154329354, i64 2154329410, i64 2154329444, i64 2154329468, i64 2154329509, i64 2154329530, i64 2154329558, i64 2154329592}
!254 = !{i8 0, i8 2}
!255 = !{i64 2154605503}
!256 = !{i64 2154605345}
!257 = !{i64 2148645917}
!258 = !{i64 2148560357, i64 2148560389, i64 2148560418, i64 2148560452, i64 2148560483, i64 2148560506}
!259 = !{i64 2149968220}
!260 = !{i64 2153080810}
!261 = !{i64 2152709929, i64 2152709954}
!262 = !{i64 5205484}
!263 = !{i64 5205681}
!264 = !{i64 2152690914}
!265 = !{i64 2148557892, i64 2148557924, i64 2148557953, i64 2148557987, i64 2148558018, i64 2148558041}
!266 = !{i64 2153697121, i64 2153697605, i64 2153697158, i64 2153697214, i64 2153697248, i64 2153697272, i64 2153697313, i64 2153697334, i64 2153697362, i64 2153697396}
!267 = !{i64 2148556362, i64 2148556388, i64 2148556417, i64 2148556451, i64 2148556482, i64 2148556505}
!268 = !{i64 2154245486, i64 2154245978, i64 2154245523, i64 2154245579, i64 2154245613, i64 2154245637, i64 2154245678, i64 2154245699, i64 2154245727, i64 2154245761}
!269 = !{i64 2154247096, i64 2154247588, i64 2154247133, i64 2154247189, i64 2154247223, i64 2154247247, i64 2154247288, i64 2154247309, i64 2154247337, i64 2154247371}
!270 = !{i64 2154117619}
!271 = !{i64 2152712746}
!272 = !{i64 2152712953}
!273 = !{i64 2154120390}
