; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/inode.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type opaque
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_data = type { %struct.spinlock, %struct.refcount_struct, i32, i32, [5 x %struct.usb_gadgetfs_event], i32, ptr, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.wait_queue_head, ptr, ptr, [256 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_gadgetfs_event = type { %union.anon.78, i32 }
%union.anon.78 = type { i32, [4 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ep_data = type { %struct.mutex, i32, %struct.refcount_struct, ptr, ptr, ptr, i32, [16 x i8], %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor, %struct.list_head, %struct.wait_queue_head, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.60, %union.anon.61 }
%union.anon.60 = type { ptr }
%union.anon.61 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.kiocb_priv = type { ptr, ptr, ptr, ptr, %struct.work_struct, ptr, %struct.iov_iter, ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_description244 = internal constant [43 x i8] c"gadgetfs.description=USB Gadget filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [31 x i8] c"gadgetfs.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [49 x i8] c"gadgetfs.file=drivers/usb/gadget/legacy/gadgetfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [21 x i8] c"gadgetfs.license=GPL\00", section ".modinfo", align 1
@__param_str_default_uid = internal constant [21 x i8] c"gadgetfs.default_uid\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@default_uid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_default_uid = internal constant %struct.kernel_param { ptr @__param_str_default_uid, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @default_uid } }, section "__param", align 4
@__UNIQUE_ID_default_uidtype262 = internal constant [35 x i8] c"gadgetfs.parmtype=default_uid:uint\00", section ".modinfo", align 1
@__param_str_default_gid = internal constant [21 x i8] c"gadgetfs.default_gid\00", align 1
@default_gid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_default_gid = internal constant %struct.kernel_param { ptr @__param_str_default_gid, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @default_gid } }, section "__param", align 4
@__UNIQUE_ID_default_gidtype263 = internal constant [35 x i8] c"gadgetfs.parmtype=default_gid:uint\00", section ".modinfo", align 1
@__param_str_default_perm = internal constant [22 x i8] c"gadgetfs.default_perm\00", align 1
@default_perm = internal global { i32, [28 x i8] } { i32 384, [28 x i8] zeroinitializer }, align 32
@__param_default_perm = internal constant %struct.kernel_param { ptr @__param_str_default_perm, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @default_perm } }, section "__param", align 4
@__UNIQUE_ID_default_permtype264 = internal constant [36 x i8] c"gadgetfs.parmtype=default_perm:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_alias265 = internal constant [27 x i8] c"gadgetfs.alias=fs-gadgetfs\00", section ".modinfo", align 1
@__initcall__kmod_gadgetfs__266_2114_init6 = internal global ptr @init, section ".initcall6.init", align 4
@cleanup.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gadgetfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cleanup\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/inode.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unregister %s\0A\00", [17 x i8] zeroinitializer }, align 32
@shortname = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gadgetfs\00", [23 x i8] zeroinitializer }, align 32
@gadgetfs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @shortname, i32 0, ptr @gadgetfs_init_fs_context, ptr null, ptr null, ptr @gadgetfs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cleanup = internal global ptr @cleanup, section ".exitcall.exit", align 4
@init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: %s, version 24 Aug 2004\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@init._entry_ptr = internal global ptr @init._entry, section ".printk_index", align 4
@driver_desc = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB Gadget filesystem\00", [42 x i8] zeroinitializer }, align 32
@gadgetfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @gadgetfs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@the_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@CHIP = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gadget_fs_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ep0_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ep0_read, ptr @dev_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep0_poll, ptr @gadget_dev_ioctl, ptr null, ptr null, i32 0, ptr @gadget_dev_open, ptr null, ptr @dev_release, ptr null, ptr @ep0_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@dev_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@dev_new.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->wait\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ep0_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: ep0in stall\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep0_read\00", [23 x i8] zeroinitializer }, align 32
@ep0_read._entry_ptr = internal global ptr @ep0_read._entry, section ".printk_index", align 4
@ep0_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: fail %s, state %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ep0_read._entry_ptr.13 = internal global ptr @ep0_read._entry.11, section ".printk_index", align 4
@ep0_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: %s wait\0A\00", [17 x i8] zeroinitializer }, align 32
@ep0_read._entry_ptr.16 = internal global ptr @ep0_read._entry.14, section ".printk_index", align 4
@setup_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: ep0 request busy!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setup_req\00", [22 x i8] zeroinitializer }, align 32
@setup_req._entry_ptr = internal global ptr @setup_req._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@gadgetfs_driver = internal global { %struct.usb_gadget_driver, [32 x i8] } { %struct.usb_gadget_driver { ptr @driver_desc, i32 0, ptr @gadgetfs_bind, ptr @gadgetfs_unbind, ptr @gadgetfs_setup, ptr @gadgetfs_disconnect, ptr @gadgetfs_suspend, ptr null, ptr @gadgetfs_disconnect, %struct.device_driver { ptr @shortname, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.list_head zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dev_config.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 -37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_config\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %s fail %zd, %p\0A\00", [43 x i8] zeroinitializer }, align 32
@ep0_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: ep0out stall\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep0_write\00", [22 x i8] zeroinitializer }, align 32
@ep0_write._entry_ptr = internal global ptr @ep0_write._entry, section ".printk_index", align 4
@ep0_write._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: bogus ep0out stall!\0A\00", [37 x i8] zeroinitializer }, align 32
@ep0_write._entry_ptr.28 = internal global ptr @ep0_write._entry.26, section ".printk_index", align 4
@ep0_write._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.25, ptr @.str.2, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ep0_write._entry_ptr.30 = internal global ptr @ep0_write._entry.29, section ".printk_index", align 4
@gadgetfs_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s expected %s controller not %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gadgetfs_bind\00", [18 x i8] zeroinitializer }, align 32
@gadgetfs_bind._entry_ptr = internal global ptr @gadgetfs_bind._entry, section ".printk_index", align 4
@gadgetfs_bind._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: bound to %s driver\0A\00", [38 x i8] zeroinitializer }, align 32
@gadgetfs_bind._entry_ptr.35 = internal global ptr @gadgetfs_bind._entry.33, section ".printk_index", align 4
@activate_ep_files.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@activate_ep_files.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->wait\00", [20 x i8] zeroinitializer }, align 32
@ep_io_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @ep_read_iter, ptr @ep_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ep_ioctl, ptr null, ptr null, i32 0, ptr @ep_open, ptr null, ptr @ep_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@activate_ep_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s enomem\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"activate_ep_files\00", [46 x i8] zeroinitializer }, align 32
@activate_ep_files._entry_ptr = internal global ptr @activate_ep_files._entry, section ".printk_index", align 4
@ep_read_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: %s halt\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ep_read_iter\00", [19 x i8] zeroinitializer }, align 32
@ep_read_iter._entry_ptr = internal global ptr @ep_read_iter._entry, section ".printk_index", align 4
@get_ready_ep.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_ready_ep\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ep %p not available, state %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ep_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s i/o interrupted\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep_io\00", [26 x i8] zeroinitializer }, align 32
@ep_io._entry_ptr = internal global ptr @ep_io._entry, section ".printk_index", align 4
@ep_io._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: endpoint gone\0A\00", [43 x i8] zeroinitializer }, align 32
@ep_io._entry_ptr.49 = internal global ptr @ep_io._entry.47, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ep_aio_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s fault %d len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ep_aio_complete\00", [16 x i8] zeroinitializer }, align 32
@ep_aio_complete._entry_ptr = internal global ptr @ep_aio_complete._entry, section ".printk_index", align 4
@ep_aio_complete.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&priv->work)\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ep_write_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.54, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep_write_iter\00", [18 x i8] zeroinitializer }, align 32
@ep_write_iter._entry_ptr = internal global ptr @ep_write_iter._entry, section ".printk_index", align 4
@ep_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: config %s, bad tag %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep_config\00", [22 x i8] zeroinitializer }, align 32
@ep_config._entry_ptr = internal global ptr @ep_config._entry, section ".printk_index", align 4
@ep_config._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: config %s, bad hs length or type\0A\00", [56 x i8] zeroinitializer }, align 32
@ep_config._entry_ptr.59 = internal global ptr @ep_config._entry.57, section ".printk_index", align 4
@ep_config._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: unconnected, %s init abandoned\0A\00", [58 x i8] zeroinitializer }, align 32
@ep_config._entry_ptr.62 = internal global ptr @ep_config._entry.60, section ".printk_index", align 4
@ep_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep_open\00", [24 x i8] zeroinitializer }, align 32
@ep_open._entry_ptr = internal global ptr @ep_open._entry, section ".printk_index", align 4
@ep_open._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s state %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ep_open._entry_ptr.67 = internal global ptr @ep_open._entry.65, section ".printk_index", align 4
@destroy_ep_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %s %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"destroy_ep_files\00", [47 x i8] zeroinitializer }, align 32
@destroy_ep_files._entry_ptr = internal global ptr @destroy_ep_files._entry, section ".printk_index", align 4
@gadgetfs_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gadgetfs_unbind\00", [16 x i8] zeroinitializer }, align 32
@gadgetfs_unbind._entry_ptr = internal global ptr @gadgetfs_unbind._entry, section ".printk_index", align 4
@gadgetfs_unbind._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: %s done\0A\00", [17 x i8] zeroinitializer }, align 32
@gadgetfs_unbind._entry_ptr.74 = internal global ptr @gadgetfs_unbind._entry.72, section ".printk_index", align 4
@gadgetfs_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: no high speed config??\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gadgetfs_setup\00", [17 x i8] zeroinitializer }, align 32
@gadgetfs_setup._entry_ptr = internal global ptr @gadgetfs_setup._entry, section ".printk_index", align 4
@gadgetfs_setup._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: connected\0A\00", [47 x i8] zeroinitializer }, align 32
@gadgetfs_setup._entry_ptr.79 = internal global ptr @gadgetfs_setup._entry.77, section ".printk_index", align 4
@gadgetfs_setup._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.2, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: configuration #%d\0A\00", [39 x i8] zeroinitializer }, align 32
@gadgetfs_setup._entry_ptr.82 = internal global ptr @gadgetfs_setup._entry.80, section ".printk_index", align 4
@gadgetfs_setup._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.2, i32 1473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s req%02x.%02x v%04x i%04x l%d\0A\00", [57 x i8] zeroinitializer }, align 32
@gadgetfs_setup._entry_ptr.85 = internal global ptr @gadgetfs_setup._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"delegate\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@gadgetfs_setup._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.76, ptr @.str.2, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: ep_queue --> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@gadgetfs_setup._entry_ptr.90 = internal global ptr @gadgetfs_setup._entry.88, section ".printk_index", align 4
@next_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: discard old event[%d] %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"next_event\00", [21 x i8] zeroinitializer }, align 32
@next_event._entry_ptr = internal global ptr @next_event._entry, section ".printk_index", align 4
@next_event._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: event[%d] = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@next_event._entry_ptr.95 = internal global ptr @next_event._entry.93, section ".printk_index", align 4
@gadgetfs_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: disconnected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gadgetfs_disconnect\00", [44 x i8] zeroinitializer }, align 32
@gadgetfs_disconnect._entry_ptr = internal global ptr @gadgetfs_disconnect._entry, section ".printk_index", align 4
@gadgetfs_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: suspended from state %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gadgetfs_suspend\00", [47 x i8] zeroinitializer }, align 32
@gadgetfs_suspend._entry_ptr = internal global ptr @gadgetfs_suspend._entry, section ".printk_index", align 4
@ep0_fasync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %s %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep0_fasync\00", [21 x i8] zeroinitializer }, align 32
@ep0_fasync._entry_ptr = internal global ptr @ep0_fasync._entry, section ".printk_index", align 4
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 26369, i64 26370, i64 26371]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 18]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"default_uid\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1949, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"default_gid\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1950, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"default_perm\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1951, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2118, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [10 x i8] c"shortname\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 70, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"gadgetfs_type\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2094, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2110, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"driver_desc\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 69, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"gadgetfs_context_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2070, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"the_device\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1659, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant [5 x i8] c"CHIP\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 231, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"gadget_fs_operations\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2002, i32 38 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"ep0_operations\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1924, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 175, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 177, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 930, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1054, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1060, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 891, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 230, i32 6 }
@___asan_gen_.212 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 214, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 174, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [16 x i8] c"gadgetfs_driver\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1739, i32 33 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1900, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1160, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1165, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1168, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1669, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1688, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1598, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1599, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"ep_io_operations\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 695, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1627, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 591, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 322, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 353, i32 5 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 364, i32 5 }
@___asan_gen_.317 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 87, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 506, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 511, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 653, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 738, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 761, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 788, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 827, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 829, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1541, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1637, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1655, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1355, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1361, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1449, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1470, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1528, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1097, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1110, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1711, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1724, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.485 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/inode.c\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1178, i32 2 }
@llvm.compiler.used = appending global [173 x ptr] [ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_default_gidtype263, ptr @__UNIQUE_ID_default_permtype264, ptr @__UNIQUE_ID_default_uidtype262, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_cleanup, ptr @__initcall__kmod_gadgetfs__266_2114_init6, ptr @__param_default_gid, ptr @__param_default_perm, ptr @__param_default_uid, ptr @activate_ep_files._entry, ptr @activate_ep_files._entry_ptr, ptr @cleanup, ptr @destroy_ep_files._entry, ptr @destroy_ep_files._entry_ptr, ptr @ep0_fasync._entry, ptr @ep0_fasync._entry_ptr, ptr @ep0_read._entry, ptr @ep0_read._entry.11, ptr @ep0_read._entry.14, ptr @ep0_read._entry_ptr, ptr @ep0_read._entry_ptr.13, ptr @ep0_read._entry_ptr.16, ptr @ep0_write._entry, ptr @ep0_write._entry.26, ptr @ep0_write._entry.29, ptr @ep0_write._entry_ptr, ptr @ep0_write._entry_ptr.28, ptr @ep0_write._entry_ptr.30, ptr @ep_aio_complete._entry, ptr @ep_aio_complete._entry_ptr, ptr @ep_config._entry, ptr @ep_config._entry.57, ptr @ep_config._entry.60, ptr @ep_config._entry_ptr, ptr @ep_config._entry_ptr.59, ptr @ep_config._entry_ptr.62, ptr @ep_io._entry, ptr @ep_io._entry.47, ptr @ep_io._entry_ptr, ptr @ep_io._entry_ptr.49, ptr @ep_open._entry, ptr @ep_open._entry.65, ptr @ep_open._entry_ptr, ptr @ep_open._entry_ptr.67, ptr @ep_read_iter._entry, ptr @ep_read_iter._entry_ptr, ptr @ep_write_iter._entry, ptr @ep_write_iter._entry_ptr, ptr @gadgetfs_bind._entry, ptr @gadgetfs_bind._entry.33, ptr @gadgetfs_bind._entry_ptr, ptr @gadgetfs_bind._entry_ptr.35, ptr @gadgetfs_disconnect._entry, ptr @gadgetfs_disconnect._entry_ptr, ptr @gadgetfs_setup._entry, ptr @gadgetfs_setup._entry.77, ptr @gadgetfs_setup._entry.80, ptr @gadgetfs_setup._entry.83, ptr @gadgetfs_setup._entry.88, ptr @gadgetfs_setup._entry_ptr, ptr @gadgetfs_setup._entry_ptr.79, ptr @gadgetfs_setup._entry_ptr.82, ptr @gadgetfs_setup._entry_ptr.85, ptr @gadgetfs_setup._entry_ptr.90, ptr @gadgetfs_suspend._entry, ptr @gadgetfs_suspend._entry_ptr, ptr @gadgetfs_unbind._entry, ptr @gadgetfs_unbind._entry.72, ptr @gadgetfs_unbind._entry_ptr, ptr @gadgetfs_unbind._entry_ptr.74, ptr @init._entry, ptr @init._entry_ptr, ptr @next_event._entry, ptr @next_event._entry.93, ptr @next_event._entry_ptr, ptr @next_event._entry_ptr.95, ptr @setup_req._entry, ptr @setup_req._entry_ptr, ptr @default_uid, ptr @default_gid, ptr @default_perm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @shortname, ptr @gadgetfs_type, ptr @.str.4, ptr @.str.5, ptr @driver_desc, ptr @gadgetfs_context_ops, ptr @the_device, ptr @CHIP, ptr @gadget_fs_operations, ptr @ep0_operations, ptr @dev_new.__key, ptr @.str.6, ptr @dev_new.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @gadgetfs_driver, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @activate_ep_files.__key, ptr @.str.36, ptr @activate_ep_files.__key.37, ptr @.str.38, ptr @ep_io_operations, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @init_completion.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ep_aio_complete.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_uid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_gid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_perm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shortname to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_desc to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CHIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_fs_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_new.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_write._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_write._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_bind._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activate_ep_files.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activate_ep_files.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_io_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activate_ep_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_read_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_io._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_aio_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_aio_complete.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_write_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_config._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_config._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_open._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_ep_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_unbind._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_setup._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_setup._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_setup._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_setup._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_event._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgetfs_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0_fasync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @gadgetfs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @shortname, ptr noundef nonnull @driver_desc) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cleanup.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cleanup, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !257

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cleanup.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.3, ptr noundef nonnull @shortname) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @unregister_filesystem(ptr noundef nonnull @gadgetfs_type) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gadgetfs_init_fs_context(ptr nocapture noundef writeonly %fc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gadgetfs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadgetfs_kill_sb(ptr noundef %sb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kill_litter_super(ptr noundef %sb) #15
  %0 = load ptr, ptr @the_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %count.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_dev.exit_crit_edge, label %if.then10.i.i.i.i, !prof !260

if.end5.i.i.i.i.put_dev.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_dev.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_dev.exit

do.body.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %head.i.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %3, %head.i.i
  br i1 %cmp.i.i.not.i, label %do.end16.i, label %do.body12.i, !prof !260

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %0) #15
  br label %put_dev.exit

put_dev.exit:                                     ; preds = %do.end16.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_dev.exit_crit_edge
  store ptr null, ptr @the_device, align 4
  br label %if.end

if.end:                                           ; preds = %put_dev.exit, %entry.if.end_crit_edge
  %4 = load ptr, ptr @CHIP, align 4
  tail call void @kfree(ptr noundef %4) #15
  store ptr null, ptr @CHIP, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadgetfs_get_tree(ptr noundef %fc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @gadgetfs_fill_super) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadgetfs_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #5 align 64 {
entry:
  %tmp6.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @the_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @usb_get_gadget_udc_name() #15
  store ptr %call, ptr @CHIP, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %1 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %3 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1360584985, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gadget_fs_operations, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %5 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %s_time_gran, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.Enomem_crit_edge, label %if.end7

if.end3.Enomem_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %Enomem

if.end7:                                          ; preds = %if.end3
  %call1.i = tail call i32 @get_next_ino() #15
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16749, ptr %call.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %8 = load i32, ptr @default_uid, align 4
  %call2.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %8) #15
  %9 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %10 = load i32, ptr @default_gid, align 4
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %10) #15
  %11 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4.i, ptr %i_gid.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp6.i) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp6.i, ptr noundef nonnull %call.i) #15
  %12 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp6.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp6.i) #15
  %13 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %14 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 54
  %15 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %i_private.i, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @simple_dir_operations, ptr %16, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @simple_dir_inode_operations, ptr %i_op, align 8
  %call8 = call ptr @d_make_root(ptr noundef nonnull %call.i) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %19 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8, ptr %s_root, align 64
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.Enomem_crit_edge, label %if.end11

