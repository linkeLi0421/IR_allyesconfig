; ModuleID = '/llk/IR_all_yes/fs/befs/linuxvfs.c_pt.bc'
source_filename = "../fs/befs/linuxvfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.match_token = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.befs_block_run = type { i32, i16, i16 }
%struct.substring_t = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.befs_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_block_run, i64, i64, %struct.befs_block_run, %struct.befs_block_run, i32, %struct.befs_mount_options, ptr }
%struct.befs_mount_options = type { %struct.kgid_t, %struct.kuid_t, i32, i32, i32, ptr }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.befs_super_block = type <{ [32 x i8], i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_disk_block_run, i64, i64, i32, %struct.befs_disk_block_run, %struct.befs_disk_block_run }>
%struct.befs_disk_block_run = type { i32, i16, i16 }
%struct.befs_data_stream = type { [12 x %struct.befs_block_run], i64, %struct.befs_block_run, i64, %struct.befs_block_run, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.75 = type { ptr }
%struct.befs_inode = type <{ i32, %struct.befs_disk_block_run, i32, i32, i32, i32, i64, i64, %struct.befs_disk_block_run, %struct.befs_disk_block_run, i32, i32, i32, %union.anon.81, [4 x i32], [1 x %struct.befs_small_data] }>
%union.anon.81 = type { %struct.befs_disk_data_stream }
%struct.befs_disk_data_stream = type { [12 x %struct.befs_disk_block_run], i64, %struct.befs_disk_block_run, i64, %struct.befs_disk_block_run, i64, i64 }
%struct.befs_small_data = type <{ i32, i16, i16, [1 x i8] }>
%struct.befs_inode_info = type { i32, i32, %struct.befs_block_run, %struct.befs_block_run, %struct.befs_block_run, %union.anon.80, %struct.inode }
%union.anon.80 = type { %struct.befs_data_stream }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
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
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.page = type { i32, %union.anon.17, %union.anon.61, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }

@__UNIQUE_ID_description271 = internal constant [48 x i8] c"befs.description=BeOS File System (BeFS) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [23 x i8] c"befs.author=Will Dyson\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [23 x i8] c"befs.file=fs/befs/befs\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [17 x i8] c"befs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias275 = internal constant [19 x i8] c"befs.alias=fs-befs\00", section ".modinfo", align 1
@befs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @befs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_befs__276_1027_init_befs_fs6 = internal global ptr @init_befs_fs, section ".initcall6.init", align 4
@__exitcall_exit_befs_fs = internal global ptr @exit_befs_fs, section ".exitcall.exit", align 4
@befs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"befs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot parse mount options\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"---> %s\00", [24 x i8] zeroinitializer }, align 32
@__func__.befs_fill_super = private unnamed_addr constant [16 x i8] c"befs_fill_super\00", align 1
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No write support. Marking filesystem read-only\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to set blocksize\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to read superblock\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Using PPC superblock location\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Using x86 superblock location\00", [34 x i8] zeroinitializer }, align 32
@befs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @befs_alloc_inode, ptr null, ptr @befs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr @befs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @befs_statfs, ptr @befs_remount, ptr null, ptr @befs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@befs_export_operations = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @befs_fh_to_dentry, ptr @befs_fh_to_parent, ptr null, ptr @befs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get root inode failed\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Loading nls: %s\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot load nls %s loading default nls\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Loading default nls\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@befs_tokens = internal constant { [5 x %struct.match_token], [56 x i8] } { [5 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.27 }, %struct.match_token { i32 1, ptr @.str.28 }, %struct.match_token { i32 2, ptr @.str.29 }, %struct.match_token { i32 3, ptr @.str.30 }, %struct.match_token { i32 4, ptr null }], [56 x i8] zeroinitializer }, align 32
@parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013befs: Invalid uid %d, using default\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_options\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/befs/linuxvfs.c\00", [45 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr = internal global ptr @parse_options._entry, section ".printk_index", align 4
@parse_options._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.16, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013befs: Invalid gid %d, using default\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.20 = internal global ptr @parse_options._entry.18, section ".printk_index", align 4
@parse_options._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.16, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013befs: allocation failure for iocharset string\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.23 = internal global ptr @parse_options._entry.21, section ".printk_index", align 4
@parse_options._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.16, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013befs: Unrecognized mount option \22%s\22 or missing value\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.26 = internal global ptr @parse_options._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iocharset=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@__func__.befs_statfs = private unnamed_addr constant [12 x i8] c"befs_statfs\00", align 1
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<--- %s\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",charset=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",debug\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"---> %s inode = %lu\00", [44 x i8] zeroinitializer }, align 32
@__func__.befs_iget = private unnamed_addr constant [10 x i8] c"befs_iget\00", align 1
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"  real inode number [%u, %hu, %hu]\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to read inode block - inode = %lu\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bad inode: %lu\00", [17 x i8] zeroinitializer }, align 32
@befs_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @befs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @befs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@befs_dir_inode_operations = internal constant %struct.inode_operations { ptr @befs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@befs_dir_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @befs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@befs_symlink_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @befs_symlink_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.40 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Inode %lu is not a regular file, directory or symlink. THAT IS WRONG! BeFS has no on disk special files\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"<--- %s - Bad inode\00", [44 x i8] zeroinitializer }, align 32
@BAD_IADDR = external dso_local local_unnamed_addr constant %struct.befs_block_run, align 1
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"---> befs_get_block() for inode %lu, block %ld\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"befs_get_block() was asked to write to block %ld in inode %lu\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"<--- %s for inode %lu, block %ld ERROR\00", [57 x i8] zeroinitializer }, align 32
@__func__.befs_get_block = private unnamed_addr constant [15 x i8] c"befs_get_block\00", align 1
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"<--- %s for inode %lu, block %ld, disk address %lu\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"---> %s name %pd inode %ld\00", [37 x i8] zeroinitializer }, align 32
@__func__.befs_lookup = private unnamed_addr constant [12 x i8] c"befs_lookup\00", align 1
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<--- %s ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"<--- %s %pd not found\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<--- %s Error\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"---> %s\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.befs_nls2utf = private unnamed_addr constant [13 x i8] c"befs_nls2utf\00", align 1
@.str.52 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Name using character set %s contains a character that cannot be converted to unicode.\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"---> %s name %pD, inode %ld, ctx->pos %lld\00", [53 x i8] zeroinitializer }, align 32
@__func__.befs_readdir = private unnamed_addr constant [13 x i8] c"befs_readdir\00", align 1
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IO error reading %pD (inode %lu)\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<--- %s END\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"<--- %s Empty directory\00", [40 x i8] zeroinitializer }, align 32
@__func__.befs_utf2nls = private unnamed_addr constant [13 x i8] c"befs_utf2nls\00", align 1
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Long symlink with illegal length\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Follow long symlink\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read entire long symlink\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@init_befs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.16, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016befs: version: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_befs_fs\00", [19 x i8] zeroinitializer }, align 32
@init_befs_fs._entry_ptr = internal global ptr @init_befs_fs._entry, section ".printk_index", align 4
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.9.3\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"befs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 827541058, i64 1111905073]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"befs_fs_type\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 981, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"befs_inode_cachep\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 77, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 983, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 828, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 832, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 836, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 851, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 858, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 866, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 868, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"befs_sops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 67, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"befs_export_operations\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 98, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 907, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 913, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 917, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 924, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 712, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"befs_tokens\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 684, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 727, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 741, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 752, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 761, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 685, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 686, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 687, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 688, i32 14 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 969, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 775, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 778, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 781, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 783, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 306, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 319, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 325, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 335, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant [10 x i8] c"befs_aops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 89, i32 46 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"befs_dir_operations\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 79, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"befs_symlink_aops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 94, i32 46 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 409, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 425, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 142, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 145, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 154, i32 7 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 164, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 183, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 191, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 202, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 205, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 598, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 633, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 226, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 235, i32 19 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 240, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 244, i32 19 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 481, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 484, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 487, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 260, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 416, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 995, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [22 x i8] c"../fs/befs/linuxvfs.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 436, i32 49 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_alias275, ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__exitcall_exit_befs_fs, ptr @__initcall__kmod_befs__276_1027_init_befs_fs6, ptr @exit_befs_fs, ptr @init_befs_fs._entry, ptr @init_befs_fs._entry_ptr, ptr @parse_options._entry, ptr @parse_options._entry.18, ptr @parse_options._entry.21, ptr @parse_options._entry.24, ptr @parse_options._entry_ptr, ptr @parse_options._entry_ptr.20, ptr @parse_options._entry_ptr.23, ptr @parse_options._entry_ptr.26, ptr @befs_fs_type, ptr @befs_inode_cachep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @befs_sops, ptr @befs_export_operations, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @befs_tokens, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @befs_aops, ptr @befs_dir_operations, ptr @befs_symlink_aops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_export_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @befs_symlink_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_befs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_befs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @befs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @befs_fs_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_befs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #15
  %call1 = tail call fastcc i32 @befs_init_inodecache() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_filesystem(ptr noundef nonnull @befs_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %unacquire_inodecache

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

unacquire_inodecache:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @befs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %unacquire_inodecache, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %unacquire_inodecache ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @befs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @befs_fill_super) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #2 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #17
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mount_opts = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %2 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #12
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #12
  %4 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %option.i, align 4, !annotation !190
  %uid1.i = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 18, i32 1
  %use_uid.i = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 18, i32 3
  %use_gid.i = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 18, i32 2
  %iocharset.i = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 18, i32 5
  %debug.i = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 18, i32 4
  %tobool.not.i = icmp eq ptr %data, null
  %5 = call ptr @memset(ptr %mount_opts, i32 0, i32 24)
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %while.cond.preheader.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

