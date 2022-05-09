; ModuleID = '/llk/IR_all_yes/fs/exfat/super.c_pt.bc'
source_filename = "../fs/exfat/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.user_namespace = type opaque
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.boot_sector = type { [3 x i8], [8 x i8], [53 x i8], i64, i64, i32, i32, i32, i32, i32, i32, [2 x i8], i16, i8, i8, i8, i8, i8, [7 x i8], [390 x i8], i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.77 }
%union.anon.77 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.exfat_chain = type { i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.67 = type { i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.72 = type { ptr }
%struct.exfat_inode_info = type { %struct.exfat_chain, i32, i32, i16, i32, i8, i32, %struct.exfat_hint, %struct.exfat_hint, %struct.exfat_hint_femp, %struct.spinlock, %struct.list_head, i32, i32, i64, i64, i64, %struct.hlist_node, %struct.rw_semaphore, %struct.inode, %struct.timespec64 }
%struct.exfat_hint = type { i32, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.exfat_hint_femp = type { i32, i32, %struct.exfat_chain }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@exfat_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@exfat_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr @exfat_init_fs_context, ptr @exfat_parameters, ptr null, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_exfat__269_836_init_exfat_fs6 = internal global ptr @init_exfat_fs, section ".initcall6.init", align 4
@__exitcall_exit_exfat_fs = internal global ptr @exit_exfat_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias270 = internal constant [21 x i8] c"exfat.alias=fs-exfat\00", section ".modinfo", align 1
@__UNIQUE_ID_file271 = internal constant [26 x i8] c"exfat.file=fs/exfat/exfat\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [18 x i8] c"exfat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [43 x i8] c"exfat.description=exFAT filesystem support\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [43 x i8] c"exfat.author=Samsung Electronics Co., Ltd.\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"exfat\00", [26 x i8] zeroinitializer }, align 32
@exfat_parameters = internal constant { [15 x %struct.fs_parameter_spec], [48 x i8] } { [15 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.52, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.53, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.54, ptr @fs_param_is_u32, i8 2, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.55, ptr @fs_param_is_u32, i8 3, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.56, ptr @fs_param_is_u32, i8 4, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.57, ptr @fs_param_is_u32, i8 5, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.58, ptr @fs_param_is_string, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.59, ptr @fs_param_is_enum, i8 7, i16 0, ptr @exfat_param_enums }, %struct.fs_parameter_spec { ptr @.str.60, ptr null, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.61, ptr @fs_param_is_s32, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.11, ptr null, i8 10, i16 8, ptr null }, %struct.fs_parameter_spec { ptr @.str.62, ptr null, i8 11, i16 8, ptr null }, %struct.fs_parameter_spec { ptr @.str.63, ptr @fs_param_is_u32, i8 12, i16 8, ptr null }, %struct.fs_parameter_spec { ptr @.str.64, ptr @fs_param_is_u32, i8 13, i16 8, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@exfat_init_fs_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sbi->s_lock\00", [19 x i8] zeroinitializer }, align 32
@exfat_init_fs_context.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->bitmap_lock\00", [46 x i8] zeroinitializer }, align 32
@exfat_default_iocharset = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@exfat_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @exfat_free, ptr null, ptr @exfat_parse_param, ptr null, ptr @exfat_get_tree, ptr @exfat_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mounting with \22discard\22 option, but the device does not support discard\00", [56 x i8] zeroinitializer }, align 32
@exfat_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @exfat_alloc_inode, ptr null, ptr @exfat_free_inode, ptr null, ptr @exfat_write_inode, ptr null, ptr @exfat_evict_inode, ptr @exfat_put_super, ptr @exfat_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @exfat_statfs, ptr null, ptr null, ptr @exfat_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to recognize exfat type\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IO charset %s not found\00", [40 x i8] zeroinitializer }, align 32
@exfat_utf8_dentry_ops = external dso_local constant %struct.dentry_operations, align 128
@exfat_dentry_ops = external dso_local constant %struct.dentry_operations, align 128
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate root inode\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize root inode\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get the root dentry\00", [34 x i8] zeroinitializer }, align 32
@exfat_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ei->truncate_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",fmask=%04o,dmask=%04o\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",allow_utime=%04o\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",iocharset=utf8\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",errors=remount-ro\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",discard\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",time_offset=%d\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read boot sector\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid boot region\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to load upcase table\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to load alloc-bitmap\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to scan clusters\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to read boot sector\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid boot record signature\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EXFAT   \00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid fs_name\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bogus number of FAT structure\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bogus sector size bits : %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bogus sectors bits per cluster : %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bogus fat length\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bogus data start sector\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Volume was not properly unmounted. Some data may be corrupt. Please run fsck.\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Medium has reported failures. Some data may be lost.\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bogus logical sector size %u\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"logical sector size too small for device (logical sector size = %u)\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to set blocksize %u\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"unable to read boot sector (logical sector size = %lu)\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid exboot-signature(sector = %d): 0x%08x\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Invalid boot checksum (boot checksum : 0x%08x, checksum : 0x%08x)\00", [62 x i8] zeroinitializer }, align 32
@exfat_hash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sbi->inode_hash_lock\00", [42 x i8] zeroinitializer }, align 32
@exfat_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@exfat_dir_operations = external dso_local constant %struct.file_operations, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"umask\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmask\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fmask\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"allow_utime\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iocharset\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@exfat_param_enums = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.65, i32 0 }, %struct.constant_table { ptr @.str.66, i32 1 }, %struct.constant_table { ptr @.str.67, i32 2 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"time_offset\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"namecase\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"codepage\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"continue\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remount-ro\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exfat_inode_cache\00", [46 x i8] zeroinitializer }, align 32
@exfat_inode_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ei->cache_lru_lock\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"exfat_inode_cachep\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 26, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"exfat_fs_type\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 773, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 775, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"exfat_parameters\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 236, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 755, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 756, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"exfat_default_iocharset\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 25, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"exfat_context_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 740, i32 43 }
@___asan_gen_.104 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 14, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 633, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"exfat_sops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 199, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 648, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 655, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 660, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 674, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 683, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 692, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 190, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 157, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 160, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 162, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 164, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 166, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 168, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 170, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 172, i32 15 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 174, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 176, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 178, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 580, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 586, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 592, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 598, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 604, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 426, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 433, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 437, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 438, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 450, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 459, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 468, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 501, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 508, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 513, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 515, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 386, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 391, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 401, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 407, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 545, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 562, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 326, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 271, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 237, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 238, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 239, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 240, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 241, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 242, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 243, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 244, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [18 x i8] c"exfat_param_enums\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 229, i32 36 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 245, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 246, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 249, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 251, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 253, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 230, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 231, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 232, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 802, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [20 x i8] c"../fs/exfat/super.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 786, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_exit_exfat_fs, ptr @__initcall__kmod_exfat__269_836_init_exfat_fs6, ptr @exit_exfat_fs, ptr @exfat_inode_cachep, ptr @exfat_fs_type, ptr @.str, ptr @exfat_parameters, ptr @exfat_init_fs_context.__key, ptr @.str.1, ptr @exfat_init_fs_context.__key.2, ptr @.str.3, ptr @exfat_default_iocharset, ptr @exfat_context_ops, ptr @ratelimit_state_init.__key, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @exfat_sops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @exfat_alloc_inode.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @exfat_hash_init.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @exfat_param_enums, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @exfat_inode_init_once.__key, ptr @.str.69], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_parameters to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_init_fs_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_init_fs_context.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_default_iocharset to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_hash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_param_enums to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_inode_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_set_volume_dirty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %vol_flags = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_flags, align 4
  %4 = trunc i32 %3 to i16
  %conv = or i16 %4, 2
  tail call fastcc void @exfat_set_vol_flags(ptr noundef %sb, i16 noundef zeroext %conv)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exfat_set_vol_flags(ptr nocapture noundef readonly %sb, i16 noundef zeroext %new_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %boot_bh = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %vol_flags_persistent = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %vol_flags_persistent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_flags_persistent, align 8
  %8 = trunc i32 %7 to i16
  %conv1 = or i16 %8, %new_flags
  %vol_flags = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vol_flags, align 4
  %conv2 = zext i16 %conv1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv2)
  %cmp = icmp eq i32 %10, %conv2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %vol_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2, ptr %vol_flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %vol_flags9 = getelementptr inbounds %struct.boot_sector, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %vol_flags9 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %vol_flags9, align 1
  %and = and i32 %conv2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.if.else_crit_edge, label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %16 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %boot_bh, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.end15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  %21 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %boot_bh, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i1 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1)
  %tobool.not.i = icmp eq i32 %and1.i.i1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.set_buffer_uptodate.exit_crit_edge

if.else.set_buffer_uptodate.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #12
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.else.set_buffer_uptodate.exit_crit_edge
  %25 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %boot_bh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %26) #12
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %17, align 4
  %and1.i.i2 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2)
  %tobool.not.i3 = icmp eq i32 %and1.i.i2, 0
  br i1 %tobool.not.i3, label %if.then.i4, label %if.end15.set_buffer_uptodate.exit5_crit_edge

if.end15.set_buffer_uptodate.exit5_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_buffer_uptodate.exit5

if.then.i4:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #12
  br label %set_buffer_uptodate.exit5

set_buffer_uptodate.exit5:                        ; preds = %if.then.i4, %if.end15.set_buffer_uptodate.exit5_crit_edge
  %29 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %boot_bh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %30) #12
  %31 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %boot_bh, align 4
  %call21 = tail call i32 @sync_dirty_buffer(ptr noundef %32) #12
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_uptodate.exit5, %set_buffer_uptodate.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_clear_volume_dirty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %vol_flags = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vol_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol_flags, align 4
  %4 = trunc i32 %3 to i16
  %conv = and i16 %4, -3
  tail call fastcc void @exfat_set_vol_flags(ptr noundef %sb, i16 noundef zeroext %conv)
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_exfat_fs() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @exfat_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @exfat_fs_type) #12
  tail call void @exfat_cache_shutdown() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_cache_shutdown() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_exfat_fs() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @exfat_cache_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.68, i32 noundef 1064, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @exfat_inode_init_once) #12
  store ptr %call1, ptr @exfat_inode_cachep, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.shutdown_cache_crit_edge, label %if.end4

