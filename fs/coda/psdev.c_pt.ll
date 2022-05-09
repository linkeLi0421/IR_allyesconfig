; ModuleID = '/llk/IR_all_yes/fs/coda/psdev.c_pt.bc'
source_filename = "../fs/coda/psdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.venus_comm = type { i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.upc_req = type { %struct.list_head, ptr, i16, i16, i16, i16, i32, %struct.wait_queue_head }
%struct.coda_in_hdr = type { i32, i32, i32, i32, i32 }
%struct.coda_out_hdr = type { i32, i32, i32 }
%struct.coda_open_by_fd_out = type { %struct.coda_out_hdr, i32, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }

@coda_timeout = dso_local global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author299 = internal constant [39 x i8] c"coda.author=Jan Harkes, Peter J. Braam\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [60 x i8] c"coda.description=Coda Distributed File System VFS interface\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [27 x i8] c"coda.alias=char-major-67-*\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [23 x i8] c"coda.file=fs/coda/coda\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [17 x i8] c"coda.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version304 = internal constant [17 x i8] c"coda.version=7.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"coda\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@coda_fs_type = external dso_local global %struct.file_system_type, align 4
@exit_coda._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014coda: failed to unregister filesystem\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exit_coda\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/coda/psdev.c\00", [16 x i8] zeroinitializer }, align 32
@exit_coda._entry_ptr = internal global ptr @exit_coda._entry, section ".printk_index", align 4
@coda_psdev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_coda__305_436_init_coda6 = internal global ptr @init_coda, section ".initcall6.init", align 4
@__exitcall_exit_coda = internal global ptr @exit_coda, section ".exitcall.exit", align 4
@coda_hard = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@coda_comms = dso_local global { [5 x %struct.venus_comm], [196 x i8] } zeroinitializer, align 32
@init_coda._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014coda: Problem (%d) in init_coda_psdev\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_coda\00", [22 x i8] zeroinitializer }, align 32
@init_coda._entry_ptr = internal global ptr @init_coda._entry, section ".printk_index", align 4
@init_coda._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014coda: failed to register filesystem!\0A\00", [56 x i8] zeroinitializer }, align 32
@init_coda._entry_ptr.10 = internal global ptr @init_coda._entry.8, section ".printk_index", align 4
@coda_psdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @coda_psdev_read, ptr @coda_psdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @coda_psdev_poll, ptr @coda_psdev_ioctl, ptr null, ptr null, i32 0, ptr @coda_psdev_open, ptr null, ptr @coda_psdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_coda_psdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013coda: %s: unable to get major %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_coda_psdev\00", [16 x i8] zeroinitializer }, align 32
@init_coda_psdev._entry_ptr = internal global ptr @init_coda_psdev._entry, section ".printk_index", align 4
@init_coda_psdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@init_coda_psdev.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&coda_comms[i])->vc_mutex\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cfs%d\00", [26 x i8] zeroinitializer }, align 32
@coda_psdev_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014coda: %s: Venus read %ld bytes of %d in message\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"coda_psdev_read\00", [16 x i8] zeroinitializer }, align 32
@coda_psdev_read._entry_ptr = internal global ptr @coda_psdev_read._entry, section ".printk_index", align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@coda_psdev_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014coda: coda_downcall opc %d uniq %d, not enough!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"coda_psdev_write\00", [47 x i8] zeroinitializer }, align 32
@coda_psdev_write._entry_ptr = internal global ptr @coda_psdev_write._entry, section ".printk_index", align 4
@coda_psdev_write._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014coda: downcall opc %d, uniq %d, too much!\00", [52 x i8] zeroinitializer }, align 32
@coda_psdev_write._entry_ptr.26 = internal global ptr @coda_psdev_write._entry.24, section ".printk_index", align 4
@coda_psdev_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014coda: %s: coda_downcall error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@coda_psdev_write._entry_ptr.29 = internal global ptr @coda_psdev_write._entry.27, section ".printk_index", align 4
@coda_psdev_write._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.5, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014coda: %s: msg (%d, %d) not found\0A\00", [60 x i8] zeroinitializer }, align 32
@coda_psdev_write._entry_ptr.32 = internal global ptr @coda_psdev_write._entry.30, section ".printk_index", align 4
@coda_psdev_write._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.5, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014coda: %s: too much cnt: %d, cnt: %ld, opc: %d, uniq: %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@coda_psdev_write._entry_ptr.35 = internal global ptr @coda_psdev_write._entry.33, section ".printk_index", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@coda_psdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vcp->vc_waitq\00", [17 x i8] zeroinitializer }, align 32
@coda_psdev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014coda: %s: Not open.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coda_psdev_release\00", [45 x i8] zeroinitializer }, align 32
@coda_psdev_release._entry_ptr = internal global ptr @coda_psdev_release._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"coda_timeout\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 48, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 387, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 427, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"coda_psdev_class\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 52, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"coda_hard\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 47, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"coda_comms\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 51, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 399, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 405, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"coda_psdev_fops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 345, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 360, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 364, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 370, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 372, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 246, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 230, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 214, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 174, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 115, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 121, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 137, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 159, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 167, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 292, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [19 x i8] c"../fs/coda/psdev.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 311, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__UNIQUE_ID_version304, ptr @__exitcall_exit_coda, ptr @__initcall__kmod_coda__305_436_init_coda6, ptr @__modver_attr, ptr @coda_psdev_read._entry, ptr @coda_psdev_read._entry_ptr, ptr @coda_psdev_release._entry, ptr @coda_psdev_release._entry_ptr, ptr @coda_psdev_write._entry, ptr @coda_psdev_write._entry.24, ptr @coda_psdev_write._entry.27, ptr @coda_psdev_write._entry.30, ptr @coda_psdev_write._entry.33, ptr @coda_psdev_write._entry_ptr, ptr @coda_psdev_write._entry_ptr.26, ptr @coda_psdev_write._entry_ptr.29, ptr @coda_psdev_write._entry_ptr.32, ptr @coda_psdev_write._entry_ptr.35, ptr @exit_coda, ptr @exit_coda._entry, ptr @exit_coda._entry_ptr, ptr @init_coda._entry, ptr @init_coda._entry.8, ptr @init_coda._entry_ptr, ptr @init_coda._entry_ptr.10, ptr @init_coda_psdev._entry, ptr @init_coda_psdev._entry_ptr, ptr @coda_timeout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @coda_psdev_class, ptr @coda_hard, ptr @coda_comms, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @coda_psdev_fops, ptr @.str.11, ptr @.str.12, ptr @init_coda_psdev.__key, ptr @init_coda_psdev.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @coda_psdev_open.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_coda._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_hard to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_comms to i32), i32 860, i32 1056, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_coda._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_coda._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_coda_psdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_coda_psdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_coda_psdev.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_write._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_write._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_write._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_psdev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_coda() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @coda_fs_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.for.body.preheader_crit_edge, label %do.end

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %0 = load ptr, ptr @coda_psdev_class, align 4
  %or = or i32 %i.05, 70254592
  tail call void @device_destroy(ptr noundef %0, i32 noundef %or) #6
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @coda_psdev_class, align 4
  tail call void @class_destroy(ptr noundef %1) #6
  tail call void @__unregister_chrdev(i32 noundef 67, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.1) #6
  tail call void @coda_sysctl_clean() #6
  tail call void @coda_destroy_inodecache() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_sysctl_clean() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_destroy_inodecache() local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_coda() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coda_init_inodecache() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @init_coda_psdev() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call1) #9
  br label %out1

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @register_filesystem(ptr noundef nonnull @coda_fs_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end11
  %i.022 = phi i32 [ 0, %do.end11 ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = load ptr, ptr @coda_psdev_class, align 4
  %or = or i32 %i.022, 70254592
  tail call void @device_destroy(ptr noundef %0, i32 noundef %or) #6
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @coda_psdev_class, align 4
  tail call void @class_destroy(ptr noundef %1) #6
  tail call void @__unregister_chrdev(i32 noundef 67, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.1) #6
  tail call void @coda_sysctl_clean() #6
  br label %out1

out1:                                             ; preds = %for.end, %do.end
  %status.0 = phi i32 [ %call1, %do.end ], [ %call6, %for.end ]
  tail call void @coda_destroy_inodecache() #6
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %status.0, %out1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @coda_init_inodecache() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_coda_psdev() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 67, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull @coda_psdev_fops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 67) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_coda_psdev.__key) #6
  store ptr %call3, ptr @coda_psdev_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.do.body8_crit_edge