while.cond.preheader.i:                           ; preds = %if.end
  %call119.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.13) #12
  %cmp.not120.i = icmp eq ptr %call119.i, null
  br i1 %cmp.not120.i, label %while.cond.preheader.i.if.end8_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end8_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call121.i = phi ptr [ %call.i, %cleanup.i.while.body.i_crit_edge ], [ %call119.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %call121.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call121.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not.i = icmp eq i8 %7, 0
  br i1 %tobool5.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end7.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end7.i:                                        ; preds = %while.body.i
  %call8.i = call i32 @match_token(ptr noundef nonnull %call121.i, ptr noundef nonnull @befs_tokens, ptr noundef nonnull %args.i) #12
  %8 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8.i, label %do.end85.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb33.i
    i32 2, label %sw.bb67.i
    i32 3, label %sw.bb81.i
  ]

sw.bb.i:                                          ; preds = %if.end7.i
  %call9.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %sw.bb.i.if.then4_crit_edge

sw.bb.i.if.then4_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end12.i:                                       ; preds = %sw.bb.i
  %9 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %option.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp15.i = icmp sgt i32 %10, -1
  br i1 %cmp15.i, label %if.end21.i, label %if.end12.i.do.end27.i_crit_edge

if.end12.i.do.end27.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i

if.end21.i:                                       ; preds = %if.end12.i
  %11 = call i32 @llvm.read_register.i32(metadata !180) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user_ns.i, align 4
  %call20.i = call i32 @make_kuid(ptr noundef %18, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20.i)
  %cmp.i.not.i = icmp eq i32 %call20.i, -1
  br i1 %cmp.i.not.i, label %if.end21.i.do.end27.i_crit_edge, label %if.end30.i

if.end21.i.do.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i.do.end27.i_crit_edge, %if.end12.i.do.end27.i_crit_edge
  %19 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %option.i, align 4
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %20) #15
  br label %cleanup.i

if.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %uid1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call20.i, ptr %uid1.i, align 8
  %22 = ptrtoint ptr %use_uid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %use_uid.i, align 8
  br label %cleanup.i

sw.bb33.i:                                        ; preds = %if.end7.i
  %call35.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %sw.bb33.i.if.then4_crit_edge

sw.bb33.i.if.then4_crit_edge:                     ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end38.i:                                       ; preds = %sw.bb33.i
  %23 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %option.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp41.i = icmp sgt i32 %24, -1
  br i1 %cmp41.i, label %if.end55.i, label %if.end38.i.do.end61.i_crit_edge

if.end38.i.do.end61.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61.i

if.end55.i:                                       ; preds = %if.end38.i
  %25 = call i32 @llvm.read_register.i32(metadata !180) #12
  %and.i110.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i110.i to ptr
  %task50.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task50.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task50.i, align 8
  %cred51.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred51.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred51.i, align 16
  %user_ns52.i = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %user_ns52.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns52.i, align 4
  %call53.i = call i32 @make_kgid(ptr noundef %32, i32 noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53.i)
  %cmp.i111.not.i = icmp eq i32 %call53.i, -1
  br i1 %cmp.i111.not.i, label %if.end55.i.do.end61.i_crit_edge, label %if.end64.i

if.end55.i.do.end61.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.end55.i.do.end61.i_crit_edge, %if.end38.i.do.end61.i_crit_edge
  %33 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %option.i, align 4
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %34) #15
  br label %cleanup.i

if.end64.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %mount_opts to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call53.i, ptr %mount_opts, align 4
  %36 = ptrtoint ptr %use_gid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %use_gid.i, align 4
  br label %cleanup.i

sw.bb67.i:                                        ; preds = %if.end7.i
  %37 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iocharset.i, align 8
  call void @kfree(ptr noundef %38) #12
  %call70.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #12
  %39 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call70.i, ptr %iocharset.i, align 8
  %tobool73.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool73.not.i, label %do.end77.i, label %sw.bb67.i.cleanup.i_crit_edge

sw.bb67.i.cleanup.i_crit_edge:                    ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

do.end77.i:                                       ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %if.then4

sw.bb81.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %debug.i, align 4
  br label %cleanup.i

do.end85.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %call121.i) #15
  br label %if.then4

cleanup.i:                                        ; preds = %sw.bb81.i, %sw.bb67.i.cleanup.i_crit_edge, %if.end64.i, %do.end61.i, %if.end30.i, %do.end27.i, %while.body.i.cleanup.i_crit_edge
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.13) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %cleanup.i.if.end8_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.end8_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %do.end85.i, %do.end77.i, %sw.bb33.i.if.then4_crit_edge, %sw.bb.i.if.then4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool5.not = icmp eq i32 %silent, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.unacquire_priv_sbp_crit_edge

if.then4.unacquire_priv_sbp_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %unacquire_priv_sbp

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.1) #12
  br label %unacquire_priv_sbp

if.end8:                                          ; preds = %cleanup.i.if.end8_crit_edge, %while.cond.preheader.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_fill_super) #12
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %41 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_warning(ptr noundef %sb, ptr noundef nonnull @.str.3) #12
  %43 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %44, 1
  store i32 %or, ptr %s_flags.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %call12 = call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 1024) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool15.not = icmp eq i32 %silent, 0
  br i1 %tobool15.not, label %if.then16, label %if.then14.unacquire_priv_sbp_crit_edge

if.then14.unacquire_priv_sbp_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %unacquire_priv_sbp

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.4) #12
  br label %unacquire_priv_sbp

if.end18:                                         ; preds = %if.end11
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %45 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %47 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize.i, align 16
  %call.i152 = call ptr @__bread_gfp(ptr noundef %46, i64 noundef 0, i32 noundef %48, i32 noundef 8) #12
  %tobool20.not = icmp eq ptr %call.i152, null
  br i1 %tobool20.not, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool22.not = icmp eq i32 %silent, 0
  br i1 %tobool22.not, label %if.then23, label %if.then21.unacquire_priv_sbp_crit_edge

if.then21.unacquire_priv_sbp_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %unacquire_priv_sbp

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.5) #12
  br label %unacquire_priv_sbp

if.end25:                                         ; preds = %if.end18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i152, i32 0, i32 5
  %49 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_data, align 4
  %magic1 = getelementptr inbounds %struct.befs_super_block, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %magic1 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %magic1, align 1
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %52, label %if.else [
    i32 827541058, label %if.end25.if.then29_crit_edge
    i32 1111905073, label %if.end25.if.then29_crit_edge177
  ]

if.end25.if.then29_crit_edge177:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.then29:                                        ; preds = %if.end25.if.then29_crit_edge, %if.end25.if.then29_crit_edge177
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.6) #12
  br label %if.end31

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.7) #12
  %54 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 512
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  %disk_sb.0 = phi ptr [ %50, %if.then29 ], [ %add.ptr, %if.else ]
  %call32 = call i32 @befs_load_sb(ptr noundef %sb, ptr noundef %disk_sb.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %lor.lhs.false34, label %if.end31.brelse.exit156_crit_edge

if.end31.brelse.exit156_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit156

lor.lhs.false34:                                  ; preds = %if.end31
  %call35 = call i32 @befs_check_sb(ptr noundef %sb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %brelse.exit, label %lor.lhs.false34.brelse.exit156_crit_edge

lor.lhs.false34.brelse.exit156_crit_edge:         ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit156

brelse.exit:                                      ; preds = %lor.lhs.false34
  call void @befs_dump_super_block(ptr noundef %sb, ptr noundef %disk_sb.0) #12
  call void @__brelse(ptr noundef nonnull %call.i152) #12
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %56 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1111905073, ptr %s_magic, align 4
  %block_size = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %block_size, align 4
  %call46 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %58) #12
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %59 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @befs_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %60 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @befs_export_operations, ptr %s_export_op, align 16
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %61 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %62 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 281474976710655, ptr %s_time_max, align 64
  %root_dir = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 15
  %63 = ptrtoint ptr %root_dir to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %root_dir, align 8
  %65 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info, align 16
  %ag_shift.i = getelementptr inbounds %struct.befs_sb_info, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %ag_shift.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ag_shift.i, align 4
  %shl.i = shl i32 %64, %68
  %start.i = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 15, i32 1
  %69 = ptrtoint ptr %start.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %start.i, align 4
  %conv.i = zext i16 %70 to i32
  %add.i = add i32 %shl.i, %conv.i
  %call48 = call fastcc ptr @befs_iget(ptr noundef %sb, i32 noundef %add.i)
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end52

if.then50:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %call48 to i32
  br label %unacquire_priv_sbp

if.end52:                                         ; preds = %brelse.exit
  %call53 = call ptr @d_make_root(ptr noundef %call48) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %72 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call53, ptr %s_root, align 64
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool57.not = icmp eq i32 %silent, 0
  br i1 %tobool57.not, label %if.then58, label %if.then56.unacquire_priv_sbp_crit_edge

if.then56.unacquire_priv_sbp_crit_edge:           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %unacquire_priv_sbp

if.then58:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.9) #12
  br label %unacquire_priv_sbp