if.end7.Enomem_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %Enomem

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 480) #19
  %tobool.not.i39 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i39, label %if.end11.Enomem_crit_edge, label %if.end15

if.end11.Enomem_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %Enomem

if.end15:                                         ; preds = %if.end11
  %state.i = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state.i, align 4
  %count.i = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %count.i, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @dev_new.__key, i16 noundef signext 3) #15
  %epfiles.i = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %epfiles.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %epfiles.i, ptr %epfiles.i, align 8
  %prev.i.i = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %epfiles.i, ptr %prev.i.i, align 4
  %wait.i = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 17
  call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @dev_new.__key.7) #15
  %sb16 = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 18
  %25 = ptrtoint ptr %sb16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sb, ptr %sb16, align 8
  %26 = load ptr, ptr @CHIP, align 4
  %call17 = call fastcc ptr @gadgetfs_create_file(ptr noundef %sb, ptr noundef %26, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @ep0_operations)
  %dentry = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17, ptr %dentry, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.Enomem_crit_edge, label %if.then10.i.i.i.i, !prof !260

if.end5.i.i.i.i.Enomem_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %Enomem

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %Enomem

do.body.i:                                        ; preds = %if.then20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %head.i.i = getelementptr inbounds %struct.dev_data, ptr %call7.i.i.i, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %head.i.i, align 8
  %cmp.i.i.not.i = icmp eq ptr %30, %head.i.i
  br i1 %cmp.i.i.not.i, label %do.end16.i, label %do.body12.i, !prof !260

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %Enomem

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %call7.i.i.i, ptr @the_device, align 4
  br label %cleanup

Enomem:                                           ; preds = %do.end16.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.Enomem_crit_edge, %if.end11.Enomem_crit_edge, %if.end7.Enomem_crit_edge, %if.end3.Enomem_crit_edge
  %31 = load ptr, ptr @CHIP, align 4
  call void @kfree(ptr noundef %31) #15
  store ptr null, ptr @CHIP, align 4
  br label %cleanup

cleanup:                                          ; preds = %Enomem, %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %Enomem ], [ -3, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_gadget_udc_name() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gadgetfs_create_file(ptr noundef %sb, ptr noundef %name, ptr noundef %data, ptr noundef %fops) unnamed_addr #5 align 64 {
entry:
  %tmp6.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %call = tail call ptr @d_alloc_name(ptr noundef %1, ptr noundef %name) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @default_perm, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dput(ptr noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @get_next_ino() #15
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %4 = trunc i32 %2 to i16
  %5 = and i16 %4, 511
  %conv.i = or i16 %5, -32768
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %call.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %7 = load i32, ptr @default_uid, align 4
  %call2.i = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %7) #15
  %8 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2.i, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %9 = load i32, ptr @default_gid, align 4
  %call4.i = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %9) #15
  %10 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4.i, ptr %i_gid.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp6.i) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp6.i, ptr noundef nonnull %call.i) #15
  %11 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp6.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp6.i) #15
  %12 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %13 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 54
  %14 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %i_private.i, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fops, ptr %15, align 8
  call void @d_add(ptr noundef nonnull %call, ptr noundef nonnull %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_dev(ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.dev_data, ptr %data, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !260

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #15
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %head.i = getelementptr inbounds %struct.dev_data, ptr %data, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %2, %head.i
  br i1 %cmp.i.i.not, label %do.end16, label %do.body12, !prof !260

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %data) #15
  br label %return

return:                                           ; preds = %do.end16, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep0_read(ptr nocapture noundef readonly %fd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ptr) #5 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry217 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %state2 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup246.sink.split_crit_edge, label %if.end

entry.cleanup246.sink.split_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.end:                                           ; preds = %entry
  %setup_abort = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %setup_abort, align 1
  %5 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear6 = and i8 %bf.load, -5
  %6 = ptrtoint ptr %setup_abort to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.clear6, ptr %setup_abort, align 1
  br label %cleanup246.sink.split

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp9 = icmp eq i32 %3, 4
  br i1 %cmp9, label %if.then10, label %if.end132

if.then10:                                        ; preds = %if.end7
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @shortname) #18
  %gadget = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep0, align 4
  %call17 = tail call i32 @usb_ep_set_halt(ptr noundef %11) #15
  %12 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state2, align 4
  br label %cleanup246.sink.split

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp19 = icmp eq i32 %len, 0
  br i1 %cmp19, label %if.then20, label %if.else48

if.then20:                                        ; preds = %if.else
  %gadget21 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %gadget21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget21, align 4
  %ep022 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ep022 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep022, align 4
  %req23 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %req23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req23, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %setup_out_ready.i = getelementptr inbounds %struct.dev_data, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %setup_out_ready.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %setup_out_ready.i, align 1
  %22 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @shortname) #18
  br label %if.end31

if.end.i:                                         ; preds = %if.then20
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load ptr, ptr %18, align 4
  %cmp7.i = icmp eq ptr %.pr.i, null
  br i1 %cmp7.i, label %if.then9.i, label %if.then26

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %rbuf.i = getelementptr inbounds %struct.dev_data, ptr %20, i32 0, i32 20
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rbuf.i, ptr %18, align 4
  br label %if.end31

if.then26:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 7
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ep0_complete, ptr %complete.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %length.i, align 4
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 6
  %27 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load13.i = load i32, ptr %zero.i, align 4
  %bf.clear14.i = and i32 %bf.load13.i, -8193
  store i32 %bf.clear14.i, ptr %zero.i, align 4
  %udc_usage = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %udc_usage, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %udc_usage, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %call28 = tail call i32 @usb_ep_queue(ptr noundef %16, ptr noundef %18, i32 noundef 3264) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %30 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %udc_usage, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %udc_usage, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then9.i, %do.end.i
  %retval1.0 = phi i32 [ %call28, %if.then26 ], [ -12, %if.then9.i ], [ -16, %do.end.i ]
  %32 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %state2, align 4
  %current_config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %current_config to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %current_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool33.not = icmp eq i8 %34, 0
  br i1 %tobool33.not, label %if.end31.cleanup246.sink.split_crit_edge, label %if.then34

if.end31.cleanup246.sink.split_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.then34:                                        ; preds = %if.end31
  %35 = ptrtoint ptr %gadget21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gadget21, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i = icmp ult i32 %38, 3
  br i1 %cmp.i, label %if.then34.if.else41_crit_edge, label %land.lhs.true

if.then34.if.else41_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else41

land.lhs.true:                                    ; preds = %if.then34
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp39 = icmp eq i32 %40, 3
  br i1 %cmp39, label %if.then40, label %land.lhs.true.if.else41_crit_edge

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else41

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %hs_config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  br label %if.end44

if.else41:                                        ; preds = %land.lhs.true.if.else41_crit_edge, %if.then34.if.else41_crit_edge
  %config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 10
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then40
  %.pn.in = phi ptr [ %hs_config, %if.then40 ], [ %config, %if.else41 ]
  %41 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load ptr, ptr %.pn.in, align 4
  %power.0.in.in = getelementptr inbounds %struct.usb_config_descriptor, ptr %.pn, i32 0, i32 7
  %42 = ptrtoint ptr %power.0.in.in to i32
  call void @__asan_load1_noabort(i32 %42)
  %power.0.in = load i8, ptr %power.0.in.in, align 1
  %power.0 = zext i8 %power.0.in to i32
  %mul = shl nuw nsw i32 %power.0, 1
  %call46 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %36, i32 noundef %mul) #15
  br label %cleanup246.sink.split

if.else48:                                        ; preds = %if.else
  %f_flags = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 7
  %43 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f_flags, align 4
  %and = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp49.not = icmp ne i32 %and, 0
  %45 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool56.not = icmp eq i8 %45, 0
  %or.cond = select i1 %cmp49.not, i1 %tobool56.not, i1 false
  br i1 %or.cond, label %if.else48.cleanup246.sink.split_crit_edge, label %if.end58

if.else48.cleanup246.sink.split_crit_edge:        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.end58:                                         ; preds = %if.else48
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 969) #15
  %46 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load67 = load i8, ptr %setup_abort, align 1
  %47 = and i8 %bf.load67, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp71.not = icmp eq i8 %47, 0
  br i1 %cmp71.not, label %if.then73, label %if.end90.thread

if.end90.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  br label %if.end95

if.then73:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %48 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  %call75424 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %49 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load77425 = load i8, ptr %setup_abort, align 1
  %50 = and i8 %bf.load77425, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp81.not426 = icmp eq i8 %50, 0
  br i1 %cmp81.not426, label %if.then73.if.end84_crit_edge, label %if.then73.if.end90.thread386_crit_edge

if.then73.if.end90.thread386_crit_edge:           ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90.thread386

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  br label %if.end84

if.end84:                                         ; preds = %cleanup.if.end84_crit_edge, %if.then73.if.end84_crit_edge
  %call75427 = phi i32 [ %call75, %cleanup.if.end84_crit_edge ], [ %call75424, %if.then73.if.end84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75427)
  %tobool85.not = icmp eq i32 %call75427, 0
  br i1 %tobool85.not, label %cleanup, label %if.end90

cleanup:                                          ; preds = %if.end84
  call void @schedule() #15
  %call75 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #15
  %51 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load77 = load i8, ptr %setup_abort, align 1
  %52 = and i8 %bf.load77, 16
  %cmp81.not = icmp eq i8 %52, 0
  br i1 %cmp81.not, label %cleanup.if.end84_crit_edge, label %cleanup.if.end90.thread386_crit_edge

cleanup.if.end90.thread386_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90.thread386

cleanup.if.end84_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.end90.thread386:                               ; preds = %cleanup.if.end90.thread386_crit_edge, %if.then73.if.end90.thread386_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  br label %if.end95

if.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  br label %cleanup246.sink.split

if.end95:                                         ; preds = %if.end90.thread386, %if.end90.thread
  %53 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp97.not = icmp eq i32 %54, 4
  br i1 %cmp97.not, label %if.end100, label %if.end95.cleanup246.sink.split_crit_edge

if.end95.cleanup246.sink.split_crit_edge:         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.end100:                                        ; preds = %if.end95
  %55 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %state2, align 4
  %56 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load102 = load i8, ptr %setup_abort, align 1
  %57 = and i8 %bf.load102, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool106.not = icmp eq i8 %57, 0
  br i1 %tobool106.not, label %if.else108, label %if.end100.cleanup246.sink.split_crit_edge

if.end100.cleanup246.sink.split_crit_edge:        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.else108:                                       ; preds = %if.end100
  %req109 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 13
  %58 = ptrtoint ptr %req109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %req109, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %actual, align 4
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 %len)
  %udc_usage113 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %udc_usage113 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %udc_usage113, align 4
  %inc114 = add i32 %64, 1
  store i32 %inc114, ptr %udc_usage113, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %65 = ptrtoint ptr %req109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %req109, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp9.i.i = icmp slt i32 %62, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.else108
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !260

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.else108
  call void @__check_object_size(ptr noundef %68, i32 noundef %62, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %62, i32 -1226833920) #20, !srcloc !263
  %asmresult.i.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %68, i32 noundef %62) #15
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %68, i32 noundef %62) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %62, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %62, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool119.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool119.not, i32 %62, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %70 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %71 = ptrtoint ptr %udc_usage113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %udc_usage113, align 4
  %dec125 = add i32 %72, -1
  store i32 %dec125, ptr %udc_usage113, align 4
  %gadget126 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %73 = ptrtoint ptr %gadget126 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gadget126, align 4
  %ep0127 = getelementptr inbounds %struct.usb_gadget, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ep0127 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ep0127, align 4
  %77 = ptrtoint ptr %req109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %req109, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  %rbuf.i369 = getelementptr inbounds %struct.dev_data, ptr %80, i32 0, i32 20
  %cmp.not.i = icmp eq ptr %82, %rbuf.i369
  br i1 %cmp.not.i, label %copy_to_user.exit.thread.clean_req.exit_crit_edge, label %if.then.i370

copy_to_user.exit.thread.clean_req.exit_crit_edge: ; preds = %copy_to_user.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %clean_req.exit

if.then.i370:                                     ; preds = %copy_to_user.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef %82) #15
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %rbuf.i369, ptr %78, align 4
  br label %clean_req.exit

clean_req.exit:                                   ; preds = %if.then.i370, %copy_to_user.exit.thread.clean_req.exit_crit_edge
  %complete.i371 = getelementptr inbounds %struct.usb_request, ptr %78, i32 0, i32 7
  %84 = ptrtoint ptr %complete.i371 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @epio_complete, ptr %complete.i371, align 4
  %setup_out_ready.i372 = getelementptr inbounds %struct.dev_data, ptr %80, i32 0, i32 8
  %85 = ptrtoint ptr %setup_out_ready.i372 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i373 = load i8, ptr %setup_out_ready.i372, align 1
  %bf.clear.i = and i8 %bf.load.i373, -17
  store i8 %bf.clear.i, ptr %setup_out_ready.i372, align 1
  br label %cleanup246.sink.split

if.end132:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp133 = icmp ult i32 %len, 12
  br i1 %cmp133, label %if.end132.cleanup246.sink.split_crit_edge, label %if.end136

if.end132.cleanup246.sink.split_crit_edge:        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.end136:                                        ; preds = %if.end132
  %bf.set139 = or i8 %bf.load, -128
  %86 = ptrtoint ptr %setup_abort to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %bf.set139, ptr %setup_abort, align 1
  %ev_next = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 5
  %87 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ev_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp140.not420 = icmp eq i32 %88, 0
  br i1 %cmp140.not420, label %if.end189.lr.ph, label %if.end136.if.then142_crit_edge

if.end136.if.then142_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then142

if.end189.lr.ph:                                  ; preds = %if.end136
  %f_flags190 = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 7
  %89 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %switch = icmp eq i32 %89, 2
  %wait221 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  br label %if.end189

if.then142:                                       ; preds = %if.end243.if.then142_crit_edge, %if.end136.if.then142_crit_edge
  %.lcssa = phi i32 [ %88, %if.end136.if.then142_crit_edge ], [ %110, %if.end243.if.then142_crit_edge ]
  %div = udiv i32 %len, 12
  %90 = call i32 @llvm.umin.i32(i32 %.lcssa, i32 %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp150422.not = icmp eq i32 %90, 0
  br i1 %cmp150422.not, label %if.then142.for.end158_crit_edge, label %if.then142.for.body_crit_edge

if.then142.for.body_crit_edge:                    ; preds = %if.then142
  br label %for.body

if.then142.for.end158_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end158

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then142.for.body_crit_edge
  %i.0423 = phi i32 [ %inc157, %for.inc.for.body_crit_edge ], [ 0, %if.then142.for.body_crit_edge ]
  %type = getelementptr %struct.dev_data, ptr %1, i32 0, i32 4, i32 %i.0423, i32 1
  %91 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp152 = icmp eq i32 %92, 3
  br i1 %cmp152, label %if.then154, label %for.inc

if.then154:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4, ptr %state2, align 4
  %add = add nuw i32 %i.0423, 1
  br label %for.end158

for.inc:                                          ; preds = %for.body
  %inc157 = add nuw nsw i32 %i.0423, 1
  %exitcond.not = icmp eq i32 %inc157, %90
  br i1 %exitcond.not, label %for.inc.for.end158_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end158_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end158

for.end158:                                       ; preds = %for.inc.for.end158_crit_edge, %if.then154, %if.then142.for.end158_crit_edge
  %n.1 = phi i32 [ %add, %if.then154 ], [ 0, %if.then142.for.end158_crit_edge ], [ %90, %for.inc.for.end158_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %mul160 = mul i32 %n.1, 12
  %event161 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul160)
  %cmp9.i.i352 = icmp slt i32 %mul160, 0
  br i1 %cmp9.i.i352, label %land.rhs16.i.i355, label %if.then.i.i.i358

land.rhs16.i.i355:                                ; preds = %for.end158
  %.b71.i.i354 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i354, label %land.rhs16.i.i355.if.then169_crit_edge, label %if.then27.i.i356, !prof !260

land.rhs16.i.i355.if.then169_crit_edge:           ; preds = %land.rhs16.i.i355
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then169

if.then27.i.i356:                                 ; preds = %land.rhs16.i.i355
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %if.then169

if.then.i.i.i358:                                 ; preds = %for.end158
  call void @__check_object_size(ptr noundef %event161, i32 noundef %mul160, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 174) #15
  %call.i.i359 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i359, label %if.then.i.i.i358.copy_to_user.exit368_crit_edge, label %if.end.i.i363

if.then.i.i.i358.copy_to_user.exit368_crit_edge:  ; preds = %if.then.i.i.i358
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit368

if.end.i.i363:                                    ; preds = %if.then.i.i.i358
  %94 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %mul160, i32 -1226833920) #20, !srcloc !263
  %asmresult.i.i361 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i361)
  %cmp.i6.i362 = icmp eq i32 %asmresult.i.i361, 0
  br i1 %cmp.i6.i362, label %if.then2.i.i366, label %if.end.i.i363.copy_to_user.exit368_crit_edge