if.end.do.body8_crit_edge:                        ; preds = %if.end
  br label %do.body8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call3 to i32
  tail call void @__unregister_chrdev(i32 noundef 67, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.1) #6
  br label %cleanup

do.body8:                                         ; preds = %do.body8.do.body8_crit_edge, %if.end.do.body8_crit_edge
  %i.017 = phi i32 [ %inc, %do.body8.do.body8_crit_edge ], [ 0, %if.end.do.body8_crit_edge ]
  %vc_mutex = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %i.017, i32 6
  tail call void @__mutex_init(ptr noundef %vc_mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_coda_psdev.__key.13) #6
  %1 = load ptr, ptr @coda_psdev_class, align 4
  %or = or i32 %i.017, 70254592
  %call11 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %1, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef %i.017) #6
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %do.body8.do.body8_crit_edge

do.body8.do.body8_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

for.end:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @coda_sysctl_init() #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %0, %if.then5 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_sysctl_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_psdev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %off) #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !103) #6
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp = icmp eq i32 %nbytes, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %14, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_waitq = getelementptr inbounds %struct.venus_comm, ptr %14, i32 0, i32 1
  call void @add_wait_queue(ptr noundef %vc_waitq, ptr noundef nonnull %wait) #6
  br label %__here

__here:                                           ; preds = %if.end
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@coda_psdev_read, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !113
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %vc_pending = getelementptr inbounds %struct.venus_comm, ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %vc_pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %vc_pending, align 4
  %cmp.i.not238 = icmp eq ptr %21, %vc_pending
  br i1 %cmp.i.not238, label %__here.while.body_crit_edge, label %__here.__here129_crit_edge

