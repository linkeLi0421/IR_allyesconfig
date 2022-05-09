; ModuleID = '/llk/IR_all_yes/fs/ext4/dir.c_pt.bc'
source_filename = "../fs/ext4/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ext4_dir_entry_2 = type { i32, i16, i8, i8, [255 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fname = type { i32, i32, %struct.rb_node, ptr, i32, i8, i8, [0 x i8] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.dir_private_info = type { %struct.rb_root, ptr, ptr, i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ext4_dir_entry_hash = type { i32, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rec_len is smaller than minimal\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rec_len % 4 != 0\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rec_len is too small for name_len\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"directory entry overrun\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"directory entry too close to block end\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode out of bounds\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"bad entry in directory: %s - offset=%u, inode=%u, rec_len=%d, size=%d fake=%d\00", [50 x i8] zeroinitializer }, align 32
@__func__.ext4_check_all_de = private unnamed_addr constant [18 x i8] c"ext4_check_all_de\00", align 1
@ext4_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ext4_dir_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext4_readdir, ptr null, ptr @ext4_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @ext4_release_dir, ptr @ext4_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ext4/dir.c\00", [18 x i8] zeroinitializer }, align 32
@__func__.ext4_readdir = private unnamed_addr constant [13 x i8] c"ext4_readdir\00", align 1
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"directory fails checksum at offset %llu\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d: inode #%lu: comm %s: called with null fname?!?\00", [42 x i8] zeroinitializer }, align 32
@__func__.call_filldir = private unnamed_addr constant [13 x i8] c"call_filldir\00", align 1
@ext4_filetype_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\08\04\02\06\01\0C\0A", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 92, i32 15 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 94, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 97, i32 15 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 99, i32 15 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 103, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 106, i32 15 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 111, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"ext4_dir_operations\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 667, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 3288, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 177, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 218, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [17 x i8] c"../fs/ext4/dir.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 529, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"ext4_filetype_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 2862, i32 28 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ext4_dir_operations, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ext4_filetype_table], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_filetype_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ext4_check_dir_entry(ptr noundef %function, i32 noundef %line, ptr noundef %dir, ptr noundef %filp, ptr noundef %de, ptr nocapture noundef readonly %bh, ptr noundef %buf, i32 noundef %size, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rec_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de, i32 0, i32 1
  %0 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rec_len, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %conv.i = zext i16 %2 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %de to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %conv.i
  %name_len.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de, i32 0, i32 2
  %3 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %name_len.i, align 2
  %5 = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %land.lhs.true6.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %entry
  %name.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de, i32 0, i32 4
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp8.i = icmp eq i8 %8, 46
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true6.i.if.end.i_crit_edge

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true6.i
  %arrayidx12.i = getelementptr %struct.ext4_dir_entry_2, ptr %de, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %land.lhs.true10.i.if.end.i_crit_edge [
    i8 46, label %land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge
    i8 0, label %land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge141
  ]

land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge141: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_fake_dir_entry.exit

land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_fake_dir_entry.exit

land.lhs.true10.i.if.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true10.i.if.end.i_crit_edge, %land.lhs.true6.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %file_type.i = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de, i32 0, i32 3
  %12 = ptrtoint ptr %file_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %file_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -34, i8 %13)
  %cmp22.i = icmp eq i8 %13, -34
  br label %is_fake_dir_entry.exit

is_fake_dir_entry.exit:                           ; preds = %if.end.i, %land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge, %land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge141
  %retval.0.i = phi i1 [ true, %land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge ], [ true, %land.lhs.true10.i.is_fake_dir_entry.exit_crit_edge141 ], [ %cmp22.i, %if.end.i ]
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %is_fake_dir_entry.exit.if.end32.i_crit_edge, label %land.rhs.i

is_fake_dir_entry.exit.if.end32.i_crit_edge:      ; preds = %is_fake_dir_entry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.rhs.i:                                       ; preds = %is_fake_dir_entry.exit
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 121
  %22 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !42

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3289, i32 noundef 9, ptr noundef null) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %is_fake_dir_entry.exit.if.end32.i_crit_edge
  %24 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 30
  %28 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.ext4_has_metadata_csum.exit_crit_edge, label %land.rhs41.i

if.end32.i.ext4_has_metadata_csum.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_has_metadata_csum.exit

land.rhs41.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 121
  %30 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %31, null
  %phi.sel = select i1 %cmp.i.not, ptr %dir, ptr null
  br label %ext4_has_metadata_csum.exit

ext4_has_metadata_csum.exit:                      ; preds = %land.rhs41.i, %if.end32.i.ext4_has_metadata_csum.exit_crit_edge
  %32 = phi ptr [ %dir, %if.end32.i.ext4_has_metadata_csum.exit_crit_edge ], [ %phi.sel, %land.rhs41.i ]
  %spec.select = select i1 %retval.0.i, ptr null, ptr %dir
  %tobool.not.i122 = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i122, label %ext4_has_metadata_csum.exit.ext4_dir_rec_len.exit_crit_edge, label %land.lhs.true.i

ext4_has_metadata_csum.exit.ext4_dir_rec_len.exit_crit_edge: ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_dir_rec_len.exit

land.lhs.true.i:                                  ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %spec.select, i32 0, i32 4
  %33 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags.i.i, align 4
  %35 = and i32 %34, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %35)
  %36 = icmp eq i32 %35, 49152
  %spec.select.i = select i1 %36, i32 20, i32 12
  br label %ext4_dir_rec_len.exit

ext4_dir_rec_len.exit:                            ; preds = %land.lhs.true.i, %ext4_has_metadata_csum.exit.ext4_dir_rec_len.exit_crit_edge
  %rec_len.0.i = phi i32 [ 12, %ext4_has_metadata_csum.exit.ext4_dir_rec_len.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rec_len.0.i, i32 %conv.i)
  %cmp = icmp ugt i32 %rec_len.0.i, %conv.i
  br i1 %cmp, label %ext4_dir_rec_len.exit.if.end73_crit_edge, label %if.else, !prof !43

ext4_dir_rec_len.exit.if.end73_crit_edge:         ; preds = %ext4_dir_rec_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else:                                          ; preds = %ext4_dir_rec_len.exit
  %37 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.not = icmp eq i32 %37, 0
  br i1 %cmp9.not, label %if.else17, label %if.else.if.end73_crit_edge, !prof !42

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else17:                                        ; preds = %if.else
  %38 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %name_len.i, align 2
  %conv.i124 = zext i8 %39 to i32
  %add1.i = add nuw nsw i32 %conv.i124, 11
  br i1 %tobool.not.i122, label %if.else17.ext4_dir_rec_len.exit132_crit_edge, label %land.lhs.true.i128

if.else17.ext4_dir_rec_len.exit132_crit_edge:     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_dir_rec_len.exit132

land.lhs.true.i128:                               ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags.i.i126 = getelementptr inbounds %struct.inode, ptr %spec.select, i32 0, i32 4
  %40 = ptrtoint ptr %i_flags.i.i126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags.i.i126, align 4
  %42 = and i32 %41, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %42)
  %43 = icmp eq i32 %42, 49152
  %add3.i = add nuw nsw i32 %conv.i124, 19
  %spec.select.i127 = select i1 %43, i32 %add3.i, i32 %add1.i
  br label %ext4_dir_rec_len.exit132

ext4_dir_rec_len.exit132:                         ; preds = %land.lhs.true.i128, %if.else17.ext4_dir_rec_len.exit132_crit_edge
  %rec_len.0.i129 = phi i32 [ %add1.i, %if.else17.ext4_dir_rec_len.exit132_crit_edge ], [ %spec.select.i127, %land.lhs.true.i128 ]
  %and.i130 = and i32 %rec_len.0.i129, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i130, i32 %conv.i)
  %cmp24 = icmp ugt i32 %and.i130, %conv.i
  br i1 %cmp24, label %ext4_dir_rec_len.exit132.if.end73_crit_edge, label %if.else32, !prof !43

ext4_dir_rec_len.exit132.if.end73_crit_edge:      ; preds = %ext4_dir_rec_len.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else32:                                        ; preds = %ext4_dir_rec_len.exit132
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp33 = icmp sgt i32 %add, %size
  br i1 %cmp33, label %if.else32.if.end73_crit_edge, label %if.else41, !prof !43

if.else32.if.end73_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else41:                                        ; preds = %if.else32
  %tobool.not.i133 = icmp eq ptr %32, null
  br i1 %tobool.not.i133, label %if.else41.ext4_dir_rec_len.exit140_crit_edge, label %land.lhs.true.i136

if.else41.ext4_dir_rec_len.exit140_crit_edge:     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_dir_rec_len.exit140

land.lhs.true.i136:                               ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %i_flags.i.i134 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 4
  %44 = ptrtoint ptr %i_flags.i.i134 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_flags.i.i134, align 4
  %46 = and i32 %45, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %46)
  %47 = icmp eq i32 %46, 49152
  %spec.select.i135.neg = select i1 %47, i32 -20, i32 -12
  br label %ext4_dir_rec_len.exit140

ext4_dir_rec_len.exit140:                         ; preds = %land.lhs.true.i136, %if.else41.ext4_dir_rec_len.exit140_crit_edge
  %rec_len.0.i137.neg = phi i32 [ -12, %if.else41.ext4_dir_rec_len.exit140_crit_edge ], [ %spec.select.i135.neg, %land.lhs.true.i136 ]
  %sub = add i32 %rec_len.0.i137.neg, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp48 = icmp ugt i32 %add, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp49 = icmp ne i32 %add, %size
  %48 = and i1 %cmp49, %cmp48
  br i1 %48, label %ext4_dir_rec_len.exit140.if.end73_crit_edge, label %if.else57, !prof !43

ext4_dir_rec_len.exit140.if.end73_crit_edge:      ; preds = %ext4_dir_rec_len.exit140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.else57:                                        ; preds = %ext4_dir_rec_len.exit140
  %49 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %de, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_es, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %60)
  %cmp60 = icmp ugt i32 %51, %60
  br i1 %cmp60, label %if.else57.if.end73_crit_edge, label %if.else57.cleanup_crit_edge, !prof !43

if.else57.cleanup_crit_edge:                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else57.if.end73_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end73:                                         ; preds = %if.else57.if.end73_crit_edge, %ext4_dir_rec_len.exit140.if.end73_crit_edge, %if.else32.if.end73_crit_edge, %ext4_dir_rec_len.exit132.if.end73_crit_edge, %if.else.if.end73_crit_edge, %ext4_dir_rec_len.exit.if.end73_crit_edge
  %error_msg.0 = phi ptr [ @.str, %ext4_dir_rec_len.exit.if.end73_crit_edge ], [ @.str.1, %if.else.if.end73_crit_edge ], [ @.str.2, %ext4_dir_rec_len.exit132.if.end73_crit_edge ], [ @.str.3, %if.else32.if.end73_crit_edge ], [ @.str.4, %ext4_dir_rec_len.exit140.if.end73_crit_edge ], [ @.str.5, %if.else57.if.end73_crit_edge ]
  %tobool74.not = icmp eq ptr %filp, null
  %b_blocknr79 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %61 = ptrtoint ptr %b_blocknr79 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %b_blocknr79, align 8
  %63 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %de, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %conv82 = zext i1 %retval.0.i to i32
  br i1 %tobool74.not, label %if.else78, label %if.then75

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i64, ptr, ...) @__ext4_error_file(ptr noundef nonnull %filp, ptr noundef %function, i32 noundef %line, i64 noundef %62, ptr noundef nonnull @.str.6, ptr noundef nonnull %error_msg.0, i32 noundef %offset, i32 noundef %65, i32 noundef %conv.i, i32 noundef %size, i32 noundef %conv82) #7
  br label %cleanup