if.end.shutdown_cache_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %shutdown_cache

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_filesystem(ptr noundef nonnull @exfat_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %destroy_cache

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

destroy_cache:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @exfat_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  br label %shutdown_cache

shutdown_cache:                                   ; preds = %destroy_cache, %if.end.shutdown_cache_crit_edge
  %err.0 = phi i32 [ %call5, %destroy_cache ], [ -12, %if.end.shutdown_cache_crit_edge ]
  tail call void @exfat_cache_shutdown() #12
  br label %cleanup

cleanup:                                          ; preds = %shutdown_cache, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %shutdown_cache ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_init_fs_context(ptr nocapture noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1472) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %s_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exfat_init_fs_context.__key) #12
  %bitmap_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %bitmap_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @exfat_init_fs_context.__key.2) #12
  %ratelimit = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 25
  %1 = call ptr @memset(ptr %ratelimit, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %ratelimit, ptr noundef nonnull @.str.5, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #12
  %interval1.i = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500, ptr %interval1.i, align 8
  %burst2.i = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 25, i32 2
  %3 = ptrtoint ptr %burst2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %burst2.i, align 4
  %options = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23
  %4 = tail call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uid, align 4
  %12 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %options, align 8
  %fs_gid = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23, i32 1
  %13 = load ptr, ptr %task, align 8
  %cred15 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred15, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gid, align 4
  %18 = ptrtoint ptr %fs_gid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fs_gid, align 4
  %19 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 107
  %20 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs, align 128
  %umask = getelementptr inbounds %struct.fs_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %umask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %umask, align 4
  %conv = trunc i32 %23 to i16
  %fs_fmask = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23, i32 2
  %24 = ptrtoint ptr %fs_fmask to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %fs_fmask, align 8
  %25 = load ptr, ptr %task, align 8
  %fs21 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 107
  %26 = ptrtoint ptr %fs21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs21, align 128
  %umask22 = getelementptr inbounds %struct.fs_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %umask22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %umask22, align 4
  %conv23 = trunc i32 %29 to i16
  %fs_dmask = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23, i32 3
  %30 = ptrtoint ptr %fs_dmask to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv23, ptr %fs_dmask, align 2
  %allow_utime = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23, i32 4
  %31 = ptrtoint ptr %allow_utime to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %allow_utime, align 4
  %iocharset = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23, i32 5
  %32 = ptrtoint ptr %iocharset to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @exfat_default_iocharset, ptr %iocharset, align 8
  %errors = getelementptr inbounds %struct.exfat_sb_info, ptr %call7.i.i, i32 0, i32 23, i32 6
  %33 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %errors, align 4
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %34 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %s_fs_info, align 4
  %35 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @exfat_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %iocharset.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 5
  %2 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocharset.i, align 8
  %cmp.not.i = icmp eq ptr %3, @exfat_default_iocharset
  br i1 %cmp.not.i, label %if.then.exfat_free_iocharset.exit_crit_edge, label %if.then.i

if.then.exfat_free_iocharset.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_iocharset.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %3) #12
  br label %exfat_free_iocharset.exit

exfat_free_iocharset.exit:                        ; preds = %if.then.i, %if.then.exfat_free_iocharset.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %exfat_free_iocharset.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  %options = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #12
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @exfat_parameters, ptr noundef %param, ptr noundef nonnull %result) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb18
    i32 3, label %sw.bb20
    i32 4, label %sw.bb23
    i32 5, label %sw.bb26
    i32 6, label %sw.bb28
    i32 7, label %sw.bb29
    i32 8, label %sw.bb30
    i32 9, label %sw.bb31
    i32 10, label %if.end.sw.epilog_crit_edge
    i32 11, label %if.end.sw.epilog_crit_edge59
    i32 12, label %if.end.sw.epilog_crit_edge60
    i32 13, label %if.end.sw.epilog_crit_edge61
  ]

if.end.sw.epilog_crit_edge61:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge60:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge59:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %12 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %call4 = call i32 @make_kuid(ptr noundef %11, i32 noundef %14) #12
  %15 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4, ptr %options, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fs_gid = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 1
  %16 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i58 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i58 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task13, align 8
  %cred14 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred14, align 16
  %user_ns15 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %user_ns15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_ns15, align 4
  %24 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %call16 = call i32 @make_kgid(ptr noundef %23, i32 noundef %26) #12
  %27 = ptrtoint ptr %fs_gid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call16, ptr %fs_gid, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %28 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %conv = trunc i32 %30 to i16
  %fs_fmask = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 2
  %31 = ptrtoint ptr %fs_fmask to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %fs_fmask, align 4
  %fs_dmask = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 3
  %32 = ptrtoint ptr %fs_dmask to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %fs_dmask, align 2
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %33 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %conv21 = trunc i32 %35 to i16
  %fs_dmask22 = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 3
  %36 = ptrtoint ptr %fs_dmask22 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv21, ptr %fs_dmask22, align 2
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %37 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %conv24 = trunc i32 %39 to i16
  %fs_fmask25 = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 2
  %40 = ptrtoint ptr %fs_fmask25 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv24, ptr %fs_fmask25, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %44 = trunc i32 %43 to i16
  %conv27 = and i16 %44, 18
  %allow_utime = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 4
  %45 = ptrtoint ptr %allow_utime to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv27, ptr %allow_utime, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %iocharset.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 5
  %46 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iocharset.i, align 8
  %cmp.not.i = icmp eq ptr %47, @exfat_default_iocharset
  br i1 %cmp.not.i, label %sw.bb28.exfat_free_iocharset.exit_crit_edge, label %if.then.i

sw.bb28.exfat_free_iocharset.exit_crit_edge:      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_iocharset.exit

if.then.i:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %47) #12
  br label %exfat_free_iocharset.exit