__here.__here129_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here129

__here.while.body_crit_edge:                      ; preds = %__here
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %__here.while.body_crit_edge
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end70, label %while.body.__here129_crit_edge

while.body.__here129_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here129

if.end70:                                         ; preds = %while.body
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end70.__here129_crit_edge, !prof !114

if.end70.__here129_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here129

signal_pending.exit:                              ; preds = %if.end70
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool74.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool74.not, label %if.end76, label %signal_pending.exit.__here129_crit_edge

signal_pending.exit.__here129_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here129

if.end76:                                         ; preds = %signal_pending.exit
  call void @mutex_unlock(ptr noundef %vc_mutex) #6
  call void @schedule() #6
  call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %33 = ptrtoint ptr %vc_pending to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %vc_pending, align 4
  %cmp.i.not = icmp eq ptr %34, %vc_pending
  br i1 %cmp.i.not, label %if.end76.while.body_crit_edge, label %if.end76.__here129_crit_edge

if.end76.__here129_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here129

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

__here129:                                        ; preds = %if.end76.__here129_crit_edge, %signal_pending.exit.__here129_crit_edge, %if.end70.__here129_crit_edge, %while.body.__here129_crit_edge, %__here.__here129_crit_edge
  %cmp.i.not.lcssa = phi i1 [ false, %__here.__here129_crit_edge ], [ true, %if.end70.__here129_crit_edge ], [ false, %if.end76.__here129_crit_edge ], [ true, %while.body.__here129_crit_edge ], [ true, %signal_pending.exit.__here129_crit_edge ]
  %retval2.0 = phi i32 [ 0, %__here.__here129_crit_edge ], [ -512, %if.end70.__here129_crit_edge ], [ 0, %if.end76.__here129_crit_edge ], [ -11, %while.body.__here129_crit_edge ], [ -512, %signal_pending.exit.__here129_crit_edge ]
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change133 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change133 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@coda_psdev_read, %__here129) to i32), ptr %task_state_change133, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %38, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !115
  call void @remove_wait_queue(ptr noundef %vc_waitq, ptr noundef nonnull %wait) #6
  br i1 %cmp.i.not.lcssa, label %out.thread, label %if.end162

out.thread:                                       ; preds = %__here129
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %vc_mutex) #6
  br label %67

if.end162:                                        ; preds = %__here129
  %40 = ptrtoint ptr %vc_pending to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vc_pending, align 4
  %call.i.i227 = call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #6
  br i1 %call.i.i227, label %if.end.i.i228, label %if.end162.list_del.exit_crit_edge

if.end162.list_del.exit_crit_edge:                ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i228:                                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i228, %if.end162.list_del.exit_crit_edge
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %uc_inSize = getelementptr inbounds %struct.upc_req, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %uc_inSize to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %uc_inSize, align 2
  %conv = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %nbytes)
  %cmp168 = icmp ugt i32 %conv, %nbytes
  br i1 %cmp168, label %do.end173, label %list_del.exit.if.end178_crit_edge

list_del.exit.if.end178_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

do.end173:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %nbytes, i32 noundef %conv) #9
  br label %if.end178

if.end178:                                        ; preds = %do.end173, %list_del.exit.if.end178_crit_edge
  %count.0 = phi i32 [ %nbytes, %do.end173 ], [ %conv, %list_del.exit.if.end178_crit_edge ]
  %uc_data = getelementptr inbounds %struct.upc_req, ptr %41, i32 0, i32 1
  %52 = ptrtoint ptr %uc_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %uc_data, align 4
  call void @__check_object_size(ptr noundef %53, i32 noundef %count.0, i1 noundef zeroext true) #6
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end178.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end178.copy_to_user.exit_crit_edge:            ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end178
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.0, i32 -1226833920) #11, !srcloc !116
  %asmresult.i.i = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %53, i32 noundef %count.0) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %53, i32 noundef %count.0) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end178.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count.0, %if.end178.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool180.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool180.not, i32 0, i32 -14
  %uc_flags = getelementptr inbounds %struct.upc_req, ptr %41, i32 0, i32 2
  %55 = ptrtoint ptr %uc_flags to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %uc_flags, align 4
  %57 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool185.not = icmp eq i16 %57, 0
  br i1 %tobool185.not, label %if.then186, label %if.end191