if.end60:                                         ; preds = %if.end52
  %73 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iocharset.i, align 8
  %tobool62.not = icmp eq ptr %74, null
  br i1 %tobool62.not, label %if.else77, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull %74) #12
  %75 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iocharset.i, align 8
  %call68 = call ptr @load_nls(ptr noundef %76) #12
  %nls = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 19
  %77 = ptrtoint ptr %nls to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call68, ptr %nls, align 4
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %if.then71, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then71:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iocharset.i, align 8
  call void (ptr, ptr, ...) @befs_warning(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef %79) #12
  %call74 = call ptr @load_nls_default() #12
  %80 = ptrtoint ptr %nls to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call74, ptr %nls, align 4
  br label %cleanup

if.else77:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.12) #12
  %call78 = call ptr @load_nls_default() #12
  %nls79 = getelementptr inbounds %struct.befs_sb_info, ptr %call7.i.i, i32 0, i32 19
  %81 = ptrtoint ptr %nls79 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call78, ptr %nls79, align 4
  br label %cleanup

brelse.exit156:                                   ; preds = %lor.lhs.false34.brelse.exit156_crit_edge, %if.end31.brelse.exit156_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i152) #12
  br label %unacquire_priv_sbp

unacquire_priv_sbp:                               ; preds = %brelse.exit156, %if.then58, %if.then56.unacquire_priv_sbp_crit_edge, %if.then50, %if.then23, %if.then21.unacquire_priv_sbp_crit_edge, %if.then16, %if.then14.unacquire_priv_sbp_crit_edge, %if.then6, %if.then4.unacquire_priv_sbp_crit_edge
  %ret.0 = phi i32 [ -22, %brelse.exit156 ], [ %71, %if.then50 ], [ -22, %if.then56.unacquire_priv_sbp_crit_edge ], [ -22, %if.then58 ], [ -22, %if.then21.unacquire_priv_sbp_crit_edge ], [ -22, %if.then23 ], [ -22, %if.then14.unacquire_priv_sbp_crit_edge ], [ -22, %if.then16 ], [ -22, %if.then4.unacquire_priv_sbp_crit_edge ], [ -22, %if.then6 ]
  %82 = ptrtoint ptr %iocharset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iocharset.i, align 8
  call void @kfree(ptr noundef %83) #12
  %84 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info, align 16
  call void @kfree(ptr noundef %85) #12
  %86 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %unacquire_priv_sbp, %if.else77, %if.then71, %if.then63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then63.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %if.else77 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %unacquire_priv_sbp ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_warning(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_load_sb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_check_sb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_dump_super_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @befs_iget(ptr noundef %sb, i32 noundef %ino) unnamed_addr #2 align 64 {
entry:
  %tmp68 = alloca %struct.befs_data_stream, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.befs_iget, i32 noundef %ino) #12
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -176
  %i_inode_num = getelementptr i8, ptr %call1, i32 -168
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16, !noalias !191
  %ag_shift.i = getelementptr inbounds %struct.befs_sb_info, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ag_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ag_shift.i, align 4, !noalias !191
  %sh_prom.i = zext i32 %9 to i64
  %shr.i = lshr i64 %conv, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %shl.i = shl i32 %conv.i, %9
  %sub.i = sub i32 %5, %shl.i
  %10 = shl i32 %sub.i, 16
  %11 = or i32 %10, 1
  %tmp.sroa.4.0.insert.insert = zext i32 %11 to i64
  %tmp.sroa.0.0.insert.ext = shl nuw i64 %shr.i, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.ext, %tmp.sroa.4.0.insert.insert
  %12 = ptrtoint ptr %i_inode_num to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %i_inode_num, align 8
  %13 = trunc i64 %shr.i to i32
  %conv9 = and i32 %sub.i, 65535
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.37, i32 noundef %13, i32 noundef %conv9, i32 noundef 1) #12
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %conv13 = zext i32 %15 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %conv13, i32 noundef %19, i32 noundef 8) #12
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.38, i32 noundef %21) #12
  br label %unacquire_none

if.end18:                                         ; preds = %if.end5
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  tail call void @befs_dump_inode(ptr noundef %sb, ptr noundef %23) #12
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %conv20 = zext i32 %25 to i64
  %call21 = tail call i32 @befs_check_inode(ptr noundef %sb, ptr noundef %23, i64 noundef %conv20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp.not = icmp eq i32 %call21, 0
  br i1 %cmp.not, label %if.end25, label %if.end18.brelse.exit271_crit_edge

if.end18.brelse.exit271_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit271

if.end25:                                         ; preds = %if.end18
  %mode = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %mode, align 1
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp eq i32 %31, 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %retval.0.i = select i1 %cmp.i, i32 %32, i32 %27
  %conv27 = trunc i32 %retval.0.i to i16
  %33 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv27, ptr %call1, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %mount_opts = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 18
  %use_uid = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 18, i32 3
  %34 = ptrtoint ptr %use_uid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %use_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not = icmp eq i32 %35, 0
  br i1 %tobool28.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %uid = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uid, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %uid31 = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 2
  %38 = ptrtoint ptr %uid31 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %uid31, align 1
  %40 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i230 = getelementptr inbounds %struct.befs_sb_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %byte_order.i230 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %byte_order.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i231 = icmp eq i32 %43, 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  %retval.0.i232 = select i1 %cmp.i231, i32 %44, i32 %39
  %call33 = tail call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %retval.0.i232) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %storemerge227 = phi i32 [ %37, %cond.true ], [ %call33, %cond.false ]
  %45 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge227, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %use_gid = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 18, i32 2
  %46 = ptrtoint ptr %use_gid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %use_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool35.not = icmp eq i32 %47, 0
  br i1 %tobool35.not, label %cond.false38, label %cond.true36

cond.true36:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mount_opts, align 4
  br label %cond.end45