if.end.i.i363.copy_to_user.exit368_crit_edge:     ; preds = %if.end.i.i363
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit368

if.then2.i.i366:                                  ; preds = %if.end.i.i363
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i364 = call zeroext i1 @__kasan_check_read(ptr noundef %event161, i32 noundef %mul160) #15
  %call.i12.i.i365 = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %event161, i32 noundef %mul160) #15
  br label %copy_to_user.exit368

copy_to_user.exit368:                             ; preds = %if.then2.i.i366, %if.end.i.i363.copy_to_user.exit368_crit_edge, %if.then.i.i.i358.copy_to_user.exit368_crit_edge
  %n.addr.0.i367 = phi i32 [ %mul160, %if.then.i.i.i358.copy_to_user.exit368_crit_edge ], [ %call.i12.i.i365, %if.then2.i.i366 ], [ %mul160, %if.end.i.i363.copy_to_user.exit368_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i367)
  %tobool163.not = icmp eq i32 %n.addr.0.i367, 0
  %mul160. = select i1 %tobool163.not, i32 %mul160, i32 -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul160)
  %cmp167.not = icmp eq i32 %mul160, 0
  br i1 %cmp167.not, label %copy_to_user.exit368.cleanup246_crit_edge, label %copy_to_user.exit368.if.then169_crit_edge

copy_to_user.exit368.if.then169_crit_edge:        ; preds = %copy_to_user.exit368
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then169

copy_to_user.exit368.cleanup246_crit_edge:        ; preds = %copy_to_user.exit368
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246

if.then169:                                       ; preds = %copy_to_user.exit368.if.then169_crit_edge, %if.then27.i.i356, %land.rhs16.i.i355.if.then169_crit_edge
  %mul160.393 = phi i32 [ %mul160., %copy_to_user.exit368.if.then169_crit_edge ], [ -14, %land.rhs16.i.i355.if.then169_crit_edge ], [ -14, %if.then27.i.i356 ]
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %95 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ev_next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %n.1)
  %cmp172 = icmp ugt i32 %96, %n.1
  br i1 %cmp172, label %if.then174, label %if.then169.if.end182_crit_edge

if.then169.if.end182_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end182

if.then174:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx178 = getelementptr %struct.dev_data, ptr %1, i32 0, i32 4, i32 %n.1
  %sub180 = sub i32 %96, %n.1
  %mul181 = mul i32 %sub180, 12
  %97 = call ptr @memmove(ptr %event161, ptr %arrayidx178, i32 %mul181)
  br label %if.end182

if.end182:                                        ; preds = %if.then174, %if.then169.if.end182_crit_edge
  %98 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ev_next, align 4
  %sub184 = sub i32 %99, %n.1
  store i32 %sub184, ptr %ev_next, align 4
  br label %cleanup246.sink.split

if.end189:                                        ; preds = %if.end243.if.end189_crit_edge, %if.end189.lr.ph
  %100 = ptrtoint ptr %f_flags190 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %f_flags190, align 4
  %and191 = and i32 %101, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end189.cleanup246.sink.split_crit_edge

if.end189.cleanup246.sink.split_crit_edge:        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246.sink.split

if.end194:                                        ; preds = %if.end189
  br i1 %switch, label %sw.bb, label %do.end197

do.end197:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #17
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.10, i32 noundef %3) #18
  br label %cleanup246.sink.split

sw.bb:                                            ; preds = %if.end194
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.10) #18
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1064) #15
  %102 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ev_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp214.not = icmp eq i32 %103, 0
  br i1 %cmp214.not, label %if.then216, label %sw.bb.if.end243_crit_edge

sw.bb.if.end243_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end243

if.then216:                                       ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry217) #15
  %104 = call ptr @memset(ptr %__wq_entry217, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry217, i32 noundef 0) #15
  %call222417 = call i32 @prepare_to_wait_event(ptr noundef %wait221, ptr noundef nonnull %__wq_entry217, i32 noundef 1) #15
  %105 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ev_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp224.not418 = icmp eq i32 %106, 0
  br i1 %cmp224.not418, label %if.then216.if.end227_crit_edge, label %if.then216.if.end238.thread403_crit_edge

if.then216.if.end238.thread403_crit_edge:         ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end238.thread403

if.then216.if.end227_crit_edge:                   ; preds = %if.then216
  br label %if.end227

if.end227:                                        ; preds = %cleanup231.if.end227_crit_edge, %if.then216.if.end227_crit_edge
  %call222419 = phi i32 [ %call222, %cleanup231.if.end227_crit_edge ], [ %call222417, %if.then216.if.end227_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222419)
  %tobool228.not = icmp eq i32 %call222419, 0
  br i1 %tobool228.not, label %cleanup231, label %if.end238

cleanup231:                                       ; preds = %if.end227
  call void @schedule() #15
  %call222 = call i32 @prepare_to_wait_event(ptr noundef %wait221, ptr noundef nonnull %__wq_entry217, i32 noundef 1) #15
  %107 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ev_next, align 4
  %cmp224.not = icmp eq i32 %108, 0
  br i1 %cmp224.not, label %cleanup231.if.end227_crit_edge, label %cleanup231.if.end238.thread403_crit_edge

cleanup231.if.end238.thread403_crit_edge:         ; preds = %cleanup231
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end238.thread403

cleanup231.if.end227_crit_edge:                   ; preds = %cleanup231
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end227

if.end238.thread403:                              ; preds = %cleanup231.if.end238.thread403_crit_edge, %if.then216.if.end238.thread403_crit_edge
  call void @finish_wait(ptr noundef %wait221, ptr noundef nonnull %__wq_entry217) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry217) #15
  br label %if.end243

if.end238:                                        ; preds = %if.end227
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry217) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222419)
  %cmp240 = icmp slt i32 %call222419, 0
  br i1 %cmp240, label %if.end238.cleanup246_crit_edge, label %if.end238.if.end243_crit_edge

if.end238.if.end243_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end243

if.end238.cleanup246_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup246

if.end243:                                        ; preds = %if.end238.if.end243_crit_edge, %if.end238.thread403, %sw.bb.if.end243_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %109 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ev_next, align 4
  %cmp140.not = icmp eq i32 %110, 0
  br i1 %cmp140.not, label %if.end243.if.end189_crit_edge, label %if.end243.if.then142_crit_edge

if.end243.if.then142_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then142

if.end243.if.end189_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end189

cleanup246.sink.split:                            ; preds = %do.end197, %if.end189.cleanup246.sink.split_crit_edge, %if.end182, %if.end132.cleanup246.sink.split_crit_edge, %clean_req.exit, %if.end100.cleanup246.sink.split_crit_edge, %if.end95.cleanup246.sink.split_crit_edge, %if.end90, %if.else48.cleanup246.sink.split_crit_edge, %if.end44, %if.end31.cleanup246.sink.split_crit_edge, %do.end, %if.then3, %entry.cleanup246.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %mul160.393, %if.end182 ], [ -43, %if.then3 ], [ -51, %do.end ], [ %call75427, %if.end90 ], [ %70, %clean_req.exit ], [ -3, %do.end197 ], [ -22, %entry.cleanup246.sink.split_crit_edge ], [ %retval1.0, %if.end44 ], [ %retval1.0, %if.end31.cleanup246.sink.split_crit_edge ], [ -11, %if.else48.cleanup246.sink.split_crit_edge ], [ -125, %if.end95.cleanup246.sink.split_crit_edge ], [ -5, %if.end100.cleanup246.sink.split_crit_edge ], [ -22, %if.end132.cleanup246.sink.split_crit_edge ], [ -11, %if.end189.cleanup246.sink.split_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  br label %cleanup246

cleanup246:                                       ; preds = %cleanup246.sink.split, %if.end238.cleanup246_crit_edge, %copy_to_user.exit368.cleanup246_crit_edge
  %retval.0 = phi i32 [ %mul160., %copy_to_user.exit368.cleanup246_crit_edge ], [ %retval.0.ph, %cleanup246.sink.split ], [ %call222419, %if.end238.cleanup246_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_config(ptr nocapture noundef readonly %fd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ptr) #5 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #15
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tag, align 4, !annotation !264
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %setup_abort.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %setup_abort.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %setup_abort.i, align 1
  %8 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear4.i = and i8 %bf.load.i, -5
  %9 = ptrtoint ptr %setup_abort.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear4.i, ptr %setup_abort.i, align 1
  br label %ep0_write.exit

if.else.i:                                        ; preds = %if.then
  %state.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp eq i32 %11, 4
  br i1 %cmp.i, label %if.then5.i, label %do.end71.i

if.then5.i:                                       ; preds = %if.else.i
  %setup_wLength.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 9
  %12 = ptrtoint ptr %setup_wLength.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %setup_wLength.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %len) #15
  %15 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %if.else47.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then5.i
  %gadget.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 14
  %16 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gadget.i, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep0.i, align 4
  %req.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 13
  %20 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %setup_out_ready.i.i = getelementptr inbounds %struct.dev_data, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %setup_out_ready.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %setup_out_ready.i.i, align 1
  %25 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.end.i.i179, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @shortname) #18
  br label %ep0_write.exit

if.end.i.i179:                                    ; preds = %if.then12.i
  %conv.i = trunc i32 %14 to i16
  %conv.i.i = and i32 %14, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv.i)
  %cmp.i.i178 = icmp ugt i16 %conv.i, 256
  br i1 %cmp.i.i178, label %if.end8.i.i4.i, label %if.end5thread-pre-split.i.i

if.end8.i.i4.i:                                   ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i.i, i32 noundef 2592) #21
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i.i, ptr %21, align 4
  br label %if.end5.i.i

if.end5thread-pre-split.i.i:                      ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i.i = load ptr, ptr %21, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end5thread-pre-split.i.i, %if.end8.i.i4.i
  %28 = phi ptr [ %.pr.i.i, %if.end5thread-pre-split.i.i ], [ %call9.i.i.i, %if.end8.i.i4.i ]
  %cmp7.i.i = icmp eq ptr %28, null
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.then15.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rbuf.i.i = getelementptr inbounds %struct.dev_data, ptr %23, i32 0, i32 20
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rbuf.i.i, ptr %21, align 4
  br label %ep0_write.exit

if.then15.i:                                      ; preds = %if.end5.i.i
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %21, i32 0, i32 7
  %30 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ep0_complete, ptr %complete.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i.i, ptr %length.i.i, align 4
  %zero.i.i = getelementptr inbounds %struct.usb_request, ptr %21, i32 0, i32 6
  %32 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load13.i.i = load i32, ptr %zero.i.i, align 4
  %bf.clear14.i.i = and i32 %bf.load13.i.i, -8193
  store i32 %bf.clear14.i.i, ptr %zero.i.i, align 4
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %state.i, align 4
  %udc_usage.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 2
  %34 = ptrtoint ptr %udc_usage.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %udc_usage.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %udc_usage.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %6) #15
  %36 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then15.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.if.end35.i_crit_edge, label %if.then27.i.i.i, !prof !260

land.rhs16.i.i.i.if.end35.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %if.end35.i

if.then.i.i.i.i:                                  ; preds = %if.then15.i
  tail call void @__check_object_size(ptr noundef %39, i32 noundef %14, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #15
  %call.i.i.i180 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i180, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %14, i32 -1226833920) #20, !srcloc !265
  %asmresult.i.i.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !260

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef %14) #15
  %41 = tail call i32 @llvm.read_register.i32(metadata !247) #15
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !266
  %and.i.i.i.i.i = and i32 %43, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !268
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %39, ptr noundef %buf, i32 noundef %14) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #15, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !268
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %14, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %14, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.else22.i, label %if.then11.i.i.i, !prof !260

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = sub i32 %14, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %sub.i.i.i
  %44 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.end35.i

if.else22.i:                                      ; preds = %if.end.i.i.i
  %45 = ptrtoint ptr %setup_wLength.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %setup_wLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %46)
  %cmp24.i = icmp ult i32 %14, %46
  br i1 %cmp24.i, label %if.then26.i, label %if.else22.i.if.end.i_crit_edge

if.else22.i.if.end.i_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %req.i, align 4
  %zero.i = getelementptr inbounds %struct.usb_request, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %zero.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load28.i = load i32, ptr %zero.i, align 4
  %bf.set30.i = or i32 %bf.load28.i, 8192
  store i32 %bf.set30.i, ptr %zero.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then26.i, %if.else22.i.if.end.i_crit_edge
  %50 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gadget.i, align 4
  %ep032.i = getelementptr inbounds %struct.usb_gadget, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ep032.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ep032.i, align 4
  %54 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req.i, align 4
  %call34.i = tail call i32 @usb_ep_queue(ptr noundef %53, ptr noundef %55, i32 noundef 3264) #15
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end.i, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.if.end35.i_crit_edge
  %retval1.0.i = phi i32 [ %call34.i, %if.end.i ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.if.end35.i_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #15
  %56 = ptrtoint ptr %udc_usage.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %udc_usage.i, align 4
  %dec.i = add i32 %57, -1
  store i32 %dec.i, ptr %udc_usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %cmp38.i = icmp slt i32 %retval1.0.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end35.i.ep0_write.exit_crit_edge

if.end35.i.ep0_write.exit_crit_edge:              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ep0_write.exit

if.then40.i:                                      ; preds = %if.end35.i
  %58 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gadget.i, align 4
  %ep042.i = getelementptr inbounds %struct.usb_gadget, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %ep042.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ep042.i, align 4
  %62 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %req.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %rbuf.i5.i = getelementptr inbounds %struct.dev_data, ptr %65, i32 0, i32 20
  %cmp.not.i.i = icmp eq ptr %67, %rbuf.i5.i
  br i1 %cmp.not.i.i, label %if.then40.i.clean_req.exit.i_crit_edge, label %if.then.i6.i

if.then40.i.clean_req.exit.i_crit_edge:           ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %clean_req.exit.i

if.then.i6.i:                                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %67) #15
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rbuf.i5.i, ptr %63, align 4
  br label %clean_req.exit.i

clean_req.exit.i:                                 ; preds = %if.then.i6.i, %if.then40.i.clean_req.exit.i_crit_edge
  %complete.i7.i = getelementptr inbounds %struct.usb_request, ptr %63, i32 0, i32 7
  %69 = ptrtoint ptr %complete.i7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @epio_complete, ptr %complete.i7.i, align 4
  %setup_out_ready.i8.i = getelementptr inbounds %struct.dev_data, ptr %65, i32 0, i32 8
  %70 = ptrtoint ptr %setup_out_ready.i8.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i9.i = load i8, ptr %setup_out_ready.i8.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i9.i, -17
  store i8 %bf.clear.i.i, ptr %setup_out_ready.i8.i, align 1
  br label %ep0_write.exit

if.else47.i:                                      ; preds = %if.then5.i
  %71 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool52.not.i = icmp eq i8 %71, 0
  br i1 %tobool52.not.i, label %do.end63.i, label %do.end.i

do.end.i:                                         ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #17
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @shortname) #18
  %gadget56.i = getelementptr inbounds %struct.dev_data, ptr %6, i32 0, i32 14
  %72 = ptrtoint ptr %gadget56.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gadget56.i, align 4
  %ep057.i = getelementptr inbounds %struct.usb_gadget, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %ep057.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ep057.i, align 4
  %call58.i = tail call i32 @usb_ep_set_halt(ptr noundef %75) #15
  %76 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %state.i, align 4
  br label %ep0_write.exit

do.end63.i:                                       ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #17
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @shortname) #18
  br label %ep0_write.exit

do.end71.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.25, i32 noundef %11) #18
  br label %ep0_write.exit