if.then186:                                       ; preds = %copy_to_user.exit
  %or = or i16 %56, 2
  %58 = ptrtoint ptr %uc_flags to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or, ptr %uc_flags, align 4
  %vc_processing = getelementptr inbounds %struct.venus_comm, ptr %14, i32 0, i32 3
  %prev.i229 = getelementptr inbounds %struct.venus_comm, ptr %14, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %prev.i229 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i229, align 4
  %call.i.i230 = call zeroext i1 @__list_add_valid(ptr noundef %41, ptr noundef %60, ptr noundef %vc_processing) #6
  br i1 %call.i.i230, label %if.end.i.i231, label %if.then186.out_crit_edge

if.then186.out_crit_edge:                         ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.i231:                                    ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %prev.i229 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %41, ptr %prev.i229, align 4
  %62 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %vc_processing, ptr %41, align 4
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %41, ptr %60, align 4
  br label %out

if.end191:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %uc_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %uc_data, align 4
  call void @kvfree(ptr noundef %66) #6
  call void @kfree(ptr noundef %41) #6
  br label %out

out:                                              ; preds = %if.end191, %if.end.i.i231, %if.then186.out_crit_edge
  call void @mutex_unlock(ptr noundef %vc_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool194.not = icmp eq i32 %count.0, 0
  br i1 %tobool194.not, label %out._crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %67

67:                                               ; preds = %out._crit_edge, %out.thread
  %retval2.2237 = phi i32 [ %retval2.0, %out.thread ], [ %spec.select, %out._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %67, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval2.2237, %67 ], [ %count.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_psdev_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %off) #4 align 64 {
entry:
  %hdr = alloca %struct.coda_in_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #6
  %2 = getelementptr inbounds %struct.coda_in_hdr, ptr %hdr, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nbytes)
  %cmp = icmp ult i32 %nbytes, 8
  %3 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  br i1 %cmp, label %entry.cleanup106_crit_edge, label %if.end59.i.i

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #11, !srcloc !117
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !114

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 8) #6
  %5 = call i32 @llvm.read_register.i32(metadata !103) #6
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !118
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %buf, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !114

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i187 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i187
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i187)
  br label %cleanup106

if.end3:                                          ; preds = %if.end.i.i
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hdr, align 4
  %11 = add i32 %10, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %if.then7, label %if.end40

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %nbytes)
  %cmp8 = icmp ult i32 %nbytes, 12
  br i1 %cmp8, label %do.end, label %if.end13

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %10, i32 noundef %14) #9
  br label %cleanup106

if.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %nbytes)
  %cmp14 = icmp ugt i32 %nbytes, 152
  br i1 %cmp14, label %do.end18, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %10, i32 noundef %16) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %if.end13.if.end23_crit_edge
  %nbytes.addr.0 = phi i32 [ 152, %do.end18 ], [ %nbytes, %if.end13.if.end23_crit_edge ]
  %call24 = call ptr @vmemdup_user(ptr noundef %buf, i32 noundef %nbytes.addr.0) #6
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call24 to i32
  br label %out.thread

if.end28:                                         ; preds = %if.end23
  %18 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdr, align 4
  %call30 = call i32 @coda_downcall(ptr noundef %1, i32 noundef %19, ptr noundef %call24, i32 noundef %nbytes.addr.0) #6
  call void @kvfree(ptr noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end28.cleanup106_crit_edge, label %do.end35

if.end28.cleanup106_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, i32 noundef %call30) #9
  br label %out.thread

if.end40:                                         ; preds = %if.end3
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_processing = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end40
  %lh.0.in = phi ptr [ %vc_processing, %if.end40 ], [ %lh.0, %for.body.for.cond_crit_edge ]
  %20 = ptrtoint ptr %lh.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %lh.0 = load ptr, ptr %lh.0.in, align 4
  %cmp.i182.not = icmp eq ptr %lh.0, %vc_processing
  br i1 %cmp.i182.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %vc_mutex) #6
  br label %do.end55