cond.false38:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %gid41 = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 3
  %50 = ptrtoint ptr %gid41 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %gid41, align 1
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i234 = getelementptr inbounds %struct.befs_sb_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %byte_order.i234 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %byte_order.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i235 = icmp eq i32 %55, 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %retval.0.i236 = select i1 %cmp.i235, i32 %56, i32 %51
  %call43 = tail call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %retval.0.i236) #12
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false38, %cond.true36
  %storemerge = phi i32 [ %49, %cond.true36 ], [ %call43, %cond.false38 ]
  %57 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge, ptr %i_gid, align 8
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef 1) #12
  %last_modified_time = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 7
  %58 = ptrtoint ptr %last_modified_time to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %last_modified_time, align 1
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i238 = getelementptr inbounds %struct.befs_sb_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %byte_order.i238 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %byte_order.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i239 = icmp eq i32 %63, 1
  %64 = tail call i64 @llvm.bswap.i64(i64 %59) #12
  %retval.0.i240 = select i1 %cmp.i239, i64 %64, i64 %59
  %shr = lshr i64 %retval.0.i240, 16
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %65 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %shr, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %66 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tv_nsec, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %67 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %68 = call ptr @memcpy(ptr %i_atime, ptr %i_mtime, i32 16)
  %inode_num = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 1
  %69 = ptrtoint ptr %inode_num to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %.unpack = load i32, ptr %inode_num, align 1
  %.elt217 = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %.elt217 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %.unpack218 = load i32, ptr %.elt217, align 1
  %n.sroa.3.4.extract.shift.i = lshr i32 %.unpack218, 16
  %n.sroa.3.4.extract.trunc.i = trunc i32 %n.sroa.3.4.extract.shift.i to i16
  %n.sroa.6.4.extract.trunc.i = trunc i32 %.unpack218 to i16
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16, !noalias !194
  %byte_order.i242 = getelementptr inbounds %struct.befs_sb_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %byte_order.i242 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %byte_order.i242, align 4, !noalias !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i243 = icmp eq i32 %74, 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %.unpack) #12
  %76 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i) #12
  %77 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i) #12
  %tmp51.sroa.6.0 = select i1 %cmp.i243, i16 %76, i16 %n.sroa.3.4.extract.trunc.i
  %tmp51.sroa.0.0 = select i1 %cmp.i243, i32 %75, i32 %.unpack
  %storemerge.i = select i1 %cmp.i243, i16 %77, i16 %n.sroa.6.4.extract.trunc.i
  %tmp51.sroa.8.0.insert.ext = zext i16 %storemerge.i to i64
  %tmp51.sroa.6.0.insert.ext = zext i16 %tmp51.sroa.6.0 to i64
  %tmp51.sroa.6.0.insert.shift = shl nuw nsw i64 %tmp51.sroa.6.0.insert.ext, 16
  %tmp51.sroa.6.0.insert.insert = or i64 %tmp51.sroa.6.0.insert.shift, %tmp51.sroa.8.0.insert.ext
  %tmp51.sroa.0.0.insert.ext = zext i32 %tmp51.sroa.0.0 to i64
  %tmp51.sroa.0.0.insert.shift = shl nuw i64 %tmp51.sroa.0.0.insert.ext, 32
  %tmp51.sroa.0.0.insert.insert = or i64 %tmp51.sroa.6.0.insert.insert, %tmp51.sroa.0.0.insert.shift
  %78 = ptrtoint ptr %i_inode_num to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %tmp51.sroa.0.0.insert.insert, ptr %i_inode_num, align 8
  %i_parent = getelementptr i8, ptr %call1, i32 -160
  %parent = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 8
  %79 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %.unpack219 = load i32, ptr %parent, align 1
  %.elt220 = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %.elt220 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %.unpack221 = load i32, ptr %.elt220, align 1
  %n.sroa.3.4.extract.shift.i244 = lshr i32 %.unpack221, 16
  %n.sroa.3.4.extract.trunc.i245 = trunc i32 %n.sroa.3.4.extract.shift.i244 to i16
  %n.sroa.6.4.extract.trunc.i246 = trunc i32 %.unpack221 to i16
  %81 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i, align 16, !noalias !197
  %byte_order.i248 = getelementptr inbounds %struct.befs_sb_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %byte_order.i248 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %byte_order.i248, align 4, !noalias !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i249 = icmp eq i32 %84, 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %.unpack219) #12
  %86 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i245) #12
  %87 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i246) #12
  %tmp52.sroa.0.0 = select i1 %cmp.i249, i32 %85, i32 %.unpack219
  %tmp52.sroa.6.0 = select i1 %cmp.i249, i16 %86, i16 %n.sroa.3.4.extract.trunc.i245
  %storemerge.i252 = select i1 %cmp.i249, i16 %87, i16 %n.sroa.6.4.extract.trunc.i246
  %tmp52.sroa.8.0.insert.ext = zext i16 %storemerge.i252 to i64
  %tmp52.sroa.6.0.insert.ext = zext i16 %tmp52.sroa.6.0 to i64
  %tmp52.sroa.6.0.insert.shift = shl nuw nsw i64 %tmp52.sroa.6.0.insert.ext, 16
  %tmp52.sroa.6.0.insert.insert = or i64 %tmp52.sroa.6.0.insert.shift, %tmp52.sroa.8.0.insert.ext
  %tmp52.sroa.0.0.insert.ext = zext i32 %tmp52.sroa.0.0 to i64
  %tmp52.sroa.0.0.insert.shift = shl nuw i64 %tmp52.sroa.0.0.insert.ext, 32
  %tmp52.sroa.0.0.insert.insert = or i64 %tmp52.sroa.6.0.insert.insert, %tmp52.sroa.0.0.insert.shift
  %88 = ptrtoint ptr %i_parent to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %tmp52.sroa.0.0.insert.insert, ptr %i_parent, align 8
  %i_attribute = getelementptr i8, ptr %call1, i32 -152
  %attributes = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 9
  %89 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %.unpack222 = load i32, ptr %attributes, align 1
  %.elt223 = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %.elt223 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %.unpack224 = load i32, ptr %.elt223, align 1
  %n.sroa.3.4.extract.shift.i254 = lshr i32 %.unpack224, 16
  %n.sroa.3.4.extract.trunc.i255 = trunc i32 %n.sroa.3.4.extract.shift.i254 to i16
  %n.sroa.6.4.extract.trunc.i256 = trunc i32 %.unpack224 to i16
  %91 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i, align 16, !noalias !200
  %byte_order.i258 = getelementptr inbounds %struct.befs_sb_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %byte_order.i258 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %byte_order.i258, align 4, !noalias !200
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i259 = icmp eq i32 %94, 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %.unpack222) #12
  %96 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i255) #12
  %97 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i256) #12
  %tmp53.sroa.0.0 = select i1 %cmp.i259, i32 %95, i32 %.unpack222
  %tmp53.sroa.6.0 = select i1 %cmp.i259, i16 %96, i16 %n.sroa.3.4.extract.trunc.i255
  %storemerge.i262 = select i1 %cmp.i259, i16 %97, i16 %n.sroa.6.4.extract.trunc.i256
  %tmp53.sroa.8.0.insert.ext = zext i16 %storemerge.i262 to i64
  %tmp53.sroa.6.0.insert.ext = zext i16 %tmp53.sroa.6.0 to i64
  %tmp53.sroa.6.0.insert.shift = shl nuw nsw i64 %tmp53.sroa.6.0.insert.ext, 16
  %tmp53.sroa.6.0.insert.insert = or i64 %tmp53.sroa.6.0.insert.shift, %tmp53.sroa.8.0.insert.ext
  %tmp53.sroa.0.0.insert.ext = zext i32 %tmp53.sroa.0.0 to i64
  %tmp53.sroa.0.0.insert.shift = shl nuw i64 %tmp53.sroa.0.0.insert.ext, 32
  %tmp53.sroa.0.0.insert.insert = or i64 %tmp53.sroa.6.0.insert.insert, %tmp53.sroa.0.0.insert.shift
  %98 = ptrtoint ptr %i_attribute to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %tmp53.sroa.0.0.insert.insert, ptr %i_attribute, align 8
  %flags = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 5
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %flags, align 1
  %101 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i265 = getelementptr inbounds %struct.befs_sb_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %byte_order.i265 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %byte_order.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.i266 = icmp eq i32 %104, 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  %retval.0.i267 = select i1 %cmp.i266, i32 %105, i32 %100
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i267, ptr %add.ptr.i, align 8
  %107 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %call1, align 8
  %109 = and i16 %108, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %109)
  %cmp58 = icmp eq i16 %109, -24576
  %and61 = and i32 %retval.0.i267, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %or.cond = select i1 %cmp58, i1 %tobool62.not, i1 false
  br i1 %or.cond, label %if.then63, label %if.else

if.then63:                                        ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #14
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %110 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %i_size, align 8
  %block_size = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %111 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %block_size, align 4
  %div226 = lshr i32 %112, 9
  %conv64 = zext i32 %div226 to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %113 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv64, ptr %i_blocks, align 8
  %i_data = getelementptr i8, ptr %call1, i32 -144
  %data = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13
  %call66 = tail call i32 @strlcpy(ptr noundef %i_data, ptr noundef %data, i32 noundef 144) #12
  br label %if.end79