if.else78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %dir, ptr noundef %function, i32 noundef %line, i64 noundef %62, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %error_msg.0, i32 noundef %offset, i32 noundef %65, i32 noundef %conv.i, i32 noundef %size, i32 noundef %conv82) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %if.then75, %if.else57.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else57.cleanup_crit_edge ], [ 1, %if.else78 ], [ 1, %if.then75 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_file(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_htree_free_dir_info(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rb_first_postorder(ptr noundef %p) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -8
  %tobool2.not2830.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not28.i = or i1 %tobool.not.i, %tobool2.not2830.i
  br i1 %tobool2.not28.i, label %entry.free_rb_tree_fname.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.free_rb_tree_fname.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rb_tree_fname.exit

while.cond.for.cond.loopexit_crit_edge.i:         ; preds = %while.body.i
  %add.ptr10.i = getelementptr i8, ptr %call4.i, i32 -8
  %tobool6.not.i = icmp eq ptr %call4.i, null
  %tobool2.not31.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not31.i
  br i1 %tobool2.not.i, label %while.cond.for.cond.loopexit_crit_edge.i.free_rb_tree_fname.exit_crit_edge, label %while.cond.for.cond.loopexit_crit_edge.i.land.rhs.i_crit_edge

while.cond.for.cond.loopexit_crit_edge.i.land.rhs.i_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.cond.for.cond.loopexit_crit_edge.i.free_rb_tree_fname.exit_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rb_tree_fname.exit

land.rhs.i:                                       ; preds = %while.cond.for.cond.loopexit_crit_edge.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %fname.029.i = phi ptr [ %add.ptr10.i, %while.cond.for.cond.loopexit_crit_edge.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %entry.land.rhs.i_crit_edge ]
  %rb_hash.i = getelementptr inbounds %struct.fname, ptr %fname.029.i, i32 0, i32 2
  %call4.i = tail call ptr @rb_next_postorder(ptr noundef %rb_hash.i) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %land.rhs.i
  %fname.127.i = phi ptr [ %fname.029.i, %land.rhs.i ], [ %1, %while.body.i.while.body.i_crit_edge ]
  %next17.i = getelementptr inbounds %struct.fname, ptr %fname.127.i, i32 0, i32 3
  %0 = ptrtoint ptr %next17.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next17.i, align 4
  tail call void @kfree(ptr noundef nonnull %fname.127.i) #7
  %tobool16.not.i = icmp eq ptr %1, null
  br i1 %tobool16.not.i, label %while.cond.for.cond.loopexit_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

free_rb_tree_fname.exit:                          ; preds = %while.cond.for.cond.loopexit_crit_edge.i.free_rb_tree_fname.exit_crit_edge, %entry.free_rb_tree_fname.exit_crit_edge
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p, align 4
  tail call void @kfree(ptr noundef %p) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_htree_store_dirent(ptr nocapture noundef readonly %dir_file, i32 noundef %hash, i32 noundef %minor_hash, ptr nocapture noundef readonly %dirent, ptr nocapture noundef readonly %ent_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %dir_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %len1 = getelementptr inbounds %struct.fscrypt_str, ptr %ent_name, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %add2 = add i32 %3, 33
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %hash, ptr %call9.i.i, align 128
  %minor_hash4 = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %minor_hash4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %minor_hash, ptr %minor_hash4, align 4
  %6 = ptrtoint ptr %dirent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirent, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %inode5 = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %inode5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %inode5, align 8
  %10 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1, align 4
  %conv = trunc i32 %11 to i8
  %name_len = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %name_len, align 4
  %file_type = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %dirent, i32 0, i32 3
  %13 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %file_type, align 1
  %file_type7 = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %file_type7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %file_type7, align 1
  %name = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %ent_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ent_name, align 4
  %18 = load i32, ptr %len1, align 4
  %19 = call ptr @memcpy(ptr %name, ptr %17, i32 %18)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %tobool10.not92 = icmp eq ptr %21, null
  br i1 %tobool10.not92, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %if.end.while.body_crit_edge
  %22 = phi ptr [ %33, %if.end43.while.body_crit_edge ], [ %21, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %22, i32 -8
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %hash)
  %cmp = icmp eq i32 %24, %hash
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %while.body
  %minor_hash15 = getelementptr i8, ptr %22, i32 -4
  %25 = ptrtoint ptr %minor_hash15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minor_hash15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %minor_hash)
  %cmp16 = icmp eq i32 %26, %minor_hash
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %next = getelementptr i8, ptr %22, i32 12
  %27 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next, align 4
  %next19 = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %next19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %next19, align 4
  store ptr %call9.i.i, ptr %next, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %while.body.if.end21_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %hash)
  %cmp24 = icmp ugt i32 %24, %hash
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  br label %if.end43

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %hash)
  %cmp29 = icmp ult i32 %24, %hash
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  br label %if.end43

if.else32:                                        ; preds = %if.else
  %minor_hash34 = getelementptr i8, ptr %22, i32 -4
  %30 = ptrtoint ptr %minor_hash34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %minor_hash34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %minor_hash)
  %cmp35 = icmp ugt i32 %31, %minor_hash
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left38 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  br label %if.end43

if.else39:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right40 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then37, %if.then31, %if.then26
  %p.1 = phi ptr [ %rb_left, %if.then26 ], [ %rb_right, %if.then31 ], [ %rb_left38, %if.then37 ], [ %rb_right40, %if.else39 ]
  %32 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p.1, align 4
  %tobool10.not = icmp eq ptr %33, null
  br i1 %tobool10.not, label %while.cond.while.end_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le = ptrtoint ptr %22 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %1, %if.end.while.end_crit_edge ]
  %rb_hash = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %rb_hash to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %parent.0.lcssa, ptr %rb_hash, align 8
  %rb_right.i = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.fname, ptr %call9.i.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rb_left.i, align 16
  %37 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %rb_hash, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb_hash, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_check_all_de(ptr noundef %dir, ptr nocapture noundef readonly %bh, ptr noundef %buf, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %buf_size
  %cmp23 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp23, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %offset.025 = phi i32 [ %add, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %de.024 = phi ptr [ %add.ptr4, %if.end.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %call = tail call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_check_all_de, i32 noundef 655, ptr noundef %dir, ptr noundef null, ptr noundef %de.024, ptr noundef %bh, ptr noundef %buf, i32 noundef %buf_size, i32 noundef %offset.025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge, !prof !42

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %rec_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %de.024, i32 0, i32 1
  %0 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rec_len, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %conv.i = zext i16 %2 to i32
  %add.ptr4 = getelementptr i8, ptr %de.024, i32 %conv.i
  %add = add i32 %offset.025, %conv.i
  %cmp = icmp ult ptr %add.ptr4, %add.ptr
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %de.0.lcssa = phi ptr [ %buf, %entry.while.end_crit_edge ], [ %add.ptr4, %if.end.while.end_crit_edge ]
  %cmp5 = icmp ugt ptr %de.0.lcssa, %add.ptr
  %. = select i1 %cmp5, i32 -117, i32 0
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %while.end ], [ -117, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ext4_dir_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %i_flags.i.i = getelementptr i8, ptr %3, i32 -380
  %12 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_flags.i.i, align 4
  %14 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %18 to i64
  %shr.i = ashr i64 %16, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %shr.i)
  %cmp.i = icmp eq i64 %shr.i, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_flags.i.i, align 4
  %21 = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false4.i.if.end.i_crit_edge, label %ext4_has_inline_data.exit.i

lor.lhs.false4.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

ext4_has_inline_data.exit.i:                      ; preds = %lor.lhs.false4.i
  %i_inline_off.i.i = getelementptr i8, ptr %3, i32 990
  %22 = ptrtoint ptr %i_inline_off.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_inline_off.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool2.i.not.i = icmp eq i16 %23, 0
  br i1 %tobool2.i.not.i, label %ext4_has_inline_data.exit.i.if.end.i_crit_edge, label %ext4_has_inline_data.exit.i.if.then_crit_edge

ext4_has_inline_data.exit.i.if.then_crit_edge:    ; preds = %ext4_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

ext4_has_inline_data.exit.i.if.end.i_crit_edge:   ; preds = %ext4_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %ext4_has_inline_data.exit.i.if.end.i_crit_edge, %lor.lhs.false4.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call5 = tail call i64 @ext4_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #7
  br label %if.end

if.then:                                          ; preds = %ext4_has_inline_data.exit.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %24 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i15 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i64 2147483647, i64 9223372036854775807
  %retval.0.i16 = select i1 %tobool.not.i15, i64 %spec.select.i, i64 2147483647
  %call4 = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %retval.0.i16, i64 noundef %retval.0.i16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i
  %ret.0 = phi i64 [ %call4, %if.then ], [ %call5, %if.end.i ]
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #7
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #7
  %shr.i17 = lshr i64 %call.i.i.i, 1
  %sub = add nsw i64 %shr.i17, -1
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %26 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %sub, ptr %f_version, align 8
  ret i64 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %ractl.i = alloca %struct.readahead_control, align 4
  %fstr = alloca %struct.fscrypt_str, align 8
  %has_inline_data = alloca i32, align 4
  %map = alloca %struct.ext4_map_blocks, align 8
  %de_name = alloca %struct.fscrypt_str, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fstr) #7
  %4 = ptrtoint ptr %fstr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %fstr, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i373 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i373, label %entry.if.end_crit_edge, label %fscrypt_prepare_readdir.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

fscrypt_prepare_readdir.exit:                     ; preds = %entry
  %call.i = tail call i32 @__fscrypt_prepare_readdir(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %fscrypt_prepare_readdir.exit.if.end_crit_edge, label %fscrypt_prepare_readdir.exit.cleanup240_crit_edge

fscrypt_prepare_readdir.exit.cleanup240_crit_edge: ; preds = %fscrypt_prepare_readdir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

fscrypt_prepare_readdir.exit.if.end_crit_edge:    ; preds = %fscrypt_prepare_readdir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fscrypt_prepare_readdir.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i.i = and i32 %14, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.if.end12_crit_edge, label %land.lhs.true.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.end
  %i_flags.i.i = getelementptr i8, ptr %1, i32 -380
  %15 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_flags.i.i, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i375 = icmp eq i32 %17, 0
  br i1 %tobool.not.i375, label %lor.lhs.false.i, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %21 to i64
  %shr.i = ashr i64 %19, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %shr.i)
  %cmp.i = icmp eq i64 %shr.i, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then4_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.if.then4_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_flags.i.i, align 4
  %24 = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false4.i.if.end12_crit_edge, label %ext4_has_inline_data.exit.i

lor.lhs.false4.i.if.end12_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

ext4_has_inline_data.exit.i:                      ; preds = %lor.lhs.false4.i
  %i_inline_off.i.i = getelementptr i8, ptr %1, i32 990
  %25 = ptrtoint ptr %i_inline_off.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %i_inline_off.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool2.i.not.i = icmp eq i16 %26, 0
  br i1 %tobool2.i.not.i, label %ext4_has_inline_data.exit.i.if.end12_crit_edge, label %ext4_has_inline_data.exit.i.if.then4_crit_edge

ext4_has_inline_data.exit.i.if.then4_crit_edge:   ; preds = %ext4_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

ext4_has_inline_data.exit.i.if.end12_crit_edge:   ; preds = %ext4_has_inline_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %ext4_has_inline_data.exit.i.if.then4_crit_edge, %lor.lhs.false.i.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %27 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i, align 4
  %29 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i, align 8
  %tobool.not.i377 = icmp eq ptr %28, null
  br i1 %tobool.not.i377, label %if.then.i379, label %if.then4.if.end5.i_crit_edge

if.then4.if.end5.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i379:                                     ; preds = %if.then4
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not.i.i378 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i378, label %if.then.i379.cleanup240_crit_edge, label %if.end.i380

if.then.i379.cleanup240_crit_edge:                ; preds = %if.then.i379
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.end.i380:                                      ; preds = %if.then.i379
  call void @__sanitizer_cov_trace_pc() #9
  %f_mode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %34 = ptrtoint ptr %f_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_mode.i.i.i, align 8
  %36 = and i32 %35, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %36)
  %.not.i.i.i = icmp eq i32 %36, 1024
  %pos.tr.i.i.i = trunc i64 %32 to i32
  %conv.i.i.i = shl i32 %pos.tr.i.i.i, 1
  %37 = lshr i64 %32, 31
  %38 = trunc i64 %37 to i32
  %conv8.i.i.i = and i32 %38, -2
  %retval.0.i.i.i = select i1 %.not.i.i.i, i32 %conv8.i.i.i, i32 %conv.i.i.i
  %curr_hash.i.i = getelementptr inbounds %struct.dir_private_info, ptr %call7.i.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %curr_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.i.i, ptr %curr_hash.i.i, align 8
  %retval.0.i11.i.i = select i1 %.not.i.i.i, i32 %pos.tr.i.i.i, i32 0
  %curr_minor_hash.i.i = getelementptr inbounds %struct.dir_private_info, ptr %call7.i.i.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %curr_minor_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i11.i.i, ptr %curr_minor_hash.i.i, align 4
  %41 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i.i, ptr %private_data.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i380, %if.then4.if.end5.i_crit_edge
  %info.0.i = phi ptr [ %28, %if.then4.if.end5.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i380 ]
  %pos6.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %42 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pos6.i, align 8
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %44 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i381 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i381)
  %tobool.not.i164.i = icmp eq i32 %and.i.i381, 0
  %and2.i.i = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %spec.select.i.i = select i1 %tobool3.not.i.i, i64 2147483647, i64 9223372036854775807
  %retval.0.i.i = select i1 %tobool.not.i164.i, i64 %spec.select.i.i, i64 2147483647
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %retval.0.i.i)
  %cmp.i382 = icmp eq i64 %43, %retval.0.i.i
  br i1 %cmp.i382, label %if.end5.i.cleanup240_crit_edge, label %if.end9.i