for.body:                                         ; preds = %for.cond
  %uc_unique = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 6
  %21 = ptrtoint ptr %uc_unique to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uc_unique, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  %cmp46 = icmp eq i32 %22, %24
  br i1 %cmp46, label %if.then47, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then47:                                        ; preds = %for.body
  %call.i.i183 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lh.0) #6
  br i1 %call.i.i183, label %if.end.i.i184, label %if.then47.for.end_crit_edge

if.then47.for.end_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.i.i184:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lh.0, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %lh.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lh.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i184, %if.then47.for.end_crit_edge
  %31 = ptrtoint ptr %lh.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %lh.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lh.0, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %vc_mutex) #6
  %tobool51.not = icmp eq ptr %lh.0, null
  br i1 %tobool51.not, label %for.end.do.end55_crit_edge, label %if.end60

for.end.do.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

do.end55:                                         ; preds = %for.end.do.end55_crit_edge, %for.end.thread
  %33 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hdr, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, i32 noundef %34, i32 noundef %36) #9
  br label %out.thread

if.end60:                                         ; preds = %for.end
  %uc_outSize = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 4
  %37 = ptrtoint ptr %uc_outSize to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %uc_outSize, align 4
  %conv = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %nbytes)
  %cmp61 = icmp ult i32 %conv, %nbytes
  br i1 %cmp61, label %do.end66, label %if.end60.if.end75_crit_edge

if.end60.if.end75_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hdr, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %nbytes, i32 noundef %40, i32 noundef %42) #9
  %43 = ptrtoint ptr %uc_outSize to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %uc_outSize, align 4
  %conv74 = zext i16 %44 to i32
  br label %if.end75

if.end75:                                         ; preds = %do.end66, %if.end60.if.end75_crit_edge
  %nbytes.addr.1 = phi i32 [ %conv74, %do.end66 ], [ %nbytes, %if.end60.if.end75_crit_edge ]
  %uc_data = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 1
  %45 = ptrtoint ptr %uc_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uc_data, align 4
  call void @__check_object_size(ptr noundef %46, i32 noundef %nbytes.addr.1, i1 noundef zeroext false) #6
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #6
  %call.i.i163 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i163, label %if.end75.if.end.i.i176_crit_edge, label %land.lhs.true.i.i166

if.end75.if.end.i.i176_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i176

land.lhs.true.i.i166:                             ; preds = %if.end75
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %nbytes.addr.1, i32 -1226833920) #11, !srcloc !117
  %asmresult.i.i164 = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i164)
  %cmp.i6.i165 = icmp eq i32 %asmresult.i.i164, 0
  br i1 %cmp.i6.i165, label %if.then.i7.i173, label %land.lhs.true.i.i166.if.end.i.i176_crit_edge, !prof !114

land.lhs.true.i.i166.if.end.i.i176_crit_edge:     ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i176

if.then.i7.i173:                                  ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i167 = call zeroext i1 @__kasan_check_write(ptr noundef %46, i32 noundef %nbytes.addr.1) #6
  %48 = call i32 @llvm.read_register.i32(metadata !103) #6
  %and.i.i.i.i.i.i168 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i168 to ptr
  %cpu_domain.i.i.i.i.i169 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i169) #5, !srcloc !118
  %and.i.i.i.i170 = and i32 %50, -13
  %or.i.i.i.i171 = or i32 %and.i.i.i.i170, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i171) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %call1.i.i.i172 = call i32 @arm_copy_from_user(ptr noundef %46, ptr noundef %buf, i32 noundef %nbytes.addr.1) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  br label %if.end.i.i176

if.end.i.i176:                                    ; preds = %if.then.i7.i173, %land.lhs.true.i.i166.if.end.i.i176_crit_edge, %if.end75.if.end.i.i176_crit_edge
  %res.0.i.i174 = phi i32 [ %nbytes.addr.1, %if.end75.if.end.i.i176_crit_edge ], [ %call1.i.i.i172, %if.then.i7.i173 ], [ %nbytes.addr.1, %land.lhs.true.i.i166.if.end.i.i176_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i174)
  %tobool4.not.i.i175 = icmp eq i32 %res.0.i.i174, 0
  br i1 %tobool4.not.i.i175, label %if.end81, label %if.then11.i.i179, !prof !114