exfat_free_iocharset.exit:                        ; preds = %if.then.i, %sw.bb28.exfat_free_iocharset.exit_crit_edge
  %48 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %iocharset.i, align 4
  store ptr null, ptr %48, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %52 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %errors = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 6
  %55 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %errors, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %discard = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 7
  %56 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %discard, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %discard, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  %57 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %60 = add i32 %59, -1441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2881, i32 %60)
  %61 = icmp ult i32 %60, -2881
  br i1 %61, label %sw.bb31.cleanup_crit_edge, label %if.end37

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  %time_offset = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 8
  %62 = ptrtoint ptr %time_offset to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %time_offset, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end37, %sw.bb30, %sw.bb29, %exfat_free_iocharset.exit, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb18, %sw.bb5, %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge59, %if.end.sw.epilog_crit_edge60, %if.end.sw.epilog_crit_edge61
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @exfat_fill_super) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_reconfigure(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %0 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_flags, align 4
  %or = or i32 %1, 2048
  store i32 %or, ptr %sb_flags, align 4
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %call = tail call i32 @sync_filesystem(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  %cdir.i = alloca %struct.exfat_chain, align 4
  %num_clu.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %allow_utime = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 4
  %2 = ptrtoint ptr %allow_utime to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %allow_utime, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fs_dmask = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 3
  %4 = ptrtoint ptr %fs_dmask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fs_dmask, align 2
  %6 = and i16 %5, 18
  %7 = xor i16 %6, 18
  %8 = ptrtoint ptr %allow_utime to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %allow_utime, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %discard = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 7
  %9 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %discard, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %queue_flags, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  %18 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load10 = load i8, ptr %discard, align 4
  %bf.clear11 = and i8 %bf.load10, -65
  store i8 %bf.clear11, ptr %discard, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %19 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_flags, align 4
  %or = or i32 %20, 2048
  store i32 %or, ptr %s_flags, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %21 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 538032816, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %22 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @exfat_sops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %23 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10000000, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %24 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 315532800, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %25 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4354819199, ptr %s_time_max, align 64
  %26 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info, align 16
  %call1.i.i = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 512) #12
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %28 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bdev.i.i.i, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %30 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = tail call ptr @__bread_gfp(ptr noundef %29, i64 noundef 0, i32 noundef %31, i32 noundef 8) #12
  %boot_bh.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 14
  %32 = ptrtoint ptr %boot_bh.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i, ptr %boot_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.33) #16
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end13
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i.i, align 4
  %signature.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %signature.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %signature.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %36)
  %cmp.not.i.i = icmp eq i16 %36, 21930
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.34) #16
  br label %if.then.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %fs_name.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %fs_name.i.i, ptr noundef nonnull dereferenceable(8) @.str.35, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool9.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.36) #16
  br label %if.then.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %must_be_zero.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 2
  %call13.i.i = tail call ptr @memchr_inv(ptr noundef %must_be_zero.i.i, i32 noundef 0, i32 noundef 53) #12
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end11.i.i.if.then.i_crit_edge

if.end11.i.i.if.then.i_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end16.i.i:                                     ; preds = %if.end11.i.i
  %num_fats.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 15
  %37 = ptrtoint ptr %num_fats.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_fats.i.i, align 1
  %.off.i.i = add i8 %38, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %if.end25.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.37) #16
  br label %if.then.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  %sect_size_bits.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 13
  %39 = ptrtoint ptr %sect_size_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sect_size_bits.i.i, align 1
  %conv26.i.i = zext i8 %40 to i32
  %41 = add i8 %40, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %41)
  %42 = icmp ult i8 %41, -4
  br i1 %42, label %if.then33.i.i, label %if.end36.i.i

if.then33.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.38, i32 noundef %conv26.i.i) #16
  br label %if.then.i

if.end36.i.i:                                     ; preds = %if.end25.i.i
  %sect_per_clus_bits.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 14
  %43 = ptrtoint ptr %sect_per_clus_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sect_per_clus_bits.i.i, align 1
  %conv37.i.i = zext i8 %44 to i32
  %sub.i.i = sub nsw i32 25, %conv26.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv37.i.i)
  %cmp40.i.i = icmp slt i32 %sub.i.i, %conv37.i.i
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.end45.i.i

if.then42.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.39, i32 noundef %conv37.i.i) #16
  br label %if.then.i

if.end45.i.i:                                     ; preds = %if.end36.i.i
  %shl.i.i = shl nuw i32 1, %conv37.i.i
  %sect_per_clus.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 4
  %45 = ptrtoint ptr %sect_per_clus.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i.i, ptr %sect_per_clus.i.i, align 4
  %46 = ptrtoint ptr %sect_per_clus_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sect_per_clus_bits.i.i, align 1
  %conv49.i.i = zext i8 %47 to i32
  %sect_per_clus_bits50.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 5
  %48 = ptrtoint ptr %sect_per_clus_bits50.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv49.i.i, ptr %sect_per_clus_bits50.i.i, align 8
  %49 = load i8, ptr %sect_per_clus_bits.i.i, align 1
  %conv52.i.i = zext i8 %49 to i32
  %50 = ptrtoint ptr %sect_size_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sect_size_bits.i.i, align 1
  %conv54.i.i = zext i8 %51 to i32
  %add.i.i = add nuw nsw i32 %conv54.i.i, %conv52.i.i
  %cluster_size_bits.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 3
  %52 = ptrtoint ptr %cluster_size_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i.i, ptr %cluster_size_bits.i.i, align 8
  %shl56.i.i = shl nuw i32 1, %add.i.i
  %cluster_size.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 2
  %53 = ptrtoint ptr %cluster_size.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl56.i.i, ptr %cluster_size.i.i, align 4
  %fat_length.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 6
  %54 = ptrtoint ptr %fat_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %fat_length.i.i, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  %num_FAT_sectors.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 9
  %57 = ptrtoint ptr %num_FAT_sectors.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %num_FAT_sectors.i.i, align 8
  %fat_offset.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 5
  %58 = ptrtoint ptr %fat_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %fat_offset.i.i, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  %conv57.i.i = zext i32 %60 to i64
  %FAT1_start_sector.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 6
  %61 = ptrtoint ptr %FAT1_start_sector.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv57.i.i, ptr %FAT1_start_sector.i.i, align 8
  %62 = ptrtoint ptr %fat_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %fat_offset.i.i, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #12
  %conv59.i.i = zext i32 %64 to i64
  %FAT2_start_sector.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 7
  %65 = ptrtoint ptr %FAT2_start_sector.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv59.i.i, ptr %FAT2_start_sector.i.i, align 8
  %66 = ptrtoint ptr %num_fats.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_fats.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp62.i.i = icmp eq i8 %67, 2
  br i1 %cmp62.i.i, label %if.then64.i.i, label %if.end45.i.i.if.end69.i.i_crit_edge

if.end45.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i.i

if.then64.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv66.i.i = zext i32 %56 to i64
  %add68.i.i = add nuw nsw i64 %conv59.i.i, %conv66.i.i
  %68 = ptrtoint ptr %FAT2_start_sector.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add68.i.i, ptr %FAT2_start_sector.i.i, align 8
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then64.i.i, %if.end45.i.i.if.end69.i.i_crit_edge
  %clu_offset.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 7
  %69 = ptrtoint ptr %clu_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %clu_offset.i.i, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #12
  %conv70.i.i = zext i32 %71 to i64
  %data_start_sector.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 8
  %72 = ptrtoint ptr %data_start_sector.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv70.i.i, ptr %data_start_sector.i.i, align 8
  %vol_length.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 4
  %73 = ptrtoint ptr %vol_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %vol_length.i.i, align 1
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #12
  %76 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %27, align 8
  %clu_count.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 8
  %77 = ptrtoint ptr %clu_count.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %clu_count.i.i, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #12
  %add71.i.i = add i32 %79, 2
  %num_clusters.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 1
  %80 = ptrtoint ptr %num_clusters.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add71.i.i, ptr %num_clusters.i.i, align 8
  %root_cluster.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 9
  %81 = ptrtoint ptr %root_cluster.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %root_cluster.i.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #12
  %root_dir.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 10
  %84 = ptrtoint ptr %root_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %root_dir.i.i, align 4
  %85 = ptrtoint ptr %cluster_size_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cluster_size_bits.i.i, align 8
  %sub73.i.i = add i32 %86, -5
  %shl74.i.i = shl nuw i32 1, %sub73.i.i
  %dentries_per_clu.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 11
  %87 = ptrtoint ptr %dentries_per_clu.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shl74.i.i, ptr %dentries_per_clu.i.i, align 8
  %vol_flags.i.i = getelementptr inbounds %struct.boot_sector, ptr %34, i32 0, i32 12
  %88 = ptrtoint ptr %vol_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %vol_flags.i.i, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #12
  %conv75.i.i = zext i16 %90 to i32
  %vol_flags76.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 12
  %91 = ptrtoint ptr %vol_flags76.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv75.i.i, ptr %vol_flags76.i.i, align 4
  %and.i.i = and i32 %conv75.i.i, 6
  %vol_flags_persistent.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 13
  %92 = ptrtoint ptr %vol_flags_persistent.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and.i.i, ptr %vol_flags_persistent.i.i, align 8
  %clu_srch_ptr.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 19
  %93 = ptrtoint ptr %clu_srch_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %clu_srch_ptr.i.i, align 8
  %used_clusters.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %27, i32 0, i32 20
  %94 = ptrtoint ptr %used_clusters.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %used_clusters.i.i, align 4
  %95 = ptrtoint ptr %num_FAT_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_FAT_sectors.i.i, align 8
  %conv79.i.i = zext i32 %96 to i64
  %97 = ptrtoint ptr %sect_size_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sect_size_bits.i.i, align 1
  %sh_prom.i.i = zext i8 %98 to i64
  %shl82.i.i = shl i64 %conv79.i.i, %sh_prom.i.i
  %conv84.i.i = zext i32 %add71.i.i to i64
  %mul.i.i = shl nuw nsw i64 %conv84.i.i, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %shl82.i.i, i64 %mul.i.i)
  %cmp85.i.i = icmp ult i64 %shl82.i.i, %mul.i.i
  br i1 %cmp85.i.i, label %if.then87.i.i, label %if.end88.i.i