ep0_write.exit:                                   ; preds = %do.end71.i, %do.end63.i, %do.end.i, %clean_req.exit.i, %if.end35.i.ep0_write.exit_crit_edge, %if.then9.i.i, %do.end.i.i, %if.then.i
  %retval.0.i182 = phi i32 [ %retval1.0.i, %clean_req.exit.i ], [ %14, %if.end35.i.ep0_write.exit_crit_edge ], [ -43, %if.then.i ], [ -51, %do.end.i ], [ -3, %do.end63.i ], [ -3, %do.end71.i ], [ -12, %if.then9.i.i ], [ -16, %do.end.i.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %77 = add i32 %len, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16354, i32 %77)
  %78 = icmp ult i32 %77, -16354
  br i1 %78, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %79 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #20, !srcloc !265
  %asmresult.i.i = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !260

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tag, i32 noundef 4) #15
  %80 = call i32 @llvm.read_register.i32(metadata !247) #15
  %and.i.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !266
  %and.i.i.i.i = and i32 %82, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !268
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tag, ptr noundef %buf, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #15, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !260

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i186 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i186
  %add.ptr.i.i = getelementptr i8, ptr %tag, i32 %sub.i.i
  %83 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i186)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %84 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp10.not = icmp eq i32 %85, 0
  br i1 %cmp10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %sub = add nsw i32 %len, -4
  %call13 = call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %sub) #15
  %cmp.i183 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %buf19 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %buf19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf19, align 4
  %tobool20.not = icmp eq ptr %88, null
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  call void @kfree(ptr noundef %call13) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %89 = ptrtoint ptr %buf19 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call13, ptr %buf19, align 4
  %config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 10
  %90 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call13, ptr %config, align 4
  %wTotalLength = getelementptr inbounds %struct.usb_config_descriptor, ptr %call13, i32 0, i32 2
  %91 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %wTotalLength, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %conv = zext i16 %93 to i32
  %call27 = call fastcc i32 @is_valid_config(ptr noundef %call13, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %sub30 = add nsw i32 %len, -22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30, i32 %conv)
  %cmp31 = icmp ult i32 %sub30, %conv
  %or.cond175 = or i1 %tobool28.not, %cmp31
  br i1 %or.cond175, label %if.end23.fail_crit_edge, label %if.end34

if.end23.fail_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end34:                                         ; preds = %if.end23
  %add.ptr35 = getelementptr i8, ptr %call13, i32 %conv
  %sub36 = sub nsw i32 %sub, %conv
  %arrayidx = getelementptr i8, ptr %add.ptr35, i32 1
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp38 = icmp eq i8 %95, 2
  %hs_config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end34
  %96 = ptrtoint ptr %hs_config to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr35, ptr %hs_config, align 4
  %wTotalLength42 = getelementptr inbounds %struct.usb_config_descriptor, ptr %add.ptr35, i32 0, i32 2
  %97 = ptrtoint ptr %wTotalLength42 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %wTotalLength42, align 1
  %99 = call i16 @llvm.bswap.i16(i16 %98)
  %conv43 = zext i16 %99 to i32
  %call45 = call fastcc i32 @is_valid_config(ptr noundef %add.ptr35, i32 noundef %conv43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  %sub48 = add nsw i32 %sub36, -18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48, i32 %conv43)
  %cmp49 = icmp ult i32 %sub48, %conv43
  %or.cond176 = or i1 %tobool46.not, %cmp49
  br i1 %or.cond176, label %if.then40.fail_crit_edge, label %if.end52

if.then40.fail_crit_edge:                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end52:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr53 = getelementptr i8, ptr %add.ptr35, i32 %conv43
  %sub54 = sub nsw i32 %sub36, %conv43
  br label %if.end56

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %hs_config to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %hs_config, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.end52
  %length.0 = phi i32 [ %sub54, %if.end52 ], [ %sub36, %if.else ]
  %kbuf.0 = phi ptr [ %add.ptr53, %if.end52 ], [ %add.ptr35, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %length.0)
  %cmp57.not = icmp eq i32 %length.0, 18
  br i1 %cmp57.not, label %if.end60, label %if.end56.fail_crit_edge

if.end56.fail_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end60:                                         ; preds = %if.end56
  %dev61 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 12
  %101 = ptrtoint ptr %dev61 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %kbuf.0, ptr %dev61, align 4
  %102 = ptrtoint ptr %kbuf.0 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %kbuf.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %103)
  %cmp64.not = icmp eq i8 %103, 18
  br i1 %cmp64.not, label %lor.lhs.false66, label %if.end60.fail_crit_edge

if.end60.fail_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

lor.lhs.false66:                                  ; preds = %if.end60
  %bDescriptorType = getelementptr inbounds %struct.usb_device_descriptor, ptr %kbuf.0, i32 0, i32 1
  %104 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cmp69.not = icmp eq i8 %105, 1
  br i1 %cmp69.not, label %lor.lhs.false71, label %lor.lhs.false66.fail_crit_edge

lor.lhs.false66.fail_crit_edge:                   ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

lor.lhs.false71:                                  ; preds = %lor.lhs.false66
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, ptr %kbuf.0, i32 0, i32 13
  %106 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp74.not = icmp eq i8 %107, 1
  br i1 %cmp74.not, label %if.end77, label %lor.lhs.false71.fail_crit_edge

lor.lhs.false71.fail_crit_edge:                   ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end77:                                         ; preds = %lor.lhs.false71
  %bcdUSB = getelementptr inbounds %struct.usb_device_descriptor, ptr %kbuf.0, i32 0, i32 2
  %108 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 2, ptr %bcdUSB, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %hs_config80 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  %109 = ptrtoint ptr %hs_config80 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hs_config80, align 4
  %tobool81.not = icmp eq ptr %110, null
  %. = select i1 %tobool81.not, i32 2, i32 3
  store i32 %., ptr getelementptr inbounds (%struct.usb_gadget_driver, ptr @gadgetfs_driver, i32 0, i32 1), align 4
  %call85 = call i32 @usb_gadget_probe_driver(ptr noundef nonnull @gadgetfs_driver) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.else90, label %if.then88

if.then88:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  br label %fail

if.else90:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %gadget_registered = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %111 = ptrtoint ptr %gadget_registered to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load = load i8, ptr %gadget_registered, align 1
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %gadget_registered, align 1
  br label %cleanup

fail:                                             ; preds = %if.then88, %lor.lhs.false71.fail_crit_edge, %lor.lhs.false66.fail_crit_edge, %if.end60.fail_crit_edge, %if.end56.fail_crit_edge, %if.then40.fail_crit_edge, %if.end23.fail_crit_edge
  %value.0 = phi i32 [ -22, %if.end56.fail_crit_edge ], [ -22, %if.end60.fail_crit_edge ], [ -22, %lor.lhs.false66.fail_crit_edge ], [ -22, %lor.lhs.false71.fail_crit_edge ], [ %call85, %if.then88 ], [ -22, %if.then40.fail_crit_edge ], [ -22, %if.end23.fail_crit_edge ]
  %112 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %config, align 4
  %hs_config93 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  %113 = ptrtoint ptr %hs_config93 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %hs_config93, align 4
  %dev94 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 12
  %114 = ptrtoint ptr %dev94 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %dev94, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_config.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dev_config, %do.end)) #15
          to label %if.then101 [label %do.end], !srcloc !257

if.then101:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dev_config.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.23, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.22, i32 noundef %value.0, ptr noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then101, %fail
  %115 = ptrtoint ptr %buf19 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buf19, align 4
  call void @kfree(ptr noundef %116) #15
  %117 = ptrtoint ptr %buf19 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %buf19, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else90, %if.then21, %if.then15, %if.end9.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %ep0_write.exit
  %retval.0 = phi i32 [ %retval.0.i182, %ep0_write.exit ], [ %86, %if.then15 ], [ -22, %if.then21 ], [ %value.0, %do.end ], [ %len, %if.else90 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep0_poll(ptr noundef %fd, ptr noundef %wait) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %wait1 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %5(ptr noundef %fd, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #15
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %setup_abort = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %setup_abort, align 1
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear5 = and i8 %bf.load, -5
  %8 = ptrtoint ptr %setup_abort to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.clear5, ptr %setup_abort, align 1
  br label %out

if.end6:                                          ; preds = %poll_wait.exit
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp8 = icmp eq i32 %10, 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %11 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %12 = icmp eq i8 %11, 0
  %spec.select38 = select i1 %12, i32 0, i32 4
  br label %out

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %ev_next = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %ev_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ev_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp22.not = icmp ne i32 %14, 0
  %spec.select = zext i1 %cmp22.not to i32
  br label %out

out:                                              ; preds = %if.else, %if.then9, %if.then2
  %mask.0 = phi i32 [ 16, %if.then2 ], [ %spec.select, %if.else ], [ %spec.select38, %if.then9 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.0, %out ], [ 325, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_ioctl(ptr nocapture noundef readonly %fd, i32 noundef %code, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gadget1 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %gadget1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget1, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else [
    i32 1, label %entry.if.end10_crit_edge
    i32 5, label %entry.if.end10_crit_edge22
  ]

entry.if.end10_crit_edge22:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 8
  %ioctl = getelementptr inbounds %struct.usb_gadget_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioctl, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %if.then4

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %udc_usage = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %udc_usage, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %udc_usage, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 8
  %ioctl7 = getelementptr inbounds %struct.usb_gadget_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ioctl7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioctl7, align 4
  %call = tail call i32 %16(ptr noundef %3, i32 noundef %code, i32 noundef %value) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %17 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %udc_usage, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %udc_usage, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge22
  %ret.0 = phi i32 [ -25, %entry.if.end10_crit_edge ], [ %call, %if.then4 ], [ -25, %if.else.if.end10_crit_edge ], [ -25, %entry.if.end10_crit_edge22 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %ev_next = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ev_next to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ev_next, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !270

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !260

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %value.0 = phi i32 [ -16, %entry.if.end_crit_edge ], [ 0, %if.else.i.i.i.i.if.end_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  ret i32 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %fd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gadget_registered = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gadget_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %gadget_registered, align 1
  %3 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @usb_gadget_unregister_driver(ptr noundef nonnull @gadgetfs_driver) #15
  %4 = ptrtoint ptr %gadget_registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load2 = load i8, ptr %gadget_registered, align 1
  %bf.clear3 = and i8 %bf.load2, -3
  store i8 %bf.clear3, ptr %gadget_registered, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %6) #15
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %buf, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  %count.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_dev.exit_crit_edge, label %if.then10.i.i.i.i, !prof !260

if.end5.i.i.i.i.put_dev.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_dev.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_dev.exit

do.body.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %head.i.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %11, %head.i.i
  br i1 %cmp.i.i.not.i, label %do.end16.i, label %do.body12.i, !prof !260

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %1) #15
  br label %put_dev.exit

put_dev.exit:                                     ; preds = %do.end16.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_dev.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep0_fasync(i32 noundef %f, ptr noundef %fd, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, ptr @.str.103, ptr @.str.102
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond) #18
  %fasync = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @fasync_helper(i32 noundef %f, ptr noundef %fd, i32 noundef %on, ptr noundef %fasync) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_req(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req, i16 noundef zeroext %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %setup_out_ready = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %setup_out_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %setup_out_ready, align 1
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @shortname) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %len)
  %cmp = icmp ugt i16 %len, 256
  br i1 %cmp, label %if.end8.i, label %if.end5thread-pre-split

if.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 2592) #21
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %req, align 4
  br label %if.end5

if.end5thread-pre-split:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %req, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5thread-pre-split, %if.end8.i
  %6 = phi ptr [ %.pr, %if.end5thread-pre-split ], [ %call9.i, %if.end8.i ]
  %cmp7 = icmp eq ptr %6, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %rbuf = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rbuf, ptr %req, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ep0_complete, ptr %complete, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %length, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load13 = load i32, ptr %zero, align 4
  %bf.clear14 = and i32 %bf.load13, -8193
  store i32 %bf.clear14, ptr %zero, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -12, %if.then9 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep0_complete(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #15
  %setup_in = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %setup_in to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %setup_in, align 1
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  %bf.shl = select i1 %cmp5.not, i8 0, i8 8
  %bf.clear8 = and i8 %bf.load, -25
  %bf.set = or i8 %bf.clear8, %bf.shl
  %bf.set18 = or i8 %bf.set, 16
  %6 = ptrtoint ptr %setup_in to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set18, ptr %setup_in, align 1
  %wait.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %fasync.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 1) #15
  br i1 %cmp5.not, label %if.then.if.end24_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %rbuf = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20
  %cmp21.not = icmp eq ptr %8, %rbuf
  br i1 %cmp21.not, label %land.lhs.true.if.end24_crit_edge, label %if.then23

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep, align 4
  %rbuf.i = getelementptr inbounds %struct.dev_data, ptr %10, i32 0, i32 20
  %cmp.not.i = icmp eq ptr %8, %rbuf.i
  br i1 %cmp.not.i, label %if.then23.clean_req.exit_crit_edge, label %if.then.i

if.then23.clean_req.exit_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %clean_req.exit

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %8) #15
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rbuf.i, ptr %req, align 4
  br label %clean_req.exit

clean_req.exit:                                   ; preds = %if.then.i, %if.then23.clean_req.exit_crit_edge
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @epio_complete, ptr %complete.i, align 4
  %setup_out_ready.i = getelementptr inbounds %struct.dev_data, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %setup_out_ready.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %setup_out_ready.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -17
  store i8 %bf.clear.i, ptr %setup_out_ready.i, align 1
  br label %if.end24

if.end24:                                         ; preds = %clean_req.exit, %land.lhs.true.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %complete = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 7
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @epio_complete, ptr %complete, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_readable(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %wait = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %fasync = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef 1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epio_complete(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %.sink = phi i32 [ %7, %if.else ], [ %5, %if.end.if.end6_crit_edge ]
  %8 = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 4
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @is_valid_config(ptr nocapture noundef readonly %config, i32 noundef %total) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bDescriptorType = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp3 = icmp eq i8 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %total)
  %cmp6 = icmp ugt i32 %total, 8
  %or.cond = and i1 %cmp6, %cmp3
  br i1 %or.cond, label %land.lhs.true8, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bConfigurationValue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp10.not = icmp eq i8 %5, 0
  br i1 %cmp10.not, label %land.lhs.true8.land.end_crit_edge, label %land.lhs.true12

land.lhs.true8.land.end_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %bmAttributes = getelementptr inbounds %struct.usb_config_descriptor, ptr %config, i32 0, i32 6
  %6 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bmAttributes, align 1
  %conv13 = zext i8 %7 to i32
  %and = and i32 %conv13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14.not = icmp eq i32 %and, 0
  br i1 %cmp14.not, label %land.lhs.true12.land.end_crit_edge, label %land.rhs

land.lhs.true12.land.end_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  %and18 = lshr i32 %conv13, 5
  %and18.lobit = and i32 %and18, 1
  %8 = xor i32 %and18.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true12.land.end_crit_edge, %land.lhs.true8.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ 0, %land.lhs.true12.land.end_crit_edge ], [ 0, %land.lhs.true8.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %8, %land.rhs ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_probe_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadgetfs_bind(ptr noundef %gadget, ptr nocapture noundef readnone %driver) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @the_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @CHIP, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 10
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %3) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @shortname, ptr noundef %1, ptr noundef %3) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %driver_data.i.i, align 4
  %gadget5 = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 14
  %5 = ptrtoint ptr %gadget5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %gadget, ptr %gadget5, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %6 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep0, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %0, ptr %7, align 4
  %9 = load ptr, ptr %ep0, align 4
  %call7 = tail call ptr @usb_ep_alloc_request(ptr noundef %9, i32 noundef 3264) #15
  %req = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 13
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %req, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end4.enomem_crit_edge, label %if.end11

if.end4.enomem_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %enomem

if.end11:                                         ; preds = %if.end4
  %context = getelementptr inbounds %struct.usb_request, ptr %call7, i32 0, i32 8
  %11 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %context, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @epio_complete, ptr %complete, align 4
  %15 = ptrtoint ptr %gadget5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gadget5, align 4
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn78.i = load ptr, ptr %ep_list.i, align 4
  %cmp.not81.i = icmp eq ptr %.pn78.i, %ep_list.i
  br i1 %cmp.not81.i, label %if.end11.do.end20_crit_edge, label %for.body.lr.ph.i

if.end11.do.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20

for.body.lr.ph.i:                                 ; preds = %if.end11
  %count.i.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 1
  %sb.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 18
  %epfiles23.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 15
  %prev.i.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 15, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn82.i = phi ptr [ %.pn78.i, %for.body.lr.ph.i ], [ %.pn.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %ep.083.i = getelementptr i8, ptr %.pn82.i, i32 -12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 216) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.activate_ep_files.exit_crit_edge, label %if.end.i

for.body.i.activate_ep_files.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %activate_ep_files.exit

if.end.i:                                         ; preds = %for.body.i
  %state.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @activate_ep_files.__key) #15
  %wait.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @activate_ep_files.__key.37) #15
  %name.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 7
  %name7.i = getelementptr i8, ptr %.pn82.i, i32 -8
  %20 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name7.i, align 4
  %call8.i = tail call ptr @strncpy(ptr noundef %name.i, ptr noundef %21, i32 noundef 15) #15
  %count.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %count.i, align 8
  %dev9.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %dev9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %0, ptr %dev9.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !270

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_dev.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !260

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_dev.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_dev.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %get_dev.exit.i

get_dev.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_dev.exit.i_crit_edge
  %ep10.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %ep10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ep.083.i, ptr %ep10.i, align 8
  %27 = ptrtoint ptr %ep.083.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %ep.083.i, align 4
  %call11.i = tail call ptr @usb_ep_alloc_request(ptr noundef %ep.083.i, i32 noundef 3264) #15
  %req.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call11.i, ptr %req.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %get_dev.exit.i.enomem1.i_crit_edge, label %if.end15.i

get_dev.exit.i.enomem1.i_crit_edge:               ; preds = %get_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enomem1.i

if.end15.i:                                       ; preds = %get_dev.exit.i
  %29 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sb.i, align 4
  %call18.i = tail call fastcc ptr @gadgetfs_create_file(ptr noundef %30, ptr noundef %name.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @ep_io_operations) #15
  %dentry.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 12
  %31 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call18.i, ptr %dentry.i, align 4
  %tobool20.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool20.not.i, label %enomem2.i, label %if.end22.i

if.end22.i:                                       ; preds = %if.end15.i
  %epfiles.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %epfiles.i, ptr noundef %33, ptr noundef %epfiles23.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.i.list_add_tail.exit.i_crit_edge