if.end5.i.cleanup240_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.end9.i:                                        ; preds = %if.end5.i
  %last_pos.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 3
  %46 = ptrtoint ptr %last_pos.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %last_pos.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %43)
  %cmp11.not.i = icmp eq i64 %47, %43
  br i1 %cmp11.not.i, label %if.end9.i.if.end17.i_crit_edge, label %if.then12.i

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end9.i
  %call.i.i = tail call ptr @rb_first_postorder(ptr noundef nonnull %info.0.i) #7
  %tobool.not.i165.i = icmp eq ptr %call.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -8
  %tobool2.not2830.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not28.i.i = or i1 %tobool.not.i165.i, %tobool2.not2830.i.i
  br i1 %tobool2.not28.i.i, label %if.then12.i.free_rb_tree_fname.exit.i_crit_edge, label %if.then12.i.land.rhs.i.i_crit_edge

if.then12.i.land.rhs.i.i_crit_edge:               ; preds = %if.then12.i
  br label %land.rhs.i.i

if.then12.i.free_rb_tree_fname.exit.i_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rb_tree_fname.exit.i

while.cond.for.cond.loopexit_crit_edge.i.i:       ; preds = %while.body.i.i
  %add.ptr10.i.i = getelementptr i8, ptr %call4.i.i, i32 -8
  %tobool6.not.i.i = icmp eq ptr %call4.i.i, null
  %tobool2.not31.i.i = icmp eq ptr %add.ptr10.i.i, null
  %tobool2.not.i.i = or i1 %tobool6.not.i.i, %tobool2.not31.i.i
  br i1 %tobool2.not.i.i, label %while.cond.for.cond.loopexit_crit_edge.i.i.free_rb_tree_fname.exit.i_crit_edge, label %while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge

while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

while.cond.for.cond.loopexit_crit_edge.i.i.free_rb_tree_fname.exit.i_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rb_tree_fname.exit.i

land.rhs.i.i:                                     ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge, %if.then12.i.land.rhs.i.i_crit_edge
  %fname.029.i.i = phi ptr [ %add.ptr10.i.i, %while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr.i.i, %if.then12.i.land.rhs.i.i_crit_edge ]
  %rb_hash.i.i = getelementptr inbounds %struct.fname, ptr %fname.029.i.i, i32 0, i32 2
  %call4.i.i = tail call ptr @rb_next_postorder(ptr noundef %rb_hash.i.i) #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %land.rhs.i.i
  %fname.127.i.i = phi ptr [ %fname.029.i.i, %land.rhs.i.i ], [ %49, %while.body.i.i.while.body.i.i_crit_edge ]
  %next17.i.i = getelementptr inbounds %struct.fname, ptr %fname.127.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %next17.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %next17.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %fname.127.i.i) #7
  %tobool16.not.i.i = icmp eq ptr %49, null
  br i1 %tobool16.not.i.i, label %while.cond.for.cond.loopexit_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

free_rb_tree_fname.exit.i:                        ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i.free_rb_tree_fname.exit.i_crit_edge, %if.then12.i.free_rb_tree_fname.exit.i_crit_edge
  %50 = ptrtoint ptr %info.0.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %info.0.i, align 4
  %curr_node.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 1
  %51 = ptrtoint ptr %curr_node.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %curr_node.i, align 4
  %extra_fname.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 2
  %52 = ptrtoint ptr %extra_fname.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %extra_fname.i, align 8
  %53 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %pos6.i, align 8
  %55 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %f_mode.i.i, align 8
  %57 = and i32 %56, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %57)
  %.not.i.i = icmp eq i32 %57, 1024
  %pos.tr.i.i = trunc i64 %54 to i32
  %conv.i.i = shl i32 %pos.tr.i.i, 1
  %58 = lshr i64 %54, 31
  %59 = trunc i64 %58 to i32
  %conv8.i.i = and i32 %59, -2
  %retval.0.i167.i = select i1 %.not.i.i, i32 %conv8.i.i, i32 %conv.i.i
  %curr_hash.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 4
  %60 = ptrtoint ptr %curr_hash.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i167.i, ptr %curr_hash.i, align 8
  %61 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pos6.i, align 8
  %63 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %f_mode.i.i, align 8
  %65 = and i32 %64, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %65)
  %.not.i169.i = icmp eq i32 %65, 1024
  %conv.i170.i = trunc i64 %62 to i32
  %retval.0.i171.i = select i1 %.not.i169.i, i32 %conv.i170.i, i32 0
  %curr_minor_hash.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 5
  %66 = ptrtoint ptr %curr_minor_hash.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i171.i, ptr %curr_minor_hash.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %free_rb_tree_fname.exit.i, %if.end9.i.if.end17.i_crit_edge
  %extra_fname18.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 2
  %67 = ptrtoint ptr %extra_fname18.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extra_fname18.i, align 8
  %tobool19.not.i = icmp eq ptr %68, null
  br i1 %tobool19.not.i, label %if.else.i, label %if.end.i176.i

if.end.i176.i:                                    ; preds = %if.end17.i
  %69 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private_data.i, align 4
  %71 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb.i.i, align 4
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %68, align 4
  %minor_hash.i.i = getelementptr inbounds %struct.fname, ptr %68, i32 0, i32 1
  %77 = ptrtoint ptr %minor_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %minor_hash.i.i, align 4
  %79 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %f_mode.i.i, align 8
  %81 = and i32 %80, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %81)
  %.not.i.i174.i = icmp eq i32 %81, 1024
  %shr5.i.i.i = lshr i32 %76, 1
  %conv6.i.i.i = zext i32 %shr5.i.i.i to i64
  %shl.i.i.i = shl nuw nsw i64 %conv6.i.i.i, 32
  %conv7.i.i.i = zext i32 %78 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv7.i.i.i
  %retval.0.i.i175.i = select i1 %.not.i.i174.i, i64 %or.i.i.i, i64 %conv6.i.i.i
  %82 = ptrtoint ptr %pos6.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %retval.0.i.i175.i, ptr %pos6.i, align 8
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 33
  br label %while.body.i178.i

while.body.i178.i:                                ; preds = %if.end12.i.i.while.body.i178.i_crit_edge, %if.end.i176.i
  %fname.addr.033.i.i = phi ptr [ %68, %if.end.i176.i ], [ %102, %if.end12.i.i.while.body.i178.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i.i, i32 0, i32 7
  %name_len.i.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i.i, i32 0, i32 5
  %83 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %name_len.i.i, align 4
  %conv.i177.i = zext i8 %84 to i32
  %inode5.i.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %inode5.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %inode5.i.i, align 4
  %conv6.i.i = zext i32 %86 to i64
  %file_type.i.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %file_type.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %file_type.i.i, align 1
  %89 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %s_es.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %s_es.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_es.i.i.i.i, align 4
  %s_feature_incompat.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %92, i32 0, i32 29
  %93 = ptrtoint ptr %s_feature_incompat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_feature_incompat.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %94, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %88)
  %cmp.i.i.i = icmp ugt i8 %88, 7
  %or.cond.i.i.i = or i1 %cmp.i.i.i, %cmp.i.not.i.i.i
  br i1 %or.cond.i.i.i, label %while.body.i178.i.get_dtype.exit.i.i_crit_edge, label %if.end.i.i.i

while.body.i178.i.get_dtype.exit.i.i_crit_edge:   ; preds = %while.body.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dtype.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i.i = zext i8 %88 to i32
  %arrayidx.i.i.i = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %conv7.i.i
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i.i, align 1
  br label %get_dtype.exit.i.i