if.then87.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.40) #16
  br label %if.then.i

if.end88.i.i:                                     ; preds = %if.end69.i.i
  %99 = ptrtoint ptr %FAT1_start_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %FAT1_start_sector.i.i, align 8
  %101 = ptrtoint ptr %num_fats.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_fats.i.i, align 1
  %conv94.i.i = zext i8 %102 to i64
  %mul95.i.i = mul nuw nsw i64 %conv94.i.i, %conv79.i.i
  %add96.i.i = add i64 %mul95.i.i, %100
  call void @__sanitizer_cov_trace_cmp8(i64 %add96.i.i, i64 %conv70.i.i)
  %cmp97.i.i = icmp ugt i64 %add96.i.i, %conv70.i.i
  br i1 %cmp97.i.i, label %if.then99.i.i, label %if.end100.i.i

if.then99.i.i:                                    ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.41) #16
  br label %if.then.i

if.end100.i.i:                                    ; preds = %if.end88.i.i
  %and102.i.i = and i32 %conv75.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i.i)
  %tobool103.not.i.i = icmp eq i32 %and102.i.i, 0
  br i1 %tobool103.not.i.i, label %if.end100.i.i.if.end105.i.i_crit_edge, label %if.then104.i.i

if.end100.i.i.if.end105.i.i_crit_edge:            ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105.i.i

if.then104.i.i:                                   ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.42) #16
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.then104.i.i, %if.end100.i.i.if.end105.i.i_crit_edge
  %103 = ptrtoint ptr %vol_flags76.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vol_flags76.i.i, align 4
  %and107.i.i = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i.i)
  %tobool108.not.i.i = icmp eq i32 %and107.i.i, 0
  br i1 %tobool108.not.i.i, label %if.end105.i.i.if.end110.i.i_crit_edge, label %if.then109.i.i

if.end105.i.i.if.end110.i.i_crit_edge:            ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i.i

if.then109.i.i:                                   ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #16
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.then109.i.i, %if.end105.i.i.if.end110.i.i_crit_edge
  %105 = ptrtoint ptr %num_clusters.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_clusters.i.i, align 8
  %sub112.i.i = add i32 %106, -2
  %conv113.i.i = zext i32 %sub112.i.i to i64
  %107 = ptrtoint ptr %cluster_size_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cluster_size_bits.i.i, align 8
  %sh_prom115.i.i = zext i32 %108 to i64
  %shl116.i.i = shl i64 %conv113.i.i, %sh_prom115.i.i
  %s_maxbytes.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %109 = ptrtoint ptr %s_maxbytes.i.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %shl116.i.i, ptr %s_maxbytes.i.i, align 8
  %110 = ptrtoint ptr %sect_size_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %sect_size_bits.i.i, align 1
  %conv118.i.i = zext i8 %111 to i32
  %shl119.i.i = shl nuw i32 1, %conv118.i.i
  %112 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info, align 16
  %114 = tail call i32 @llvm.ctpop.i32(i32 %shl119.i.i) #12, !range !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.44, i32 noundef %shl119.i.i) #16
  br label %if.then.i

if.end.i.i.i:                                     ; preds = %if.end110.i.i
  %116 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_blocksize.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %shl119.i.i)
  %cmp.i.i.i = icmp ugt i32 %117, %shl119.i.i
  br i1 %cmp.i.i.i, label %if.then2.i.i.i, label %if.end3.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.45, i32 noundef %shl119.i.i) #16
  br label %if.then.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %shl119.i.i)
  %cmp5.i.i.i = icmp ult i32 %117, %shl119.i.i
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end3.i.i.i.for.body.i.i.preheader_crit_edge

if.end3.i.i.i.for.body.i.i.preheader_crit_edge:   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.end10.i.i.i.for.body.i.i.preheader_crit_edge, %if.end3.i.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  %boot_bh.i.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %113, i32 0, i32 14
  %118 = ptrtoint ptr %boot_bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %boot_bh.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i.i.i.i, label %if.then6.i.i.i.brelse.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then6.i.i.i.brelse.exit.i.i.i_crit_edge:       ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %119) #12
  br label %brelse.exit.i.i.i

brelse.exit.i.i.i:                                ; preds = %if.then.i.i.i.i, %if.then6.i.i.i.brelse.exit.i.i.i_crit_edge
  %120 = ptrtoint ptr %boot_bh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %boot_bh.i.i.i, align 4
  %call8.i.i.i = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %shl119.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then9.i.i.i, label %if.end10.i.i.i

if.then9.i.i.i:                                   ; preds = %brelse.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.46, i32 noundef %shl119.i.i) #16
  br label %if.then.i

if.end10.i.i.i:                                   ; preds = %brelse.exit.i.i.i
  %121 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_bdev.i.i.i, align 4
  %123 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i.i = tail call ptr @__bread_gfp(ptr noundef %122, i64 noundef 0, i32 noundef %124, i32 noundef 8) #12
  %125 = ptrtoint ptr %boot_bh.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.i.i.i, ptr %boot_bh.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool14.not.i.i.i, label %if.then15.i.i.i, label %if.end10.i.i.i.for.body.i.i.preheader_crit_edge

if.end10.i.i.i.for.body.i.i.preheader_crit_edge:  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.preheader

if.then15.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_blocksize.i.i.i, align 16
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.47, i32 noundef %127) #16
  br label %if.then.i

if.then.i:                                        ; preds = %if.then15.i.i.i, %if.then9.i.i.i, %if.then2.i.i.i, %if.then.i.i.i, %if.then99.i.i, %if.then87.i.i, %if.then42.i.i, %if.then33.i.i, %if.then24.i.i, %if.end11.i.i.if.then.i_crit_edge, %if.then10.i.i, %if.then6.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -5, %if.then.i.i.i ], [ -5, %if.then9.i.i.i ], [ -5, %if.then15.i.i.i ], [ -5, %if.then2.i.i.i ], [ -22, %if.end11.i.i.if.then.i_crit_edge ], [ -5, %if.then.i.i ], [ -22, %if.then99.i.i ], [ -22, %if.then87.i.i ], [ -22, %if.then42.i.i ], [ -22, %if.then33.i.i ], [ -22, %if.then24.i.i ], [ -22, %if.then10.i.i ], [ -22, %if.then6.i.i ]
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #16
  br label %free_bh.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %sn.078.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %chksum.077.i.i = phi i32 [ %call14.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %conv.i.i = zext i32 %sn.078.i.i to i64
  %128 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_bdev.i.i.i, align 4
  %130 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i39.i = tail call ptr @__bread_gfp(ptr noundef %129, i64 noundef %conv.i.i, i32 noundef %131, i32 noundef 8) #12
  %tobool.not.i40.i = icmp eq ptr %call.i.i39.i, null
  br i1 %tobool.not.i40.i, label %for.body.i.i.if.then4.i_crit_edge, label %if.end.i41.i

for.body.i.i.if.then4.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

if.end.i41.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sn.078.i.i)
  %cmp1.not.i.i = icmp eq i32 %sn.078.i.i, 0
  br i1 %cmp1.not.i.i, label %if.end.i41.i.brelse.exit.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i41.i.brelse.exit.i.i_crit_edge:           ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sn.078.i.i)
  %cmp3.i.i = icmp ult i32 %sn.078.i.i, 9
  br i1 %cmp3.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.brelse.exit.i.i_crit_edge