if.else:                                          ; preds = %cond.end45
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tmp68) #12
  %data69 = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %114 = call ptr @memset(ptr %tmp68, i32 255, i32 96)
  %115 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i, align 16, !noalias !206
  %byte_order.i.i = getelementptr inbounds %struct.befs_sb_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %byte_order.i.i, align 4, !noalias !206
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp.i.i = icmp eq i32 %118, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else
  %i.072.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [12 x %struct.befs_block_run], ptr %tmp68, i32 0, i32 %i.072.i
  %arrayidx2.i = getelementptr [12 x %struct.befs_disk_block_run], ptr %data69, i32 0, i32 %i.072.i
  %119 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %.unpack34.i = load i32, ptr %arrayidx2.i, align 1, !noalias !203
  %.elt35.i = getelementptr inbounds [2 x i32], ptr %arrayidx2.i, i32 0, i32 1
  %120 = ptrtoint ptr %.elt35.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %.unpack36.i = load i32, ptr %.elt35.i, align 1, !noalias !203
  %n.sroa.3.4.extract.shift.i.i = lshr i32 %.unpack36.i, 16
  %n.sroa.3.4.extract.trunc.i.i = trunc i32 %n.sroa.3.4.extract.shift.i.i to i16
  %n.sroa.6.4.extract.trunc.i.i = trunc i32 %.unpack36.i to i16
  %121 = tail call i32 @llvm.bswap.i32(i32 %.unpack34.i) #12
  %122 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i.i) #12
  %123 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i.i) #12
  %tmp.sroa.6.1.i = select i1 %cmp.i.i, i16 %122, i16 %n.sroa.3.4.extract.trunc.i.i
  %tmp.sroa.0.1.i = select i1 %cmp.i.i, i32 %121, i32 %.unpack34.i
  %storemerge.i.i = select i1 %cmp.i.i, i16 %123, i16 %n.sroa.6.4.extract.trunc.i.i
  %tmp.sroa.8.0.insert.ext.i = zext i16 %storemerge.i.i to i64
  %tmp.sroa.6.0.insert.ext.i = zext i16 %tmp.sroa.6.1.i to i64
  %tmp.sroa.6.0.insert.shift.i = shl nuw nsw i64 %tmp.sroa.6.0.insert.ext.i, 16
  %tmp.sroa.6.0.insert.insert.i = or i64 %tmp.sroa.6.0.insert.shift.i, %tmp.sroa.8.0.insert.ext.i
  %tmp.sroa.0.0.insert.ext.i = zext i32 %tmp.sroa.0.1.i to i64
  %tmp.sroa.0.0.insert.shift.i = shl nuw i64 %tmp.sroa.0.0.insert.ext.i, 32
  %tmp.sroa.0.0.insert.insert.i = or i64 %tmp.sroa.6.0.insert.insert.i, %tmp.sroa.0.0.insert.shift.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 %tmp.sroa.0.0.insert.insert.i, ptr %arrayidx.i, align 1, !alias.scope !203
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %fsds_to_cpu.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fsds_to_cpu.exit:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_data67 = getelementptr i8, ptr %call1, i32 -144
  %max_direct_range.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 1
  %125 = ptrtoint ptr %max_direct_range.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %max_direct_range.i, align 1, !noalias !203
  %127 = tail call i64 @llvm.bswap.i64(i64 %126) #12
  %retval.0.i.i = select i1 %cmp.i.i, i64 %127, i64 %126
  %max_direct_range3.i = getelementptr inbounds %struct.befs_data_stream, ptr %tmp68, i32 0, i32 1
  %128 = ptrtoint ptr %max_direct_range3.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 8)
  store i64 %retval.0.i.i, ptr %max_direct_range3.i, align 1, !alias.scope !203
  %indirect.i = getelementptr inbounds %struct.befs_data_stream, ptr %tmp68, i32 0, i32 2
  %indirect5.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 2
  %129 = ptrtoint ptr %indirect5.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %.unpack.i = load i32, ptr %indirect5.i, align 1, !noalias !203
  %.elt29.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %.elt29.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %.unpack30.i = load i32, ptr %.elt29.i, align 1, !noalias !203
  %n.sroa.3.4.extract.shift.i40.i = lshr i32 %.unpack30.i, 16
  %n.sroa.3.4.extract.trunc.i41.i = trunc i32 %n.sroa.3.4.extract.shift.i40.i to i16
  %n.sroa.6.4.extract.trunc.i42.i = trunc i32 %.unpack30.i to i16
  %131 = tail call i32 @llvm.bswap.i32(i32 %.unpack.i) #12
  %132 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i41.i) #12
  %133 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i42.i) #12
  %tmp4.sroa.0.0.i = select i1 %cmp.i.i, i32 %131, i32 %.unpack.i
  %tmp4.sroa.6.0.i = select i1 %cmp.i.i, i16 %132, i16 %n.sroa.3.4.extract.trunc.i41.i
  %storemerge.i48.i = select i1 %cmp.i.i, i16 %133, i16 %n.sroa.6.4.extract.trunc.i42.i
  %tmp4.sroa.8.0.insert.ext.i = zext i16 %storemerge.i48.i to i64
  %tmp4.sroa.6.0.insert.ext.i = zext i16 %tmp4.sroa.6.0.i to i64
  %tmp4.sroa.6.0.insert.shift.i = shl nuw nsw i64 %tmp4.sroa.6.0.insert.ext.i, 16
  %tmp4.sroa.6.0.insert.insert.i = or i64 %tmp4.sroa.6.0.insert.shift.i, %tmp4.sroa.8.0.insert.ext.i
  %tmp4.sroa.0.0.insert.ext.i = zext i32 %tmp4.sroa.0.0.i to i64
  %tmp4.sroa.0.0.insert.shift.i = shl nuw i64 %tmp4.sroa.0.0.insert.ext.i, 32
  %tmp4.sroa.0.0.insert.insert.i = or i64 %tmp4.sroa.6.0.insert.insert.i, %tmp4.sroa.0.0.insert.shift.i
  %134 = ptrtoint ptr %indirect.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %tmp4.sroa.0.0.insert.insert.i, ptr %indirect.i, align 1, !alias.scope !203
  %max_indirect_range.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 3
  %135 = ptrtoint ptr %max_indirect_range.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 8)
  %136 = load i64, ptr %max_indirect_range.i, align 1, !noalias !203
  %137 = tail call i64 @llvm.bswap.i64(i64 %136) #12
  %retval.0.i53.i = select i1 %cmp.i.i, i64 %137, i64 %136
  %max_indirect_range7.i = getelementptr inbounds %struct.befs_data_stream, ptr %tmp68, i32 0, i32 3
  %138 = ptrtoint ptr %max_indirect_range7.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 %retval.0.i53.i, ptr %max_indirect_range7.i, align 1, !alias.scope !203
  %double_indirect.i = getelementptr inbounds %struct.befs_data_stream, ptr %tmp68, i32 0, i32 4
  %double_indirect9.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 4
  %139 = ptrtoint ptr %double_indirect9.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %.unpack31.i = load i32, ptr %double_indirect9.i, align 1, !noalias !203
  %.elt32.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %.elt32.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %.unpack33.i = load i32, ptr %.elt32.i, align 1, !noalias !203
  %n.sroa.3.4.extract.shift.i54.i = lshr i32 %.unpack33.i, 16
  %n.sroa.3.4.extract.trunc.i55.i = trunc i32 %n.sroa.3.4.extract.shift.i54.i to i16
  %n.sroa.6.4.extract.trunc.i56.i = trunc i32 %.unpack33.i to i16
  %141 = tail call i32 @llvm.bswap.i32(i32 %.unpack31.i) #12
  %142 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i55.i) #12
  %143 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i56.i) #12
  %tmp8.sroa.0.0.i = select i1 %cmp.i.i, i32 %141, i32 %.unpack31.i
  %tmp8.sroa.6.0.i = select i1 %cmp.i.i, i16 %142, i16 %n.sroa.3.4.extract.trunc.i55.i
  %storemerge.i62.i = select i1 %cmp.i.i, i16 %143, i16 %n.sroa.6.4.extract.trunc.i56.i
  %tmp8.sroa.8.0.insert.ext.i = zext i16 %storemerge.i62.i to i64
  %tmp8.sroa.6.0.insert.ext.i = zext i16 %tmp8.sroa.6.0.i to i64
  %tmp8.sroa.6.0.insert.shift.i = shl nuw nsw i64 %tmp8.sroa.6.0.insert.ext.i, 16
  %tmp8.sroa.6.0.insert.insert.i = or i64 %tmp8.sroa.6.0.insert.shift.i, %tmp8.sroa.8.0.insert.ext.i
  %tmp8.sroa.0.0.insert.ext.i = zext i32 %tmp8.sroa.0.0.i to i64
  %tmp8.sroa.0.0.insert.shift.i = shl nuw i64 %tmp8.sroa.0.0.insert.ext.i, 32
  %tmp8.sroa.0.0.insert.insert.i = or i64 %tmp8.sroa.6.0.insert.insert.i, %tmp8.sroa.0.0.insert.shift.i
  %144 = ptrtoint ptr %double_indirect.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 8)
  store i64 %tmp8.sroa.0.0.insert.insert.i, ptr %double_indirect.i, align 1, !alias.scope !203
  %max_double_indirect_range.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 5
  %145 = ptrtoint ptr %max_double_indirect_range.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %max_double_indirect_range.i, align 1, !noalias !203
  %147 = tail call i64 @llvm.bswap.i64(i64 %146) #12
  %retval.0.i67.i = select i1 %cmp.i.i, i64 %147, i64 %146
  %max_double_indirect_range11.i = getelementptr inbounds %struct.befs_data_stream, ptr %tmp68, i32 0, i32 5
  %148 = ptrtoint ptr %max_double_indirect_range11.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 8)
  store i64 %retval.0.i67.i, ptr %max_double_indirect_range11.i, align 1, !alias.scope !203
  %size.i = getelementptr inbounds %struct.befs_inode, ptr %23, i32 0, i32 13, i32 0, i32 6
  %149 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %size.i, align 1, !noalias !203
  %151 = tail call i64 @llvm.bswap.i64(i64 %150) #12
  %retval.0.i71.i = select i1 %cmp.i.i, i64 %151, i64 %150
  %size13.i = getelementptr inbounds %struct.befs_data_stream, ptr %tmp68, i32 0, i32 6
  %152 = ptrtoint ptr %size13.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %retval.0.i71.i, ptr %size13.i, align 1, !alias.scope !203
  %153 = call ptr @memcpy(ptr %i_data67, ptr %tmp68, i32 144)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tmp68) #12
  %call71 = tail call i64 @befs_count_blocks(ptr noundef %sb, ptr noundef %i_data67) #12
  %conv72 = trunc i64 %call71 to i32
  %block_size73 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %154 = ptrtoint ptr %block_size73 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %block_size73, align 4
  %div74225 = lshr i32 %155, 9
  %mul = mul i32 %div74225, %conv72
  %conv75 = zext i32 %mul to i64
  %i_blocks76 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %156 = ptrtoint ptr %i_blocks76 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %conv75, ptr %i_blocks76, align 8
  %size = getelementptr i8, ptr %call1, i32 -8
  %157 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %size, align 8
  %i_size78 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %159 = ptrtoint ptr %i_size78 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %i_size78, align 8
  br label %if.end79

if.end79:                                         ; preds = %fsds_to_cpu.exit, %if.then63
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %160 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %161, i32 0, i32 9
  %162 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @befs_aops, ptr %a_ops, align 4
  %163 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %call1, align 8
  %165 = and i16 %164, -4096
  %166 = zext i16 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %165, label %if.end79.brelse.exit271_crit_edge [
    i16 -32768, label %if.then85
    i16 16384, label %if.then92
    i16 -24576, label %if.then99
  ]

if.end79.brelse.exit271_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit271

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %167 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @generic_ro_fops, ptr %167, align 8
  br label %brelse.exit

if.then92:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %169 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @befs_dir_inode_operations, ptr %i_op, align 8
  %170 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @befs_dir_operations, ptr %170, align 8
  br label %brelse.exit

if.then99:                                        ; preds = %if.end79
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i, align 8
  %and101 = and i32 %173, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else107, label %if.then103

if.then103:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %i_op104 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %174 = ptrtoint ptr %i_op104 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @page_symlink_inode_operations, ptr %i_op104, align 8
  tail call void @inode_nohighmem(ptr noundef %call1) #12
  %175 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_mapping, align 8
  %a_ops106 = getelementptr inbounds %struct.address_space, ptr %176, i32 0, i32 9
  %177 = ptrtoint ptr %a_ops106 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @befs_symlink_aops, ptr %a_ops106, align 4
  br label %brelse.exit

if.else107:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %i_data108 = getelementptr i8, ptr %call1, i32 -144
  %178 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 48
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %i_data108, ptr %178, align 4
  %i_op110 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %180 = ptrtoint ptr %i_op110 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @simple_symlink_inode_operations, ptr %i_op110, align 8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.else107, %if.then103, %if.then92, %if.then85
  tail call void @__brelse(ptr noundef nonnull %call.i) #12
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_iget) #12
  tail call void @unlock_new_inode(ptr noundef %call1) #12
  br label %cleanup

brelse.exit271:                                   ; preds = %if.end79.brelse.exit271_crit_edge, %if.end18.brelse.exit271_crit_edge
  %.str.40.sink = phi ptr [ @.str.39, %if.end18.brelse.exit271_crit_edge ], [ @.str.40, %if.end79.brelse.exit271_crit_edge ]
  %181 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull %.str.40.sink, i32 noundef %182) #12
  tail call void @__brelse(ptr noundef nonnull %call.i) #12
  br label %unacquire_none