if.then11.i.i179:                                 ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i177 = sub i32 %nbytes.addr.1, %res.0.i.i174
  %add.ptr.i.i178 = getelementptr i8, ptr %46, i32 %sub.i.i177
  %51 = call ptr @memset(ptr %add.ptr.i.i178, i32 0, i32 %res.0.i.i174)
  %uc_flags = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 2
  %52 = ptrtoint ptr %uc_flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %uc_flags, align 4
  %54 = or i16 %53, 8
  store i16 %54, ptr %uc_flags, align 4
  %uc_sleep = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 7
  call void @__wake_up(ptr noundef %uc_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %out.thread

if.end81:                                         ; preds = %if.end.i.i176
  %conv82 = trunc i32 %nbytes.addr.1 to i16
  %55 = ptrtoint ptr %uc_outSize to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv82, ptr %uc_outSize, align 4
  %uc_flags84 = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 2
  %56 = ptrtoint ptr %uc_flags84 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %uc_flags84, align 4
  %58 = or i16 %57, 4
  store i16 %58, ptr %uc_flags84, align 4
  %uc_opcode = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 5
  %59 = ptrtoint ptr %uc_opcode to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %uc_opcode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %60)
  %cmp89 = icmp eq i16 %60, 3
  br i1 %cmp89, label %if.then91, label %if.end81.out_crit_edge

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then91:                                        ; preds = %if.end81
  %61 = ptrtoint ptr %uc_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %uc_data, align 4
  %result = getelementptr inbounds %struct.coda_out_hdr, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool93.not = icmp eq i32 %64, 0
  br i1 %tobool93.not, label %if.then94, label %if.then91.out_crit_edge

if.then91.out_crit_edge:                          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then94:                                        ; preds = %if.then91
  %fd = getelementptr inbounds %struct.coda_open_by_fd_out, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fd, align 4
  %call95 = call ptr @fget(i32 noundef %66) #6
  %fh = getelementptr inbounds %struct.coda_open_by_fd_out, ptr %62, i32 0, i32 2
  %67 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call95, ptr %fh, align 4
  %tobool97.not = icmp eq ptr %call95, null
  br i1 %tobool97.not, label %if.then94.cleanup106_crit_edge, label %if.then94.out_crit_edge

if.then94.out_crit_edge:                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then94.cleanup106_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

out:                                              ; preds = %if.then94.out_crit_edge, %if.then91.out_crit_edge, %if.end81.out_crit_edge
  %uc_sleep103 = getelementptr inbounds %struct.upc_req, ptr %lh.0, i32 0, i32 7
  call void @__wake_up(ptr noundef %uc_sleep103, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1)
  %tobool105.not = icmp eq i32 %nbytes.addr.1, 0
  br i1 %tobool105.not, label %out.out.thread_crit_edge, label %out.cleanup106_crit_edge

out.cleanup106_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %if.then11.i.i179, %do.end55, %do.end35, %if.then26
  %retval1.1197 = phi i32 [ 0, %out.out.thread_crit_edge ], [ %call30, %do.end35 ], [ %17, %if.then26 ], [ -3, %do.end55 ], [ -14, %if.then11.i.i179 ]
  br label %cleanup106

cleanup106:                                       ; preds = %out.thread, %out.cleanup106_crit_edge, %if.then94.cleanup106_crit_edge, %if.end28.cleanup106_crit_edge, %do.end, %if.then11.i.i, %entry.cleanup106_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup106_crit_edge ], [ -9, %if.then94.cleanup106_crit_edge ], [ %retval1.1197, %out.thread ], [ %nbytes.addr.1, %out.cleanup106_crit_edge ], [ -14, %if.then11.i.i ], [ %nbytes.addr.0, %if.end28.cleanup106_crit_edge ], [ %nbytes, %do.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_psdev_poll(ptr noundef %file, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vc_waitq = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %vc_waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %file, ptr noundef nonnull %vc_waitq, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_pending = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vc_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vc_pending, align 4
  %cmp.i.not = icmp eq ptr %5, %vc_pending
  %spec.select = select i1 %cmp.i.not, i32 260, i32 325
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #6
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_psdev_ioctl(ptr nocapture noundef readnone %filp, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073454326, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1073454326
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 79) #6
  %1 = tail call i32 @llvm.read_register.i32(metadata !103) #6
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !118
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %4 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 5, i32 -1226833921) #6, !srcloc !121
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %sw.bb ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_psdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @task_active_pid_ns(ptr noundef %3) #6
  %cmp.not = icmp eq ptr %call1, @init_pid_ns
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %cmp5.not = icmp eq ptr %9, @init_user_ns
  br i1 %cmp5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %10 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_rdev.i, align 8
  %and.i33 = and i32 %11, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i33)
  %cmp10 = icmp ugt i32 %and.i33, 4
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %vc_mutex = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_inuse = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 4
  %12 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then13, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33
  %14 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %vc_inuse, align 4
  %vc_pending = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 2
  %15 = ptrtoint ptr %vc_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %vc_pending, ptr %vc_pending, align 4
  %prev.i = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vc_pending, ptr %prev.i, align 4
  %vc_processing = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 3
  %17 = ptrtoint ptr %vc_processing to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %vc_processing, ptr %vc_processing, align 4
  %prev.i34 = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vc_processing, ptr %prev.i34, align 4
  %vc_waitq = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %vc_waitq, ptr noundef nonnull @.str.36, ptr noundef nonnull @coda_psdev_open.__key) #6
  %vc_sb = getelementptr [5 x %struct.venus_comm], ptr @coda_comms, i32 0, i32 %and.i33, i32 5
  %19 = ptrtoint ptr %vc_sb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vc_sb, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %private_data, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end12.if.end18_crit_edge
  %err.0 = phi i32 [ -16, %if.end12.if.end18_crit_edge ], [ 0, %if.then13 ]
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda_psdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %vc_inuse = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vc_mutex = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %vc_mutex, i32 noundef 0) #6
  %vc_pending = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vc_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vc_pending, align 4
  %cmp.not87 = icmp eq ptr %5, %vc_pending
  br i1 %cmp.not87, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %req.088 = phi ptr [ %tmp.090, %for.inc.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %req.088 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.090 = load ptr, ptr %req.088, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.088) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.088, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %req.088 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req.088, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %req.088 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %req.088, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.088, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %uc_flags = getelementptr inbounds %struct.upc_req, ptr %req.088, i32 0, i32 2
  %15 = ptrtoint ptr %uc_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %uc_flags, align 4
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool11.not = icmp eq i16 %17, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %uc_data = getelementptr inbounds %struct.upc_req, ptr %req.088, i32 0, i32 1
  %18 = ptrtoint ptr %uc_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uc_data, align 4
  tail call void @kvfree(ptr noundef %19) #6
  tail call void @kfree(ptr noundef %req.088) #6
  br label %for.inc