land.lhs.true.i.i.brelse.exit.i.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  %b_data.i42.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i39.i, i32 0, i32 5
  %132 = ptrtoint ptr %b_data.i42.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %b_data.i42.i, align 4
  %134 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub.i43.i = add i32 %135, -4
  %arrayidx.i.i = getelementptr i8, ptr %133, i32 %sub.i43.i
  %136 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21930, i32 %137)
  %cmp6.not.i.i = icmp eq i32 %137, 21930
  br i1 %cmp6.not.i.i, label %if.then5.i.i.brelse.exit.i.i_crit_edge, label %if.then8.i.i

if.then5.i.i.brelse.exit.i.i_crit_edge:           ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #12
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.48, i32 noundef %sn.078.i.i, i32 noundef %138) #16
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then8.i.i, %if.then5.i.i.brelse.exit.i.i_crit_edge, %land.lhs.true.i.i.brelse.exit.i.i_crit_edge, %if.end.i41.i.brelse.exit.i.i_crit_edge
  %cond.i.i = phi i32 [ 2, %if.then5.i.i.brelse.exit.i.i_crit_edge ], [ 2, %if.then8.i.i ], [ 2, %land.lhs.true.i.i.brelse.exit.i.i_crit_edge ], [ 1, %if.end.i41.i.brelse.exit.i.i_crit_edge ]
  %b_data11.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i39.i, i32 0, i32 5
  %139 = ptrtoint ptr %b_data11.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %b_data11.i.i, align 4
  %141 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call14.i.i = tail call i32 @exfat_calc_chksum32(ptr noundef %140, i32 noundef %142, i32 noundef %chksum.077.i.i, i32 noundef %cond.i.i) #12
  tail call void @__brelse(ptr noundef nonnull %call.i.i39.i) #12
  %inc.i.i = add nuw nsw i32 %sn.078.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 11
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %brelse.exit.i.i.for.body.i.i_crit_edge

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %brelse.exit.i.i
  %143 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %s_bdev.i.i.i, align 4
  %145 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i67.i.i = tail call ptr @__bread_gfp(ptr noundef %144, i64 noundef 11, i32 noundef %146, i32 noundef 8) #12
  %tobool17.not.i.i = icmp eq ptr %call.i67.i.i, null
  br i1 %tobool17.not.i.i, label %for.end.i.i.if.then4.i_crit_edge, label %for.cond20.preheader.i.i

for.end.i.i.if.then4.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i

for.cond20.preheader.i.i:                         ; preds = %for.end.i.i
  %147 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_blocksize.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp2280.not.i.i = icmp eq i32 %148, 0
  br i1 %cmp2280.not.i.i, label %for.cond20.preheader.i.i.if.end5.i_crit_edge, label %for.body24.lr.ph.i.i

for.cond20.preheader.i.i.if.end5.i_crit_edge:     ; preds = %for.cond20.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

for.body24.lr.ph.i.i:                             ; preds = %for.cond20.preheader.i.i
  %b_data25.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i67.i.i, i32 0, i32 5
  %149 = ptrtoint ptr %b_data25.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %b_data25.i.i, align 4
  br label %for.body24.i.i

for.cond20.i.i:                                   ; preds = %for.body24.i.i
  %add.i44.i = add i32 %i.081.i.i, 4
  %cmp22.i.i = icmp ult i32 %add.i44.i, %148
  br i1 %cmp22.i.i, label %for.cond20.i.i.for.body24.i.i_crit_edge, label %for.cond20.i.i.if.end5.i_crit_edge

for.cond20.i.i.if.end5.i_crit_edge:               ; preds = %for.cond20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

for.cond20.i.i.for.body24.i.i_crit_edge:          ; preds = %for.cond20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24.i.i

for.body24.i.i:                                   ; preds = %for.cond20.i.i.for.body24.i.i_crit_edge, %for.body24.lr.ph.i.i
  %i.081.i.i = phi i32 [ 0, %for.body24.lr.ph.i.i ], [ %add.i44.i, %for.cond20.i.i.for.body24.i.i_crit_edge ]
  %arrayidx26.i.i = getelementptr i8, ptr %150, i32 %i.081.i.i
  %151 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx26.i.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %call14.i.i)
  %cmp27.not.i.i = icmp eq i32 %153, %call14.i.i
  br i1 %cmp27.not.i.i, label %for.cond20.i.i, label %exfat_verify_boot_region.exit.i

exfat_verify_boot_region.exit.i:                  ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.49, i32 noundef %153, i32 noundef %call14.i.i) #16
  tail call void @__brelse(ptr noundef nonnull %call.i67.i.i) #12
  br label %if.then4.i

if.then4.i:                                       ; preds = %exfat_verify_boot_region.exit.i, %for.end.i.i.if.then4.i_crit_edge, %for.body.i.i.if.then4.i_crit_edge
  %retval.0.i4554.i = phi i32 [ -22, %exfat_verify_boot_region.exit.i ], [ -5, %for.end.i.i.if.then4.i_crit_edge ], [ -5, %for.body.i.i.if.then4.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29) #16
  br label %free_bh.i

if.end5.i:                                        ; preds = %for.cond20.i.i.if.end5.i_crit_edge, %for.cond20.preheader.i.i.if.end5.i_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i67.i.i) #12
  %call6.i = tail call i32 @exfat_create_upcase_table(ptr noundef %sb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.30) #16
  br label %free_bh.i

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call i32 @exfat_load_bitmap(ptr noundef %sb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.31) #16
  br label %free_upcase_table.i

if.end13.i:                                       ; preds = %if.end9.i
  %call14.i = tail call i32 @exfat_count_used_clusters(ptr noundef %sb, ptr noundef %used_clusters.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32) #16
  tail call void @exfat_free_bitmap(ptr noundef %27) #12
  br label %free_upcase_table.i

free_upcase_table.i:                              ; preds = %if.then16.i, %if.then12.i
  %ret.0.i = phi i32 [ %call10.i, %if.then12.i ], [ %call14.i, %if.then16.i ]
  tail call void @exfat_free_upcase_table(ptr noundef %27) #12
  br label %free_bh.i

free_bh.i:                                        ; preds = %free_upcase_table.i, %if.then8.i, %if.then4.i, %if.then.i
  %ret.1.i = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ %retval.0.i4554.i, %if.then4.i ], [ %call6.i, %if.then8.i ], [ %ret.0.i, %free_upcase_table.i ]
  %154 = ptrtoint ptr %boot_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %boot_bh.i.i, align 4
  %tobool.not.i46.i = icmp eq ptr %155, null
  br i1 %tobool.not.i46.i, label %free_bh.i.if.then16_crit_edge, label %if.then.i47.i

free_bh.i.if.then16_crit_edge:                    ; preds = %free_bh.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then.i47.i:                                    ; preds = %free_bh.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %155) #12
  br label %if.then16

if.then16:                                        ; preds = %if.then.i47.i, %free_bh.i.if.then16_crit_edge
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #16
  br label %check_nls_io

if.end17:                                         ; preds = %if.end13.i
  %156 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s_fs_info, align 16
  %inode_hash_lock.i = getelementptr inbounds %struct.exfat_sb_info, ptr %157, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %inode_hash_lock.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @exfat_hash_init.__key, i16 noundef signext 3) #12
  %uglygep.i = getelementptr i8, ptr %157, i32 436
  %158 = call ptr @memset(ptr %uglygep.i, i32 0, i32 1024)
  %iocharset = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 5
  %159 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %iocharset, align 8
  %call19 = tail call i32 @strcmp(ptr noundef %160, ptr noundef nonnull dereferenceable(5) @.str.11) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end34.thread, label %if.else

if.end34.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load22 = load i8, ptr %discard, align 4
  %bf.set24 = or i8 %bf.load22, -128
  store i8 %bf.set24, ptr %discard, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end17
  %call27 = tail call ptr @load_nls(ptr noundef %160) #12
  %nls_io = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 24
  %162 = ptrtoint ptr %nls_io to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call27, ptr %nls_io, align 8
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %iocharset, align 8
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef %164) #16
  br label %free_table

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load37.pr = load i8, ptr %discard, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37.pr)
  %tobool40.not = icmp sgt i8 %bf.load37.pr, -1
  %spec.select = select i1 %tobool40.not, ptr @exfat_dentry_ops, ptr @exfat_utf8_dentry_ops
  br label %if.end44