get_dtype.exit.i.i:                               ; preds = %if.end.i.i.i, %while.body.i178.i.get_dtype.exit.i.i_crit_edge
  %retval.0.i29.i.i = phi i8 [ %96, %if.end.i.i.i ], [ 0, %while.body.i178.i.get_dtype.exit.i.i_crit_edge ]
  %conv9.i.i = zext i8 %retval.0.i29.i.i to i32
  %97 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx, align 8
  %99 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %pos6.i, align 8
  %call.i.i.i = tail call i32 %98(ptr noundef %ctx, ptr noundef %name.i.i, i32 noundef %conv.i177.i, i64 noundef %100, i64 noundef %conv6.i.i, i32 noundef %conv9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i30.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i30.i.i, label %if.end12.i.i, label %call_filldir.exit.i

if.end12.i.i:                                     ; preds = %get_dtype.exit.i.i
  %next.i.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %next.i.i, align 4
  %tobool3.not.i179.i = icmp eq ptr %102, null
  br i1 %tobool3.not.i179.i, label %if.end25.i, label %if.end12.i.i.while.body.i178.i_crit_edge

if.end12.i.i.while.body.i178.i_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i178.i

call_filldir.exit.i:                              ; preds = %get_dtype.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %extra_fname.i.i = getelementptr inbounds %struct.dir_private_info, ptr %70, i32 0, i32 2
  %103 = ptrtoint ptr %extra_fname.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %fname.addr.033.i.i, ptr %extra_fname.i.i, align 8
  br label %finished.thread.i

if.end25.i:                                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %extra_fname18.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %extra_fname18.i, align 8
  br label %next_node.i

if.else.i:                                        ; preds = %if.end17.i
  %curr_node27.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 1
  %105 = ptrtoint ptr %curr_node27.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %curr_node27.i, align 4
  %tobool28.not.i = icmp eq ptr %106, null
  br i1 %tobool28.not.i, label %if.then29.i, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = tail call ptr @rb_first(ptr noundef %info.0.i) #7
  %107 = ptrtoint ptr %curr_node27.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call31.i, ptr %curr_node27.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end85.i, %if.then70.i, %if.then29.i, %if.else.i.while.body.i_crit_edge
  %ret.0.i = phi i32 [ %ret.2.i, %if.then70.i ], [ %ret.2.i, %if.end85.i ], [ 0, %if.else.i.while.body.i_crit_edge ], [ 0, %if.then29.i ]
  %curr_node35.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 1
  %108 = ptrtoint ptr %curr_node35.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %curr_node35.i, align 4
  %tobool36.not.i = icmp eq ptr %109, null
  br i1 %tobool36.not.i, label %while.body.i.if.then38.i_crit_edge, label %lor.lhs.false.i383

while.body.i.if.then38.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

lor.lhs.false.i383:                               ; preds = %while.body.i
  %f_version.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %110 = ptrtoint ptr %f_version.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %f_version.i, align 8
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 38
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #7
  %call.i.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #7
  %shr.i.i.i = lshr i64 %call.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i.i, i64 %111)
  %cmp.i.i = icmp eq i64 %shr.i.i.i, %111
  br i1 %cmp.i.i, label %lor.lhs.false.i383.if.end57.i_crit_edge, label %lor.lhs.false.i383.if.then38.i_crit_edge

lor.lhs.false.i383.if.then38.i_crit_edge:         ; preds = %lor.lhs.false.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

lor.lhs.false.i383.if.end57.i_crit_edge:          ; preds = %lor.lhs.false.i383
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then38.i:                                      ; preds = %lor.lhs.false.i383.if.then38.i_crit_edge, %while.body.i.if.then38.i_crit_edge
  %112 = ptrtoint ptr %curr_node35.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %curr_node35.i, align 4
  %call.i181.i = tail call ptr @rb_first_postorder(ptr noundef %info.0.i) #7
  %tobool.not.i182.i = icmp eq ptr %call.i181.i, null
  %add.ptr.i183.i = getelementptr i8, ptr %call.i181.i, i32 -8
  %tobool2.not2830.i184.i = icmp eq ptr %add.ptr.i183.i, null
  %tobool2.not28.i185.i = or i1 %tobool.not.i182.i, %tobool2.not2830.i184.i
  br i1 %tobool2.not28.i185.i, label %if.then38.i.free_rb_tree_fname.exit199.i_crit_edge, label %if.then38.i.land.rhs.i194.i_crit_edge

if.then38.i.land.rhs.i194.i_crit_edge:            ; preds = %if.then38.i
  br label %land.rhs.i194.i

if.then38.i.free_rb_tree_fname.exit199.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rb_tree_fname.exit199.i

while.cond.for.cond.loopexit_crit_edge.i189.i:    ; preds = %while.body.i198.i
  %add.ptr10.i193.i = getelementptr i8, ptr %call4.i192.i, i32 -8
  %tobool6.not.i186.i = icmp eq ptr %call4.i192.i, null
  %tobool2.not31.i187.i = icmp eq ptr %add.ptr10.i193.i, null
  %tobool2.not.i188.i = or i1 %tobool6.not.i186.i, %tobool2.not31.i187.i
  br i1 %tobool2.not.i188.i, label %while.cond.for.cond.loopexit_crit_edge.i189.i.free_rb_tree_fname.exit199.i_crit_edge, label %while.cond.for.cond.loopexit_crit_edge.i189.i.land.rhs.i194.i_crit_edge

while.cond.for.cond.loopexit_crit_edge.i189.i.land.rhs.i194.i_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i194.i

while.cond.for.cond.loopexit_crit_edge.i189.i.free_rb_tree_fname.exit199.i_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_rb_tree_fname.exit199.i

land.rhs.i194.i:                                  ; preds = %while.cond.for.cond.loopexit_crit_edge.i189.i.land.rhs.i194.i_crit_edge, %if.then38.i.land.rhs.i194.i_crit_edge
  %fname.029.i190.i = phi ptr [ %add.ptr10.i193.i, %while.cond.for.cond.loopexit_crit_edge.i189.i.land.rhs.i194.i_crit_edge ], [ %add.ptr.i183.i, %if.then38.i.land.rhs.i194.i_crit_edge ]
  %rb_hash.i191.i = getelementptr inbounds %struct.fname, ptr %fname.029.i190.i, i32 0, i32 2
  %call4.i192.i = tail call ptr @rb_next_postorder(ptr noundef %rb_hash.i191.i) #7
  br label %while.body.i198.i

while.body.i198.i:                                ; preds = %while.body.i198.i.while.body.i198.i_crit_edge, %land.rhs.i194.i
  %fname.127.i195.i = phi ptr [ %fname.029.i190.i, %land.rhs.i194.i ], [ %114, %while.body.i198.i.while.body.i198.i_crit_edge ]
  %next17.i196.i = getelementptr inbounds %struct.fname, ptr %fname.127.i195.i, i32 0, i32 3
  %113 = ptrtoint ptr %next17.i196.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next17.i196.i, align 4
  tail call void @kfree(ptr noundef nonnull %fname.127.i195.i) #7
  %tobool16.not.i197.i = icmp eq ptr %114, null
  br i1 %tobool16.not.i197.i, label %while.cond.for.cond.loopexit_crit_edge.i189.i, label %while.body.i198.i.while.body.i198.i_crit_edge

while.body.i198.i.while.body.i198.i_crit_edge:    ; preds = %while.body.i198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i198.i

free_rb_tree_fname.exit199.i:                     ; preds = %while.cond.for.cond.loopexit_crit_edge.i189.i.free_rb_tree_fname.exit199.i_crit_edge, %if.then38.i.free_rb_tree_fname.exit199.i_crit_edge
  %115 = ptrtoint ptr %info.0.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %info.0.i, align 4
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 38
  %call.i.i.i.i200.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #7
  %call.i.i15.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i205.i.for.cond.i.i_crit_edge, %free_rb_tree_fname.exit199.i
  %cur.0.i.i = phi i64 [ %call.i.i15.i.i, %free_rb_tree_fname.exit199.i ], [ %call.i.i203.i, %if.end.i205.i.for.cond.i.i_crit_edge ]
  %and.i201.i = and i64 %cur.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i201.i)
  %tobool.not.i202.i = icmp eq i64 %and.i201.i, 0
  br i1 %tobool.not.i202.i, label %if.end.i205.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  br label %inode_query_iversion.exit.i

if.end.i205.i:                                    ; preds = %for.cond.i.i
  %or.i.i = or i64 %cur.0.i.i, 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #7
  %call.i.i203.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %or.i.i) #7
  %cmp.i204.i = icmp eq i64 %call.i.i203.i, %cur.0.i.i
  br i1 %cmp.i204.i, label %if.end.i205.i.inode_query_iversion.exit.i_crit_edge, label %if.end.i205.i.for.cond.i.i_crit_edge, !prof !42

if.end.i205.i.for.cond.i.i_crit_edge:             ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.end.i205.i.inode_query_iversion.exit.i_crit_edge: ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inode_query_iversion.exit.i

inode_query_iversion.exit.i:                      ; preds = %if.end.i205.i.inode_query_iversion.exit.i_crit_edge, %do.end.i.i
  %shr.i.i384 = lshr i64 %cur.0.i.i, 1
  %f_version42.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %116 = ptrtoint ptr %f_version42.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %shr.i.i384, ptr %f_version42.i, align 8
  %curr_hash43.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 4
  %117 = ptrtoint ptr %curr_hash43.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %curr_hash43.i, align 8
  %curr_minor_hash44.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 5
  %119 = ptrtoint ptr %curr_minor_hash44.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %curr_minor_hash44.i, align 4
  %next_hash.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 6
  %call45.i = tail call i32 @ext4_htree_fill_tree(ptr noundef %file, i32 noundef %118, i32 noundef %120, ptr noundef %next_hash.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %finished.thread276.i, label %if.end48.i

finished.thread276.i:                             ; preds = %inode_query_iversion.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %pos6.i, align 8
  %123 = ptrtoint ptr %last_pos.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %last_pos.i, align 8
  br label %ext4_dx_readdir.exit

if.end48.i:                                       ; preds = %inode_query_iversion.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp49.i = icmp eq i32 %call45.i, 0
  br i1 %cmp49.i, label %if.then50.i, label %if.end53.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %f_mode.i.i, align 8
  %and.i207.i = and i32 %125, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207.i)
  %tobool.not.i208.i = icmp eq i32 %and.i207.i, 0
  %and2.i209.i = and i32 %125, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i209.i)
  %tobool3.not.i210.i = icmp eq i32 %and2.i209.i, 0
  %spec.select.i211.i = select i1 %tobool3.not.i210.i, i64 2147483647, i64 9223372036854775807
  %retval.0.i212.i = select i1 %tobool.not.i208.i, i64 %spec.select.i211.i, i64 2147483647
  %126 = ptrtoint ptr %pos6.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %retval.0.i212.i, ptr %pos6.i, align 8
  br label %finished.thread.i

if.end53.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %call55.i = tail call ptr @rb_first(ptr noundef %info.0.i) #7
  %127 = ptrtoint ptr %curr_node35.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call55.i, ptr %curr_node35.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end53.i, %lor.lhs.false.i383.if.end57.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %lor.lhs.false.i383.if.end57.i_crit_edge ], [ %call45.i, %if.end53.i ]
  %128 = ptrtoint ptr %curr_node35.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %curr_node35.i, align 4
  %add.ptr.i = getelementptr i8, ptr %129, i32 -8
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i, align 4
  %curr_hash59.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 4
  %132 = ptrtoint ptr %curr_hash59.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %curr_hash59.i, align 8
  %minor_hash.i = getelementptr i8, ptr %129, i32 -4
  %133 = ptrtoint ptr %minor_hash.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %minor_hash.i, align 4
  %curr_minor_hash60.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 5
  %135 = ptrtoint ptr %curr_minor_hash60.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %curr_minor_hash60.i, align 4
  %136 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %private_data.i, align 4
  %138 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i215.i = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %i_sb.i215.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i_sb.i215.i, align 4
  %tobool.not.i216.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i216.i, label %if.then.i221.i, label %if.end.i233.i

if.then.i221.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino.i217.i = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 11
  %142 = ptrtoint ptr %i_ino.i217.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i_ino.i217.i, align 8
  %144 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i.i218.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i218.i to ptr
  %task.i219.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task.i219.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task.i219.i, align 8
  %comm.i220.i = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 101
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %141, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.call_filldir, i32 noundef 531, i32 noundef %143, ptr noundef %comm.i220.i) #7
  br label %next_node.i