if.end13:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i16 %16, 8
  %20 = ptrtoint ptr %uc_flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or, ptr %uc_flags, align 4
  %uc_sleep = getelementptr inbounds %struct.upc_req, ptr %req.088, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %uc_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then12
  %cmp.not = icmp eq ptr %tmp.090, %vc_pending
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %vc_processing = getelementptr inbounds %struct.venus_comm, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %vc_processing to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vc_processing, align 4
  %cmp34.not91 = icmp eq ptr %22, %vc_processing
  br i1 %cmp34.not91, label %for.end.for.end50_crit_edge, label %for.end.for.body37_crit_edge

for.end.for.body37_crit_edge:                     ; preds = %for.end
  br label %for.body37

for.end.for.end50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.body37:                                       ; preds = %list_del.exit85.for.body37_crit_edge, %for.end.for.body37_crit_edge
  %req.192 = phi ptr [ %tmp.1, %list_del.exit85.for.body37_crit_edge ], [ %22, %for.end.for.body37_crit_edge ]
  %23 = ptrtoint ptr %req.192 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.1 = load ptr, ptr %req.192, align 4
  %call.i.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.192) #6
  br i1 %call.i.i80, label %if.end.i.i83, label %for.body37.list_del.exit85_crit_edge

for.body37.list_del.exit85_crit_edge:             ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit85

if.end.i.i83:                                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i81 = getelementptr inbounds %struct.list_head, ptr %req.192, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i81, align 4
  %26 = ptrtoint ptr %req.192 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req.192, align 4
  %prev1.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i82, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit85

list_del.exit85:                                  ; preds = %if.end.i.i83, %for.body37.list_del.exit85_crit_edge
  %30 = ptrtoint ptr %req.192 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %req.192, align 4
  %prev.i84 = getelementptr inbounds %struct.list_head, ptr %req.192, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i84, align 4
  %uc_flags39 = getelementptr inbounds %struct.upc_req, ptr %req.192, i32 0, i32 2
  %32 = ptrtoint ptr %uc_flags39 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %uc_flags39, align 4
  %34 = or i16 %33, 8
  store i16 %34, ptr %uc_flags39, align 4
  %uc_sleep43 = getelementptr inbounds %struct.upc_req, ptr %req.192, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %uc_sleep43, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %cmp34.not = icmp eq ptr %tmp.1, %vc_processing
  br i1 %cmp34.not, label %list_del.exit85.for.end50_crit_edge, label %list_del.exit85.for.body37_crit_edge

list_del.exit85.for.body37_crit_edge:             ; preds = %list_del.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37