if.end44:                                         ; preds = %if.end34, %if.end34.thread
  %exfat_dentry_ops.sink = phi ptr [ @exfat_utf8_dentry_ops, %if.end34.thread ], [ %spec.select, %if.end34 ]
  %s_d_op43 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %166 = ptrtoint ptr %s_d_op43 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %exfat_dentry_ops.sink, ptr %s_d_op43, align 8
  %call45 = tail call ptr @new_inode(ptr noundef %sb) #12
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13) #16
  br label %free_table

if.end48:                                         ; preds = %if.end44
  %i_ino = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 11
  %167 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %i_ino, align 8
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 38
  %call.i.i.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 8
  %168 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i116 = getelementptr inbounds %struct.super_block, ptr %169, i32 0, i32 33
  %170 = ptrtoint ptr %s_fs_info.i.i116 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i.i116, align 16
  %add.ptr.i.i = getelementptr i8, ptr %call45, i32 -264
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdir.i) #12
  %172 = call ptr @memset(ptr %cdir.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_clu.i) #12
  %173 = ptrtoint ptr %num_clu.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %num_clu.i, align 4
  %root_dir.i = getelementptr inbounds %struct.exfat_sb_info, ptr %171, i32 0, i32 10
  %174 = ptrtoint ptr %root_dir.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %root_dir.i, align 4
  tail call void @exfat_chain_set(ptr noundef %add.ptr.i.i, i32 noundef %175, i32 noundef 0, i8 noundef zeroext 1) #12
  %entry2.i = getelementptr i8, ptr %call45, i32 -252
  %176 = ptrtoint ptr %entry2.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %entry2.i, align 4
  %177 = ptrtoint ptr %root_dir.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %root_dir.i, align 4
  %start_clu.i = getelementptr i8, ptr %call45, i32 -240
  %179 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %start_clu.i, align 8
  %flags.i = getelementptr i8, ptr %call45, i32 -236
  %180 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %flags.i, align 4
  %type.i = getelementptr i8, ptr %call45, i32 -248
  %181 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 260, ptr %type.i, align 8
  %version.i = getelementptr i8, ptr %call45, i32 -232
  %182 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %version.i, align 8
  %183 = getelementptr i8, ptr %call45, i32 -224
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %183, align 4
  %hint_stat.i = getelementptr i8, ptr %call45, i32 -220
  %185 = getelementptr i8, ptr %call45, i32 -216
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %185, align 4
  %187 = load i32, ptr %root_dir.i, align 4
  %188 = ptrtoint ptr %hint_stat.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %hint_stat.i, align 4
  %hint_femp.i = getelementptr i8, ptr %call45, i32 -212
  %189 = ptrtoint ptr %hint_femp.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %hint_femp.i, align 4
  %190 = load i32, ptr %root_dir.i, align 4
  call void @exfat_chain_set(ptr noundef nonnull %cdir.i, i32 noundef %190, i32 noundef 0, i8 noundef zeroext 1) #12
  %call7.i = call i32 @exfat_count_num_clusters(ptr noundef %169, ptr noundef nonnull %cdir.i, ptr noundef nonnull %num_clu.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end.i118, label %if.end48.if.then51_crit_edge

if.end48.if.then51_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.end.i118:                                      ; preds = %if.end48
  %191 = ptrtoint ptr %num_clu.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_clu.i, align 4
  %cluster_size_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %171, i32 0, i32 3
  %193 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cluster_size_bits.i, align 8
  %shl.i = shl i32 %192, %194
  %conv.i = sext i32 %shl.i to i64
  %195 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i.i.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %198, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %199 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i.i.i117 = icmp eq i32 %199, 0
  br i1 %tobool.not.i.i.i117, label %if.end.i118.i_size_write.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i118.i_size_write.exit.i_crit_edge:        ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i118
  %200 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i.i.i.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %203, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %204 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 3
  %206 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %207
  %208 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %209, ptrtoint (ptr @lockdep_recursion to i32)
  %210 = inttoptr i32 %add.i28.i.i to ptr
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %210, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !187
  %213 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i7.i.i.i = and i32 %213, -16384
  %214 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %216, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool20.not.i.i.i = icmp eq i32 %212, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge

land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %217 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i29.i.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp.i.i.i119 = icmp eq i32 %220, 0
  br i1 %cmp.i.i.i119, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.i_size_write.exit.i_crit_edge

land.rhs.i.i.i.i_size_write.exit.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %221 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i9.i.i.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %224, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %225 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %226
  %227 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %228, ptrtoint (ptr @hardirqs_enabled to i32)
  %229 = inttoptr i32 %add47.i.i.i to ptr
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %229, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  %232 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i12.i.i.i = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %235, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool54.not.i.i.i = icmp eq i32 %231, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, label %if.then.i.i.i120, !prof !190

land.rhs58.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

if.then.i.i.i120:                                 ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %i_size_write.exit.i

i_size_write.exit.i:                              ; preds = %if.then.i.i.i120, %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs.i.i.i.i_size_write.exit.i_crit_edge, %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge, %if.end.i118.i_size_write.exit.i_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 23
  %236 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %237, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !191
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 23, i32 1
  %238 = call ptr @llvm.returnaddress(i32 0) #12
  %239 = ptrtoint ptr %238 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %239) #12
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 14
  %240 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %conv.i, ptr %i_size8.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %239) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  %241 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %242, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  %243 = call i32 @llvm.read_register.i32(metadata !174) #12
  %and.i.i.i26.i.i = and i32 %243, -16384
  %244 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %246, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %call8.i = call i32 @exfat_count_dir_entries(ptr noundef %169, ptr noundef nonnull %cdir.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %i_size_write.exit.i.if.then51_crit_edge, label %if.end11.i

i_size_write.exit.i.if.then51_crit_edge:          ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.end11.i:                                       ; preds = %i_size_write.exit.i
  %add.i = add nuw i32 %call8.i, 2
  call void @set_nlink(ptr noundef nonnull %call45, i32 noundef %add.i) #12
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 2
  %options.i = getelementptr inbounds %struct.exfat_sb_info, ptr %171, i32 0, i32 23
  %247 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %options.i, align 8
  %249 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 3
  %fs_gid.i = getelementptr inbounds %struct.exfat_sb_info, ptr %171, i32 0, i32 23, i32 1
  %250 = ptrtoint ptr %fs_gid.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %fs_gid.i, align 4
  %252 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %i_gid.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #12
  %call.i.i1.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #12
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.end11.i
  %cur.0.i.i.i = phi i64 [ %call.i.i1.i.i.i, %if.end11.i ], [ %call.i.i.i.i121, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %253 = add i64 %cur.0.i.i.i, 2
  %add.i.i77.i = and i64 %253, -2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #12
  %call.i.i.i.i121 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i.i.i, i64 noundef %add.i.i77.i) #12
  %cmp.i.i78.i = icmp eq i64 %call.i.i.i.i121, %cur.0.i.i.i
  br i1 %cmp.i.i78.i, label %if.end52, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, !prof !190

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

if.then51:                                        ; preds = %i_size_write.exit.i.if.then51_crit_edge, %if.end48.if.then51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clu.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir.i) #12
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) #16
  call void @iput(ptr noundef nonnull %call45) #12
  %s_root59 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %254 = ptrtoint ptr %s_root59 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %s_root59, align 64
  br label %free_table