if.end.i233.i:                                    ; preds = %if.end57.i
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i, align 4
  %150 = ptrtoint ptr %minor_hash.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %minor_hash.i, align 4
  %152 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %f_mode.i.i, align 8
  %154 = and i32 %153, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %154)
  %.not.i.i224.i = icmp eq i32 %154, 1024
  %shr5.i.i225.i = lshr i32 %149, 1
  %conv6.i.i226.i = zext i32 %shr5.i.i225.i to i64
  %shl.i.i227.i = shl nuw nsw i64 %conv6.i.i226.i, 32
  %conv7.i.i228.i = zext i32 %151 to i64
  %or.i.i229.i = or i64 %shl.i.i227.i, %conv7.i.i228.i
  %retval.0.i.i230.i = select i1 %.not.i.i224.i, i64 %or.i.i229.i, i64 %conv6.i.i226.i
  %155 = ptrtoint ptr %pos6.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %retval.0.i.i230.i, ptr %pos6.i, align 8
  %s_fs_info.i.i.i.i232.i = getelementptr inbounds %struct.super_block, ptr %141, i32 0, i32 33
  br label %while.body.i247.i

while.body.i247.i:                                ; preds = %if.end12.i260.i.while.body.i247.i_crit_edge, %if.end.i233.i
  %fname.addr.033.i234.i = phi ptr [ %add.ptr.i, %if.end.i233.i ], [ %175, %if.end12.i260.i.while.body.i247.i_crit_edge ]
  %name.i235.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i234.i, i32 0, i32 7
  %name_len.i236.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i234.i, i32 0, i32 5
  %156 = ptrtoint ptr %name_len.i236.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %name_len.i236.i, align 4
  %conv.i237.i = zext i8 %157 to i32
  %inode5.i238.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i234.i, i32 0, i32 4
  %158 = ptrtoint ptr %inode5.i238.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %inode5.i238.i, align 4
  %conv6.i239.i = zext i32 %159 to i64
  %file_type.i240.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i234.i, i32 0, i32 6
  %160 = ptrtoint ptr %file_type.i240.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %file_type.i240.i, align 1
  %162 = ptrtoint ptr %s_fs_info.i.i.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_fs_info.i.i.i.i232.i, align 16
  %s_es.i.i.i241.i = getelementptr inbounds %struct.ext4_sb_info, ptr %163, i32 0, i32 15
  %164 = ptrtoint ptr %s_es.i.i.i241.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_es.i.i.i241.i, align 4
  %s_feature_incompat.i.i.i242.i = getelementptr inbounds %struct.ext4_super_block, ptr %165, i32 0, i32 29
  %166 = ptrtoint ptr %s_feature_incompat.i.i.i242.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %s_feature_incompat.i.i.i242.i, align 8
  %and.i.i.i243.i = and i32 %167, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i243.i)
  %cmp.i.not.i.i244.i = icmp eq i32 %and.i.i.i243.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %161)
  %cmp.i.i245.i = icmp ugt i8 %161, 7
  %or.cond.i.i246.i = or i1 %cmp.i.i245.i, %cmp.i.not.i.i244.i
  br i1 %or.cond.i.i246.i, label %while.body.i247.i.get_dtype.exit.i255.i_crit_edge, label %if.end.i.i250.i

while.body.i247.i.get_dtype.exit.i255.i_crit_edge: ; preds = %while.body.i247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dtype.exit.i255.i

if.end.i.i250.i:                                  ; preds = %while.body.i247.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i248.i = zext i8 %161 to i32
  %arrayidx.i.i249.i = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %conv7.i248.i
  %168 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i.i249.i, align 1
  br label %get_dtype.exit.i255.i

get_dtype.exit.i255.i:                            ; preds = %if.end.i.i250.i, %while.body.i247.i.get_dtype.exit.i255.i_crit_edge
  %retval.0.i29.i251.i = phi i8 [ %169, %if.end.i.i250.i ], [ 0, %while.body.i247.i.get_dtype.exit.i255.i_crit_edge ]
  %conv9.i252.i = zext i8 %retval.0.i29.i251.i to i32
  %170 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctx, align 8
  %172 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %pos6.i, align 8
  %call.i.i253.i = tail call i32 %171(ptr noundef %ctx, ptr noundef %name.i235.i, i32 noundef %conv.i237.i, i64 noundef %173, i64 noundef %conv6.i239.i, i32 noundef %conv9.i252.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i253.i)
  %cmp.i30.i254.i = icmp eq i32 %call.i.i253.i, 0
  br i1 %cmp.i30.i254.i, label %if.end12.i260.i, label %call_filldir.exit262.i

if.end12.i260.i:                                  ; preds = %get_dtype.exit.i255.i
  %next.i258.i = getelementptr inbounds %struct.fname, ptr %fname.addr.033.i234.i, i32 0, i32 3
  %174 = ptrtoint ptr %next.i258.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %next.i258.i, align 4
  %tobool3.not.i259.i = icmp eq ptr %175, null
  br i1 %tobool3.not.i259.i, label %if.end12.i260.i.next_node.i_crit_edge, label %if.end12.i260.i.while.body.i247.i_crit_edge

if.end12.i260.i.while.body.i247.i_crit_edge:      ; preds = %if.end12.i260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i247.i

if.end12.i260.i.next_node.i_crit_edge:            ; preds = %if.end12.i260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_node.i

call_filldir.exit262.i:                           ; preds = %get_dtype.exit.i255.i
  call void @__sanitizer_cov_trace_pc() #9
  %extra_fname.i256.i = getelementptr inbounds %struct.dir_private_info, ptr %137, i32 0, i32 2
  %176 = ptrtoint ptr %extra_fname.i256.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %fname.addr.033.i234.i, ptr %extra_fname.i256.i, align 8
  br label %finished.i

next_node.i:                                      ; preds = %if.end12.i260.i.next_node.i_crit_edge, %if.then.i221.i, %if.end25.i
  %ret.2.i = phi i32 [ 0, %if.end25.i ], [ %ret.1.i, %if.then.i221.i ], [ %ret.1.i, %if.end12.i260.i.next_node.i_crit_edge ]
  %curr_node65.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 1
  %177 = ptrtoint ptr %curr_node65.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %curr_node65.i, align 4
  %call66.i = tail call ptr @rb_next(ptr noundef %178) #7
  %179 = ptrtoint ptr %curr_node65.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call66.i, ptr %curr_node65.i, align 4
  %tobool69.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool69.not.i, label %if.else79.i, label %if.then70.i

if.then70.i:                                      ; preds = %next_node.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr74.i = getelementptr i8, ptr %call66.i, i32 -8
  %180 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr74.i, align 4
  %curr_hash76.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 4
  %182 = ptrtoint ptr %curr_hash76.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %curr_hash76.i, align 8
  %minor_hash77.i = getelementptr i8, ptr %call66.i, i32 -4
  %183 = ptrtoint ptr %minor_hash77.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %minor_hash77.i, align 4
  %curr_minor_hash78.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 5
  %185 = ptrtoint ptr %curr_minor_hash78.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %curr_minor_hash78.i, align 4
  br label %while.body.i

if.else79.i:                                      ; preds = %next_node.i
  %next_hash80.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 6
  %186 = ptrtoint ptr %next_hash80.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %next_hash80.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %187)
  %cmp81.i = icmp eq i32 %187, -1
  br i1 %cmp81.i, label %if.then82.i, label %if.end85.i

if.then82.i:                                      ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %f_mode.i.i, align 8
  %and.i264.i = and i32 %189, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i264.i)
  %tobool.not.i265.i = icmp eq i32 %and.i264.i, 0
  %and2.i266.i = and i32 %189, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i266.i)
  %tobool3.not.i267.i = icmp eq i32 %and2.i266.i, 0
  %spec.select.i268.i = select i1 %tobool3.not.i267.i, i64 2147483647, i64 9223372036854775807
  %retval.0.i269.i = select i1 %tobool.not.i265.i, i64 %spec.select.i268.i, i64 2147483647
  %190 = ptrtoint ptr %pos6.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %retval.0.i269.i, ptr %pos6.i, align 8
  br label %finished.i

if.end85.i:                                       ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #9
  %curr_hash87.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 4
  %191 = ptrtoint ptr %curr_hash87.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %187, ptr %curr_hash87.i, align 8
  %curr_minor_hash88.i = getelementptr inbounds %struct.dir_private_info, ptr %info.0.i, i32 0, i32 5
  %192 = ptrtoint ptr %curr_minor_hash88.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %curr_minor_hash88.i, align 4
  br label %while.body.i

finished.thread.i:                                ; preds = %if.then50.i, %call_filldir.exit.i
  %193 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %pos6.i, align 8
  %195 = ptrtoint ptr %last_pos.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %194, ptr %last_pos.i, align 8
  br label %cleanup240

finished.i:                                       ; preds = %if.then82.i, %call_filldir.exit262.i
  %ret.3.i = phi i32 [ %ret.1.i, %call_filldir.exit262.i ], [ %ret.2.i, %if.then82.i ]
  %196 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %pos6.i, align 8
  %198 = ptrtoint ptr %last_pos.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %last_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp92.i = icmp slt i32 %ret.3.i, 0
  br i1 %cmp92.i, label %finished.i.ext4_dx_readdir.exit_crit_edge, label %finished.i.cleanup240_crit_edge

finished.i.cleanup240_crit_edge:                  ; preds = %finished.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

finished.i.ext4_dx_readdir.exit_crit_edge:        ; preds = %finished.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_dx_readdir.exit

ext4_dx_readdir.exit:                             ; preds = %finished.i.ext4_dx_readdir.exit_crit_edge, %finished.thread276.i
  %ret.3279.i = phi i32 [ %call45.i, %finished.thread276.i ], [ %ret.3.i, %finished.i.ext4_dx_readdir.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4094, i32 %ret.3279.i)
  %cmp.not = icmp eq i32 %ret.3279.i, -4094
  br i1 %cmp.not, label %if.end7, label %ext4_dx_readdir.exit.cleanup240_crit_edge

ext4_dx_readdir.exit.cleanup240_crit_edge:        ; preds = %ext4_dx_readdir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.end7:                                          ; preds = %ext4_dx_readdir.exit
  %s_fs_info.i.i.i386 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %199 = ptrtoint ptr %s_fs_info.i.i.i386 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %s_fs_info.i.i.i386, align 16
  %s_es.i.i387 = getelementptr inbounds %struct.ext4_sb_info, ptr %200, i32 0, i32 15
  %201 = ptrtoint ptr %s_es.i.i387 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %s_es.i.i387, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %202, i32 0, i32 30
  %203 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i388 = and i32 %204, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i388)
  %cmp.i.not.i389 = icmp eq i32 %and.i.i388, 0
  br i1 %cmp.i.not.i389, label %if.end7.if.end32.i_crit_edge, label %land.rhs.i

if.end7.if.end32.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.rhs.i:                                       ; preds = %if.end7
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %200, i32 0, i32 121
  %205 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i390 = icmp eq ptr %206, null
  br i1 %tobool.not.i390, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i391, !prof !42

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i391:                                     ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3289, i32 noundef 9, ptr noundef null) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i391, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %if.end7.if.end32.i_crit_edge
  %207 = ptrtoint ptr %s_fs_info.i.i.i386 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %s_fs_info.i.i.i386, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %208, i32 0, i32 15
  %209 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %210, i32 0, i32 30
  %211 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %212, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.if.then10_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.if.then10_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %208, i32 0, i32 121
  %213 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i392.not = icmp eq ptr %214, null
  br i1 %cmp.i392.not, label %ext4_has_metadata_csum.exit.if.then10_crit_edge, label %ext4_has_metadata_csum.exit.if.end12_crit_edge

ext4_has_metadata_csum.exit.if.end12_crit_edge:   ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