unacquire_none:                                   ; preds = %brelse.exit271, %if.then16
  tail call void @iget_failed(ptr noundef %call1) #12
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.befs_iget) #12
  br label %cleanup

cleanup:                                          ; preds = %unacquire_none, %brelse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %unacquire_none ], [ %call1, %brelse.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @befs_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @befs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.befs_inode_info, ptr %call, i32 0, i32 6
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @befs_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @befs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -176
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @befs_put_super(ptr nocapture noundef %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %iocharset = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 18, i32 5
  %2 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocharset, align 4
  tail call void @kfree(ptr noundef %3) #12
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %iocharset3 = getelementptr inbounds %struct.befs_sb_info, ptr %5, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %iocharset3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %iocharset3, align 4
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %nls = getelementptr inbounds %struct.befs_sb_info, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nls, align 4
  tail call void @unload_nls(ptr noundef %9) #12
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %5, 255
  %6 = lshr i32 %5, 12
  %shl.i.i = and i32 %6, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %5, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_statfs) #12
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1111905073, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %f_bsize, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %num_blocks = getelementptr inbounds %struct.befs_sb_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %num_blocks to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %num_blocks, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %15 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %f_blocks, align 8
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %num_blocks3 = getelementptr inbounds %struct.befs_sb_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %num_blocks3 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %num_blocks3, align 8
  %used_blocks = getelementptr inbounds %struct.befs_sb_info, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %used_blocks to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %used_blocks, align 8
  %sub = sub i64 %18, %20
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %22 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub, ptr %f_bavail, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %23 = call ptr @memset(ptr %f_files, i32 0, i32 16)
  %24 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %25 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 255, ptr %f_namelen, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_statfs) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_remount(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #2 align 64 {
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
  %mount_opts = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 18
  %uid = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %uid, align 4
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %call5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack33 = load i32, ptr %mount_opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack33)
  %cmp.i35 = icmp eq i32 %.unpack33, 0
  br i1 %cmp.i35, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = insertvalue [1 x i32] undef, i32 %.unpack33, 0
  %call14 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %call14) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %iocharset = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 18, i32 5
  %8 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iocharset, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end15.if.end18_crit_edge, label %if.then16

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, ptr noundef nonnull %9) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end15.if.end18_crit_edge
  %debug = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 18, i32 4
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.35) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @befs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @befs_nfs_get_inode) #12
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @befs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @befs_nfs_get_inode) #12
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @befs_get_parent(ptr nocapture noundef readonly %child) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %start = getelementptr i8, ptr %1, i32 -156
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start, align 4
  %conv = zext i16 %5 to i32
  %call2 = tail call fastcc ptr @befs_iget(ptr noundef %3, i32 noundef %conv)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call ptr @d_obtain_alias(ptr noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @befs_nfs_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ino to i32
  %call = tail call fastcc ptr @befs_iget(ptr noundef %sb, i32 noundef %conv)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_dump_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_check_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @befs_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @befs_get_block) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @befs_bmap(ptr noundef %mapping, i64 noundef %block) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @befs_get_block) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #2 align 64 {
entry:
  %run = alloca %struct.befs_block_run, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %run) #12
  %2 = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 1
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @BAD_IADDR to i32), i32 8)
  %3 = load i64, ptr @BAD_IADDR, align 1
  %4 = ptrtoint ptr %run to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %run, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %conv = trunc i64 %block to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %6, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_data = getelementptr i8, ptr %inode, i32 -144
  %call3 = call i32 @befs_fblock2brun(ptr noundef %1, ptr noundef %i_data, i64 noundef %block, ptr noundef nonnull %run) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @befs_error(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.befs_get_block, i32 noundef %10, i32 noundef %conv) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %run, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %ag_shift.i = getelementptr inbounds %struct.befs_sb_info, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %ag_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ag_shift.i, align 4
  %shl.i = shl i32 %12, %16
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 4
  %conv.i = zext i16 %18 to i32
  %add.i = add i32 %shl.i, %conv.i
  %conv1.i = zext i32 %add.i to i64
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %21 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %bh_result, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end8.map_bh.exit_crit_edge

if.end8.map_bh.exit_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #12
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.end8.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %24 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %26 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv1.i, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %30 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %b_size.i, align 8
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.befs_get_block, i32 noundef %32, i32 noundef %conv, i32 noundef %add.i) #12
  br label %cleanup

cleanup:                                          ; preds = %map_bh.exit, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -27, %if.then5 ], [ 0, %map_bh.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %run) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_fblock2brun(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @befs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  %uni.i = alloca i16, align 2
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_data = getelementptr i8, ptr %dir, i32 -144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #12
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %offset, align 8, !annotation !190
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.befs_lookup, ptr noundef %dentry, i32 noundef %6) #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %nls = getelementptr inbounds %struct.befs_sb_info, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nls, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call3 = tail call i32 @strlen(ptr noundef %4) #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %uni.i) #12
  %11 = ptrtoint ptr %uni.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %uni.i, align 2, !annotation !190
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.befs_nls2utf) #12
  %mul.i = mul i32 %call3, 3
  %add.i = add i32 %mul.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #19
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.befs_nls2utf.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.befs_nls2utf.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %befs_nls2utf.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp50.i = icmp sgt i32 %call3, 0
  br i1 %cmp50.i, label %for.body.lr.ph.i, label %befs_nls2utf.exit.thread55

befs_nls2utf.exit.thread55:                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call9.i.i, align 128
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_nls2utf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %uni.i) #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %10, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %o.052.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add17.i, %for.inc.i.for.body.i_crit_edge ]
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add16.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %char2uni.i, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 %i.051.i
  %sub.i = sub i32 %call3, %i.051.i
  %call6.i = call i32 %14(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull %uni.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body.i.conv_err.i_crit_edge, label %if.end9.i

for.body.i.conv_err.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_err.i

if.end9.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %uni.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %uni.i, align 2
  %conv.i = zext i16 %16 to i32
  %arrayidx10.i = getelementptr i8, ptr %call9.i.i, i32 %o.052.i
  %call11.i = call i32 @utf32_to_utf8(i32 noundef %conv.i, ptr noundef %arrayidx10.i, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 1
  br i1 %cmp12.i, label %if.end9.i.conv_err.i_crit_edge, label %for.inc.i

if.end9.i.conv_err.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_err.i

for.inc.i:                                        ; preds = %if.end9.i
  %add16.i = add i32 %call6.i, %i.051.i
  %add17.i = add i32 %call11.i, %o.052.i
  %cmp.i = icmp slt i32 %add16.i, %call3
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %befs_nls2utf.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

conv_err.i:                                       ; preds = %if.end9.i.conv_err.i_crit_edge, %for.body.i.conv_err.i_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @befs_error(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef %18) #12
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_nls2utf) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %befs_nls2utf.exit.thread

befs_nls2utf.exit.thread:                         ; preds = %conv_err.i, %if.end.i.befs_nls2utf.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.befs_nls2utf.exit.thread_crit_edge ], [ -84, %conv_err.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %uni.i) #12
  br label %if.then5

befs_nls2utf.exit:                                ; preds = %for.inc.i
  %arrayidx18.i = getelementptr i8, ptr %call9.i.i, i32 %add17.i
  %19 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx18.i, align 1
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_nls2utf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %uni.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add16.i)
  %cmp = icmp slt i32 %add16.i, 0
  br i1 %cmp, label %befs_nls2utf.exit.if.then5_crit_edge, label %befs_nls2utf.exit.if.end_crit_edge

befs_nls2utf.exit.if.end_crit_edge:               ; preds = %befs_nls2utf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

befs_nls2utf.exit.if.then5_crit_edge:             ; preds = %befs_nls2utf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %befs_nls2utf.exit.if.then5_crit_edge, %befs_nls2utf.exit.thread
  %retval.0.i54 = phi i32 [ %retval.0.i.ph, %befs_nls2utf.exit.thread ], [ %add16.i, %befs_nls2utf.exit.if.then5_crit_edge ]
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.befs_lookup) #12
  %20 = inttoptr i32 %retval.0.i54 to ptr
  br label %cleanup

if.end:                                           ; preds = %befs_nls2utf.exit.if.end_crit_edge, %befs_nls2utf.exit.thread55
  %call7 = call i32 @befs_btree_find(ptr noundef %1, ptr noundef %i_data, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %offset) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @befs_btree_find(ptr noundef %1, ptr noundef %i_data, ptr noundef %4, ptr noundef nonnull %offset) #12
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %ret.0 = phi i32 [ %call7, %if.end ], [ %call8, %if.else ]
  %21 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %ret.0, label %if.end9.if.then15_crit_edge [
    i32 7, label %if.then11
    i32 0, label %lor.lhs.false
  ]

if.end9.if.then15_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.befs_lookup, ptr noundef %dentry) #12
  br label %if.end21

lor.lhs.false:                                    ; preds = %if.end9
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp14 = icmp eq i64 %23, 0
  br i1 %cmp14, label %lor.lhs.false.if.then15_crit_edge, label %if.else17

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end9.if.then15_crit_edge
  call void (ptr, ptr, ...) @befs_error(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.befs_lookup) #12
  br label %if.end21