if.end22.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %epfiles.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %epfiles.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %epfiles23.i, ptr %epfiles.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %epfiles.i, ptr %33, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end22.i.list_add_tail.exit.i_crit_edge
  %38 = ptrtoint ptr %.pn82.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn82.i, align 4
  %39 = ptrtoint ptr %gadget5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gadget5, align 4
  %ep_list3.i = getelementptr inbounds %struct.usb_gadget, ptr %40, i32 0, i32 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ep_list3.i
  br i1 %cmp.not.i, label %list_add_tail.exit.i.do.end20_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_add_tail.exit.i.do.end20_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20

enomem2.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %req.i.le = getelementptr inbounds %struct.ep_data, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %req.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req.i.le, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep.083.i, ptr noundef %42) #15
  br label %enomem1.i

enomem1.i:                                        ; preds = %enomem2.i, %get_dev.exit.i.enomem1.i_crit_edge
  %call.i.i.i.i.i.i67.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #15
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.body.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %enomem1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i68.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i68.i, label %if.end5.i.i.i.i.i.put_dev.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !260

if.end5.i.i.i.i.i.put_dev.exit.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_dev.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #15
  br label %put_dev.exit.i

do.body.i.i:                                      ; preds = %enomem1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %head.i.i.i = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %45, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end16.i.i, label %do.body12.i.i, !prof !260

do.body12.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end16.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %0) #15
  br label %put_dev.exit.i

put_dev.exit.i:                                   ; preds = %do.end16.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_dev.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %activate_ep_files.exit

activate_ep_files.exit:                           ; preds = %put_dev.exit.i, %for.body.i.activate_ep_files.exit_crit_edge
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.40) #18
  tail call fastcc void @destroy_ep_files(ptr noundef nonnull %0) #15
  br label %enomem

do.end20:                                         ; preds = %list_add_tail.exit.i.do.end20_crit_edge, %if.end11.do.end20_crit_edge
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @shortname, ptr noundef %47) #18
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %0) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 3
  %48 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %state, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %0) #15
  %count.i44 = getelementptr inbounds %struct.dev_data, ptr %0, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i44, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i44, i32 1, i32 3, i32 1) #15
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i44, ptr %count.i44, i32 1, ptr elementtype(i32) %count.i44) #15, !srcloc !269
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end20.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !270

do.end20.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end20
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %50 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !260

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end20.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end20.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i44, i32 noundef %.sink.i.i.i.i) #15
  br label %cleanup

enomem:                                           ; preds = %activate_ep_files.exit, %if.end4.enomem_crit_edge
  tail call void @gadgetfs_unbind(ptr noundef %gadget)
  br label %cleanup

cleanup:                                          ; preds = %enomem, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %enomem ], [ -3, %entry.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadgetfs_unbind(ptr nocapture noundef %gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.71) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %state, align 4
  %udc_usage = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %udc_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25 = icmp sgt i32 %4, 0
  br i1 %cmp25, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #15
  %5 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %udc_usage, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #15
  tail call fastcc void @destroy_ep_files(ptr noundef %1)
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %7 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep0, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  %req = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %while.end.do.end9_crit_edge, label %if.then

while.end.do.end9_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep0, align 4
  tail call void @usb_ep_free_request(ptr noundef %14, ptr noundef nonnull %12) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %while.end.do.end9_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.71) #18
  %count.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_dev.exit_crit_edge, label %if.then10.i.i.i.i, !prof !260

if.end5.i.i.i.i.put_dev.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_dev.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_dev.exit

do.body.i:                                        ; preds = %do.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %head.i.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %17, %head.i.i
  br i1 %cmp.i.i.not.i, label %do.end16.i, label %do.body12.i, !prof !260

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #15, !srcloc !262
  unreachable

do.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %1) #15
  br label %put_dev.exit

put_dev.exit:                                     ; preds = %do.end16.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_dev.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadgetfs_setup(ptr noundef %gadget, ptr nocapture noundef %ctrl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %req1 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req1, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wValue, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %7 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %wLength, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp = icmp ugt i16 %9, 256
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not = icmp sgt i8 %11, -1
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %wLength, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %w_length.0 = phi i16 [ 256, %if.then4 ], [ %9, %entry.if.end6_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #15
  %setup_abort = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %setup_abort, align 1
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %setup_abort, align 1
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %15, label %if.end6.if.end39_crit_edge [
    i32 2, label %if.then9
    i32 4, label %if.then33
  ]

if.end6.if.end39_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then9:                                         ; preds = %if.end6
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 6
  %17 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i = icmp ult i32 %18, 3
  br i1 %cmp.i, label %if.then9.if.end20_crit_edge, label %land.lhs.true

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then9
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp12 = icmp eq i32 %20, 3
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true14:                                  ; preds = %land.lhs.true
  %hs_config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %hs_config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hs_config, align 4
  %cmp15 = icmp eq ptr %22, null
  br i1 %cmp15, label %if.then17, label %land.lhs.true14.if.end20_crit_edge

land.lhs.true14.if.end20_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @shortname) #18
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true14.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.then9.if.end20_crit_edge
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %state, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @shortname) #18
  %call27 = tail call fastcc ptr @next_event(ptr noundef %1, i32 noundef 1)
  %speed28 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %24 = ptrtoint ptr %speed28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed28, align 8
  %26 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call27, align 4
  tail call fastcc void @ep0_readable(ptr noundef %1)
  br label %if.end39

if.then33:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set37 = or i8 %bf.load, 4
  %27 = ptrtoint ptr %setup_abort to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set37, ptr %setup_abort, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end20, %if.end6.if.end39_crit_edge
  %rbuf = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rbuf, ptr %3, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %context, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %30 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bRequest, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %31, label %if.end39.do.end185_crit_edge [
    i8 6, label %sw.bb
    i8 9, label %sw.bb102
    i8 8, label %sw.bb162
  ]

if.end39.do.end185_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end185

sw.bb:                                            ; preds = %if.end39
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %34)
  %cmp43.not = icmp eq i8 %34, -128
  br i1 %cmp43.not, label %if.end46, label %sw.bb.do.end185_crit_edge

sw.bb.do.end185_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end185

if.end46:                                         ; preds = %sw.bb
  %35 = lshr i16 %6, 8
  %trunc = trunc i16 %35 to i8
  %36 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %trunc, label %if.end46.if.end299_crit_edge [
    i8 1, label %sw.bb48
    i8 6, label %sw.bb62
    i8 7, label %if.end46.sw.bb78_crit_edge
    i8 2, label %if.end46.sw.bb78_crit_edge444
    i8 3, label %if.end46.do.end185_crit_edge
  ]

if.end46.do.end185_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end185

if.end46.sw.bb78_crit_edge444:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb78

if.end46.sw.bb78_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb78

if.end46.if.end299_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

sw.bb48:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %37 = tail call i16 @llvm.umin.i16(i16 %w_length.0, i16 18)
  %cond = zext i16 %37 to i32
  %gadget56 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %gadget56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gadget56, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %42, i32 7)
  %bf.load57 = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load57, 40
  %conv58 = trunc i56 %bf.lshr to i8
  %dev59 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev59, align 4
  %bMaxPacketSize0 = getelementptr inbounds %struct.usb_device_descriptor, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %bMaxPacketSize0 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv58, ptr %bMaxPacketSize0, align 1
  %46 = load ptr, ptr %dev59, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %3, align 4
  br label %land.lhs.true268

sw.bb62:                                          ; preds = %if.end46
  %hs_config63 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %hs_config63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hs_config63, align 4
  %tobool64.not = icmp eq ptr %49, null
  br i1 %tobool64.not, label %sw.bb62.if.end299_crit_edge, label %if.end66

sw.bb62.if.end299_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

if.end66:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #17
  %50 = tail call i16 @llvm.umin.i16(i16 %w_length.0, i16 10)
  %cond77 = zext i16 %50 to i32
  %dev1.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i, align 4
  %bDeviceClass.i = getelementptr inbounds %struct.usb_device_descriptor, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %bDeviceClass.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bDeviceClass.i, align 1
  %bDeviceSubClass.i = getelementptr inbounds %struct.usb_device_descriptor, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %bDeviceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bDeviceSubClass.i, align 1
  %bDeviceProtocol.i = getelementptr inbounds %struct.usb_device_descriptor, ptr %52, i32 0, i32 5
  %57 = ptrtoint ptr %bDeviceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bDeviceProtocol.i, align 1
  %gadget.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %59 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gadget.i, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ep0.i, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %conv.i427 = trunc i56 %bf.lshr.i to i8
  %64 = ptrtoint ptr %rbuf to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %rbuf, align 4
  %qual.sroa.5.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 1
  %65 = ptrtoint ptr %qual.sroa.5.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 6, ptr %qual.sroa.5.0.arraydecay.sroa_idx.i, align 1
  %qual.sroa.7.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 2
  %66 = ptrtoint ptr %qual.sroa.7.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 2, ptr %qual.sroa.7.0.arraydecay.sroa_idx.i, align 2
  %qual.sroa.9.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 4
  %67 = ptrtoint ptr %qual.sroa.9.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %54, ptr %qual.sroa.9.0.arraydecay.sroa_idx.i, align 4
  %qual.sroa.11.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 5
  %68 = ptrtoint ptr %qual.sroa.11.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %56, ptr %qual.sroa.11.0.arraydecay.sroa_idx.i, align 1
  %qual.sroa.13.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 6
  %69 = ptrtoint ptr %qual.sroa.13.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %58, ptr %qual.sroa.13.0.arraydecay.sroa_idx.i, align 2
  %qual.sroa.15.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 7
  %70 = ptrtoint ptr %qual.sroa.15.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i427, ptr %qual.sroa.15.0.arraydecay.sroa_idx.i, align 1
  %qual.sroa.17.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 8
  %71 = ptrtoint ptr %qual.sroa.17.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %qual.sroa.17.0.arraydecay.sroa_idx.i, align 4
  %qual.sroa.19.0.arraydecay.sroa_idx.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 20, i32 9
  %72 = ptrtoint ptr %qual.sroa.19.0.arraydecay.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %qual.sroa.19.0.arraydecay.sroa_idx.i, align 1
  br label %land.lhs.true268

sw.bb78:                                          ; preds = %if.end46.sw.bb78_crit_edge, %if.end46.sw.bb78_crit_edge444
  %73 = and i16 %6, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp.not.i = icmp eq i16 %73, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb78.if.end299_crit_edge

sw.bb78.if.end299_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

if.end.i:                                         ; preds = %sw.bb78
  %gadget.i428 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 14
  %74 = ptrtoint ptr %gadget.i428 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gadget.i428, align 4
  %max_speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp.i.i = icmp ult i32 %77, 3
  br i1 %cmp.i.i, label %if.end.i.if.else.i_crit_edge, label %if.then1.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 5
  %78 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp3.i = icmp eq i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %trunc)
  %cmp5.i = icmp eq i8 %trunc, 7
  %spec.select.i = xor i1 %cmp5.i, %cmp3.i
  br i1 %spec.select.i, label %if.then12.i, label %if.then1.i.if.else.i_crit_edge

if.then1.i.if.else.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then12.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  %hs_config.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  br label %if.then87

if.else.i:                                        ; preds = %if.then1.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %config.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 10
  br label %if.then87

if.then87:                                        ; preds = %if.else.i, %if.then12.i
  %config.sink35.i = phi ptr [ %config.i, %if.else.i ], [ %hs_config.i, %if.then12.i ]
  %80 = ptrtoint ptr %config.sink35.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config.sink35.i, align 4
  %82 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %req1, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %83, align 4
  %85 = load ptr, ptr %config.sink35.i, align 4
  %wTotalLength18.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %wTotalLength18.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %wTotalLength18.i, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #15
  %89 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %req1, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %arrayidx.i = getelementptr i8, ptr %92, i32 1
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %trunc, ptr %arrayidx.i, align 1
  %94 = tail call i16 @llvm.umin.i16(i16 %88, i16 %w_length.0)
  %95 = zext i16 %94 to i32
  br label %land.lhs.true268

sw.bb102:                                         ; preds = %if.end39
  %96 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp105.not = icmp eq i8 %97, 0
  br i1 %cmp105.not, label %if.end108, label %sw.bb102.do.end185_crit_edge

sw.bb102.do.end185_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end185

if.end108:                                        ; preds = %sw.bb102
  %98 = and i16 %6, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp111 = icmp eq i16 %98, 0
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  %current_config = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 7
  %99 = ptrtoint ptr %current_config to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %current_config, align 4
  br label %do.end147

if.else115:                                       ; preds = %if.end108
  %max_speed.i429 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 6
  %100 = ptrtoint ptr %max_speed.i429 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_speed.i429, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i430 = icmp ult i32 %101, 3
  br i1 %cmp.i430, label %if.else115.if.else125_crit_edge, label %land.lhs.true118

if.else115.if.else125_crit_edge:                  ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else125

land.lhs.true118:                                 ; preds = %if.else115
  %speed119 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 5
  %102 = ptrtoint ptr %speed119 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %speed119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %cmp120 = icmp eq i32 %103, 3
  br i1 %cmp120, label %if.then122, label %land.lhs.true118.if.else125_crit_edge

land.lhs.true118.if.else125_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else125

if.then122:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #17
  %hs_config123 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 11
  br label %if.end130

if.else125:                                       ; preds = %land.lhs.true118.if.else125_crit_edge, %if.else115.if.else125_crit_edge
  %config126 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 10
  br label %if.end130

if.end130:                                        ; preds = %if.else125, %if.then122
  %.pn.in = phi ptr [ %hs_config123, %if.then122 ], [ %config126, %if.else125 ]
  %104 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pn = load ptr, ptr %.pn.in, align 4
  %config.0.in = getelementptr inbounds %struct.usb_config_descriptor, ptr %.pn, i32 0, i32 4
  %105 = ptrtoint ptr %config.0.in to i32
  call void @__asan_load1_noabort(i32 %105)
  %config.0 = load i8, ptr %config.0.in, align 1
  %106 = trunc i16 %6 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %config.0, i8 %106)
  %cmp134 = icmp eq i8 %config.0, %106
  br i1 %cmp134, label %if.then136, label %if.end130.if.end299_crit_edge

if.end130.if.end299_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

if.then136:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  %power.0.in = getelementptr inbounds %struct.usb_config_descriptor, ptr %.pn, i32 0, i32 7
  %107 = ptrtoint ptr %power.0.in to i32
  call void @__asan_load1_noabort(i32 %107)
  %power.0 = load i8, ptr %power.0.in, align 1
  %current_config137 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 7
  %108 = ptrtoint ptr %current_config137 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %config.0, ptr %current_config137, align 4
  %conv138 = zext i8 %power.0 to i32
  %mul = shl nuw nsw i32 %conv138, 1
  br label %do.end147

do.end147:                                        ; preds = %if.then136, %if.then113
  %.sink = phi i32 [ 8, %if.then113 ], [ %mul, %if.then136 ]
  %call114 = tail call i32 @usb_gadget_vbus_draw(ptr noundef %gadget, i32 noundef %.sink) #15
  %current_config149 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 7
  %109 = ptrtoint ptr %current_config149 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %current_config149, align 4
  %conv150 = zext i8 %110 to i32
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @shortname, i32 noundef %conv150) #18
  tail call void @usb_gadget_set_state(ptr noundef %gadget, i32 noundef 7) #15
  %111 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load152 = load i8, ptr %setup_abort, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load152)
  %tobool155.not = icmp sgt i8 %bf.load152, -1
  br i1 %tobool155.not, label %do.end147.land.lhs.true268_crit_edge, label %if.then156

do.end147.land.lhs.true268_crit_edge:             ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true268

if.then156:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear158 = and i8 %bf.load152, -33
  %.pre = zext i16 %w_length.0 to i32
  br label %delegate

sw.bb162:                                         ; preds = %if.end39
  %112 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %113)
  %cmp165.not = icmp eq i8 %113, -128
  br i1 %cmp165.not, label %if.end168, label %sw.bb162.do.end185_crit_edge

sw.bb162.do.end185_crit_edge:                     ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end185

if.end168:                                        ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #17
  %current_config169 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 7
  %114 = ptrtoint ptr %current_config169 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %current_config169, align 4
  %116 = ptrtoint ptr %rbuf to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %rbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %w_length.0)
  %cmp174 = icmp ne i16 %w_length.0, 0
  %. = zext i1 %cmp174 to i32
  br label %land.lhs.true268

do.end185:                                        ; preds = %sw.bb162.do.end185_crit_edge, %sw.bb102.do.end185_crit_edge, %if.end46.do.end185_crit_edge, %sw.bb.do.end185_crit_edge, %if.end39.do.end185_crit_edge
  %117 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load188 = load i8, ptr %setup_abort, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load188)
  %tobool191.not = icmp sgt i8 %bf.load188, -1
  %cond192 = select i1 %tobool191.not, ptr @.str.87, ptr @.str.86
  %118 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ctrl, align 1
  %conv194 = zext i8 %119 to i32
  %conv196 = zext i8 %31 to i32
  %conv197 = zext i16 %6 to i32
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %120 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %wIndex, align 1
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %conv198 = zext i16 %122 to i32
  %conv199 = zext i16 %w_length.0 to i32
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @shortname, ptr noundef nonnull %cond192, i32 noundef %conv194, i32 noundef %conv196, i32 noundef %conv197, i32 noundef %conv198, i32 noundef %conv199) #18
  %123 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load202 = load i8, ptr %setup_abort, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load202)
  %tobool205.not = icmp sgt i8 %bf.load202, -1
  br i1 %tobool205.not, label %do.end185.if.end299_crit_edge, label %if.then206

do.end185.if.end299_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