ext4_has_metadata_csum.exit.if.then10_crit_edge:  ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %ext4_has_metadata_csum.exit.if.then10_crit_edge, %if.end32.i.if.then10_crit_edge
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %i_flags.i.i) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %ext4_has_metadata_csum.exit.if.end12_crit_edge, %ext4_has_inline_data.exit.i.if.end12_crit_edge, %lor.lhs.false4.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %i_flags.i.i394 = getelementptr i8, ptr %1, i32 -380
  %215 = ptrtoint ptr %i_flags.i.i394 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %i_flags.i.i394, align 4
  %217 = and i32 %216, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i395 = icmp eq i32 %217, 0
  br i1 %tobool.not.i395, label %if.end12.if.end20_crit_edge, label %ext4_has_inline_data.exit

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

ext4_has_inline_data.exit:                        ; preds = %if.end12
  %i_inline_off.i = getelementptr i8, ptr %1, i32 990
  %218 = ptrtoint ptr %i_inline_off.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %i_inline_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool2.i.not = icmp eq i16 %219, 0
  br i1 %tobool2.i.not, label %ext4_has_inline_data.exit.if.end20_crit_edge, label %if.then15

ext4_has_inline_data.exit.if.end20_crit_edge:     ; preds = %ext4_has_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %ext4_has_inline_data.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_inline_data) #7
  %220 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1, ptr %has_inline_data, align 4
  %call16 = call i32 @ext4_read_inline_dir(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %has_inline_data) #7
  %221 = ptrtoint ptr %has_inline_data to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %has_inline_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool17.not = icmp eq i32 %222, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_inline_data) #7
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then15.cleanup240_crit_edge

if.then15.cleanup240_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %ext4_has_inline_data.exit.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %223 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %i_flags.i, align 4
  %and = and i32 %224, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 @fscrypt_fname_alloc_buffer(i32 noundef 255, ptr noundef nonnull %fstr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then22.cleanup240_crit_edge, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22.cleanup240_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %225 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %pos, align 8
  %227 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %226, i64 %228)
  %cmp28515 = icmp slt i64 %226, %228
  br i1 %cmp28515, label %while.body.lr.ph, label %errout.thread

errout.thread:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void @fscrypt_fname_free_buffer(ptr noundef nonnull %fstr) #7
  br label %cleanup240

while.body.lr.ph:                                 ; preds = %if.end27
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %f_ra = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13
  %size.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13, i32 1
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %229 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 1
  %230 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 2
  %231 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 3
  %232 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 4
  %233 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 5
  %prev_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13, i32 5
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %i_version.i.i.i408 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %tobool.not.i413 = icmp eq ptr %1, null
  %len = getelementptr inbounds %struct.fscrypt_str, ptr %fstr, i32 0, i32 1
  %234 = getelementptr inbounds %struct.fscrypt_str, ptr %de_name, i32 0, i32 1
  %s_fs_info.i.i.i438 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %i_blocks = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map) #7
  %235 = call ptr @memset(ptr %map, i32 255, i32 24)
  %236 = call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i398 = and i32 %236, -16384
  %237 = inttoptr i32 %and.i398 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %stack.i.i.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %241, align 4
  %and1.i.i.i.i.i = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i399 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i399, label %while.body.if.end33_crit_edge, label %fatal_signal_pending.exit

while.body.if.end33_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

fatal_signal_pending.exit:                        ; preds = %while.body
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 116, i32 1
  %244 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %signal.i.i, align 4
  %246 = and i32 %245, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool31.not = icmp eq i32 %246, 0
  br i1 %tobool31.not, label %fatal_signal_pending.exit.if.end33_crit_edge, label %fatal_signal_pending.exit.cleanup236.thread484_crit_edge

fatal_signal_pending.exit.cleanup236.thread484_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236.thread484

fatal_signal_pending.exit.if.end33_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %fatal_signal_pending.exit.if.end33_crit_edge, %while.body.if.end33_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 177, i32 noundef 0) #7
  %call.i401 = call i32 @__cond_resched() #7
  %247 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %pos, align 8
  %249 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %250, -1
  %251 = trunc i64 %248 to i32
  %conv37 = and i32 %sub, %251
  %252 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %253 to i64
  %shr = ashr i64 %248, %sh_prom
  %conv40 = trunc i64 %shr to i32
  %254 = ptrtoint ptr %m_lblk to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %conv40, ptr %m_lblk, align 8
  %255 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 1, ptr %m_len, align 4
  %call41 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %1, ptr noundef nonnull %map, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end55

if.then44:                                        ; preds = %if.end33
  %256 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %m_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp46 = icmp eq i32 %257, 0
  br i1 %cmp46, label %if.then48, label %if.then44.if.end50_crit_edge

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %m_len, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then44.if.end50_crit_edge
  %259 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %m_len, align 4
  %261 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %s_blocksize, align 16
  %mul = mul i32 %262, %260
  %conv53 = zext i32 %mul to i64
  %263 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %pos, align 8
  %add = add i64 %264, %conv53
  store i64 %add, ptr %pos, align 8
  br label %while.cond.backedge

if.end55:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp56 = icmp sgt i32 %call41, 0
  br i1 %cmp56, label %if.then58, label %if.end55.if.end80_crit_edge

if.end55.if.end80_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then58:                                        ; preds = %if.end55
  %265 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %map, align 8
  %267 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %i_blkbits, align 2
  %conv59 = zext i8 %268 to i32
  %sub60 = sub nsw i32 12, %conv59
  %sh_prom61 = zext i32 %sub60 to i64
  %shr62 = lshr i64 %266, %sh_prom61
  %conv63 = trunc i64 %shr62 to i32
  %269 = ptrtoint ptr %f_ra to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %f_ra, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %conv63)
  %cmp.not.i = icmp ugt i32 %270, %conv63
  br i1 %cmp.not.i, label %if.then58.if.then66_crit_edge, label %ra_has_index.exit

if.then58.if.then66_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

ra_has_index.exit:                                ; preds = %if.then58
  %271 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %size.i, align 4
  %add.i = add i32 %272, %270
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv63)
  %cmp2.i.not = icmp ugt i32 %add.i, %conv63
  br i1 %cmp2.i.not, label %ra_has_index.exit.if.end68_crit_edge, label %ra_has_index.exit.if.then66_crit_edge

ra_has_index.exit.if.then66_crit_edge:            ; preds = %ra_has_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

ra_has_index.exit.if.end68_crit_edge:             ; preds = %ra_has_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then66:                                        ; preds = %ra_has_index.exit.if.then66_crit_edge, %if.then58.if.then66_crit_edge
  %273 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %s_bdev, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %274, i32 0, i32 7
  %275 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %276, i32 0, i32 9
  %277 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl.i) #7
  %279 = ptrtoint ptr %ractl.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %file, ptr %ractl.i, align 4
  %280 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %278, ptr %229, align 4
  %281 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %f_ra, ptr %230, align 4
  %282 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %conv63, ptr %231, align 4
  %283 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %232, align 4
  %284 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %233, align 4
  call void @page_cache_sync_ra(ptr noundef nonnull %ractl.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl.i) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %ra_has_index.exit.if.end68_crit_edge
  %conv69 = shl i64 %shr62, 12
  %shl = and i64 %conv69, 17592186040320
  %285 = ptrtoint ptr %prev_pos to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 %shl, ptr %prev_pos, align 8
  %286 = ptrtoint ptr %m_lblk to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %m_lblk, align 8
  %call72 = call ptr @ext4_bread(ptr noundef null, ptr noundef %1, i32 noundef %287, i32 noundef 0) #7
  %cmp.i404 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i404, label %cleanup77.thread, label %if.end68.if.end80_crit_edge

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

cleanup77.thread:                                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %288 = ptrtoint ptr %call72 to i32
  br label %cleanup236.thread484

if.end80:                                         ; preds = %if.end68.if.end80_crit_edge, %if.end55.if.end80_crit_edge
  %bh.2 = phi ptr [ null, %if.end55.if.end80_crit_edge ], [ %call72, %if.end68.if.end80_crit_edge ]
  %tobool81.not = icmp eq ptr %bh.2, null
  br i1 %tobool81.not, label %if.then82, label %if.end94

if.then82:                                        ; preds = %if.end80
  %289 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %pos, align 8
  %291 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %i_blocks, align 8
  %shl84 = shl i64 %292, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %290, i64 %shl84)
  %cmp85 = icmp ugt i64 %290, %shl84
  br i1 %cmp85, label %if.then82.cleanup236.thread_crit_edge, label %if.end88

if.then82.cleanup236.thread_crit_edge:            ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236.thread

if.end88:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %293 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %s_blocksize, align 16
  %sub90 = sub i32 %294, %conv37
  %conv91 = zext i32 %sub90 to i64
  %add93 = add i64 %290, %conv91
  %295 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 %add93, ptr %pos, align 8
  br label %while.cond.backedge

if.end94:                                         ; preds = %if.end80
  %296 = ptrtoint ptr %bh.2 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load volatile i32, ptr %bh.2, align 4
  %298 = and i32 %297, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool96.not = icmp eq i32 %298, 0
  br i1 %tobool96.not, label %land.lhs.true, label %if.end94.if.end106_crit_edge

if.end94.if.end106_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true:                                    ; preds = %if.end94
  %call97 = call i32 @ext4_dirblock_csum_verify(ptr noundef %1, ptr noundef nonnull %bh.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %brelse.exit, label %land.lhs.true.if.end106_crit_edge

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

brelse.exit:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %299 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %pos, align 8
  call void (ptr, ptr, i32, i64, ptr, ...) @__ext4_error_file(ptr noundef %file, ptr noundef nonnull @__func__.ext4_readdir, i32 noundef 220, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef %300) #7
  %301 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %s_blocksize, align 16
  %sub102 = sub i32 %302, %conv37
  %conv103 = zext i32 %sub102 to i64
  %303 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %pos, align 8
  %add105 = add i64 %304, %conv103
  store i64 %add105, ptr %pos, align 8
  call void @__brelse(ptr noundef nonnull %bh.2) #7
  br label %while.cond.backedge

if.end106:                                        ; preds = %land.lhs.true.if.end106_crit_edge, %if.end94.if.end106_crit_edge
  %305 = ptrtoint ptr %bh.2 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile i32, ptr %bh.2, align 4
  %307 = and i32 %306, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool.not.i = icmp eq i32 %307, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end106.set_buffer_verified.exit_crit_edge

if.end106.set_buffer_verified.exit_crit_edge:     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_verified.exit

if.then.i:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 24, ptr noundef nonnull %bh.2) #7
  br label %set_buffer_verified.exit

set_buffer_verified.exit:                         ; preds = %if.then.i, %if.end106.set_buffer_verified.exit_crit_edge
  %308 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %f_version, align 8
  %call.i.i.i.i.i409 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i408, i32 noundef 8) #7
  %call.i.i.i.i410 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i408) #7
  %shr.i.i411 = lshr i64 %call.i.i.i.i410, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i411, i64 %309)
  %cmp.i412 = icmp eq i64 %shr.i.i411, %309
  br i1 %cmp.i412, label %set_buffer_verified.exit.if.end134_crit_edge, label %for.cond.preheader

set_buffer_verified.exit.if.end134_crit_edge:     ; preds = %set_buffer_verified.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

for.cond.preheader:                               ; preds = %set_buffer_verified.exit
  %310 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp110505 = icmp ne i32 %311, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv37)
  %cmp112506 = icmp ne i32 %conv37, 0
  %or.cond507 = select i1 %cmp110505, i1 %cmp112506, i1 false
  br i1 %or.cond507, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.2, i32 0, i32 5
  %312 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %b_data, align 4
  br label %for.body