if.end52:                                         ; preds = %for.cond.i.i.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 49
  %255 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 0, ptr %i_generation.i, align 8
  %fs_dmask.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %171, i32 0, i32 23, i32 3
  %256 = ptrtoint ptr %fs_dmask.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %fs_dmask.i.i, align 2
  %258 = and i16 %257, 511
  %259 = xor i16 %258, 16895
  %260 = ptrtoint ptr %call45 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %call45, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 7
  %261 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @exfat_dir_inode_operations, ptr %i_op.i, align 8
  %262 = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 44
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @exfat_dir_operations, ptr %262, align 8
  %call14.i122 = call fastcc i64 @i_size_read(ptr noundef %call45) #12
  %sub.i = add i64 %call14.i122, -1
  %cluster_size.i = getelementptr inbounds %struct.exfat_sb_info, ptr %171, i32 0, i32 2
  %264 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %cluster_size.i, align 4
  %sub15.i = add i32 %265, -1
  %conv16.i = zext i32 %sub15.i to i64
  %or.i = or i64 %sub.i, %conv16.i
  %add17.i = add i64 %or.i, 1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 20
  %266 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %267 to i64
  %shr.i123 = ashr i64 %add17.i, %sh_prom.i
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 22
  %268 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %shr.i123, ptr %i_blocks.i, align 8
  %269 = ptrtoint ptr %root_dir.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %root_dir.i, align 4
  %conv20.i = zext i32 %270 to i64
  %shl21.i = shl nuw i64 %conv20.i, 32
  %or22.i = or i64 %shl21.i, 4294967295
  %i_pos.i = getelementptr i8, ptr %call45, i32 -112
  %271 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %or22.i, ptr %i_pos.i, align 8
  %call23.i = call fastcc i64 @i_size_read(ptr noundef %call45) #12
  %i_size_aligned.i = getelementptr i8, ptr %call45, i32 -120
  %272 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 %call23.i, ptr %i_size_aligned.i, align 8
  %call24.i = call fastcc i64 @i_size_read(ptr noundef %call45) #12
  %i_size_ondisk.i = getelementptr i8, ptr %call45, i32 -128
  %273 = ptrtoint ptr %i_size_ondisk.i to i32
  call void @__asan_store8_noabort(i32 %273)
  store i64 %call24.i, ptr %i_size_ondisk.i, align 8
  %attr8.i.i = getelementptr i8, ptr %call45, i32 -244
  %274 = ptrtoint ptr %attr8.i.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 16, ptr %attr8.i.i, align 4
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 16
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 15
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call45, i32 0, i32 17
  %i_crtime.i = getelementptr i8, ptr %call45, i32 784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %call45) #12
  %275 = call ptr @memcpy(ptr %i_crtime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %276 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_crtime.i, i32 16)
  %277 = call ptr @memcpy(ptr %i_atime.i, ptr %i_crtime.i, i32 16)
  %278 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_crtime.i, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clu.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir.i) #12
  %279 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %i_pos.i, align 8
  call void @exfat_hash_inode(ptr noundef nonnull %call45, i64 noundef %280) #12
  %281 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef %call45, i32 noundef %282) #12
  %call54 = call ptr @d_make_root(ptr noundef nonnull %call45) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %283 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call54, ptr %s_root, align 64
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.then57, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15) #16
  br label %free_table

free_table:                                       ; preds = %if.then57, %if.then51, %if.then47, %if.then30
  %err.0 = phi i32 [ -5, %if.then51 ], [ -12, %if.then57 ], [ -12, %if.then47 ], [ -22, %if.then30 ]
  call void @exfat_free_upcase_table(ptr noundef %1) #12
  call void @exfat_free_bitmap(ptr noundef %1) #12
  %boot_bh = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 14
  %284 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %boot_bh, align 4
  %tobool.not.i125 = icmp eq ptr %285, null
  br i1 %tobool.not.i125, label %free_table.check_nls_io_crit_edge, label %if.then.i126

free_table.check_nls_io_crit_edge:                ; preds = %free_table
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_nls_io

if.then.i126:                                     ; preds = %free_table
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %285) #12
  br label %check_nls_io

check_nls_io:                                     ; preds = %if.then.i126, %free_table.check_nls_io_crit_edge, %if.then16
  %err.1 = phi i32 [ %ret.1.i, %if.then16 ], [ %err.0, %free_table.check_nls_io_crit_edge ], [ %err.0, %if.then.i126 ]
  %nls_io60 = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 24
  %286 = ptrtoint ptr %nls_io60 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %nls_io60, align 8
  call void @unload_nls(ptr noundef %287) #12
  %iocharset.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 5
  %288 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %iocharset.i, align 8
  %cmp.not.i = icmp eq ptr %289, @exfat_default_iocharset
  br i1 %cmp.not.i, label %check_nls_io.exfat_free_iocharset.exit_crit_edge, label %if.then.i128

check_nls_io.exfat_free_iocharset.exit_crit_edge: ; preds = %check_nls_io
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_iocharset.exit

if.then.i128:                                     ; preds = %check_nls_io
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %289) #12
  br label %exfat_free_iocharset.exit

exfat_free_iocharset.exit:                        ; preds = %if.then.i128, %check_nls_io.exfat_free_iocharset.exit_crit_edge
  %290 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %s_fs_info, align 16
  call void @kfree(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %exfat_free_iocharset.exit, %if.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %exfat_free_iocharset.exit ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @exfat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_hash_inode(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_free_upcase_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @exfat_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @exfat_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %truncate_lock = getelementptr inbounds %struct.exfat_inode_info, ptr %call, i32 0, i32 18
  tail call void @__init_rwsem(ptr noundef %truncate_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @exfat_alloc_inode.__key) #12
  %vfs_inode = getelementptr inbounds %struct.exfat_inode_info, ptr %call, i32 0, i32 19
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @exfat_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_write_inode(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_evict_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_put_super(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #12
  tail call void @exfat_free_bitmap(ptr noundef %1) #12
  %boot_bh = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %boot_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_bh, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %3) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_lock) #12
  %rcu = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 28
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @exfat_delayed_free) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #12
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %call1 = tail call i32 @sync_blockdev(ptr noundef %3) #12
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %vol_flags.i = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %vol_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_flags.i, align 4
  %8 = trunc i32 %7 to i16
  %conv.i = and i16 %8, -3
  tail call fastcc void @exfat_set_vol_flags(ptr noundef %sb, i16 noundef zeroext %conv.i) #12
  tail call void @mutex_unlock(ptr noundef %s_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %used_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %used_clusters to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #12
  %call3 = tail call i32 @exfat_count_used_clusters(ptr noundef %1, ptr noundef %used_clusters) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  tail call void @mutex_unlock(ptr noundef %s_lock) #12
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_magic, align 4
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %buf, align 8
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cluster_size, align 4
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %16 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %f_bsize, align 4
  %num_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_clusters, align 8
  %sub = add i32 %18, -2
  %conv = zext i32 %sub to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %19 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %f_blocks, align 8
  %20 = ptrtoint ptr %used_clusters to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used_clusters, align 4
  %conv10 = zext i32 %21 to i64
  %sub11 = sub nsw i64 %conv, %conv10
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub11, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %23 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %sub11, ptr %f_bavail, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %24 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %25 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1530, ptr %f_namelen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -5, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %options = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call5 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %call5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fs_gid = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack78 = load i32, ptr %fs_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack78)
  %cmp.i80 = icmp eq i32 %.unpack78, 0
  br i1 %cmp.i80, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = insertvalue [1 x i32] undef, i32 %.unpack78, 0
  %call14 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %call14) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %fs_fmask = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 2
  %8 = ptrtoint ptr %fs_fmask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fs_fmask, align 4
  %conv = zext i16 %9 to i32
  %fs_dmask = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 3
  %10 = ptrtoint ptr %fs_dmask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fs_dmask, align 2
  %conv16 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv16) #12
  %allow_utime = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 4
  %12 = ptrtoint ptr %allow_utime to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %allow_utime, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv19 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %conv19) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %utf8 = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 7
  %14 = ptrtoint ptr %utf8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %utf8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.21) #12
  br label %if.end27

if.else:                                          ; preds = %if.end20
  %nls_io = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 24
  %15 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nls_io, align 8
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %if.else.if.end27_crit_edge, label %if.then24

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %18) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.else.if.end27_crit_edge, %if.then22
  %errors = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 6
  %19 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %switch.selectcmp = icmp eq i32 %20, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.24, ptr @.str.25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %switch.selectcmp81 = icmp eq i32 %20, 0
  %switch.select82 = select i1 %switch.selectcmp81, ptr @.str.23, ptr %switch.select
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %switch.select82) #12
  %21 = ptrtoint ptr %utf8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load38 = load i8, ptr %utf8, align 4
  %22 = and i8 %bf.load38, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool41.not = icmp eq i8 %22, 0
  br i1 %tobool41.not, label %if.end27.if.end43_crit_edge, label %if.then42

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.26) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end27.if.end43_crit_edge
  %time_offset = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 8
  %23 = ptrtoint ptr %time_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %time_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %24) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_delayed_free(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nls_io = getelementptr i8, ptr %p, i32 -1140
  %0 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nls_io, align 8
  tail call void @unload_nls(ptr noundef %1) #12
  %iocharset.i = getelementptr i8, ptr %p, i32 -1156
  %2 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocharset.i, align 8
  %cmp.not.i = icmp eq ptr %3, @exfat_default_iocharset
  br i1 %cmp.not.i, label %entry.exfat_free_iocharset.exit_crit_edge, label %if.then.i

entry.exfat_free_iocharset.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %exfat_free_iocharset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %3) #12
  br label %exfat_free_iocharset.exit