if.then206:                                       ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set210 = or i8 %bf.load202, 32
  br label %delegate

delegate:                                         ; preds = %if.then206, %if.then156
  %conv219.pre-phi = phi i32 [ %conv199, %if.then206 ], [ %.pre, %if.then156 ]
  %storemerge = phi i8 [ %bf.set210, %if.then206 ], [ %bf.clear158, %if.then156 ]
  %124 = ptrtoint ptr %setup_abort to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %storemerge, ptr %setup_abort, align 1
  %125 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ctrl, align 1
  %127 = lshr i8 %126, 1
  %bf.shl = and i8 %127, 64
  %bf.clear217 = and i8 %storemerge, -89
  %bf.set218 = or i8 %bf.shl, %bf.clear217
  %setup_wLength = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 9
  %128 = ptrtoint ptr %setup_wLength to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv219.pre-phi, ptr %setup_wLength, align 4
  store i8 %bf.set218, ptr %setup_abort, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %tobool231.not = icmp sgt i8 %126, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %w_length.0)
  %tobool233 = icmp ne i16 %w_length.0, 0
  %spec.select = select i1 %tobool231.not, i1 %tobool233, i1 false
  br i1 %spec.select, label %if.then236, label %delegate.if.end260_crit_edge, !prof !270

delegate.if.end260_crit_edge:                     ; preds = %delegate
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end260

if.then236:                                       ; preds = %delegate
  %ep0237 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %129 = ptrtoint ptr %ep0237 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ep0237, align 4
  %131 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %req1, align 4
  %call239 = tail call fastcc i32 @setup_req(ptr noundef %130, ptr noundef %132, i16 noundef zeroext %w_length.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %if.then236.if.end299_crit_edge, label %if.end243

if.then236.if.end299_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

if.end243:                                        ; preds = %if.then236
  %udc_usage = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 2
  %133 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %udc_usage, align 4
  %inc = add i32 %134, 1
  store i32 %inc, ptr %udc_usage, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  %135 = ptrtoint ptr %ep0237 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ep0237, align 4
  %137 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %req1, align 4
  %call247 = tail call i32 @usb_ep_queue(ptr noundef %136, ptr noundef %138, i32 noundef 3264) #15
  tail call void @_raw_spin_lock(ptr noundef %1) #15
  %139 = ptrtoint ptr %udc_usage to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %udc_usage, align 4
  %dec = add i32 %140, -1
  store i32 %dec, ptr %udc_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %cmp250 = icmp slt i32 %call247, 0
  br i1 %cmp250, label %if.then252, label %if.end255

if.then252:                                       ; preds = %if.end243
  %141 = ptrtoint ptr %ep0237 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ep0237, align 4
  %143 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %req1, align 4
  %145 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %142, align 4
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %144, align 4
  %rbuf.i432 = getelementptr inbounds %struct.dev_data, ptr %146, i32 0, i32 20
  %cmp.not.i433 = icmp eq ptr %148, %rbuf.i432
  br i1 %cmp.not.i433, label %if.then252.clean_req.exit_crit_edge, label %if.then.i

if.then252.clean_req.exit_crit_edge:              ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #17
  br label %clean_req.exit

if.then.i:                                        ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %148) #15
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %rbuf.i432, ptr %144, align 4
  br label %clean_req.exit

clean_req.exit:                                   ; preds = %if.then.i, %if.then252.clean_req.exit_crit_edge
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %144, i32 0, i32 7
  %150 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @epio_complete, ptr %complete.i, align 4
  %setup_out_ready.i = getelementptr inbounds %struct.dev_data, ptr %146, i32 0, i32 8
  %151 = ptrtoint ptr %setup_out_ready.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load.i434 = load i8, ptr %setup_out_ready.i, align 1
  %bf.clear.i = and i8 %bf.load.i434, -17
  store i8 %bf.clear.i, ptr %setup_out_ready.i, align 1
  br label %if.end299

if.end255:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load257 = load i8, ptr %setup_abort, align 1
  %bf.clear258 = and i8 %bf.load257, -33
  store i8 %bf.clear258, ptr %setup_abort, align 1
  br label %if.end260

if.end260:                                        ; preds = %if.end255, %delegate.if.end260_crit_edge
  %call261 = tail call fastcc ptr @next_event(ptr noundef %1, i32 noundef 3)
  %153 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %153, i32 8)
  %154 = load i64, ptr %ctrl, align 1
  %155 = ptrtoint ptr %call261 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 8)
  store i64 %154, ptr %call261, align 4
  %wait.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %fasync.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 1) #15
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  br label %cleanup

land.lhs.true268:                                 ; preds = %if.end168, %do.end147.land.lhs.true268_crit_edge, %if.then87, %if.end66, %sw.bb48
  %value.2 = phi i32 [ %., %if.end168 ], [ 0, %do.end147.land.lhs.true268_crit_edge ], [ %95, %if.then87 ], [ %cond77, %if.end66 ], [ %cond, %sw.bb48 ]
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %157)
  %cmp270.not = icmp eq i32 %157, 4
  br i1 %cmp270.not, label %land.lhs.true268.if.end299_crit_edge, label %if.then272

land.lhs.true268.if.end299_crit_edge:             ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end299

if.then272:                                       ; preds = %land.lhs.true268
  %length = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  %158 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %value.2, ptr %length, align 4
  %conv273 = zext i16 %w_length.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.2, i32 %conv273)
  %cmp274 = icmp ult i32 %value.2, %conv273
  %zero = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 6
  %159 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %159)
  %bf.load276 = load i32, ptr %zero, align 4
  %bf.shl278 = select i1 %cmp274, i32 8192, i32 0
  %bf.clear279 = and i32 %bf.load276, -8193
  %bf.set280 = or i32 %bf.clear279, %bf.shl278
  store i32 %bf.set280, ptr %zero, align 4
  %udc_usage281 = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 2
  %160 = ptrtoint ptr %udc_usage281 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %udc_usage281, align 4
  %inc282 = add i32 %161, 1
  store i32 %inc282, ptr %udc_usage281, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  %ep0284 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %162 = ptrtoint ptr %ep0284 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ep0284, align 4
  %call285 = tail call i32 @usb_ep_queue(ptr noundef %163, ptr noundef %3, i32 noundef 3264) #15
  tail call void @_raw_spin_lock(ptr noundef %1) #15
  %164 = ptrtoint ptr %udc_usage281 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %udc_usage281, align 4
  %dec288 = add i32 %165, -1
  store i32 %dec288, ptr %udc_usage281, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %cmp290 = icmp slt i32 %call285, 0
  br i1 %cmp290, label %do.end295, label %if.then272.cleanup_crit_edge

if.then272.cleanup_crit_edge:                     ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end295:                                        ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #17
  %call297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @shortname, i32 noundef %call285) #18
  %status = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 11
  %166 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end299:                                        ; preds = %land.lhs.true268.if.end299_crit_edge, %clean_req.exit, %if.then236.if.end299_crit_edge, %do.end185.if.end299_crit_edge, %if.end130.if.end299_crit_edge, %sw.bb78.if.end299_crit_edge, %sw.bb62.if.end299_crit_edge, %if.end46.if.end299_crit_edge
  %value.2443 = phi i32 [ %value.2, %land.lhs.true268.if.end299_crit_edge ], [ -95, %if.end130.if.end299_crit_edge ], [ -22, %sw.bb78.if.end299_crit_edge ], [ -95, %sw.bb62.if.end299_crit_edge ], [ -95, %if.end46.if.end299_crit_edge ], [ -95, %do.end185.if.end299_crit_edge ], [ %call247, %clean_req.exit ], [ %call239, %if.then236.if.end299_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end299, %do.end295, %if.then272.cleanup_crit_edge, %if.end260, %if.then17, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ %value.2443, %if.end299 ], [ 0, %if.end260 ], [ -95, %if.then.cleanup_crit_edge ], [ %call285, %do.end295 ], [ %call285, %if.then272.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadgetfs_disconnect(ptr nocapture noundef readonly %gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #15
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6 = icmp eq i32 %3, 2
  br i1 %cmp6, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @shortname) #18
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i = icmp eq i32 %6, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.sw.bb1.i_crit_edge

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %setup_abort.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %setup_abort.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %setup_abort.i, align 1
  %bf.set.i = or i8 %bf.load.i, 4
  store i8 %bf.set.i, ptr %setup_abort.i, align 1
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %if.then.i, %if.end.sw.bb1.i_crit_edge
  %ev_next.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %ev_next.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ev_next.i, align 4
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @shortname, i32 noundef 0, i32 noundef 2) #18
  %9 = ptrtoint ptr %ev_next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ev_next.i, align 4
  %inc34.i = add i32 %10, 1
  store i32 %inc34.i, ptr %ev_next.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc34.i)
  %cmp38.i = icmp ugt i32 %inc34.i, 5
  br i1 %cmp38.i, label %do.body41.i, label %next_event.exit, !prof !270

do.body41.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #15, !srcloc !271
  unreachable

next_event.exit:                                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx35.i = getelementptr %struct.dev_data, ptr %1, i32 0, i32 4, i32 %10
  %11 = call ptr @memset(ptr %arrayidx35.i, i32 0, i32 12)
  %type50.i = getelementptr %struct.dev_data, ptr %1, i32 0, i32 4, i32 %10, i32 1
  %12 = ptrtoint ptr %type50.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type50.i, align 4
  %wait.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %fasync.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 1) #15
  br label %exit

exit:                                             ; preds = %next_event.exit, %entry.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadgetfs_suspend(ptr nocapture noundef readonly %gadget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @shortname, i32 noundef %3) #18
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #15
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %.off = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call fastcc ptr @next_event(ptr noundef %1, i32 noundef 4)
  %wait.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  %fasync.i = getelementptr inbounds %struct.dev_data, ptr %1, i32 0, i32 6
  tail call void @kill_fasync(ptr noundef %fasync.i, i32 noundef 29, i32 noundef 1) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_ep_files(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @shortname, ptr noundef nonnull @.str.69, i32 noundef %1) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %dev) #15
  %epfiles = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %epfiles to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %epfiles, align 4
  %cmp.i.not41 = icmp eq ptr %3, %epfiles
  br i1 %cmp.i.not41, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %30, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -152
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev) #15
  %dentry6 = getelementptr i8, ptr %4, i32 60
  %13 = ptrtoint ptr %dentry6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry6, align 4
  store ptr null, ptr %dentry6, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #15
  %state10 = getelementptr i8, ptr %4, i32 -60
  %19 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ep11 = getelementptr i8, ptr %4, i32 -48
  %21 = ptrtoint ptr %ep11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep11, align 4
  %call12 = tail call i32 @usb_ep_disable(ptr noundef %22) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %23 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %state10, align 4
  %ep14 = getelementptr i8, ptr %4, i32 -48
  %24 = ptrtoint ptr %ep14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep14, align 4
  %req = getelementptr i8, ptr %4, i32 -44
  %26 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %25, ptr noundef %27) #15
  %28 = ptrtoint ptr %ep14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ep14, align 4
  tail call void @mutex_unlock(ptr noundef %add.ptr) #15
  %wait = getelementptr i8, ptr %4, i32 8
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  tail call fastcc void @put_ep(ptr noundef %add.ptr)
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  tail call void @d_delete(ptr noundef %14) #15
  tail call void @dput(ptr noundef %14) #15
  tail call void @up_write(ptr noundef %i_rwsem.i) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %dev) #15
  %29 = ptrtoint ptr %epfiles to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %epfiles, align 4
  %cmp.i.not = icmp eq ptr %30, %epfiles
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_read_iter(ptr noundef %iocb, ptr noundef %to) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %call1 = tail call fastcc i32 @get_ready_ep(i32 noundef %7, ptr noundef %3, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup60

if.end:                                           ; preds = %entry
  %bEndpointAddress.i = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  br i1 %tobool.not, label %if.end8.i, label %if.then3

if.then3:                                         ; preds = %if.end
  %bmAttributes.i = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 8, i32 3
  %10 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes.i, align 1
  %12 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i102.not = icmp eq i8 %12, 1
  br i1 %cmp.i102.not, label %if.then3.cleanup60.sink.split_crit_edge, label %lor.lhs.false

if.then3.cleanup60.sink.split_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup60.sink.split

lor.lhs.false:                                    ; preds = %if.then3
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %13 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i103 = icmp eq ptr %14, null
  br i1 %cmp.i103, label %do.end, label %lor.lhs.false.cleanup60.sink.split_crit_edge

lor.lhs.false.cleanup60.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup60.sink.split

do.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @shortname, ptr noundef %name) #18
  %dev = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #15
  %ep = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep, align 4
  %cmp12.not = icmp eq ptr %18, null
  br i1 %cmp12.not, label %do.end.if.end18_crit_edge, label %if.then15, !prof !270

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %18) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.end.if.end18_crit_edge
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %20) #15
  br label %cleanup60.sink.split

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #21
  %tobool24.not = icmp eq ptr %call9.i, null
  br i1 %tobool24.not, label %if.end8.i.cleanup60.sink.split_crit_edge, label %if.end35, !prof !270

if.end8.i.cleanup60.sink.split_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup60.sink.split

if.end35:                                         ; preds = %if.end8.i
  %ki_complete.i104 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %21 = ptrtoint ptr %ki_complete.i104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ki_complete.i104, align 8
  %cmp.i105 = icmp eq ptr %22, null
  br i1 %cmp.i105, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end35
  %call38 = tail call fastcc i32 @ep_io(ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38)
  %cmp39 = icmp sgt i32 %call38, -1
  br i1 %cmp39, label %if.then.i.i.i, label %if.then37.fail_crit_edge

if.then37.fail_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.then.i.i.i:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %call38, i1 noundef zeroext true) #15
  %call3.i = tail call i32 @_copy_to_iter(ptr noundef nonnull %call9.i, i32 noundef %call38, ptr noundef %to) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %call38)
  %cmp41.not = icmp eq i32 %call3.i, %call38
  %spec.store.select = select i1 %cmp41.not, i32 %call38, i32 -14
  br label %fail

if.else:                                          ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 96) #19
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %if.else.fail_crit_edge, label %if.end47

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end47:                                         ; preds = %if.else
  %to48 = getelementptr inbounds %struct.kiocb_priv, ptr %call7.i.i, i32 0, i32 6
  %call49 = tail call ptr @dup_iter(ptr noundef %to48, ptr noundef %to, i32 noundef 3264) #15
  %to_free = getelementptr inbounds %struct.kiocb_priv, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call49, ptr %to_free, align 8
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %fail

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %call54 = tail call fastcc i32 @ep_aio(ptr noundef %iocb, ptr noundef nonnull %call7.i.i, ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call54)
  %cmp55 = icmp eq i32 %call54, -529
  %spec.select = select i1 %cmp55, ptr null, ptr %call9.i
  br label %fail

fail:                                             ; preds = %if.end53, %if.then52, %if.else.fail_crit_edge, %if.then.i.i.i, %if.then37.fail_crit_edge
  %value.1 = phi i32 [ %spec.store.select, %if.then.i.i.i ], [ %call38, %if.then37.fail_crit_edge ], [ %call54, %if.end53 ], [ -12, %if.then52 ], [ -12, %if.else.fail_crit_edge ]
  %buf.2 = phi ptr [ %call9.i, %if.then.i.i.i ], [ %call9.i, %if.then37.fail_crit_edge ], [ %spec.select, %if.end53 ], [ %call9.i, %if.then52 ], [ %call9.i, %if.else.fail_crit_edge ]
  tail call void @kfree(ptr noundef %buf.2) #15
  br label %cleanup60.sink.split

cleanup60.sink.split:                             ; preds = %fail, %if.end8.i.cleanup60.sink.split_crit_edge, %if.end18, %lor.lhs.false.cleanup60.sink.split_crit_edge, %if.then3.cleanup60.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %value.1, %fail ], [ -74, %if.end18 ], [ -22, %lor.lhs.false.cleanup60.sink.split_crit_edge ], [ -22, %if.then3.cleanup60.sink.split_crit_edge ], [ -12, %if.end8.i.cleanup60.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup60.sink.split, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup60_crit_edge ], [ %retval.0.ph, %cleanup60.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_write_iter(ptr noundef %iocb, ptr noundef %from) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %call1 = tail call fastcc i32 @get_ready_ep(i32 noundef %7, ptr noundef %3, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2 = icmp eq i32 %9, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end8.i_crit_edge

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

land.lhs.true:                                    ; preds = %if.end
  %bEndpointAddress.i = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool4.not = icmp sgt i8 %11, -1
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end8.i_crit_edge

land.lhs.true.if.end8.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then5:                                         ; preds = %land.lhs.true
  %bmAttributes.i = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i116.not = icmp eq i8 %14, 1
  br i1 %cmp.i116.not, label %if.then5.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then5
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %15 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i117 = icmp eq ptr %16, null
  br i1 %cmp.i117, label %do.end, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

do.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @shortname, ptr noundef %name) #18
  %dev = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #15
  %ep = getelementptr inbounds %struct.ep_data, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep, align 4
  %cmp14.not = icmp eq ptr %20, null
  br i1 %cmp14.not, label %do.end.if.end20_crit_edge, label %if.then17, !prof !270

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 @usb_ep_set_halt(ptr noundef nonnull %20) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.end.if.end20_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %22) #15
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %land.lhs.true.if.end8.i_crit_edge, %if.end.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #21
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.end8.i.i.i, !prof !270

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end8.i.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !260

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %5, i1 noundef zeroext false) #15
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %5, ptr noundef %from) #15
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %5)
  %cmp.i114 = icmp eq i32 %retval.0.i.i, %5
  br i1 %cmp.i114, label %if.end48, label %copy_from_iter_full.exit, !prof !260

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iov_iter_revert(ptr noundef %from, i32 noundef %retval.0.i.i) #15
  br label %out