if.else17:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %conv = trunc i64 %23 to i32
  %call19 = call fastcc ptr @befs_iget(ptr noundef %25, i32 noundef %conv)
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then15, %if.then11
  %inode.0 = phi ptr [ null, %if.then11 ], [ inttoptr (i32 -61 to ptr), %if.then15 ], [ %call19, %if.else17 ]
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_lookup) #12
  %call22 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then5
  %retval.0 = phi ptr [ %20, %if.then5 ], [ %call22, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #12
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_btree_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf32_to_utf8(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_readdir(ptr noundef %file, ptr noundef %ctx) #2 align 64 {
entry:
  %uni.i = alloca i32, align 4
  %value = alloca i64, align 8
  %keysize = alloca i32, align 4
  %keybuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %i_data = getelementptr i8, ptr %1, i32 -144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #12
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %value, align 8, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keysize) #12
  %5 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %keysize, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %keybuf) #12
  %6 = call ptr @memset(ptr %keybuf, i32 255, i32 256)
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.befs_readdir, ptr noundef %file, i32 noundef %8, i64 noundef %10) #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %entry
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  %call3 = call i32 @befs_btree_read(ptr noundef %3, ptr noundef %i_data, i64 noundef %12, i32 noundef 256, ptr noundef nonnull %keybuf, ptr noundef nonnull %keysize, ptr noundef nonnull %value) #12
  %13 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call3, label %if.end11 [
    i32 1, label %if.then
    i32 3, label %if.then6
    i32 4, label %if.then9
  ]

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.befs_readdir) #12
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @befs_error(ptr noundef %3, ptr noundef nonnull @.str.54, ptr noundef %file, i32 noundef %15) #12
  br label %cleanup33

if.then6:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.befs_readdir) #12
  br label %cleanup33

if.then9:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.befs_readdir) #12
  br label %cleanup33

if.end11:                                         ; preds = %while.cond
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %nls = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nls, align 4
  %tobool.not = icmp eq ptr %19, null
  %20 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keysize, align 4
  br i1 %tobool.not, label %if.else24, label %if.end.i

if.end.i:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uni.i) #12
  %22 = ptrtoint ptr %uni.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %uni.i, align 4, !annotation !190
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_utf2nls) #12
  %add.i = add i32 %21, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #19
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.befs_utf2nls.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.befs_utf2nls.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %befs_utf2nls.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp55.i = icmp sgt i32 %21, 0
  br i1 %cmp55.i, label %for.body.lr.ph.i, label %befs_utf2nls.exit.thread73

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %uni2char.i = getelementptr inbounds %struct.nls_table, ptr %19, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %o.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add21.i, %for.inc.i.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add20.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %keybuf, i32 %i.056.i
  %sub.i = sub i32 %21, %i.056.i
  %call6.i = call i32 @utf8_to_utf32(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull %uni.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %for.body.i.conv_err.i_crit_edge, label %if.end9.i

for.body.i.conv_err.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_err.i

if.end9.i:                                        ; preds = %for.body.i
  %23 = ptrtoint ptr %uni.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %uni.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %24)
  %cmp10.i = icmp ugt i32 %24, 65535
  br i1 %cmp10.i, label %if.end9.i.conv_err.i_crit_edge, label %if.end12.i

if.end9.i.conv_err.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_err.i

if.end12.i:                                       ; preds = %if.end9.i
  %25 = ptrtoint ptr %uni2char.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uni2char.i, align 4
  %conv.i = trunc i32 %24 to i16
  %arrayidx13.i = getelementptr i8, ptr %call9.i.i, i32 %o.057.i
  %sub14.i = sub i32 %21, %o.057.i
  %call15.i = call i32 %26(i16 noundef zeroext %conv.i, ptr noundef %arrayidx13.i, i32 noundef %sub14.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end12.i.conv_err.i_crit_edge, label %for.inc.i

if.end12.i.conv_err.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conv_err.i

for.inc.i:                                        ; preds = %if.end12.i
  %add20.i = add i32 %call6.i, %i.056.i
  %add21.i = add i32 %call15.i, %o.057.i
  %cmp.i = icmp slt i32 %add20.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %befs_utf2nls.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

conv_err.i:                                       ; preds = %if.end12.i.conv_err.i_crit_edge, %if.end9.i.conv_err.i_crit_edge, %for.body.i.conv_err.i_crit_edge
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @befs_error(ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef %28) #12
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_utf2nls) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %befs_utf2nls.exit.thread

befs_utf2nls.exit.thread:                         ; preds = %conv_err.i, %if.end.i.befs_utf2nls.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -84, %conv_err.i ], [ -12, %if.end.i.befs_utf2nls.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uni.i) #12
  br label %if.then17

befs_utf2nls.exit.thread73:                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call9.i.i, align 128
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_utf2nls) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uni.i) #12
  br label %if.end18

befs_utf2nls.exit:                                ; preds = %for.inc.i
  %arrayidx22.i = getelementptr i8, ptr %call9.i.i, i32 %add21.i
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx22.i, align 1
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.befs_utf2nls) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uni.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %cmp16 = icmp slt i32 %add21.i, 0
  br i1 %cmp16, label %befs_utf2nls.exit.if.then17_crit_edge, label %befs_utf2nls.exit.if.end18_crit_edge

befs_utf2nls.exit.if.end18_crit_edge:             ; preds = %befs_utf2nls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

befs_utf2nls.exit.if.then17_crit_edge:            ; preds = %befs_utf2nls.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %befs_utf2nls.exit.if.then17_crit_edge, %befs_utf2nls.exit.thread
  %retval.0.i71 = phi i32 [ %retval.0.i.ph, %befs_utf2nls.exit.thread ], [ %add21.i, %befs_utf2nls.exit.if.then17_crit_edge ]
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.befs_readdir) #12
  br label %cleanup33

if.end18:                                         ; preds = %befs_utf2nls.exit.if.end18_crit_edge, %befs_utf2nls.exit.thread73
  %o.0.lcssa.i80 = phi i32 [ 0, %befs_utf2nls.exit.thread73 ], [ %add21.i, %befs_utf2nls.exit.if.end18_crit_edge ]
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %value, align 8
  %conv19 = and i64 %32, 4294967295
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 8
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos, align 8
  %call.i = call i32 %34(ptr noundef %ctx, ptr noundef nonnull %call9.i.i, i32 noundef %o.0.lcssa.i80, i64 noundef %36, i64 noundef %conv19, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i61 = icmp eq i32 %call.i, 0
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br i1 %cmp.i61, label %if.end18.if.end31_crit_edge, label %if.end18.cleanup33_crit_edge

if.end18.cleanup33_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else24:                                        ; preds = %if.end11
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %value, align 8
  %conv27 = and i64 %38, 4294967295
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 8
  %41 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pos, align 8
  %call.i63 = call i32 %40(ptr noundef %ctx, ptr noundef nonnull %keybuf, i32 noundef %21, i64 noundef %42, i64 noundef %conv27, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp eq i32 %call.i63, 0
  br i1 %cmp.i64, label %if.else24.if.end31_crit_edge, label %if.else24.cleanup33_crit_edge

if.else24.cleanup33_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.else24.if.end31_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %if.else24.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pos, align 8
  %inc = add i64 %44, 1
  store i64 %inc, ptr %pos, align 8
  br label %while.cond

cleanup33:                                        ; preds = %if.else24.cleanup33_crit_edge, %if.end18.cleanup33_crit_edge, %if.then17, %if.then9, %if.then6, %if.then
  %retval.3 = phi i32 [ -5, %if.then ], [ 0, %if.then6 ], [ 0, %if.then9 ], [ %retval.0.i71, %if.then17 ], [ 0, %if.end18.cleanup33_crit_edge ], [ 0, %if.else24.cleanup33_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %keybuf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keysize) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #12
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_btree_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_to_utf32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @befs_symlink_readpage(ptr nocapture noundef readnone %unused, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %size = getelementptr i8, ptr %3, i32 -8
  %6 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %size, align 1
  %call1 = tail call ptr @page_address(ptr noundef %page) #12
  %8 = add i64 %7, -4097
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %8)
  %9 = icmp ult i64 %8, -4096
  br i1 %9, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  %i_data = getelementptr i8, ptr %3, i32 -144
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %5, ptr noundef nonnull @.str.59) #12
  %call3 = tail call i32 @befs_read_lsymlink(ptr noundef %5, ptr noundef %i_data, ptr noundef %call1, i64 noundef %7) #12
  %conv = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp4.not = icmp eq i64 %7, %conv
  br i1 %cmp4.not, label %if.end7, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end7:                                          ; preds = %if.end
  %10 = trunc i64 %7 to i32
  %idxprom = add nsw i32 %10, -1
  %arrayidx = getelementptr i8, ptr %call1, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  %12 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !210

if.then.i.i.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.61) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !211
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #12
  br label %cleanup

fail:                                             ; preds = %if.end.fail_crit_edge, %entry.fail_crit_edge
  %.str.60.sink = phi ptr [ @.str.58, %entry.fail_crit_edge ], [ @.str.60, %if.end.fail_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %5, ptr noundef nonnull %.str.60.sink) #12
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !210

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.63) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !212
  unreachable