list_del.exit85.for.end50_crit_edge:              ; preds = %list_del.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.end50:                                        ; preds = %list_del.exit85.for.end50_crit_edge, %for.end.for.end50_crit_edge
  %35 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %private_data, align 4
  %36 = ptrtoint ptr %vc_inuse to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_inuse, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %vc_inuse, align 4
  tail call void @mutex_unlock(ptr noundef %vc_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %do.end
  %retval.0 = phi i32 [ 0, %for.end50 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_downcall(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !100, !101, !102}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @coda_timeout, !1, !"coda_timeout", i1 false, i1 false}
!1 = !{!"../fs/coda/psdev.c", i32 48, i32 15}
!2 = !{ptr @__UNIQUE_ID_author299, !3, !"__UNIQUE_ID_author299", i1 false, i1 false}
!3 = !{!"../fs/coda/psdev.c", i32 383, i32 1}
!4 = !{ptr @__UNIQUE_ID_description300, !5, !"__UNIQUE_ID_description300", i1 false, i1 false}
!5 = !{!"../fs/coda/psdev.c", i32 384, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias301, !7, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!7 = !{!"../fs/coda/psdev.c", i32 385, i32 1}
!8 = !{ptr @__UNIQUE_ID_file302, !9, !"__UNIQUE_ID_file302", i1 false, i1 false}
!9 = !{!"../fs/coda/psdev.c", i32 386, i32 1}
!10 = !{ptr @__UNIQUE_ID_license303, !9, !"__UNIQUE_ID_license303", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_version304, !12, !"__UNIQUE_ID_version304", i1 false, i1 false}
!12 = !{!"../fs/coda/psdev.c", i32 387, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/coda/psdev.c", i32 427, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @exit_coda._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @exit_coda._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__initcall__kmod_coda__305_436_init_coda6, !24, !"__initcall__kmod_coda__305_436_init_coda6", i1 false, i1 false}
!24 = !{!"../fs/coda/psdev.c", i32 436, i32 1}
!25 = !{ptr @__exitcall_exit_coda, !26, !"__exitcall_exit_coda", i1 false, i1 false}
!26 = !{!"../fs/coda/psdev.c", i32 437, i32 1}
!27 = !{ptr @coda_hard, !28, !"coda_hard", i1 false, i1 false}
!28 = !{!"../fs/coda/psdev.c", i32 47, i32 15}
!29 = !{ptr @coda_comms, !30, !"coda_comms", i1 false, i1 false}
!30 = !{!"../fs/coda/psdev.c", i32 51, i32 19}
!31 = !{ptr @coda_psdev_class, !32, !"coda_psdev_class", i1 false, i1 false}
!32 = !{!"../fs/coda/psdev.c", i32 52, i32 22}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/coda/psdev.c", i32 399, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @init_coda._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @init_coda._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/coda/psdev.c", i32 405, i32 3}
!40 = !{ptr @init_coda._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @init_coda._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/coda/psdev.c", i32 360, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @init_coda_psdev._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @init_coda_psdev._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @init_coda_psdev.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../fs/coda/psdev.c", i32 364, i32 21}
!49 = !{ptr @init_coda_psdev.__key.13, !50, !"__key", i1 false, i1 false}
!50 = !{!"../fs/coda/psdev.c", i32 370, i32 3}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/coda/psdev.c", i32 372, i32 44}
!54 = !{ptr @coda_psdev_fops, !55, !"coda_psdev_fops", i1 false, i1 false}
!55 = !{!"../fs/coda/psdev.c", i32 345, i32 37}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/coda/psdev.c", i32 218, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../fs/coda/psdev.c", i32 234, i32 2}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/coda/psdev.c", i32 246, i32 3}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @coda_psdev_read._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @coda_psdev_read._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/coda/psdev.c", i32 115, i32 4}
!74 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @coda_psdev_write._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @coda_psdev_write._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/coda/psdev.c", i32 121, i32 4}
!79 = !{ptr @coda_psdev_write._entry.24, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @coda_psdev_write._entry_ptr.26, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/coda/psdev.c", i32 137, i32 4}
!83 = !{ptr @coda_psdev_write._entry.27, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @coda_psdev_write._entry_ptr.29, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/coda/psdev.c", i32 159, i32 3}
!87 = !{ptr @coda_psdev_write._entry.30, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @coda_psdev_write._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/coda/psdev.c", i32 167, i32 3}
!91 = !{ptr @coda_psdev_write._entry.33, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @coda_psdev_write._entry_ptr.35, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../fs/coda/psdev.c", i32 276, i32 6}
!95 = !{ptr @coda_psdev_open.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../fs/coda/psdev.c", i32 292, i32 3}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/coda/psdev.c", i32 311, i32 3}
!100 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @coda_psdev_release._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @coda_psdev_release._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2155257259}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2155262081}
!116 = !{i64 2152129594, i64 2152129619}
!117 = !{i64 2152128913, i64 2152128938}
!118 = !{i64 4620407}
!119 = !{i64 4620604}
!120 = !{i64 2152105837}
!121 = !{i64 2155238525, i64 2155238805, i64 2155239139, i64 2155239473}