if.end48:                                         ; preds = %copy_from_iter.exit.i
  br i1 %cmp2, label %if.else, label %if.then58, !prof !260

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %call59 = tail call fastcc i32 @ep_config(ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %5)
  br label %out

if.else:                                          ; preds = %if.end48
  %ki_complete.i118 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %23 = ptrtoint ptr %ki_complete.i118 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ki_complete.i118, align 8
  %cmp.i119 = icmp eq ptr %24, null
  br i1 %cmp.i119, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call62 = tail call fastcc i32 @ep_io(ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %5)
  br label %out

if.else63:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 96) #19
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %if.else63.out_crit_edge, label %if.then66

if.else63.out_crit_edge:                          ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then66:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #17
  %call67 = tail call fastcc i32 @ep_aio(ptr noundef %iocb, ptr noundef nonnull %call7.i.i, ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call67)
  %cmp68 = icmp eq i32 %call67, -529
  %spec.select113 = select i1 %cmp68, ptr null, ptr %call9.i
  br label %out

out:                                              ; preds = %if.then66, %if.else63.out_crit_edge, %if.then61, %if.then58, %copy_from_iter_full.exit
  %value.1 = phi i32 [ %call59, %if.then58 ], [ %call62, %if.then61 ], [ -14, %copy_from_iter_full.exit ], [ -12, %if.else63.out_crit_edge ], [ %call67, %if.then66 ]
  %buf.1 = phi ptr [ %call9.i, %if.then58 ], [ %call9.i, %if.then61 ], [ %call9.i, %copy_from_iter_full.exit ], [ %call9.i, %if.else63.out_crit_edge ], [ %spec.select113, %if.then66 ]
  tail call void @kfree(ptr noundef %buf.1) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end8.i.cleanup.sink.split_crit_edge, %if.end20, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -74, %if.end20 ], [ %value.1, %out ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %if.then5.cleanup.sink.split_crit_edge ], [ -12, %if.end8.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_ioctl(ptr nocapture noundef readonly %fd, i32 noundef %code, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %call = tail call fastcc i32 @get_ready_ep(i32 noundef %3, ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #15
  %ep = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep, align 4
  %cmp1.not = icmp eq ptr %7, null
  br i1 %cmp1.not, label %if.end.if.end11_crit_edge, label %if.then3, !prof !270

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %8 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %code, label %if.then3.if.end11_crit_edge [
    i32 26369, label %sw.bb
    i32 26370, label %sw.bb6
    i32 26371, label %sw.bb8
  ]

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @usb_ep_fifo_status(ptr noundef nonnull %7) #15
  br label %if.end11

sw.bb6:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @usb_ep_fifo_flush(ptr noundef nonnull %7) #15
  br label %if.end11

sw.bb8:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @usb_ep_clear_halt(ptr noundef nonnull %7) #15
  br label %if.end11

if.end11:                                         ; preds = %sw.bb8, %sw.bb6, %sw.bb, %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %status.0 = phi i32 [ %call10, %sw.bb8 ], [ 0, %sw.bb6 ], [ %call5, %sw.bb ], [ -25, %if.then3.if.end11_crit_edge ], [ -19, %if.end.if.end11_crit_edge ]
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %10) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state = getelementptr inbounds %struct.dev_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp3 = icmp eq i32 %7, 5
  br i1 %cmp3, label %if.end.if.end20_crit_edge, label %if.else

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else:                                          ; preds = %if.end
  %state5 = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %do.end13

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state5, align 4
  tail call fastcc void @get_ep(ptr noundef %1)
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %private_data, align 4
  %name = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @shortname, ptr noundef %name) #18
  br label %if.end20

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %name15 = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @shortname, ptr noundef %name15, i32 noundef %9) #18
  br label %if.end20

if.end20:                                         ; preds = %do.end13, %if.then7, %if.end.if.end20_crit_edge
  %value.0 = phi i32 [ 0, %if.then7 ], [ -16, %do.end13 ], [ -2, %if.end.if.end20_crit_edge ]
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %13) #15
  tail call void @mutex_unlock(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %value.0, %if.end20 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %fd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1.not = icmp eq i32 %3, 3
  br i1 %cmp1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %bDescriptorType = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bDescriptorType, align 1
  %bDescriptorType4 = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %bDescriptorType4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bDescriptorType4, align 1
  %ep = getelementptr inbounds %struct.ep_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ep, align 4
  %call5 = tail call i32 @usb_ep_disable(ptr noundef %8) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #15
  tail call fastcc void @put_ep(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ready_ep(i32 noundef %f_flags, ptr noundef %epdata, i1 noundef zeroext %is_write) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %f_flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @mutex_trylock(ptr noundef %epdata) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %state = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5.not = icmp eq i32 %1, 1
  %or.cond = select i1 %is_write, i1 %cmp5.not, i1 false
  %or.cond41 = or i1 %cmp.not, %or.cond
  br i1 %or.cond41, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call11 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %epdata, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %state15 = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 1
  %2 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state15, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %3, label %do.body [
    i32 2, label %if.end14.cleanup_crit_edge
    i32 1, label %sw.bb16
    i32 3, label %if.end14.cleanup.sink.split_crit_edge
  ]

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb16:                                          ; preds = %if.end14
  br i1 %is_write, label %sw.bb16.cleanup_crit_edge, label %sw.bb16.cleanup.sink.split_crit_edge

sw.bb16.cleanup.sink.split_crit_edge:             ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_ready_ep.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@get_ready_ep, %cleanup.sink.split)) #15
          to label %if.then26 [label %cleanup.sink.split], !srcloc !257

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state15, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_ready_ep.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.44, ptr noundef nonnull @shortname, ptr noundef %epdata, i32 noundef %6) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then26, %do.body, %sw.bb16.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -11, %if.end.cleanup.sink.split_crit_edge ], [ -19, %do.body ], [ -19, %if.then26 ], [ -19, %sw.bb16.cleanup.sink.split_crit_edge ], [ -19, %if.end14.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %epdata) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %sw.bb16.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_io(ptr noundef %epdata, ptr noundef %buf, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #15
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #15
  %dev = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void @_raw_spin_lock_irq(ptr noundef %4) #15
  %ep = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 4
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %if.end.thread, label %if.end, !prof !270

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %8) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %req2 = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 5
  %9 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req2, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %done, ptr %context, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 7
  %12 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @epio_complete, ptr %complete, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %10, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %length, align 4
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep, align 4
  %call = call i32 @usb_ep_queue(ptr noundef %16, ptr noundef %10, i32 noundef 2592) #15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then14, label %if.end.cleanup_crit_edge, !prof !260

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %call15 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %done) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.then14.if.end50_crit_edge, label %if.then17

if.then14.if.end50_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then17:                                        ; preds = %if.then14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void @_raw_spin_lock_irq(ptr noundef %20) #15
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep, align 4
  %cmp21.not = icmp eq ptr %22, null
  br i1 %cmp21.not, label %if.else40, label %do.end, !prof !270

do.end:                                           ; preds = %if.then17
  %name = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 7
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @shortname, ptr noundef %name) #18
  %23 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ep, align 4
  %25 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req2, align 4
  %call33 = call i32 @usb_ep_dequeue(ptr noundef %24, ptr noundef %26) #15
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %28) #15
  call void @wait_for_completion(ptr noundef nonnull %done) #15
  %status = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 6
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %30)
  %cmp36 = icmp eq i32 %30, -104
  br i1 %cmp36, label %if.then37, label %do.end.if.end50_crit_edge

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -4, ptr %status, align 4
  br label %if.end50

if.else40:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %33) #15
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @shortname) #18
  %status48 = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 6
  %34 = ptrtoint ptr %status48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -19, ptr %status48, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else40, %if.then37, %do.end.if.end50_crit_edge, %if.then14.if.end50_crit_edge
  %status51 = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 6
  %35 = ptrtoint ptr %status51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ %36, %if.end50 ], [ %call, %if.end.cleanup_crit_edge ], [ -19, %if.end.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dup_iter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_aio(ptr noundef %iocb, ptr noundef %priv, ptr noundef %epdata, ptr noundef %buf, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %private, align 4
  %iocb1 = getelementptr inbounds %struct.kiocb_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %iocb1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %iocb, ptr %iocb1, align 8
  tail call void @kiocb_set_cancel_fn(ptr noundef %iocb, ptr noundef nonnull @ep_aio_cancel) #15
  %count.i = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !270

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_ep.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !260

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_ep.exit_crit_edge:            ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_ep.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_ep.exit

get_ep.exit:                                      ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_ep.exit_crit_edge
  %epdata2 = getelementptr inbounds %struct.kiocb_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %epdata2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %epdata, ptr %epdata2, align 4
  %actual = getelementptr inbounds %struct.kiocb_priv, ptr %priv, i32 0, i32 8
  %5 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actual, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !247) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm, align 8
  %mm3 = getelementptr inbounds %struct.kiocb_priv, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %mm3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %mm3, align 4
  %dev = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #15
  %ep = getelementptr inbounds %struct.ep_data, ptr %epdata, i32 0, i32 4
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep, align 4
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %get_ep.exit.fail_crit_edge, label %if.end, !prof !270

get_ep.exit.fail_crit_edge:                       ; preds = %get_ep.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end:                                           ; preds = %get_ep.exit
  %call6 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %16, i32 noundef 2592) #15
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.fail_crit_edge, label %if.end17, !prof !270

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end17:                                         ; preds = %if.end
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %priv, align 8
  %18 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %call6, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %length, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 7
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ep_aio_complete, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 8
  %21 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %iocb, ptr %context, align 4
  %22 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep, align 4
  %call21 = tail call i32 @usb_ep_queue(ptr noundef %23, ptr noundef nonnull %call6, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end31, label %if.then29, !prof !260

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %25, ptr noundef nonnull %call6) #15
  br label %fail

if.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %27) #15
  br label %cleanup

fail:                                             ; preds = %if.then29, %if.end.fail_crit_edge, %get_ep.exit.fail_crit_edge
  %value.0 = phi i32 [ -19, %get_ep.exit.fail_crit_edge ], [ -12, %if.end.fail_crit_edge ], [ %call21, %if.then29 ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %29) #15
  %to_free = getelementptr inbounds %struct.kiocb_priv, ptr %priv, i32 0, i32 7
  %30 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %to_free, align 8
  tail call void @kfree(ptr noundef %31) #15
  tail call void @kfree(ptr noundef %priv) #15
  tail call fastcc void @put_ep(ptr noundef %epdata)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end31
  %retval.0 = phi i32 [ %value.0, %fail ], [ -529, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kiocb_set_cancel_fn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_aio_cancel(ptr nocapture noundef readonly %iocb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !272
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !273
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %epdata2 = getelementptr inbounds %struct.kiocb_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %epdata2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %epdata2, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.do.body13_crit_edge, label %land.lhs.true, !prof !270

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

land.lhs.true:                                    ; preds = %if.end
  %ep = getelementptr inbounds %struct.ep_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.lhs.true.do.body13_crit_edge, label %land.rhs, !prof !270

land.lhs.true.do.body13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

land.rhs:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.rhs.do.body13_crit_edge, label %if.then8, !prof !270

land.rhs.do.body13_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @usb_ep_dequeue(ptr noundef nonnull %6, ptr noundef nonnull %8) #15
  br label %do.body13

do.body13:                                        ; preds = %if.then8, %land.rhs.do.body13_crit_edge, %land.lhs.true.do.body13_crit_edge, %if.end.do.body13_crit_edge
  %value.0 = phi i32 [ %call11, %if.then8 ], [ -22, %if.end.do.body13_crit_edge ], [ -22, %land.lhs.true.do.body13_crit_edge ], [ -22, %land.rhs.do.body13_crit_edge ]
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !274
  ret i32 %value.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_ep(ptr noundef %data) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %count = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #15, !srcloc !269
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !270

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !260

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep_aio_complete(ptr noundef %ep, ptr noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %private = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %epdata1 = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %epdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epdata1, align 4
  %dev = getelementptr inbounds %struct.ep_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 8
  %9 = ptrtoint ptr %epdata1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %epdata1, align 4
  %to_free = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %to_free, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %if.else, !prof !270

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %15) #15
  %16 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %to_free, align 8
  tail call void @kfree(ptr noundef %17) #15
  tail call void @kfree(ptr noundef %3) #15
  %18 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %private, align 4
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ki_complete, align 8
  %actual8 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %21 = ptrtoint ptr %actual8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not = icmp eq i32 %22, 0
  br i1 %tobool9.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.false ], [ %22, %if.then.cond.end_crit_edge ]
  tail call void %20(ptr noundef %1, i32 noundef %cond) #15
  br label %if.end36

if.else:                                          ; preds = %lor.lhs.false
  %status11 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %25 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp12.not = icmp eq i32 %26, 0
  br i1 %cmp12.not, label %if.else.if.end_crit_edge, label %do.end, !prof !260

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @shortname, ptr noundef %28, i32 noundef %26, i32 noundef %13) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else.if.end_crit_edge
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 4
  %buf23 = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %buf23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %buf23, align 4
  %32 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual, align 4
  %actual25 = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %actual25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %actual25, align 4
  %work = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %35 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.53, ptr noundef nonnull @ep_aio_complete.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry30 = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 4, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.kiocb_priv, ptr %3, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ep_user_copy_worker, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #15
  br label %if.end36

if.end36:                                         ; preds = %if.end, %cond.end
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #15
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock(ptr noundef %41) #15
  tail call fastcc void @put_ep(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ep(ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !258
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #15, !srcloc !259
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !260

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #15
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !261
  %dev = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call fastcc void @put_dev(ptr noundef %2)
  %epfiles = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %epfiles to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %epfiles, align 4
  %cmp.i.not = icmp eq ptr %4, %epfiles
  br i1 %cmp.i.not, label %do.body19, label %do.body14, !prof !260

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #15, !srcloc !275
  unreachable

do.body19:                                        ; preds = %if.end
  %head.i = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %6, %head.i
  br i1 %cmp.i.i.not, label %do.end34, label %do.body29, !prof !260

do.body29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #15, !srcloc !276
  unreachable

do.end34:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %data) #15
  br label %return

return:                                           ; preds = %do.end34, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep_user_copy_worker(ptr noundef %work) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  %iocb2 = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %iocb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb2, align 8
  tail call void @kthread_use_mm(ptr noundef %1) #15
  %buf = getelementptr i8, ptr %work, i32 44
  %actual = getelementptr i8, ptr %work, i32 76
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge, label %if.then27.i.i, !prof !260

land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_iter.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %copy_to_iter.exit.thread

if.then.i.i.i:                                    ; preds = %entry
  %to = getelementptr i8, ptr %work, i32 48
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  tail call void @__check_object_size(ptr noundef %7, i32 noundef %5, i1 noundef zeroext true) #15
  %call3.i = tail call i32 @_copy_to_iter(ptr noundef %7, i32 noundef %5, ptr noundef %to) #15
  tail call void @kthread_unuse_mm(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.then.i.i.i._crit_edge, label %if.then.i.i.i._crit_edge16

if.then.i.i.i._crit_edge16:                       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %9

if.then.i.i.i._crit_edge:                         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %8

copy_to_iter.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge
  tail call void @kthread_unuse_mm(ptr noundef %1) #15
  br label %8

8:                                                ; preds = %copy_to_iter.exit.thread, %if.then.i.i.i._crit_edge
  br label %9

9:                                                ; preds = %8, %if.then.i.i.i._crit_edge16
  %10 = phi i32 [ -14, %8 ], [ %call3.i, %if.then.i.i.i._crit_edge16 ]
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ki_complete, align 8
  tail call void %12(ptr noundef %3, i32 noundef %10) #15
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %14) #15
  %to_free = getelementptr i8, ptr %work, i32 72
  %15 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %to_free, align 8
  tail call void @kfree(ptr noundef %16) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_use_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unuse_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_config(ptr noundef %data, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len)
  %cmp1 = icmp ult i32 %len, 11
  br i1 %cmp1, label %if.end.fail_crit_edge, label %if.end3

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %tag.0.copyload = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tag.0.copyload)
  %cmp4.not = icmp eq i32 %tag.0.copyload, 1
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @shortname, ptr noundef %name, i32 noundef %tag.0.copyload) #18
  br label %fail

if.end6:                                          ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %desc = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 8
  %3 = call ptr @memcpy(ptr %desc, ptr %add.ptr, i32 7)
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp8.not = icmp eq i8 %5, 7
  br i1 %cmp8.not, label %lor.lhs.false, label %if.end6.fail_crit_edge

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

lor.lhs.false:                                    ; preds = %if.end6
  %bDescriptorType = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp12.not = icmp eq i8 %7, 5
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end15:                                         ; preds = %lor.lhs.false
  %8 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %len, label %if.end15.fail_crit_edge [
    i32 11, label %if.end15.if.end44_crit_edge
    i32 18, label %if.end22
  ]

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

if.end22:                                         ; preds = %if.end15
  %hs_desc = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 9
  %add.ptr23 = getelementptr i8, ptr %buf, i32 11
  %9 = call ptr @memcpy(ptr %hs_desc, ptr %add.ptr23, i32 7)
  %10 = ptrtoint ptr %hs_desc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hs_desc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp27.not = icmp eq i8 %11, 7
  br i1 %cmp27.not, label %lor.lhs.false29, label %if.end22.do.end38_crit_edge

if.end22.do.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38

lor.lhs.false29:                                  ; preds = %if.end22
  %bDescriptorType31 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %bDescriptorType31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bDescriptorType31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp33.not = icmp eq i8 %13, 5
  br i1 %cmp33.not, label %lor.lhs.false29.if.end44_crit_edge, label %lor.lhs.false29.do.end38_crit_edge