do.body7.i:                                       ; preds = %fail
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %15, align 4
  %and.i31.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !210

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, -1
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %15, align 4
  %and.i32.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !213

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !210

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %25, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %26, %if.end.i36.i ]
  %27 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.64) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !214
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !210

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %25, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %28, %if.end.i43.i ]
  %29 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageUptodate.exit
  %retval.0 = phi i32 [ -5, %SetPageError.exit ], [ 0, %SetPageUptodate.exit ]
  tail call void @unlock_page(ptr noundef %page) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @befs_read_lsymlink(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @befs_init_inodecache() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.68, i32 noundef 960, i32 noundef 0, i32 noundef 68288512, i32 noundef 32, i32 noundef 144, ptr noundef nonnull @init_once) #12
  store ptr %call, ptr @befs_inode_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.befs_inode_info, ptr %foo, i32 0, i32 6
  tail call void @inode_init_once(ptr noundef %vfs_inode) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !174, !175, !176, !177, !178}
!llvm.named.register.sp = !{!180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__UNIQUE_ID_description271, !1, !"__UNIQUE_ID_description271", i1 false, i1 false}
!1 = !{!"../fs/befs/linuxvfs.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_author272, !3, !"__UNIQUE_ID_author272", i1 false, i1 false}
!3 = !{!"../fs/befs/linuxvfs.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file273, !5, !"__UNIQUE_ID_file273", i1 false, i1 false}
!5 = !{!"../fs/befs/linuxvfs.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license274, !5, !"__UNIQUE_ID_license274", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias275, !8, !"__UNIQUE_ID_alias275", i1 false, i1 false}
!8 = !{!"../fs/befs/linuxvfs.c", i32 988, i32 1}
!9 = !{ptr @__initcall__kmod_befs__276_1027_init_befs_fs6, !10, !"__initcall__kmod_befs__276_1027_init_befs_fs6", i1 false, i1 false}
!10 = !{!"../fs/befs/linuxvfs.c", i32 1027, i32 1}
!11 = !{ptr @__exitcall_exit_befs_fs, !12, !"__exitcall_exit_befs_fs", i1 false, i1 false}
!12 = !{!"../fs/befs/linuxvfs.c", i32 1028, i32 1}
!13 = !{ptr @befs_inode_cachep, !14, !"befs_inode_cachep", i1 false, i1 false}
!14 = !{!"../fs/befs/linuxvfs.c", i32 77, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/befs/linuxvfs.c", i32 983, i32 11}
!17 = !{ptr @befs_fs_type, !18, !"befs_fs_type", i1 false, i1 false}
!18 = !{!"../fs/befs/linuxvfs.c", i32 981, i32 32}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/befs/linuxvfs.c", i32 828, i32 19}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/befs/linuxvfs.c", i32 832, i32 17}
!23 = !{ptr @__func__.befs_fill_super, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/befs/linuxvfs.c", i32 832, i32 28}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/befs/linuxvfs.c", i32 836, i32 9}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/befs/linuxvfs.c", i32 851, i32 19}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/befs/linuxvfs.c", i32 858, i32 19}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/befs/linuxvfs.c", i32 866, i32 18}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/befs/linuxvfs.c", i32 868, i32 18}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/befs/linuxvfs.c", i32 883, i32 19}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/befs/linuxvfs.c", i32 907, i32 19}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/befs/linuxvfs.c", i32 913, i32 18}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/befs/linuxvfs.c", i32 917, i32 21}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/befs/linuxvfs.c", i32 924, i32 18}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/befs/linuxvfs.c", i32 712, i32 31}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../fs/befs/linuxvfs.c", i32 725, i32 21}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/befs/linuxvfs.c", i32 727, i32 5}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @parse_options._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @parse_options._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../fs/befs/linuxvfs.c", i32 739, i32 21}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/befs/linuxvfs.c", i32 741, i32 5}
!59 = !{ptr @parse_options._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @parse_options._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/befs/linuxvfs.c", i32 752, i32 5}
!63 = !{ptr @parse_options._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @parse_options._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/befs/linuxvfs.c", i32 761, i32 4}
!67 = !{ptr @parse_options._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @parse_options._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/befs/linuxvfs.c", i32 685, i32 12}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/befs/linuxvfs.c", i32 686, i32 12}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/befs/linuxvfs.c", i32 687, i32 16}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/befs/linuxvfs.c", i32 688, i32 14}
!77 = !{ptr @befs_tokens, !78, !"befs_tokens", i1 false, i1 false}
!78 = !{!"../fs/befs/linuxvfs.c", i32 684, i32 28}
!79 = !{ptr @befs_sops, !80, !"befs_sops", i1 false, i1 false}
!80 = !{!"../fs/befs/linuxvfs.c", i32 67, i32 38}
!81 = !{ptr @__func__.befs_statfs, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/befs/linuxvfs.c", i32 957, i32 28}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/befs/linuxvfs.c", i32 969, i32 17}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/befs/linuxvfs.c", i32 775, i32 17}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/befs/linuxvfs.c", i32 778, i32 17}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/befs/linuxvfs.c", i32 781, i32 17}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/befs/linuxvfs.c", i32 783, i32 15}
!93 = !{ptr @befs_export_operations, !94, !"befs_export_operations", i1 false, i1 false}
!94 = !{!"../fs/befs/linuxvfs.c", i32 98, i32 39}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/befs/linuxvfs.c", i32 306, i32 17}
!97 = !{ptr @__func__.befs_iget, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/befs/linuxvfs.c", i32 306, i32 40}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/befs/linuxvfs.c", i32 319, i32 17}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/befs/linuxvfs.c", i32 325, i32 18}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/befs/linuxvfs.c", i32 335, i32 18}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/befs/linuxvfs.c", i32 409, i32 18}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/befs/linuxvfs.c", i32 425, i32 17}
!109 = !{ptr @befs_aops, !110, !"befs_aops", i1 false, i1 false}
!110 = !{!"../fs/befs/linuxvfs.c", i32 89, i32 46}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/befs/linuxvfs.c", i32 142, i32 17}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/befs/linuxvfs.c", i32 145, i32 18}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/befs/linuxvfs.c", i32 154, i32 7}
!117 = !{ptr @__func__.befs_get_block, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/befs/linuxvfs.c", i32 155, i32 7}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/befs/linuxvfs.c", i32 164, i32 17}
!121 = !{ptr @befs_dir_inode_operations, !122, !"befs_dir_inode_operations", i1 false, i1 false}
!122 = !{!"../fs/befs/linuxvfs.c", i32 85, i32 38}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/befs/linuxvfs.c", i32 183, i32 17}
!125 = !{ptr @__func__.befs_lookup, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/befs/linuxvfs.c", i32 183, i32 47}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/befs/linuxvfs.c", i32 191, i32 19}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/befs/linuxvfs.c", i32 202, i32 18}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/befs/linuxvfs.c", i32 205, i32 18}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/befs/linuxvfs.c", i32 598, i32 17}
!135 = !{ptr @__func__.befs_nls2utf, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/befs/linuxvfs.c", i32 598, i32 30}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/befs/linuxvfs.c", i32 601, i32 18}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/befs/linuxvfs.c", i32 633, i32 17}
!141 = !{ptr @befs_dir_operations, !142, !"befs_dir_operations", i1 false, i1 false}
!142 = !{!"../fs/befs/linuxvfs.c", i32 79, i32 37}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/befs/linuxvfs.c", i32 226, i32 17}
!145 = !{ptr @__func__.befs_readdir, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/befs/linuxvfs.c", i32 227, i32 5}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/befs/linuxvfs.c", i32 235, i32 19}
!149 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/befs/linuxvfs.c", i32 240, i32 19}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/befs/linuxvfs.c", i32 244, i32 19}
!153 = !{ptr @__func__.befs_utf2nls, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/befs/linuxvfs.c", i32 520, i32 28}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/befs/linuxvfs.c", i32 523, i32 18}
!157 = !{ptr @befs_symlink_aops, !158, !"befs_symlink_aops", i1 false, i1 false}
!158 = !{!"../fs/befs/linuxvfs.c", i32 94, i32 46}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/befs/linuxvfs.c", i32 481, i32 18}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/befs/linuxvfs.c", i32 484, i32 17}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/befs/linuxvfs.c", i32 487, i32 18}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!171 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/befs/linuxvfs.c", i32 995, i32 2}
!174 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @init_befs_fs._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @init_befs_fs._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/befs/linuxvfs.c", i32 436, i32 49}
!180 = !{!"sp"}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"blockno2iaddr: %agg.result"}
!193 = distinct !{!193, !"blockno2iaddr"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"fsrun_to_cpu: %agg.result"}
!196 = distinct !{!196, !"fsrun_to_cpu"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"fsrun_to_cpu: %agg.result"}
!199 = distinct !{!199, !"fsrun_to_cpu"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"fsrun_to_cpu: %agg.result"}
!202 = distinct !{!202, !"fsrun_to_cpu"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"fsds_to_cpu: %agg.result"}
!205 = distinct !{!205, !"fsds_to_cpu"}
!206 = !{!207, !204}
!207 = distinct !{!207, !208, !"fsrun_to_cpu: %agg.result"}
!208 = distinct !{!208, !"fsrun_to_cpu"}
!209 = !{i64 2150941201}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i64 2150186177, i64 2150186668, i64 2150186214, i64 2150186270, i64 2150186304, i64 2150186328, i64 2150186369, i64 2150186390, i64 2150186418, i64 2150186452}
!212 = !{i64 2150251828, i64 2150252001, i64 2150252016, i64 2150252068, i64 2150252127, i64 2150252151, i64 2150252192, i64 2150252213, i64 2150252241, i64 2150252273}
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !{i64 2150252703, i64 2150252876, i64 2150252891, i64 2150252943, i64 2150253002, i64 2150253026, i64 2150253067, i64 2150253088, i64 2150253116, i64 2150253148}