for.cond:                                         ; preds = %ext4_dir_rec_len.exit
  %add124 = add i32 %i.0508, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add124, i32 %311)
  %cmp110 = icmp ult i32 %add124, %311
  call void @__sanitizer_cov_trace_cmp4(i32 %add124, i32 %conv37)
  %cmp112 = icmp ult i32 %add124, %conv37
  %or.cond = select i1 %cmp110, i1 %cmp112, i1 false
  br i1 %or.cond, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0508 = phi i32 [ 0, %for.body.lr.ph ], [ %add124, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %313, i32 %i.0508
  %rec_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr, i32 0, i32 1
  %314 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %rec_len, align 4
  %316 = call i16 @llvm.bswap.i16(i16 %315) #7
  %conv.i = zext i16 %316 to i32
  br i1 %tobool.not.i413, label %for.body.ext4_dir_rec_len.exit_crit_edge, label %land.lhs.true.i415

for.body.ext4_dir_rec_len.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_dir_rec_len.exit

land.lhs.true.i415:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %i_flags.i, align 4
  %319 = and i32 %318, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %319)
  %320 = icmp eq i32 %319, 49152
  %spec.select.i = select i1 %320, i32 20, i32 12
  br label %ext4_dir_rec_len.exit

ext4_dir_rec_len.exit:                            ; preds = %land.lhs.true.i415, %for.body.ext4_dir_rec_len.exit_crit_edge
  %rec_len.0.i = phi i32 [ 12, %for.body.ext4_dir_rec_len.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i415 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rec_len.0.i, i32 %conv.i)
  %cmp117 = icmp ugt i32 %rec_len.0.i, %conv.i
  br i1 %cmp117, label %ext4_dir_rec_len.exit.for.end_crit_edge, label %for.cond

ext4_dir_rec_len.exit.for.end_crit_edge:          ; preds = %ext4_dir_rec_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %ext4_dir_rec_len.exit.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add124, %for.cond.for.end_crit_edge ], [ %i.0508, %ext4_dir_rec_len.exit.for.end_crit_edge ]
  %321 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %321)
  %322 = load i64, ptr %pos, align 8
  %neg = sub i32 0, %311
  %conv128 = zext i32 %neg to i64
  %and129 = and i64 %322, %conv128
  %conv130 = zext i32 %i.0.lcssa to i64
  %or = or i64 %and129, %conv130
  store i64 %or, ptr %pos, align 8
  %call.i.i.i.i419 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i408, i32 noundef 8) #7
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i408) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i425.for.cond.i_crit_edge, %for.end
  %cur.0.i = phi i64 [ %call.i.i15.i, %for.end ], [ %call.i.i423, %if.end.i425.for.cond.i_crit_edge ]
  %and.i420 = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i420)
  %tobool.not.i421 = icmp eq i64 %and.i420, 0
  br i1 %tobool.not.i421, label %if.end.i425, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  br label %inode_query_iversion.exit

if.end.i425:                                      ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i422 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i408, i32 noundef 8) #7
  %call.i.i423 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i408, i64 noundef %cur.0.i, i64 noundef %or.i) #7
  %cmp.i424 = icmp eq i64 %call.i.i423, %cur.0.i
  br i1 %cmp.i424, label %if.end.i425.inode_query_iversion.exit_crit_edge, label %if.end.i425.for.cond.i_crit_edge, !prof !42

if.end.i425.for.cond.i_crit_edge:                 ; preds = %if.end.i425
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end.i425.inode_query_iversion.exit_crit_edge:  ; preds = %if.end.i425
  call void @__sanitizer_cov_trace_pc() #9
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %if.end.i425.inode_query_iversion.exit_crit_edge, %do.end.i
  %shr.i426 = lshr i64 %cur.0.i, 1
  %323 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %shr.i426, ptr %f_version, align 8
  br label %if.end134

if.end134:                                        ; preds = %inode_query_iversion.exit, %set_buffer_verified.exit.if.end134_crit_edge
  %offset.0 = phi i32 [ %conv37, %set_buffer_verified.exit.if.end134_crit_edge ], [ %i.0.lcssa, %inode_query_iversion.exit ]
  %324 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %pos, align 8
  %326 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %325, i64 %327)
  %cmp138512 = icmp slt i64 %325, %327
  br i1 %cmp138512, label %land.rhs140.lr.ph, label %if.end134.while.end_crit_edge

if.end134.while.end_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs140.lr.ph:                                ; preds = %if.end134
  %b_data146 = getelementptr inbounds %struct.buffer_head, ptr %bh.2, i32 0, i32 5
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.2, i32 0, i32 4
  br label %land.rhs140

land.rhs140:                                      ; preds = %if.end221.land.rhs140_crit_edge, %land.rhs140.lr.ph
  %offset.1514 = phi i32 [ %offset.0, %land.rhs140.lr.ph ], [ %add165, %if.end221.land.rhs140_crit_edge ]
  %328 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1514, i32 %329)
  %cmp142 = icmp ult i32 %offset.1514, %329
  br i1 %cmp142, label %while.body145, label %land.rhs140.while.end_crit_edge

land.rhs140.while.end_crit_edge:                  ; preds = %land.rhs140
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body145:                                    ; preds = %land.rhs140
  %330 = ptrtoint ptr %b_data146 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %b_data146, align 4
  %add.ptr147 = getelementptr i8, ptr %331, i32 %offset.1514
  %332 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %b_size, align 8
  %call149 = call i32 @__ext4_check_dir_entry(ptr noundef nonnull @__func__.ext4_readdir, i32 noundef 260, ptr noundef %1, ptr noundef %file, ptr noundef %add.ptr147, ptr noundef nonnull %bh.2, ptr noundef %331, i32 noundef %333, i32 noundef %offset.1514)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end161, label %if.then153, !prof !42

if.then153:                                       ; preds = %while.body145
  call void @__sanitizer_cov_trace_pc() #9
  %334 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %pos, align 8
  %336 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %s_blocksize, align 16
  %sub156 = add i32 %337, -1
  %conv157 = zext i32 %sub156 to i64
  %or158 = or i64 %335, %conv157
  %add159 = add i64 %or158, 1
  store i64 %add159, ptr %pos, align 8
  br label %while.end

if.end161:                                        ; preds = %while.body145
  %rec_len162 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 1
  %338 = ptrtoint ptr %rec_len162 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %rec_len162, align 4
  %340 = call i16 @llvm.bswap.i16(i16 %339) #7
  %conv.i427 = zext i16 %340 to i32
  %add165 = add i32 %offset.1514, %conv.i427
  %341 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %add.ptr147, align 4
  %343 = call i32 @llvm.bswap.i32(i32 %342)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool167.not = icmp eq i32 %342, 0
  br i1 %tobool167.not, label %if.end161.if.end221_crit_edge, label %if.then168

if.end161.if.end221_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then168:                                       ; preds = %if.end161
  %344 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %i_flags.i, align 4
  %and170 = and i32 %345, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.then172, label %if.else

if.then172:                                       ; preds = %if.then168
  %name = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 4
  %name_len = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 2
  %346 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %name_len, align 2
  %conv173 = zext i8 %347 to i32
  %conv175 = zext i32 %343 to i64
  %file_type = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 3
  %348 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %file_type, align 1
  %350 = ptrtoint ptr %s_fs_info.i.i.i438 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %s_fs_info.i.i.i438, align 16
  %s_es.i.i429 = getelementptr inbounds %struct.ext4_sb_info, ptr %351, i32 0, i32 15
  %352 = ptrtoint ptr %s_es.i.i429 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %s_es.i.i429, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %353, i32 0, i32 29
  %354 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i430 = and i32 %355, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i430)
  %cmp.i.not.i431 = icmp eq i32 %and.i.i430, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %349)
  %cmp.i432 = icmp ugt i8 %349, 7
  %or.cond.i = or i1 %cmp.i432, %cmp.i.not.i431
  br i1 %or.cond.i, label %if.then172.get_dtype.exit_crit_edge, label %if.end.i433

if.then172.get_dtype.exit_crit_edge:              ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dtype.exit

if.end.i433:                                      ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #9
  %conv176 = zext i8 %349 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %conv176
  %356 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx.i, align 1
  br label %get_dtype.exit

get_dtype.exit:                                   ; preds = %if.end.i433, %if.then172.get_dtype.exit_crit_edge
  %retval.0.i434 = phi i8 [ %357, %if.end.i433 ], [ 0, %if.then172.get_dtype.exit_crit_edge ]
  %conv178 = zext i8 %retval.0.i434 to i32
  %358 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ctx, align 8
  %360 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %pos, align 8
  %call.i436 = call i32 %359(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv173, i64 noundef %361, i64 noundef %conv175, i32 noundef %conv178) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %cmp.i437 = icmp eq i32 %call.i436, 0
  br i1 %cmp.i437, label %get_dtype.exit.if.end221_crit_edge, label %get_dtype.exit.cleanup236.thread_crit_edge

get_dtype.exit.cleanup236.thread_crit_edge:       ; preds = %get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236.thread

get_dtype.exit.if.end221_crit_edge:               ; preds = %get_dtype.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.else:                                          ; preds = %if.then168
  %362 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %de_name) #7
  %364 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 -1, ptr %234, align 4, !annotation !45
  %name183 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 4
  %365 = ptrtoint ptr %de_name to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %name183, ptr %de_name, align 8
  %name_len186 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 2
  %366 = ptrtoint ptr %name_len186 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %name_len186, align 2
  %conv187 = zext i8 %367 to i32
  store i32 %conv187, ptr %234, align 4
  %368 = load i8, ptr %name_len186, align 2
  %conv189 = zext i8 %368 to i32
  %add191 = add nuw nsw i32 %conv189, 11
  %and192 = and i32 %add191, 508
  %add.ptr193 = getelementptr i8, ptr %add.ptr147, i32 %and192
  %369 = ptrtoint ptr %add.ptr193 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %add.ptr193, align 4
  %371 = call i32 @llvm.bswap.i32(i32 %370)
  %minor_hash = getelementptr inbounds %struct.ext4_dir_entry_hash, ptr %add.ptr193, i32 0, i32 1
  %372 = ptrtoint ptr %minor_hash to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %minor_hash, align 4
  %374 = call i32 @llvm.bswap.i32(i32 %373)
  %call200 = call i32 @fscrypt_fname_disk_to_usr(ptr noundef %1, i32 noundef %371, i32 noundef %374, ptr noundef nonnull %de_name, ptr noundef nonnull %fstr) #7
  %375 = ptrtoint ptr %fstr to i32
  call void @__asan_load8_noabort(i32 %375)
  %376 = load i64, ptr %fstr, align 8
  %377 = ptrtoint ptr %de_name to i32
  call void @__asan_store8_noabort(i32 %377)
  store i64 %376, ptr %de_name, align 8
  %378 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %363, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool202.not = icmp eq i32 %call200, 0
  br i1 %tobool202.not, label %if.end204, label %cleanup216.thread

cleanup216.thread:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %de_name) #7
  br label %cleanup236.thread484