lor.lhs.false29.do.end38_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38

lor.lhs.false29.if.end44_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

do.end38:                                         ; preds = %lor.lhs.false29.do.end38_crit_edge, %if.end22.do.end38_crit_edge
  %name40 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @shortname, ptr noundef %name40) #18
  br label %fail

if.end44:                                         ; preds = %lor.lhs.false29.if.end44_crit_edge, %if.end15.if.end44_crit_edge
  %dev = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %state46 = getelementptr inbounds %struct.dev_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp47 = icmp eq i32 %19, 5
  br i1 %cmp47, label %if.end44.gone.thread_crit_edge, label %if.else

if.end44.gone.thread_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %gone.thread

if.else:                                          ; preds = %if.end44
  %ep50 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %ep50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep50, align 4
  %cmp51 = icmp eq ptr %21, null
  br i1 %cmp51, label %if.else.gone.thread_crit_edge, label %if.end55

if.else.gone.thread_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %gone.thread

if.end55:                                         ; preds = %if.else
  %gadget = getelementptr inbounds %struct.dev_data, ptr %17, i32 0, i32 14
  %22 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gadget, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %25, label %do.end64 [
    i32 1, label %if.end55.sw.epilog_crit_edge
    i32 2, label %if.end55.sw.epilog_crit_edge123
    i32 3, label %sw.bb59
  ]

if.end55.sw.epilog_crit_edge123:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %hs_desc60 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 9
  br label %sw.epilog

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %name66 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 7
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @shortname, ptr noundef %name66) #18
  br label %gone.thread

sw.epilog:                                        ; preds = %sw.bb59, %if.end55.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge123
  %hs_desc60.sink = phi ptr [ %hs_desc60, %sw.bb59 ], [ %desc, %if.end55.sw.epilog_crit_edge ], [ %desc, %if.end55.sw.epilog_crit_edge123 ]
  %desc61 = getelementptr inbounds %struct.usb_ep, ptr %21, i32 0, i32 9
  %27 = ptrtoint ptr %desc61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hs_desc60.sink, ptr %desc61, align 4
  %call69 = tail call i32 @usb_ep_enable(ptr noundef nonnull %21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %gone.thread120, label %gone

gone.thread120:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state, align 4
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %30) #15
  br label %if.end84

gone.thread:                                      ; preds = %do.end64, %if.else.gone.thread_crit_edge, %if.end44.gone.thread_crit_edge
  %value.0.ph = phi i32 [ -19, %if.else.gone.thread_crit_edge ], [ -2, %if.end44.gone.thread_crit_edge ], [ -22, %do.end64 ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %32) #15
  br label %fail

gone:                                             ; preds = %sw.epilog
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp77 = icmp slt i32 %call69, 0
  br i1 %cmp77, label %gone.fail_crit_edge, label %gone.if.end84_crit_edge

gone.if.end84_crit_edge:                          ; preds = %gone
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

gone.fail_crit_edge:                              ; preds = %gone
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail

fail:                                             ; preds = %gone.fail_crit_edge, %gone.thread, %do.end38, %if.end15.fail_crit_edge, %lor.lhs.false.fail_crit_edge, %if.end6.fail_crit_edge, %do.end, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %value.1 = phi i32 [ %call69, %gone.fail_crit_edge ], [ -51, %entry.fail_crit_edge ], [ -22, %if.end15.fail_crit_edge ], [ -22, %if.end6.fail_crit_edge ], [ -22, %lor.lhs.false.fail_crit_edge ], [ -22, %if.end.fail_crit_edge ], [ -22, %do.end38 ], [ -22, %do.end ], [ %value.0.ph, %gone.thread ]
  %bDescriptorType81 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %bDescriptorType81 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %bDescriptorType81, align 1
  %bDescriptorType83 = getelementptr inbounds %struct.ep_data, ptr %data, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %bDescriptorType83 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %bDescriptorType83, align 1
  br label %if.end84

if.end84:                                         ; preds = %fail, %gone.if.end84_crit_edge, %gone.thread120
  %value.2 = phi i32 [ %value.1, %fail ], [ %call69, %gone.if.end84_crit_edge ], [ %len, %gone.thread120 ]
  ret i32 %value.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_fifo_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_fifo_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @next_event(ptr noundef %dev, i32 noundef %type) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %type, label %do.body20 [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge80
  ]

entry.sw.bb2_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %sw.bb.sw.bb1_crit_edge

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb1

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %setup_abort = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %setup_abort to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %setup_abort, align 1
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %setup_abort, align 1
  br label %sw.bb1

sw.bb1:                                           ; preds = %if.then, %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %ev_next = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %ev_next to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ev_next, align 4
  br label %do.end28

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge80
  %ev_next3 = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %ev_next3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ev_next3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not77 = icmp eq i32 %6, 0
  br i1 %cmp4.not77, label %sw.bb2.do.end28_crit_edge, label %sw.bb2.for.body_crit_edge

sw.bb2.for.body_crit_edge:                        ; preds = %sw.bb2
  br label %for.body

sw.bb2.do.end28_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb2.for.body_crit_edge
  %i.078 = phi i32 [ %inc.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %sw.bb2.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dev_data, ptr %dev, i32 0, i32 4, i32 %i.078
  %type6 = getelementptr %struct.dev_data, ptr %dev, i32 0, i32 4, i32 %i.078, i32 1
  %7 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %type)
  %cmp7.not = icmp eq i32 %8, %type
  br i1 %cmp7.not, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = add i32 %i.078, 1
  br label %for.inc

do.end:                                           ; preds = %for.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @shortname, i32 noundef %i.078, i32 noundef %type) #18
  %9 = ptrtoint ptr %ev_next3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ev_next3, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %ev_next3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %i.078)
  %cmp12 = icmp eq i32 %dec, %i.078
  br i1 %cmp12, label %do.end.do.end28_crit_edge, label %if.end14

do.end.do.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

if.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %i.078, 1
  %arrayidx18 = getelementptr %struct.dev_data, ptr %dev, i32 0, i32 4, i32 %add
  %sub = sub i32 %dec, %i.078
  %mul = mul i32 %sub, 12
  %11 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx18, i32 %mul)
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end14 ]
  %12 = ptrtoint ptr %ev_next3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ev_next3, align 4
  %cmp4.not = icmp eq i32 %inc.pre-phi, %13
  br i1 %cmp4.not, label %for.inc.do.end28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1108, 0\0A.popsection", ""() #15, !srcloc !277
  unreachable

do.end28:                                         ; preds = %for.inc.do.end28_crit_edge, %do.end.do.end28_crit_edge, %sw.bb2.do.end28_crit_edge, %sw.bb1
  %ev_next30 = getelementptr inbounds %struct.dev_data, ptr %dev, i32 0, i32 5
  %14 = ptrtoint ptr %ev_next30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ev_next30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @shortname, i32 noundef %15, i32 noundef %type) #18
  %16 = ptrtoint ptr %ev_next30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ev_next30, align 4
  %inc34 = add i32 %17, 1
  store i32 %inc34, ptr %ev_next30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc34)
  %cmp38 = icmp ugt i32 %inc34, 5
  br i1 %cmp38, label %do.body41, label %do.end49, !prof !270

do.body41:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/legacy/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #15, !srcloc !271
  unreachable

do.end49:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx35 = getelementptr %struct.dev_data, ptr %dev, i32 0, i32 4, i32 %17
  %18 = call ptr @memset(ptr %arrayidx35, i32 0, i32 12)
  %type50 = getelementptr %struct.dev_data, ptr %dev, i32 0, i32 4, i32 %17, i32 1
  %19 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %type, ptr %type50, align 4
  ret ptr %arrayidx35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !246}
!llvm.named.register.sp = !{!247}
!llvm.module.flags = !{!248, !249, !250, !251, !252, !253, !254, !255}
!llvm.ident = !{!256}

!0 = !{ptr @__UNIQUE_ID_description244, !1, !"__UNIQUE_ID_description244", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 72, i32 1}
!2 = !{ptr @__UNIQUE_ID_author245, !3, !"__UNIQUE_ID_author245", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 73, i32 1}
!4 = !{ptr @__UNIQUE_ID_file246, !5, !"__UNIQUE_ID_file246", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 74, i32 1}
!6 = !{ptr @__UNIQUE_ID_license247, !5, !"__UNIQUE_ID_license247", i1 false, i1 false}
!7 = !{ptr @__param_default_uid, !8, !"__param_default_uid", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1953, i32 1}
!9 = !{ptr @__UNIQUE_ID_default_uidtype262, !8, !"__UNIQUE_ID_default_uidtype262", i1 false, i1 false}
!10 = !{ptr @__param_default_gid, !11, !"__param_default_gid", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1954, i32 1}
!12 = !{ptr @__UNIQUE_ID_default_gidtype263, !11, !"__UNIQUE_ID_default_gidtype263", i1 false, i1 false}
!13 = !{ptr @__param_default_perm, !14, !"__param_default_perm", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1955, i32 1}
!15 = !{ptr @__UNIQUE_ID_default_permtype264, !14, !"__UNIQUE_ID_default_permtype264", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias265, !17, !"__UNIQUE_ID_alias265", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2100, i32 1}
!18 = !{ptr @__initcall__kmod_gadgetfs__266_2114_init6, !19, !"__initcall__kmod_gadgetfs__266_2114_init6", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2114, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2118, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cleanup.__UNIQUE_ID_ddebug267, !21, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!26 = !{ptr @__exitcall_cleanup, !27, !"__exitcall_cleanup", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2121, i32 1}
!28 = !{ptr @default_uid, !29, !"default_uid", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1949, i32 17}
!30 = !{ptr @default_gid, !31, !"default_gid", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1950, i32 17}
!32 = !{ptr @__param_str_default_uid, !8, !"__param_str_default_uid", i1 false, i1 false}
!33 = !{ptr @__param_str_default_gid, !11, !"__param_str_default_gid", i1 false, i1 false}
!34 = !{ptr @__param_str_default_perm, !14, !"__param_str_default_perm", i1 false, i1 false}
!35 = !{ptr @default_perm, !36, !"default_perm", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1951, i32 17}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2110, i32 3}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @driver_desc, !43, !"driver_desc", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 69, i32 19}
!44 = !{ptr @shortname, !45, !"shortname", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 70, i32 19}
!46 = !{ptr @gadgetfs_type, !47, !"gadgetfs_type", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2094, i32 32}
!48 = !{ptr @gadgetfs_context_ops, !49, !"gadgetfs_context_ops", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2070, i32 43}
!50 = !{ptr @the_device, !51, !"the_device", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1659, i32 26}
!52 = !{ptr @CHIP, !53, !"CHIP", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 231, i32 20}
!54 = !{ptr @gadget_fs_operations, !55, !"gadget_fs_operations", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 2002, i32 38}
!56 = !{ptr @dev_new.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 175, i32 2}
!58 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dev_new.__key.7, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 177, i32 2}
!61 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ep0_operations, !63, !"ep0_operations", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1924, i32 37}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 930, i32 4}
!66 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ep0_read._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ep0_read._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1054, i32 3}
!71 = !{ptr @ep0_read._entry.11, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ep0_read._entry_ptr.13, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1060, i32 3}
!75 = !{ptr @ep0_read._entry.14, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ep0_read._entry_ptr.16, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 891, i32 3}
!79 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @setup_req._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @setup_req._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!84 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1900, i32 2}
!91 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dev_config.__UNIQUE_ID_ddebug261, !90, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1160, i32 4}
!95 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ep0_write._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ep0_write._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1165, i32 4}
!100 = !{ptr @ep0_write._entry.26, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ep0_write._entry_ptr.28, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ep0_write._entry.29, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1168, i32 3}
!104 = !{ptr @ep0_write._entry_ptr.30, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @gadgetfs_driver, !106, !"gadgetfs_driver", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1739, i32 33}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1669, i32 3}
!109 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @gadgetfs_bind._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @gadgetfs_bind._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1688, i32 2}
!114 = !{ptr @gadgetfs_bind._entry.33, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @gadgetfs_bind._entry_ptr.35, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @activate_ep_files.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1598, i32 3}
!118 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @activate_ep_files.__key.37, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1599, i32 3}
!121 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1627, i32 2}
!124 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @activate_ep_files._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @activate_ep_files._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @ep_io_operations, !128, !"ep_io_operations", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 695, i32 37}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 591, i32 3}
!131 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @ep_read_iter._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @ep_read_iter._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 322, i32 3}
!136 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @get_ready_ep.__UNIQUE_ID_ddebug248, !135, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 353, i32 5}
!140 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ep_io._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ep_io._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 364, i32 5}
!145 = !{ptr @ep_io._entry.47, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ep_io._entry_ptr.49, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @init_completion.__key, !148, !"__key", i1 false, i1 false}
!148 = !{!"../include/linux/completion.h", i32 87, i32 2}
!149 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 506, i32 4}
!152 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ep_aio_complete._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ep_aio_complete._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @ep_aio_complete.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 511, i32 3}
!157 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 653, i32 3}
!160 = !{ptr @ep_write_iter._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ep_write_iter._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.55, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 738, i32 3}
!164 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ep_config._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @ep_config._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 761, i32 4}
!169 = !{ptr @ep_config._entry.57, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ep_config._entry_ptr.59, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 788, i32 3}
!173 = !{ptr @ep_config._entry.60, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ep_config._entry_ptr.62, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 827, i32 3}
!177 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ep_open._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @ep_open._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.66, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 829, i32 3}
!182 = !{ptr @ep_open._entry.65, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ep_open._entry_ptr.67, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.68, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1541, i32 2}
!186 = !{ptr @.str.69, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @destroy_ep_files._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @destroy_ep_files._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1637, i32 2}
!191 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @gadgetfs_unbind._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @gadgetfs_unbind._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.73, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1655, i32 2}
!196 = !{ptr @gadgetfs_unbind._entry.72, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @gadgetfs_unbind._entry_ptr.74, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1355, i32 4}
!200 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @gadgetfs_setup._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @gadgetfs_setup._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1361, i32 3}
!205 = !{ptr @gadgetfs_setup._entry.77, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @gadgetfs_setup._entry_ptr.79, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1449, i32 4}
!209 = !{ptr @gadgetfs_setup._entry.80, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @gadgetfs_setup._entry_ptr.82, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1470, i32 3}
!213 = !{ptr @gadgetfs_setup._entry.83, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @gadgetfs_setup._entry_ptr.85, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.89, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1528, i32 4}
!219 = !{ptr @gadgetfs_setup._entry.88, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @gadgetfs_setup._entry_ptr.90, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.91, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1097, i32 4}
!223 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @next_event._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @next_event._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1110, i32 2}
!228 = !{ptr @next_event._entry.93, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @next_event._entry_ptr.95, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.96, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1711, i32 2}
!232 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @gadgetfs_disconnect._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @gadgetfs_disconnect._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1724, i32 2}
!237 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @gadgetfs_suspend._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @gadgetfs_suspend._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/gadget/legacy/inode.c", i32 1178, i32 2}
!242 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @ep0_fasync._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @ep0_fasync._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.103, !241, !"<string literal>", i1 false, i1 false}
!247 = !{!"sp"}
!248 = !{i32 1, !"wchar_size", i32 2}
!249 = !{i32 1, !"min_enum_size", i32 4}
!250 = !{i32 8, !"branch-target-enforcement", i32 0}
!251 = !{i32 8, !"sign-return-address", i32 0}
!252 = !{i32 8, !"sign-return-address-all", i32 0}
!253 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!254 = !{i32 7, !"uwtable", i32 1}
!255 = !{i32 7, !"frame-pointer", i32 2}
!256 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!257 = !{i64 2149004501, i64 2149004506, i64 2149004519, i64 2149004563, i64 2149004597, i64 2149004618}
!258 = !{i64 2148493163}
!259 = !{i64 2148407603, i64 2148407635, i64 2148407664, i64 2148407698, i64 2148407729, i64 2148407752}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{i64 2149356793}
!262 = !{i64 2154387852, i64 2154388350, i64 2154387889, i64 2154387945, i64 2154387979, i64 2154388003, i64 2154388044, i64 2154388065, i64 2154388093, i64 2154388127}
!263 = !{i64 2152456422, i64 2152456447}
!264 = !{!"auto-init"}
!265 = !{i64 2152455741, i64 2152455766}
!266 = !{i64 4951296}
!267 = !{i64 4951493}
!268 = !{i64 2152436726}
!269 = !{i64 2148405138, i64 2148405170, i64 2148405199, i64 2148405233, i64 2148405264, i64 2148405287}
!270 = !{!"branch_weights", i32 1, i32 2000}
!271 = !{i64 2154439419, i64 2154439918, i64 2154439456, i64 2154439512, i64 2154439546, i64 2154439570, i64 2154439611, i64 2154439632, i64 2154439660, i64 2154439694}
!272 = !{i64 810040}
!273 = !{i64 807743}
!274 = !{i64 807553}
!275 = !{i64 2154390289, i64 2154390787, i64 2154390326, i64 2154390382, i64 2154390416, i64 2154390440, i64 2154390481, i64 2154390502, i64 2154390530, i64 2154390564}
!276 = !{i64 2154391947, i64 2154392445, i64 2154391984, i64 2154392040, i64 2154392074, i64 2154392098, i64 2154392139, i64 2154392160, i64 2154392188, i64 2154392222}
!277 = !{i64 2154436125, i64 2154436624, i64 2154436162, i64 2154436218, i64 2154436252, i64 2154436276, i64 2154436317, i64 2154436338, i64 2154436366, i64 2154436400}