exfat_free_iocharset.exit:                        ; preds = %if.then.i, %entry.exfat_free_iocharset.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %p, i32 -1460
  tail call void @exfat_free_upcase_table(ptr noundef %add.ptr) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_count_used_clusters(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_create_upcase_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_load_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_calc_chksum32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_set(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_count_num_clusters(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_count_dir_entries(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !195
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !196
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !197

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !198
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !200
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !201
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_truncate_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_s32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_cache_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_inode_init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_lru_lock = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %cache_lru_lock, ptr noundef nonnull @.str.69, ptr noundef nonnull @exfat_inode_init_once.__key, i16 noundef signext 3) #12
  %nr_caches = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 12
  %0 = ptrtoint ptr %nr_caches to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nr_caches, align 4
  %cache_valid_id = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 13
  %1 = ptrtoint ptr %cache_valid_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %cache_valid_id, align 8
  %cache_lru = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 11
  %2 = ptrtoint ptr %cache_lru to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %cache_lru, ptr %cache_lru, align 4
  %prev.i = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cache_lru, ptr %prev.i, align 4
  %i_hash_fat = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 17
  %4 = ptrtoint ptr %i_hash_fat to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %i_hash_fat, align 4
  %pprev.i = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 17, i32 1
  %5 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pprev.i, align 4
  %vfs_inode = getelementptr inbounds %struct.exfat_inode_info, ptr %foo, i32 0, i32 19
  tail call void @inode_init_once(ptr noundef %vfs_inode) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_exfat__269_836_init_exfat_fs6, !1, !"__initcall__kmod_exfat__269_836_init_exfat_fs6", i1 false, i1 false}
!1 = !{!"../fs/exfat/super.c", i32 836, i32 1}
!2 = !{ptr @__exitcall_exit_exfat_fs, !3, !"__exitcall_exit_exfat_fs", i1 false, i1 false}
!3 = !{!"../fs/exfat/super.c", i32 837, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias270, !5, !"__UNIQUE_ID_alias270", i1 false, i1 false}
!5 = !{!"../fs/exfat/super.c", i32 839, i32 1}
!6 = !{ptr @__UNIQUE_ID_file271, !7, !"__UNIQUE_ID_file271", i1 false, i1 false}
!7 = !{!"../fs/exfat/super.c", i32 840, i32 1}
!8 = !{ptr @__UNIQUE_ID_license272, !7, !"__UNIQUE_ID_license272", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description273, !10, !"__UNIQUE_ID_description273", i1 false, i1 false}
!10 = !{!"../fs/exfat/super.c", i32 841, i32 1}
!11 = !{ptr @__UNIQUE_ID_author274, !12, !"__UNIQUE_ID_author274", i1 false, i1 false}
!12 = !{!"../fs/exfat/super.c", i32 842, i32 1}
!13 = !{ptr @exfat_inode_cachep, !14, !"exfat_inode_cachep", i1 false, i1 false}
!14 = !{!"../fs/exfat/super.c", i32 26, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/exfat/super.c", i32 775, i32 12}
!17 = !{ptr @exfat_fs_type, !18, !"exfat_fs_type", i1 false, i1 false}
!18 = !{!"../fs/exfat/super.c", i32 773, i32 32}
!19 = !{ptr @exfat_init_fs_context.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/exfat/super.c", i32 755, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @exfat_init_fs_context.__key.2, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/exfat/super.c", i32 756, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../fs/exfat/super.c", i32 760, i32 24}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../fs/exfat/super.c", i32 761, i32 24}
!29 = !{ptr @ratelimit_state_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @exfat_default_iocharset, !33, !"exfat_default_iocharset", i1 false, i1 false}
!33 = !{!"../fs/exfat/super.c", i32 25, i32 13}
!34 = !{ptr @exfat_context_ops, !35, !"exfat_context_ops", i1 false, i1 false}
!35 = !{!"../fs/exfat/super.c", i32 740, i32 43}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../fs/exfat/super.c", i32 271, i32 28}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../fs/exfat/super.c", i32 274, i32 28}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/exfat/super.c", i32 633, i32 4}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/exfat/super.c", i32 648, i32 3}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/exfat/super.c", i32 655, i32 38}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/exfat/super.c", i32 660, i32 4}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/exfat/super.c", i32 674, i32 3}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/exfat/super.c", i32 683, i32 3}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/exfat/super.c", i32 692, i32 3}
!56 = !{ptr @exfat_sops, !57, !"exfat_sops", i1 false, i1 false}
!57 = !{!"../fs/exfat/super.c", i32 199, i32 38}
!58 = !{ptr @exfat_alloc_inode.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../fs/exfat/super.c", i32 190, i32 2}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/exfat/super.c", i32 157, i32 17}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/exfat/super.c", i32 160, i32 17}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/exfat/super.c", i32 162, i32 16}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/exfat/super.c", i32 164, i32 17}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/exfat/super.c", i32 166, i32 15}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/exfat/super.c", i32 168, i32 17}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/exfat/super.c", i32 170, i32 15}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/exfat/super.c", i32 172, i32 15}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/exfat/super.c", i32 174, i32 15}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/exfat/super.c", i32 176, i32 15}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/exfat/super.c", i32 178, i32 17}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/exfat/super.c", i32 580, i32 3}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/exfat/super.c", i32 586, i32 3}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/exfat/super.c", i32 592, i32 3}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/exfat/super.c", i32 598, i32 3}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/exfat/super.c", i32 604, i32 3}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/exfat/super.c", i32 426, i32 3}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/exfat/super.c", i32 433, i32 3}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/exfat/super.c", i32 437, i32 30}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/exfat/super.c", i32 438, i32 3}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/exfat/super.c", i32 450, i32 3}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/exfat/super.c", i32 459, i32 3}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/exfat/super.c", i32 468, i32 3}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/exfat/super.c", i32 501, i32 3}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/exfat/super.c", i32 508, i32 3}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/exfat/super.c", i32 513, i32 3}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/exfat/super.c", i32 515, i32 3}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/exfat/super.c", i32 386, i32 3}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/exfat/super.c", i32 391, i32 3}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/exfat/super.c", i32 401, i32 4}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/exfat/super.c", i32 407, i32 4}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/exfat/super.c", i32 545, i32 5}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/exfat/super.c", i32 562, i32 4}
!127 = !{ptr @exfat_hash_init.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../fs/exfat/super.c", i32 326, i32 2}
!129 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!132 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/exfat/super.c", i32 237, i32 2}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/exfat/super.c", i32 238, i32 2}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/exfat/super.c", i32 239, i32 2}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/exfat/super.c", i32 240, i32 2}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/exfat/super.c", i32 241, i32 2}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/exfat/super.c", i32 242, i32 2}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/exfat/super.c", i32 243, i32 2}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/exfat/super.c", i32 244, i32 2}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/exfat/super.c", i32 245, i32 2}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/exfat/super.c", i32 246, i32 2}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/exfat/super.c", i32 249, i32 2}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/exfat/super.c", i32 251, i32 2}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/exfat/super.c", i32 253, i32 2}
!159 = !{ptr @exfat_parameters, !160, !"exfat_parameters", i1 false, i1 false}
!160 = !{!"../fs/exfat/super.c", i32 236, i32 39}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/exfat/super.c", i32 230, i32 4}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/exfat/super.c", i32 231, i32 4}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/exfat/super.c", i32 232, i32 4}
!167 = !{ptr @exfat_param_enums, !168, !"exfat_param_enums", i1 false, i1 false}
!168 = !{!"../fs/exfat/super.c", i32 229, i32 36}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/exfat/super.c", i32 802, i32 41}
!171 = !{ptr @exfat_inode_init_once.__key, !172, !"__key", i1 false, i1 false}
!172 = !{!"../fs/exfat/super.c", i32 786, i32 2}
!173 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i32 0, i32 33}
!185 = !{i64 2152588995}
!186 = !{i64 2150213037}
!187 = !{i64 2150217971}
!188 = !{i64 2150239689}
!189 = !{i64 2150244583}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 2150321110}
!192 = !{i64 2150321435}
!193 = !{i64 2152600857}
!194 = !{i64 2154392914}
!195 = !{i64 630271, i64 630332}
!196 = !{i64 633003}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{i64 633288}
!199 = !{i64 2152587064}
!200 = !{i64 2152586906}
!201 = !{i64 2152587234}
!202 = !{i64 2150320785}