if.end204:                                        ; preds = %if.else
  %379 = ptrtoint ptr %de_name to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %de_name, align 8
  %381 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %234, align 4
  %383 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %add.ptr147, align 4
  %385 = call i32 @llvm.bswap.i32(i32 %384)
  %conv208 = zext i32 %385 to i64
  %file_type209 = getelementptr inbounds %struct.ext4_dir_entry_2, ptr %add.ptr147, i32 0, i32 3
  %386 = ptrtoint ptr %file_type209 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %file_type209, align 1
  %388 = ptrtoint ptr %s_fs_info.i.i.i438 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %s_fs_info.i.i.i438, align 16
  %s_es.i.i439 = getelementptr inbounds %struct.ext4_sb_info, ptr %389, i32 0, i32 15
  %390 = ptrtoint ptr %s_es.i.i439 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %s_es.i.i439, align 4
  %s_feature_incompat.i.i440 = getelementptr inbounds %struct.ext4_super_block, ptr %391, i32 0, i32 29
  %392 = ptrtoint ptr %s_feature_incompat.i.i440 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %s_feature_incompat.i.i440, align 8
  %and.i.i441 = and i32 %393, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i441)
  %cmp.i.not.i442 = icmp eq i32 %and.i.i441, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %387)
  %cmp.i443 = icmp ugt i8 %387, 7
  %or.cond.i444 = or i1 %cmp.i443, %cmp.i.not.i442
  br i1 %or.cond.i444, label %if.end204.cleanup216_crit_edge, label %if.end.i446

if.end204.cleanup216_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup216

if.end.i446:                                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %conv210 = zext i8 %387 to i32
  %arrayidx.i445 = getelementptr [8 x i8], ptr @ext4_filetype_table, i32 0, i32 %conv210
  %394 = ptrtoint ptr %arrayidx.i445 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx.i445, align 1
  br label %cleanup216

cleanup216:                                       ; preds = %if.end.i446, %if.end204.cleanup216_crit_edge
  %retval.0.i447 = phi i8 [ %395, %if.end.i446 ], [ 0, %if.end204.cleanup216_crit_edge ]
  %conv212 = zext i8 %retval.0.i447 to i32
  %396 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ctx, align 8
  %398 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %pos, align 8
  %call.i450 = call i32 %397(ptr noundef %ctx, ptr noundef %380, i32 noundef %382, i64 noundef %399, i64 noundef %conv208, i32 noundef %conv212) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i450)
  %cmp.i451 = icmp eq i32 %call.i450, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %de_name) #7
  br i1 %cmp.i451, label %cleanup216.if.end221_crit_edge, label %cleanup236

cleanup216.if.end221_crit_edge:                   ; preds = %cleanup216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.end221:                                        ; preds = %cleanup216.if.end221_crit_edge, %get_dtype.exit.if.end221_crit_edge, %if.end161.if.end221_crit_edge
  %400 = ptrtoint ptr %rec_len162 to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %rec_len162, align 4
  %402 = call i16 @llvm.bswap.i16(i16 %401) #7
  %conv225 = zext i16 %402 to i64
  %403 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %403)
  %404 = load i64, ptr %pos, align 8
  %add227 = add i64 %404, %conv225
  store i64 %add227, ptr %pos, align 8
  %405 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %405)
  %406 = load i64, ptr %i_size, align 8
  %cmp138 = icmp slt i64 %add227, %406
  br i1 %cmp138, label %if.end221.land.rhs140_crit_edge, label %if.end221.while.end_crit_edge

if.end221.while.end_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end221.land.rhs140_crit_edge:                  ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs140

while.end:                                        ; preds = %if.end221.while.end_crit_edge, %if.then153, %land.rhs140.while.end_crit_edge, %if.end134.while.end_crit_edge
  %407 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %pos, align 8
  %409 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %408, i64 %410)
  %cmp230 = icmp slt i64 %408, %410
  br i1 %cmp230, label %land.lhs.true232, label %while.end.brelse.exit459_crit_edge

while.end.brelse.exit459_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit459

land.lhs.true232:                                 ; preds = %while.end
  call void @up_read(ptr noundef %i_rwsem.i.i) #7
  call void @down_read(ptr noundef %i_rwsem.i.i) #7
  %411 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %i_flags.i, align 4
  %and.i454 = and i32 %412, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i454)
  %tobool.not.i455 = icmp eq i32 %and.i454, 0
  br i1 %tobool.not.i455, label %land.lhs.true232.brelse.exit459_crit_edge, label %land.lhs.true232.cleanup236.thread_crit_edge

land.lhs.true232.cleanup236.thread_crit_edge:     ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup236.thread

land.lhs.true232.brelse.exit459_crit_edge:        ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit459

brelse.exit459:                                   ; preds = %land.lhs.true232.brelse.exit459_crit_edge, %while.end.brelse.exit459_crit_edge
  call void @__brelse(ptr noundef nonnull %bh.2) #7
  br label %while.cond.backedge

cleanup236.thread:                                ; preds = %land.lhs.true232.cleanup236.thread_crit_edge, %get_dtype.exit.cleanup236.thread_crit_edge, %if.then82.cleanup236.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #7
  br label %errout

cleanup236.thread484:                             ; preds = %cleanup216.thread, %cleanup77.thread, %fatal_signal_pending.exit.cleanup236.thread484_crit_edge
  %err.4.ph = phi i32 [ %call200, %cleanup216.thread ], [ %288, %cleanup77.thread ], [ -512, %fatal_signal_pending.exit.cleanup236.thread484_crit_edge ]
  %bh.3.ph483 = phi ptr [ %bh.2, %cleanup216.thread ], [ null, %cleanup77.thread ], [ null, %fatal_signal_pending.exit.cleanup236.thread484_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #7
  br label %errout

cleanup236:                                       ; preds = %cleanup216
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #7
  br label %errout

while.cond.backedge:                              ; preds = %brelse.exit459, %brelse.exit, %if.end88, %if.end50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #7
  %413 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %413)
  %414 = load i64, ptr %pos, align 8
  %415 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %415)
  %416 = load i64, ptr %i_size, align 8
  %cmp28 = icmp slt i64 %414, %416
  br i1 %cmp28, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.errout_crit_edge

while.cond.backedge.errout_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %errout

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

errout:                                           ; preds = %while.cond.backedge.errout_crit_edge, %cleanup236, %cleanup236.thread484, %cleanup236.thread
  %err.5 = phi i32 [ %err.4.ph, %cleanup236.thread484 ], [ 0, %cleanup236.thread ], [ 0, %cleanup236 ], [ 0, %while.cond.backedge.errout_crit_edge ]
  %bh.5 = phi ptr [ %bh.3.ph483, %cleanup236.thread484 ], [ %bh.2, %cleanup236.thread ], [ %bh.2, %cleanup236 ], [ null, %while.cond.backedge.errout_crit_edge ]
  call void @fscrypt_fname_free_buffer(ptr noundef nonnull %fstr) #7
  %tobool.not.i460 = icmp eq ptr %bh.5, null
  br i1 %tobool.not.i460, label %errout.cleanup240_crit_edge, label %if.then.i461

errout.cleanup240_crit_edge:                      ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.then.i461:                                     ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %bh.5) #7
  br label %cleanup240

cleanup240:                                       ; preds = %if.then.i461, %errout.cleanup240_crit_edge, %errout.thread, %if.then22.cleanup240_crit_edge, %if.then15.cleanup240_crit_edge, %ext4_dx_readdir.exit.cleanup240_crit_edge, %finished.i.cleanup240_crit_edge, %finished.thread.i, %if.end5.i.cleanup240_crit_edge, %if.then.i379.cleanup240_crit_edge, %fscrypt_prepare_readdir.exit.cleanup240_crit_edge
  %retval.2 = phi i32 [ %call16, %if.then15.cleanup240_crit_edge ], [ %call.i, %fscrypt_prepare_readdir.exit.cleanup240_crit_edge ], [ %ret.3279.i, %ext4_dx_readdir.exit.cleanup240_crit_edge ], [ %call23, %if.then22.cleanup240_crit_edge ], [ %err.5, %errout.cleanup240_crit_edge ], [ %err.5, %if.then.i461 ], [ -12, %if.then.i379.cleanup240_crit_edge ], [ 0, %finished.thread.i ], [ 0, %finished.i.cleanup240_crit_edge ], [ 0, %if.end5.i.cleanup240_crit_edge ], [ 0, %errout.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fstr) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_release_dir(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @rb_first_postorder(ptr noundef nonnull %1) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -8
  %tobool2.not2830.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not28.i.i = or i1 %tobool.not.i.i, %tobool2.not2830.i.i
  br i1 %tobool2.not28.i.i, label %if.then.ext4_htree_free_dir_info.exit_crit_edge, label %if.then.land.rhs.i.i_crit_edge

if.then.land.rhs.i.i_crit_edge:                   ; preds = %if.then
  br label %land.rhs.i.i

if.then.ext4_htree_free_dir_info.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_htree_free_dir_info.exit

while.cond.for.cond.loopexit_crit_edge.i.i:       ; preds = %while.body.i.i
  %add.ptr10.i.i = getelementptr i8, ptr %call4.i.i, i32 -8
  %tobool6.not.i.i = icmp eq ptr %call4.i.i, null
  %tobool2.not31.i.i = icmp eq ptr %add.ptr10.i.i, null
  %tobool2.not.i.i = or i1 %tobool6.not.i.i, %tobool2.not31.i.i
  br i1 %tobool2.not.i.i, label %while.cond.for.cond.loopexit_crit_edge.i.i.ext4_htree_free_dir_info.exit_crit_edge, label %while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge

while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

while.cond.for.cond.loopexit_crit_edge.i.i.ext4_htree_free_dir_info.exit_crit_edge: ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_htree_free_dir_info.exit

land.rhs.i.i:                                     ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge, %if.then.land.rhs.i.i_crit_edge
  %fname.029.i.i = phi ptr [ %add.ptr10.i.i, %while.cond.for.cond.loopexit_crit_edge.i.i.land.rhs.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.land.rhs.i.i_crit_edge ]
  %rb_hash.i.i = getelementptr inbounds %struct.fname, ptr %fname.029.i.i, i32 0, i32 2
  %call4.i.i = tail call ptr @rb_next_postorder(ptr noundef %rb_hash.i.i) #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %land.rhs.i.i
  %fname.127.i.i = phi ptr [ %fname.029.i.i, %land.rhs.i.i ], [ %3, %while.body.i.i.while.body.i.i_crit_edge ]
  %next17.i.i = getelementptr inbounds %struct.fname, ptr %fname.127.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %next17.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next17.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %fname.127.i.i) #7
  %tobool16.not.i.i = icmp eq ptr %3, null
  br i1 %tobool16.not.i.i, label %while.cond.for.cond.loopexit_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

ext4_htree_free_dir_info.exit:                    ; preds = %while.cond.for.cond.loopexit_crit_edge.i.i.ext4_htree_free_dir_info.exit_crit_edge, %if.then.ext4_htree_free_dir_info.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %ext4_htree_free_dir_info.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_inline_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_fname_alloc_buffer(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_bread(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_dirblock_csum_verify(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_fname_disk_to_usr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_fname_free_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_htree_fill_tree(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !29, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/dir.c", i32 92, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/dir.c", i32 94, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/dir.c", i32 97, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext4/dir.c", i32 99, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext4/dir.c", i32 103, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext4/dir.c", i32 106, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/dir.c", i32 111, i32 3}
!14 = !{ptr @__func__.ext4_check_all_de, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/dir.c", i32 654, i32 7}
!16 = !{ptr @ext4_dir_operations, !17, !"ext4_dir_operations", i1 false, i1 false}
!17 = !{!"../fs/ext4/dir.c", i32 667, i32 30}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/dir.c", i32 177, i32 3}
!23 = !{ptr @__func__.ext4_readdir, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ext4/dir.c", i32 218, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ext4/dir.c", i32 529, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.call_filldir, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ext4_filetype_table, !31, !"ext4_filetype_table", i1 false, i1 false}
!31 = !{!"../fs/ext4/ext4.h", i32 2862, i32 28}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2153829864}
!45 = !{!"auto-init"}
