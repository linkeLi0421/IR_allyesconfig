; ModuleID = '/llk/IR_all_yes/fs/ubifs/io.c_pt.bc'
source_filename = "../fs/ubifs/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_stats_info = type { i32, i32, i32 }
%struct.ubifs_pad_node = type <{ %struct.ubifs_ch, i32 }>
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.76 = type { ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"switched to read-only mode, error %d\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"reading %d bytes from LEB %d:%d failed, error %d\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ubifs/io.c\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"writing %d bytes to LEB %d:%d failed, error %d\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"changing %d bytes in LEB %d failed, error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unmap LEB %d failed, error %d\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mapping LEB %d failed, error %d\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ubi_is_mapped failed for LEB %d, error %d\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lnum >= 0 && lnum < c->leb_cnt && offs >= 0\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!(offs & 7) && offs < c->leb_size\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad magic %#08x, expected %#08x\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad node type %d\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad CRC: calculated %#08x, read %#08x\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad node length %d\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad node at LEB %d:%d\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pad >= 0\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"len >= UBIFS_CH_SZ\00", [45 x i8] zeroinitializer }, align 32
@ubifs_wbuf_sync_nolock.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_wbuf_sync_nolock\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, %d bytes, jhead %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!(wbuf->avail & 7)\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wbuf->offs + wbuf->size <= c->leb_size\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wbuf->size >= c->min_io_size\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wbuf->size <= c->max_write_size\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wbuf->size % c->min_io_size == 0\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"!((wbuf->offs + wbuf->size) % c->max_write_size)\00", [47 x i8] zeroinitializer }, align 32
@ubifs_wbuf_seek_nolock.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_wbuf_seek_nolock\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, jhead %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lnum >= 0 && lnum < c->leb_cnt\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"offs >= 0 && offs <= c->leb_size\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"offs % c->min_io_size == 0 && !(offs & 7)\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lnum != wbuf->lnum\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wbuf->used == 0\00", [16 x i8] zeroinitializer }, align 32
@ubifs_bg_wbufs_sync.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_bg_wbufs_sync\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG io (pid %d): synchronize\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot sync write-buffer, error %d\00", [61 x i8] zeroinitializer }, align 32
@ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ubifs_wbuf_write_nolock\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBIFS DBG io (pid %d): %d bytes (%s) to jhead %s wbuf at LEB %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"len > 0 && wbuf->lnum >= 0 && wbuf->lnum < c->leb_cnt\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"wbuf->offs >= 0 && wbuf->offs % c->min_io_size == 0\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"!(wbuf->offs & 7) && wbuf->offs <= c->leb_size\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"wbuf->avail > 0 && wbuf->avail <= wbuf->size\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mutex_is_locked(&wbuf->io_mutex)\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"!c->space_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aligned_len - len < 8\00", [42 x i8] zeroinitializer }, align 32
@ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.37, ptr @.str.3, ptr @.str.46, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG io (pid %d): flush jhead %s wbuf to LEB %d:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.37, ptr @.str.3, ptr @.str.46, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.37, ptr @.str.3, ptr @.str.47, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG io (pid %d): write %d bytes to LEB %d:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.37, ptr @.str.3, ptr @.str.47, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot write %d bytes to LEB %d:%d, error %d\00", [51 x i8] zeroinitializer }, align 32
@ubifs_write_node_hmac.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_write_node_hmac\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, %s, length %d (aligned %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"offs % c->min_io_size == 0 && offs < c->leb_size\00", [47 x i8] zeroinitializer }, align 32
@ubifs_read_node_wbuf.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_read_node_wbuf\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, %s, length %d, jhead %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"type >= 0 && type < UBIFS_NODE_TYPES_CNT\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad node type (%d but expected %d)\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"expected node type %d\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad node length %d, expected %d\00", [32 x i8] zeroinitializer }, align 32
@ubifs_read_node.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 1, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_read_node\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, %s, length %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"len >= UBIFS_CH_SZ && offs + len <= c->leb_size\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad node at LEB %d:%d, LEB mapping status %d\00", [51 x i8] zeroinitializer }, align 32
@ubifs_wbuf_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&wbuf->io_mutex\00", [16 x i8] zeroinitializer }, align 32
@ubifs_wbuf_init.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wbuf->lock\00", [20 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sequence number overflow %llu, end of life\00", [53 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"running out of sequence numbers, end of life soon\00", [46 x i8] zeroinitializer }, align 32
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"!hrtimer_active(&wbuf->timer)\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta <= ULONG_MAX\00", [45 x i8] zeroinitializer }, align 32
@new_wbuf_timer_nolock.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"new_wbuf_timer_nolock\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBIFS DBG io (pid %d): set timer for jhead %s, %llu-%llu millisecs\0A\00", [60 x i8] zeroinitializer }, align 32
@wbuf_timer_callback_nolock.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wbuf_timer_callback_nolock\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UBIFS DBG io (pid %d): jhead %s\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 76, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 98, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 110, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 118, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 138, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 158, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 177, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 190, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 251, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 252, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 257, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 267, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 291, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 302, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 305, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 332, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 383, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 568, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 570, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 571, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 572, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 573, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 574, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 577, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 637, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 638, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 639, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 640, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 641, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 642, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 682, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 704, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 745, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 748, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 749, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 750, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 751, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 755, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 757, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 778, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 783, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 836, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 908, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 936, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 940, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1000, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1002, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1004, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1031, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1038, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1044, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1076, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1078, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1107, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1151, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1152, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 368, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 372, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 520, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 521, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 525, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [17 x i8] c"../fs/ubifs/io.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 500, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @ubifs_wbuf_init.__key, ptr @.str.63, ptr @ubifs_wbuf_init.__key.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_wbuf_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_wbuf_init.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_ro_mode(ptr noundef %c, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_error = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_error to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_error, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set = or i8 %bf.load, 32
  %2 = ptrtoint ptr %ro_error to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set, ptr %ro_error, align 8
  %no_chk_data_crc = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %3 = ptrtoint ptr %no_chk_data_crc to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load4 = load i16, ptr %no_chk_data_crc, align 8
  %bf.clear5 = and i16 %bf.load4, -2049
  store i16 %bf.clear5, ptr %no_chk_data_crc, align 8
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %s_flags, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %err) #8
  tail call void @dump_stack() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len, i32 noundef %even_ebadmsg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %0 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubi, align 4
  %call.i = tail call i32 @ubi_leb_read(ptr noundef %1, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len, i32 noundef 0) #8
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %entry.if.then_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 -74, label %lor.lhs.false
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %even_ebadmsg)
  %tobool1.not = icmp eq i32 %even_ebadmsg, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.1, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %call.i) #8
  tail call void @dump_stack() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !162

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 110) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %1 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load9 = load i8, ptr %ro_media, align 8
  %2 = and i8 %bf.load9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool13.not = icmp eq i8 %2, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %dbg_is_tst_rcvry.exit, label %if.end15.if.else_crit_edge

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

dbg_is_tst_rcvry.exit:                            ; preds = %if.end15
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %4 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg.i, align 4
  %tst_rcvry.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %tst_rcvry.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i = load i8, ptr %tst_rcvry.i, align 4
  %7 = and i8 %bf.load1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then17, label %dbg_is_tst_rcvry.exit.if.else_crit_edge

dbg_is_tst_rcvry.exit.if.else_crit_edge:          ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then17:                                        ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %8 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ubi, align 4
  %call18 = tail call i32 @ubi_leb_write(ptr noundef %9, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len) #8
  br label %if.end20

if.else:                                          ; preds = %dbg_is_tst_rcvry.exit.if.else_crit_edge, %if.end15.if.else_crit_edge
  %call19 = tail call i32 @dbg_leb_write(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %err.0 = phi i32 [ %call19, %if.else ], [ %call18, %if.then17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.4, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %err.0) #8
  %10 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i42 = load i8, ptr %ro_media, align 8
  %11 = and i8 %bf.load.i42, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i43 = icmp eq i8 %11, 0
  br i1 %tobool.not.i43, label %if.then.i, label %if.then22.ubifs_ro_mode.exit_crit_edge

if.then22.ubifs_ro_mode.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_ro_mode.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i42, 32
  %12 = ptrtoint ptr %ro_media to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set.i, ptr %ro_media, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %13 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load4.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.clear5.i = and i16 %bf.load4.i, -2049
  store i16 %bf.clear5.i, ptr %no_chk_data_crc.i, align 8
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %17, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %err.0) #8
  tail call void @dump_stack() #11
  br label %ubifs_ro_mode.exit

ubifs_ro_mode.exit:                               ; preds = %if.then.i, %if.then22.ubifs_ro_mode.exit_crit_edge
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %ubifs_ro_mode.exit, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %do.end.cleanup_crit_edge ], [ %err.0, %ubifs_ro_mode.exit ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !162

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 130) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %1 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load9 = load i8, ptr %ro_media, align 8
  %2 = and i8 %bf.load9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool13.not = icmp eq i8 %2, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %dbg_is_tst_rcvry.exit, label %if.end15.if.else_crit_edge

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

dbg_is_tst_rcvry.exit:                            ; preds = %if.end15
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %4 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg.i, align 4
  %tst_rcvry.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %tst_rcvry.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i = load i8, ptr %tst_rcvry.i, align 4
  %7 = and i8 %bf.load1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then17, label %dbg_is_tst_rcvry.exit.if.else_crit_edge

dbg_is_tst_rcvry.exit.if.else_crit_edge:          ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then17:                                        ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %8 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ubi, align 4
  %call18 = tail call i32 @ubi_leb_change(ptr noundef %9, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len) #8
  br label %if.end20

if.else:                                          ; preds = %dbg_is_tst_rcvry.exit.if.else_crit_edge, %if.end15.if.else_crit_edge
  %call19 = tail call i32 @dbg_leb_change(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %err.0 = phi i32 [ %call19, %if.else ], [ %call18, %if.then17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.5, i32 noundef %len, i32 noundef %lnum, i32 noundef %err.0) #8
  %10 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i40 = load i8, ptr %ro_media, align 8
  %11 = and i8 %bf.load.i40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i41 = icmp eq i8 %11, 0
  br i1 %tobool.not.i41, label %if.then.i, label %if.then22.ubifs_ro_mode.exit_crit_edge

if.then22.ubifs_ro_mode.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_ro_mode.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i40, 32
  %12 = ptrtoint ptr %ro_media to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set.i, ptr %ro_media, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %13 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load4.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.clear5.i = and i16 %bf.load4.i, -2049
  store i16 %bf.clear5.i, ptr %no_chk_data_crc.i, align 8
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %17, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %err.0) #8
  tail call void @dump_stack() #11
  br label %ubifs_ro_mode.exit

ubifs_ro_mode.exit:                               ; preds = %if.then.i, %if.then22.ubifs_ro_mode.exit_crit_edge
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %ubifs_ro_mode.exit, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %do.end.cleanup_crit_edge ], [ %err.0, %ubifs_ro_mode.exit ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !162

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 150) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %1 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load9 = load i8, ptr %ro_media, align 8
  %2 = and i8 %bf.load9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool13.not = icmp eq i8 %2, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %dbg_is_tst_rcvry.exit, label %if.end15.if.else_crit_edge

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

dbg_is_tst_rcvry.exit:                            ; preds = %if.end15
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %4 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg.i, align 4
  %tst_rcvry.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %tst_rcvry.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i = load i8, ptr %tst_rcvry.i, align 4
  %7 = and i8 %bf.load1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then17, label %dbg_is_tst_rcvry.exit.if.else_crit_edge

dbg_is_tst_rcvry.exit.if.else_crit_edge:          ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then17:                                        ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %8 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ubi, align 4
  %call18 = tail call i32 @ubi_leb_unmap(ptr noundef %9, i32 noundef %lnum) #8
  br label %if.end20

if.else:                                          ; preds = %dbg_is_tst_rcvry.exit.if.else_crit_edge, %if.end15.if.else_crit_edge
  %call19 = tail call i32 @dbg_leb_unmap(ptr noundef %c, i32 noundef %lnum) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %err.0 = phi i32 [ %call19, %if.else ], [ %call18, %if.then17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.6, i32 noundef %lnum, i32 noundef %err.0) #8
  %10 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i37 = load i8, ptr %ro_media, align 8
  %11 = and i8 %bf.load.i37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i38 = icmp eq i8 %11, 0
  br i1 %tobool.not.i38, label %if.then.i, label %if.then22.ubifs_ro_mode.exit_crit_edge

if.then22.ubifs_ro_mode.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_ro_mode.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i37, 32
  %12 = ptrtoint ptr %ro_media to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set.i, ptr %ro_media, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %13 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load4.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.clear5.i = and i16 %bf.load4.i, -2049
  store i16 %bf.clear5.i, ptr %no_chk_data_crc.i, align 8
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %17, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %err.0) #8
  tail call void @dump_stack() #11
  br label %ubifs_ro_mode.exit

ubifs_ro_mode.exit:                               ; preds = %if.then.i, %if.then22.ubifs_ro_mode.exit_crit_edge
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %ubifs_ro_mode.exit, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %do.end.cleanup_crit_edge ], [ %err.0, %ubifs_ro_mode.exit ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_leb_map(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !162

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 169) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %1 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load9 = load i8, ptr %ro_media, align 8
  %2 = and i8 %bf.load9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool13.not = icmp eq i8 %2, 0
  br i1 %tobool13.not, label %if.end15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  %3 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %dbg_is_tst_rcvry.exit, label %if.end15.if.else_crit_edge

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

dbg_is_tst_rcvry.exit:                            ; preds = %if.end15
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %4 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg.i, align 4
  %tst_rcvry.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %tst_rcvry.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1.i = load i8, ptr %tst_rcvry.i, align 4
  %7 = and i8 %bf.load1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.then17, label %dbg_is_tst_rcvry.exit.if.else_crit_edge

dbg_is_tst_rcvry.exit.if.else_crit_edge:          ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then17:                                        ; preds = %dbg_is_tst_rcvry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %8 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ubi, align 4
  %call18 = tail call i32 @ubi_leb_map(ptr noundef %9, i32 noundef %lnum) #8
  br label %if.end20

if.else:                                          ; preds = %dbg_is_tst_rcvry.exit.if.else_crit_edge, %if.end15.if.else_crit_edge
  %call19 = tail call i32 @dbg_leb_map(ptr noundef %c, i32 noundef %lnum) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %err.0 = phi i32 [ %call19, %if.else ], [ %call18, %if.then17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.7, i32 noundef %lnum, i32 noundef %err.0) #8
  %10 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i37 = load i8, ptr %ro_media, align 8
  %11 = and i8 %bf.load.i37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i38 = icmp eq i8 %11, 0
  br i1 %tobool.not.i38, label %if.then.i, label %if.then22.ubifs_ro_mode.exit_crit_edge

if.then22.ubifs_ro_mode.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_ro_mode.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i37, 32
  %12 = ptrtoint ptr %ro_media to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set.i, ptr %ro_media, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %13 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load4.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.clear5.i = and i16 %bf.load4.i, -2049
  store i16 %bf.clear5.i, ptr %no_chk_data_crc.i, align 8
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %17, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %err.0) #8
  tail call void @dump_stack() #11
  br label %ubifs_ro_mode.exit

ubifs_ro_mode.exit:                               ; preds = %if.then.i, %if.then22.ubifs_ro_mode.exit_crit_edge
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %ubifs_ro_mode.exit, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %do.end.cleanup_crit_edge ], [ %err.0, %ubifs_ro_mode.exit ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_is_mapped(ptr noundef %c, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %0 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubi, align 4
  %call = tail call i32 @ubi_is_mapped(ptr noundef %1, i32 noundef %lnum) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.8, i32 noundef %lnum, i32 noundef %call) #8
  tail call void @dump_stack() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_is_mapped(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_check_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %quiet, i32 noundef %must_chk_crc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp = icmp sgt i32 %lnum, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge, !prof !162

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %0 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnum)
  %cmp1 = icmp sgt i32 %1, %lnum
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offs)
  %cmp2 = icmp sgt i32 %offs, -1
  %spec.select = and i1 %cmp2, %cmp1
  br i1 %spec.select, label %land.lhs.true.do.body5_crit_edge, label %land.lhs.true.if.then_crit_edge, !prof !162

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 251) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %land.lhs.true.do.body5_crit_edge
  %and = and i32 %offs, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.rhs7, label %do.body5.if.then18_crit_edge, !prof !162

do.body5.if.then18_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

land.rhs7:                                        ; preds = %do.body5
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offs)
  %cmp8 = icmp sgt i32 %3, %offs
  br i1 %cmp8, label %land.rhs7.do.end21_crit_edge, label %land.rhs7.if.then18_crit_edge, !prof !162

land.rhs7.if.then18_crit_edge:                    ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

land.rhs7.do.end21_crit_edge:                     ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

if.then18:                                        ; preds = %land.rhs7.if.then18_crit_edge, %do.body5.if.then18_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 252) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.rhs7.do.end21_crit_edge
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %buf, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 823660550, i32 %5)
  %cmp23.not = icmp eq i32 %5, 823660550
  br i1 %cmp23.not, label %if.end28, label %if.then24

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool25.not = icmp eq i32 %quiet, 0
  br i1 %tobool25.not, label %if.then26, label %if.then24.if.end27_crit_edge

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.11, i32 noundef %6, i32 noundef 101718065) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then24.if.end27_crit_edge
  %stats = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 195
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end27.out_crit_edge, label %if.end27.out.sink.split_crit_edge

if.end27.out.sink.split_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end28:                                         ; preds = %do.end21
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %node_type, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %10)
  %cmp31 = icmp ugt i8 %10, 13
  br i1 %cmp31, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool34.not = icmp eq i32 %quiet, 0
  br i1 %tobool34.not, label %if.then35, label %if.then33.if.end36_crit_edge

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.12, i32 noundef %conv) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then33.if.end36_crit_edge
  %stats37 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 195
  %11 = ptrtoint ptr %stats37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats37, align 8
  %tobool.not.i163 = icmp eq ptr %12, null
  br i1 %tobool.not.i163, label %if.end36.out_crit_edge, label %if.then.i165

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i165:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %node_errors.i = getelementptr inbounds %struct.ubifs_stats_info, ptr %12, i32 0, i32 1
  br label %out.sink.split

if.end38:                                         ; preds = %if.end28
  %len39 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %13 = ptrtoint ptr %len39 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %len39, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add = add i32 %15, %offs
  %leb_size40 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %16 = ptrtoint ptr %leb_size40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %leb_size40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp41 = icmp sgt i32 %add, %17
  br i1 %cmp41, label %if.end38.out_len_crit_edge, label %if.end44

if.end38.out_len_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_len

if.end44:                                         ; preds = %if.end38
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 %conv
  %max_len = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 %conv, i32 1
  %18 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp45 = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp50.not = icmp eq i32 %15, %21
  br i1 %cmp50.not, label %if.then47.if.end66_crit_edge, label %if.then47.out_len_crit_edge

if.then47.out_len_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_len

if.then47.if.end66_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp56 = icmp slt i32 %15, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp62 = icmp sgt i32 %15, %19
  %or.cond = select i1 %cmp56, i1 true, i1 %cmp62
  br i1 %or.cond, label %if.else.out_len_crit_edge, label %if.else.if.end66_crit_edge

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else.out_len_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_len

if.end66:                                         ; preds = %if.else.if.end66_crit_edge, %if.then47.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %must_chk_crc)
  %tobool67.not = icmp eq i32 %must_chk_crc, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp69 = icmp eq i8 %10, 1
  %or.cond161 = select i1 %tobool67.not, i1 %cmp69, i1 false
  br i1 %or.cond161, label %land.lhs.true71, label %if.end66.if.end86_crit_edge

if.end66.if.end86_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true71:                                  ; preds = %if.end66
  %mounting = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %22 = ptrtoint ptr %mounting to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %mounting, align 4
  %23 = and i8 %bf.load, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %land.lhs.true79, label %land.lhs.true71.if.end86_crit_edge

land.lhs.true71.if.end86_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true79:                                  ; preds = %land.lhs.true71
  %no_chk_data_crc = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %25 = ptrtoint ptr %no_chk_data_crc to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load80 = load i16, ptr %no_chk_data_crc, align 8
  %26 = and i16 %bf.load80, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool84.not = icmp eq i16 %26, 0
  br i1 %tobool84.not, label %land.lhs.true79.if.end86_crit_edge, label %land.lhs.true79.cleanup_crit_edge

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true79.if.end86_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end86:                                         ; preds = %land.lhs.true79.if.end86_crit_edge, %land.lhs.true71.if.end86_crit_edge, %if.end66.if.end86_crit_edge
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %sub = add i32 %15, -8
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr, i32 noundef %sub) #12
  %crc87 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 1
  %27 = ptrtoint ptr %crc87 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %crc87, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %29)
  %cmp88.not = icmp eq i32 %call, %29
  br i1 %cmp88.not, label %if.end86.cleanup_crit_edge, label %if.then90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool91.not = icmp eq i32 %quiet, 0
  br i1 %tobool91.not, label %if.then92, label %if.then90.if.end93_crit_edge

if.then90.if.end93_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then92:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.13, i32 noundef %call, i32 noundef %29) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.then90.if.end93_crit_edge
  %stats94 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 195
  %30 = ptrtoint ptr %stats94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stats94, align 8
  %tobool.not.i166 = icmp eq ptr %31, null
  br i1 %tobool.not.i166, label %if.end93.out_crit_edge, label %if.then.i168

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i168:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %crc_errors.i = getelementptr inbounds %struct.ubifs_stats_info, ptr %31, i32 0, i32 2
  br label %out.sink.split

out_len:                                          ; preds = %if.else.out_len_crit_edge, %if.then47.out_len_crit_edge, %if.end38.out_len_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool96.not = icmp eq i32 %quiet, 0
  br i1 %tobool96.not, label %out.thread, label %out_len.cleanup_crit_edge

out_len.cleanup_crit_edge:                        ; preds = %out_len
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out.thread:                                       ; preds = %out_len
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14, i32 noundef %15) #8
  br label %if.then100

out.sink.split:                                   ; preds = %if.then.i168, %if.then.i165, %if.end27.out.sink.split_crit_edge
  %crc_errors.i.sink175 = phi ptr [ %crc_errors.i, %if.then.i168 ], [ %node_errors.i, %if.then.i165 ], [ %8, %if.end27.out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -117, %if.then.i168 ], [ -22, %if.then.i165 ], [ -117, %if.end27.out.sink.split_crit_edge ]
  %32 = ptrtoint ptr %crc_errors.i.sink175 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crc_errors.i.sink175, align 4
  %inc.i167 = add i32 %33, 1
  store i32 %inc.i167, ptr %crc_errors.i.sink175, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end93.out_crit_edge, %if.end36.out_crit_edge, %if.end27.out_crit_edge
  %err.0 = phi i32 [ -117, %if.end27.out_crit_edge ], [ -22, %if.end36.out_crit_edge ], [ -117, %if.end93.out_crit_edge ], [ %err.0.ph, %out.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool99.not = icmp eq i32 %quiet, 0
  br i1 %tobool99.not, label %out.if.then100_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out.if.then100_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100

if.then100:                                       ; preds = %out.if.then100_crit_edge, %out.thread
  %err.0171 = phi i32 [ -22, %out.thread ], [ %err.0, %out.if.then100_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15, i32 noundef %lnum, i32 noundef %offs) #8
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len) #8
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %out.cleanup_crit_edge, %out_len.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %land.lhs.true79.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true79.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ], [ %err.0171, %if.then100 ], [ %err.0, %out.cleanup_crit_edge ], [ -22, %out_len.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_pad(ptr noundef %c, ptr noundef %buf, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %cmp = icmp slt i32 %pad, 0
  br i1 %cmp, label %do.end.thread, label %do.end, !prof !163

do.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #8
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %pad)
  %cmp3 = icmp ugt i32 %pad, 27
  br i1 %cmp3, label %do.end.if.then4_crit_edge, label %if.else

do.end.if.then4_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %do.end.if.then4_crit_edge, %do.end.thread
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 823660550, ptr %buf, align 1
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %1 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %node_type, align 1
  %group_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %group_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %group_type, align 1
  %padding = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 6
  %arrayidx = getelementptr %struct.ubifs_ch, ptr %buf, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %padding to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %padding, align 1
  %sqnum = getelementptr %struct.ubifs_ch, ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %sqnum to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %sqnum, align 1
  %len = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 469762048, ptr %len, align 1
  %sub = add i32 %pad, -28
  %7 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %pad_len = getelementptr inbounds %struct.ubifs_pad_node, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %pad_len to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %pad_len, align 1
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %sqnum, i32 noundef 20) #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %call)
  %crc7 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %crc7 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %crc7, align 1
  %add.ptr8 = getelementptr i8, ptr %buf, i32 28
  %11 = call ptr @memset(ptr %add.ptr8, i32 0, i32 %sub)
  br label %if.end12

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %cmp9.not = icmp eq i32 %pad, 0
  br i1 %cmp9.not, label %if.else.if.end12_crit_edge, label %if.then10

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call ptr @memset(ptr %buf, i32 206, i32 %pad)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else.if.end12_crit_edge, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_init_node(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %cnt_lock.i) #8
  %max_sqnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %max_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %max_sqnum.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %max_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cnt_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %inc.i)
  %cmp.i = icmp ugt i64 %inc.i, -4294967297
  br i1 %cmp.i, label %if.then.i, label %entry.next_sqnum.exit_crit_edge, !prof !163

entry.next_sqnum.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_sqnum.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16777217, i64 %inc.i)
  %cmp3.i = icmp ugt i64 %inc.i, -16777217
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.66, i64 noundef %inc.i) #8
  tail call void @ubifs_ro_mode(ptr noundef %c, i32 noundef -22) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.67) #8
  br label %next_sqnum.exit

next_sqnum.exit:                                  ; preds = %if.end.i, %entry.next_sqnum.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp = icmp ult i32 %len, 24
  br i1 %cmp, label %if.then, label %next_sqnum.exit.do.end_crit_edge, !prof !163

next_sqnum.exit.do.end_crit_edge:                 ; preds = %next_sqnum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %next_sqnum.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 383) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %next_sqnum.exit.do.end_crit_edge
  %2 = ptrtoint ptr %node to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 823660550, ptr %node, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %len)
  %len3 = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 3
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %len3, align 1
  %group_type = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 5
  %5 = ptrtoint ptr %group_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %group_type, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %inc.i)
  %sqnum4 = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 2
  %7 = ptrtoint ptr %sqnum4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %sqnum4, align 1
  %padding = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 6
  %arrayidx = getelementptr %struct.ubifs_ch, ptr %node, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %padding to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %padding, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad)
  %tobool7.not = icmp eq i32 %pad, 0
  br i1 %tobool7.not, label %do.end.if.end14_crit_edge, label %if.then8

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %do.end
  %add = add i32 %len, 7
  %and = and i32 %add, -8
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %10 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_io_size, align 8
  %sub = add i32 %and, -1
  %add9 = add i32 %sub, %11
  %neg = sub i32 0, %11
  %and12 = and i32 %add9, %neg
  %sub13 = sub i32 %and12, %and
  %add.ptr = getelementptr i8, ptr %node, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13)
  %cmp.i31 = icmp slt i32 %sub13, 0
  br i1 %cmp.i31, label %do.end.thread.i, label %do.end.i, !prof !163

do.end.thread.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #8
  br label %if.then4.i33

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub13)
  %cmp3.i32 = icmp ugt i32 %sub13, 27
  br i1 %cmp3.i32, label %do.end.i.if.then4.i33_crit_edge, label %if.else.i

do.end.i.if.then4.i33_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i33

if.then4.i33:                                     ; preds = %do.end.i.if.then4.i33_crit_edge, %do.end.thread.i
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 823660550, ptr %add.ptr, align 1
  %node_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 4
  %13 = ptrtoint ptr %node_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %node_type.i, align 1
  %group_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 5
  %14 = ptrtoint ptr %group_type.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %group_type.i, align 1
  %padding.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %padding.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %padding.i, align 1
  %sqnum.i = getelementptr %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 2
  %17 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %sqnum.i, align 1
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 3
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 469762048, ptr %len.i, align 1
  %sub.i = add i32 %sub13, -28
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %pad_len.i = getelementptr inbounds %struct.ubifs_pad_node, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %pad_len.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %pad_len.i, align 1
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %sqnum.i, i32 noundef 20) #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %call.i) #8
  %crc7.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 1
  %22 = ptrtoint ptr %crc7.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %crc7.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 28
  %23 = call ptr @memset(ptr %add.ptr8.i, i32 0, i32 %sub.i)
  br label %if.end14

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %and)
  %cmp9.not.i = icmp eq i32 %and12, %and
  br i1 %cmp9.not.i, label %if.else.i.if.end14_crit_edge, label %if.then10.i

if.else.i.if.end14_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = call ptr @memset(ptr %add.ptr, i32 206, i32 %sub13)
  br label %if.end14

if.end14:                                         ; preds = %if.then10.i, %if.else.i.if.end14_crit_edge, %if.then4.i33, %do.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ubifs_crc_node(ptr nocapture readnone %c, ptr noundef %node, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %node, i32 8
  %sub = add i32 %len, -8
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr, i32 noundef %sub) #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %call)
  %crc1 = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 1
  %1 = ptrtoint ptr %crc1 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %0, ptr %crc1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_prepare_node_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %hmac_offs, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ubifs_init_node(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %pad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hmac_offs)
  %cmp = icmp sgt i32 %hmac_offs, 0
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %1 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.then.if.end2_crit_edge, label %ubifs_node_insert_hmac.exit

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

ubifs_node_insert_hmac.exit:                      ; preds = %if.then
  %call1.i = tail call i32 @__ubifs_node_insert_hmac(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %hmac_offs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %ubifs_node_insert_hmac.exit.if.end2_crit_edge, label %ubifs_node_insert_hmac.exit.cleanup_crit_edge

ubifs_node_insert_hmac.exit.cleanup_crit_edge:    ; preds = %ubifs_node_insert_hmac.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ubifs_node_insert_hmac.exit.if.end2_crit_edge:    ; preds = %ubifs_node_insert_hmac.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.end2:                                          ; preds = %ubifs_node_insert_hmac.exit.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %add.ptr.i = getelementptr i8, ptr %node, i32 8
  %sub.i = add i32 %len, -8
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr.i, i32 noundef %sub.i) #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %call.i) #8
  %crc1.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 1
  %3 = ptrtoint ptr %crc1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %crc1.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %ubifs_node_insert_hmac.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ %call1.i, %ubifs_node_insert_hmac.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_prepare_node(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ubifs_init_node(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %pad) #8
  %add.ptr.i.i = getelementptr i8, ptr %node, i32 8
  %sub.i.i = add i32 %len, -8
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  %crc1.i.i = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 1
  %1 = ptrtoint ptr %crc1.i.i to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %0, ptr %crc1.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_prep_grp_node(ptr noundef %c, ptr noundef %node, i32 noundef %len, i32 noundef %last) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %cnt_lock.i) #8
  %max_sqnum.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %max_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %max_sqnum.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %max_sqnum.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cnt_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967297, i64 %inc.i)
  %cmp.i = icmp ugt i64 %inc.i, -4294967297
  br i1 %cmp.i, label %if.then.i, label %entry.next_sqnum.exit_crit_edge, !prof !163

entry.next_sqnum.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_sqnum.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16777217, i64 %inc.i)
  %cmp3.i = icmp ugt i64 %inc.i, -16777217
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.66, i64 noundef %inc.i) #8
  tail call void @ubifs_ro_mode(ptr noundef %c, i32 noundef -22) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.67) #8
  br label %next_sqnum.exit

next_sqnum.exit:                                  ; preds = %if.end.i, %entry.next_sqnum.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp = icmp ult i32 %len, 24
  br i1 %cmp, label %if.then, label %next_sqnum.exit.do.end_crit_edge, !prof !163

next_sqnum.exit.do.end_crit_edge:                 ; preds = %next_sqnum.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %next_sqnum.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 476) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %next_sqnum.exit.do.end_crit_edge
  %2 = ptrtoint ptr %node to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 823660550, ptr %node, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %len)
  %len3 = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 3
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %len3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last)
  %tobool4.not = icmp eq i32 %last, 0
  %spec.select = select i1 %tobool4.not, i8 1, i8 2
  %5 = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %5, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %inc.i)
  %sqnum8 = getelementptr %struct.ubifs_ch, ptr %node, i32 0, i32 2
  %8 = ptrtoint ptr %sqnum8 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %sqnum8, align 1
  %padding = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 6
  %arrayidx = getelementptr %struct.ubifs_ch, ptr %node, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %padding to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %padding, align 1
  %sub = add i32 %len, -8
  %call11 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %sqnum8, i32 noundef %sub) #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %call11)
  %crc12 = getelementptr inbounds %struct.ubifs_ch, ptr %node, i32 0, i32 1
  %12 = ptrtoint ptr %crc12 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %crc12, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef %wbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 8
  %no_timer.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 12
  %2 = ptrtoint ptr %no_timer.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %no_timer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %entry.cancel_wbuf_timer_nolock.exit_crit_edge

entry.cancel_wbuf_timer_nolock.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cancel_wbuf_timer_nolock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i, -65
  %3 = ptrtoint ptr %no_timer.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear.i, ptr %no_timer.i, align 8
  %timer.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 11
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #8
  br label %cancel_wbuf_timer_nolock.exit

cancel_wbuf_timer_nolock.exit:                    ; preds = %if.end.i, %entry.cancel_wbuf_timer_nolock.exit_crit_edge
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cancel_wbuf_timer_nolock.exit.cleanup_crit_edge, label %lor.lhs.false

cancel_wbuf_timer_nolock.exit.cleanup_crit_edge:  ; preds = %cancel_wbuf_timer_nolock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %cancel_wbuf_timer_nolock.exit
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %6 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_sync_nolock.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_sync_nolock, %if.then5)) #8
          to label %do.body11 [label %if.then5], !srcloc !164

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %14 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum, align 8
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %16 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs, align 4
  %18 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used, align 4
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %20 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %jhead, align 4
  %call9 = tail call ptr @dbg_jhead(i32 noundef %21) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_sync_nolock.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.20, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %call9) #8
  br label %do.body11

do.body11:                                        ; preds = %if.then5, %do.body
  %avail = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 4
  %22 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %avail, align 8
  %and = and i32 %23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body11.do.body27_crit_edge, label %if.then23, !prof !162

do.body11.do.body27_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef 570) #8
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %do.body11.do.body27_crit_edge
  %offs28 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %24 = ptrtoint ptr %offs28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offs28, align 4
  %size = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 6
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 8
  %add = add i32 %27, %25
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %28 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp29.not = icmp sgt i32 %add, %29
  br i1 %cmp29.not, label %if.then38, label %do.body27.do.body42_crit_edge, !prof !163

do.body27.do.body42_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then38:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef 571) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body27.do.body42_crit_edge
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 71
  %32 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_io_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp44.not = icmp slt i32 %31, %33
  br i1 %cmp44.not, label %if.then53, label %do.body42.do.body57_crit_edge, !prof !163

do.body42.do.body57_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.then53:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef 572) #8
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %do.body42.do.body57_crit_edge
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 8
  %max_write_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 73
  %36 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_write_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp59.not = icmp sgt i32 %35, %37
  br i1 %cmp59.not, label %if.then68, label %do.body57.do.body72_crit_edge, !prof !163

do.body57.do.body72_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.then68:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef 573) #8
  br label %do.body72

do.body72:                                        ; preds = %if.then68, %do.body57.do.body72_crit_edge
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 8
  %40 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp75.not = icmp eq i32 %rem, 0
  br i1 %cmp75.not, label %do.body72.do.body88_crit_edge, label %if.then84, !prof !162

do.body72.do.body88_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body88

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 574) #8
  br label %do.body88

do.body88:                                        ; preds = %if.then84, %do.body72.do.body88_crit_edge
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 81
  %42 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %do.body88.do.end107_crit_edge, label %if.then104, !prof !162

do.body88.do.end107_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

if.then104:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 575) #8
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %do.body88.do.end107_crit_edge
  %43 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %leb_size, align 8
  %45 = ptrtoint ptr %offs28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offs28, align 4
  %sub = sub i32 %44, %46
  %47 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_write_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %48)
  %cmp111.not = icmp slt i32 %sub, %48
  br i1 %cmp111.not, label %do.end107.if.end134_crit_edge, label %do.body113

do.end107.if.end134_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

do.body113:                                       ; preds = %do.end107
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size, align 8
  %add116 = add i32 %50, %46
  %rem118 = srem i32 %add116, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem118)
  %tobool119.not = icmp eq i32 %rem118, 0
  br i1 %tobool119.not, label %do.body113.if.end134_crit_edge, label %if.then130, !prof !162

do.body113.if.end134_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then130:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef 577) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %do.body113.if.end134_crit_edge, %do.end107.if.end134_crit_edge
  %51 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load135 = load i8, ptr %ro_media, align 8
  %52 = and i8 %bf.load135, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool139.not = icmp eq i8 %52, 0
  br i1 %tobool139.not, label %if.end141, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end141:                                        ; preds = %if.end134
  %53 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used, align 4
  %55 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %min_io_size, align 8
  %sub144 = add i32 %54, -1
  %add145 = add i32 %sub144, %56
  %neg = sub i32 0, %56
  %and148 = and i32 %add145, %neg
  %sub150 = sub i32 %and148, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %and148, i32 %54)
  %tobool151.not = icmp eq i32 %and148, %54
  br i1 %tobool151.not, label %if.end141.if.end154_crit_edge, label %if.then152

if.end141.if.end154_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then152:                                       ; preds = %if.end141
  %buf = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub150)
  %cmp.i = icmp slt i32 %sub150, 0
  br i1 %cmp.i, label %do.end.thread.i, label %do.end.i, !prof !163

do.end.thread.i:                                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #8
  br label %if.then4.i

do.end.i:                                         ; preds = %if.then152
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub150)
  %cmp3.i = icmp ugt i32 %sub150, 27
  br i1 %cmp3.i, label %do.end.i.if.then4.i_crit_edge, label %if.then10.i

do.end.i.if.then4.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %do.end.i.if.then4.i_crit_edge, %do.end.thread.i
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 823660550, ptr %add.ptr, align 1
  %node_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 4
  %60 = ptrtoint ptr %node_type.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %node_type.i, align 1
  %group_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 5
  %61 = ptrtoint ptr %group_type.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %group_type.i, align 1
  %padding.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx.i, align 1
  %63 = ptrtoint ptr %padding.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %padding.i, align 1
  %sqnum.i = getelementptr %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 2
  %64 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 0, ptr %sqnum.i, align 1
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 3
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 469762048, ptr %len.i, align 1
  %sub.i = add i32 %sub150, -28
  %66 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %pad_len.i = getelementptr inbounds %struct.ubifs_pad_node, ptr %add.ptr, i32 0, i32 1
  %67 = ptrtoint ptr %pad_len.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %pad_len.i, align 1
  %call.i291 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %sqnum.i, i32 noundef 20) #12
  %68 = tail call i32 @llvm.bswap.i32(i32 %call.i291) #8
  %crc7.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 1
  %69 = ptrtoint ptr %crc7.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %crc7.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 28
  %70 = call ptr @memset(ptr %add.ptr8.i, i32 0, i32 %sub.i)
  br label %if.end154

if.then10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = call ptr @memset(ptr %add.ptr, i32 206, i32 %sub150)
  br label %if.end154

if.end154:                                        ; preds = %if.then10.i, %if.then4.i, %if.end141.if.end154_crit_edge
  %72 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lnum, align 8
  %buf156 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %74 = ptrtoint ptr %buf156 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf156, align 4
  %76 = ptrtoint ptr %offs28 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offs28, align 4
  %call158 = tail call i32 @ubifs_leb_write(ptr noundef %1, i32 noundef %73, ptr noundef %75, i32 noundef %77, i32 noundef %and148)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end154.cleanup_crit_edge

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end161:                                        ; preds = %if.end154
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %78 = ptrtoint ptr %offs28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offs28, align 4
  %add163 = add i32 %79, %and148
  store i32 %add163, ptr %offs28, align 4
  %80 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %leb_size, align 8
  %sub166 = sub i32 %81, %add163
  %82 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_write_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub166, i32 %83)
  %cmp168 = icmp slt i32 %sub166, %83
  br i1 %cmp168, label %if.end161.if.end195_crit_edge, label %if.else

if.end161.if.end195_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.else:                                          ; preds = %if.end161
  %sub176 = add i32 %83, -1
  %and177 = and i32 %sub176, %add163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.else.if.end195_crit_edge, label %if.then179

if.else.if.end195_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then179:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add183 = add i32 %sub176, %add163
  %neg186 = sub i32 0, %83
  %and187 = and i32 %add183, %neg186
  %sub189 = sub i32 %and187, %add163
  br label %if.end195

if.end195:                                        ; preds = %if.then179, %if.else.if.end195_crit_edge, %if.end161.if.end195_crit_edge
  %sub189.sink = phi i32 [ %sub189, %if.then179 ], [ %sub166, %if.end161.if.end195_crit_edge ], [ %83, %if.else.if.end195_crit_edge ]
  %84 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub189.sink, ptr %size, align 8
  %85 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub189.sink, ptr %avail, align 8
  %86 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %used, align 4
  %next_ino = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 13
  %87 = ptrtoint ptr %next_ino to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %next_ino, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %sync_callback = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 8
  %88 = ptrtoint ptr %sync_callback to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sync_callback, align 8
  %tobool200.not = icmp eq ptr %89, null
  br i1 %tobool200.not, label %if.end195.cleanup_crit_edge, label %if.then201

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then201:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lnum, align 8
  %92 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %leb_size, align 8
  %94 = ptrtoint ptr %offs28 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offs28, align 4
  %sub206 = sub i32 %93, %95
  %call207 = tail call i32 %89(ptr noundef %1, i32 noundef %91, i32 noundef %sub206, i32 noundef %sub150) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then201, %if.end195.cleanup_crit_edge, %if.end154.cleanup_crit_edge, %if.end134.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cancel_wbuf_timer_nolock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %cancel_wbuf_timer_nolock.exit.cleanup_crit_edge ], [ -30, %if.end134.cleanup_crit_edge ], [ %call158, %if.end154.cleanup_crit_edge ], [ %call207, %if.then201 ], [ 0, %if.end195.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_jhead(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_seek_nolock(ptr noundef %wbuf, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_seek_nolock.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_seek_nolock, %if.then)) #8
          to label %do.body6 [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %8 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jhead, align 4
  %call5 = tail call ptr @dbg_jhead(i32 noundef %9) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_seek_nolock.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.28, i32 noundef %7, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call5) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp = icmp sgt i32 %lnum, -1
  br i1 %cmp, label %land.rhs, label %do.body6.if.then16_crit_edge, !prof !162

do.body6.if.then16_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.rhs:                                         ; preds = %do.body6
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 79
  %10 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lnum)
  %cmp7.not = icmp sgt i32 %11, %lnum
  br i1 %cmp7.not, label %land.rhs.do.body20_crit_edge, label %land.rhs.if.then16_crit_edge, !prof !162

land.rhs.if.then16_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.rhs.do.body20_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then16:                                        ; preds = %land.rhs.if.then16_crit_edge, %do.body6.if.then16_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, i32 noundef 638) #8
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %land.rhs.do.body20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offs)
  %cmp21 = icmp sgt i32 %offs, -1
  br i1 %cmp21, label %land.rhs22, label %do.body20.if.then33_crit_edge, !prof !162

do.body20.if.then33_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.rhs22:                                       ; preds = %do.body20
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %12 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %offs)
  %cmp23 = icmp slt i32 %13, %offs
  br i1 %cmp23, label %land.rhs22.if.then33_crit_edge, label %land.rhs22.do.body37_crit_edge, !prof !163

land.rhs22.do.body37_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37

land.rhs22.if.then33_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %land.rhs22.if.then33_crit_edge, %do.body20.if.then33_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, i32 noundef 639) #8
  br label %do.body37

do.body37:                                        ; preds = %if.then33, %land.rhs22.do.body37_crit_edge
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 71
  %14 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %offs, %15
  %and = and i32 %offs, 7
  %16 = or i32 %rem, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %do.body37.do.body56_crit_edge, label %if.then52, !prof !162

do.body37.do.body56_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.then52:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.3, i32 noundef 640) #8
  br label %do.body56

do.body56:                                        ; preds = %if.then52, %do.body37.do.body56_crit_edge
  %lnum57 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %17 = ptrtoint ptr %lnum57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lnum57, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %lnum)
  %cmp58.not = icmp eq i32 %18, %lnum
  br i1 %cmp58.not, label %if.then67, label %do.body56.do.body71_crit_edge, !prof !163

do.body56.do.body71_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.then67:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, i32 noundef 641) #8
  br label %do.body71

do.body71:                                        ; preds = %if.then67, %do.body56.do.body71_crit_edge
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %19 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp72.not = icmp eq i32 %20, 0
  br i1 %cmp72.not, label %do.body71.do.end84_crit_edge, label %if.then81, !prof !162

do.body71.do.end84_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

if.then81:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, i32 noundef 642) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %do.body71.do.end84_crit_edge
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %21 = ptrtoint ptr %lnum57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %lnum, ptr %lnum57, align 8
  %offs86 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %22 = ptrtoint ptr %offs86 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %offs, ptr %offs86, align 4
  %leb_size87 = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %23 = ptrtoint ptr %leb_size87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %leb_size87, align 8
  %sub = sub i32 %24, %offs
  %max_write_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 73
  %25 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_write_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %26)
  %cmp89 = icmp slt i32 %sub, %26
  br i1 %cmp89, label %do.end84.if.end113_crit_edge, label %if.else

do.end84.if.end113_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.else:                                          ; preds = %do.end84
  %sub96 = add i32 %26, -1
  %and97 = and i32 %sub96, %offs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else.if.end113_crit_edge, label %if.then99

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then99:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %sub96, %offs
  %neg = sub i32 0, %26
  %and105 = and i32 %add, %neg
  %sub107 = sub i32 %and105, %offs
  br label %if.end113

if.end113:                                        ; preds = %if.then99, %if.else.if.end113_crit_edge, %do.end84.if.end113_crit_edge
  %sub107.sink = phi i32 [ %sub107, %if.then99 ], [ %sub, %do.end84.if.end113_crit_edge ], [ %26, %if.else.if.end113_crit_edge ]
  %size108 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 6
  %27 = ptrtoint ptr %size108 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub107.sink, ptr %size108, align 8
  %avail = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 4
  %28 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub107.sink, ptr %avail, align 8
  %29 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %used, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_bg_wbufs_sync(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !162

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 672) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %need_wbuf_sync = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 120
  %1 = ptrtoint ptr %need_wbuf_sync to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %need_wbuf_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %do.end.cleanup67_crit_edge, label %if.end11

do.end.cleanup67_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end11:                                         ; preds = %do.end
  %3 = ptrtoint ptr %need_wbuf_sync to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %need_wbuf_sync, align 8
  %4 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load13 = load i8, ptr %ro_media, align 8
  %5 = and i8 %bf.load13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool17.not = icmp eq i8 %5, 0
  br i1 %tobool17.not, label %do.body20, label %if.end11.out_timers_crit_edge

if.end11.out_timers_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_timers

do.body20:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_bg_wbufs_sync.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_bg_wbufs_sync, %if.then28)) #8
          to label %do.end32 [label %if.then28], !srcloc !164

if.then28:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_bg_wbufs_sync.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.35, i32 noundef %11) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body20
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %12 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp105 = icmp sgt i32 %13, 0
  br i1 %cmp105, label %for.body.lr.ph, label %do.end32.cleanup67_crit_edge

do.end32.cleanup67_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

for.body.lr.ph:                                   ; preds = %do.end32
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %15, i32 %i.0106
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 686, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %call36 = tail call zeroext i1 @mutex_is_locked(ptr noundef %io_mutex) #8
  br i1 %call36, label %for.body.for.inc_crit_edge, label %if.end38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end38:                                         ; preds = %for.body
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %16 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %jhead, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %17) #8
  %need_sync = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 12
  %18 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load40 = load i8, ptr %need_sync, align 8
  %19 = and i8 %bf.load40, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool44.not = icmp eq i8 %19, 0
  br i1 %tobool44.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %for.inc

if.end47:                                         ; preds = %if.end38
  %call48 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx)
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool50.not = icmp eq i32 %call48, 0
  br i1 %tobool50.not, label %if.end47.for.inc_crit_edge, label %if.then51

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then51:                                        ; preds = %if.end47
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.36, i32 noundef %call48) #8
  %20 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %ro_media, align 8
  %21 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then51.out_timers_crit_edge

if.then51.out_timers_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_timers

if.then.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 32
  %22 = ptrtoint ptr %ro_media to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set.i, ptr %ro_media, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %23 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load4.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.clear5.i = and i16 %bf.load4.i, -2049
  store i16 %bf.clear5.i, ptr %no_chk_data_crc.i, align 8
  %24 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %27, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %call48) #8
  tail call void @dump_stack() #11
  br label %out_timers

for.inc:                                          ; preds = %if.end47.for.inc_crit_edge, %if.then45, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0106, 1
  %28 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup67_crit_edge

for.inc.cleanup67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out_timers:                                       ; preds = %if.then.i, %if.then51.out_timers_crit_edge, %if.end11.out_timers_crit_edge
  %err.2 = phi i32 [ -30, %if.end11.out_timers_crit_edge ], [ %call48, %if.then51.out_timers_crit_edge ], [ %call48, %if.then.i ]
  %jhead_cnt54 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %30 = ptrtoint ptr %jhead_cnt54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jhead_cnt54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp55108 = icmp sgt i32 %31, 0
  br i1 %cmp55108, label %for.body56.lr.ph, label %out_timers.cleanup67_crit_edge

out_timers.cleanup67_crit_edge:                   ; preds = %out_timers
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

for.body56.lr.ph:                                 ; preds = %out_timers
  %jheads58 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  br label %for.body56

for.body56:                                       ; preds = %cancel_wbuf_timer_nolock.exit.for.body56_crit_edge, %for.body56.lr.ph
  %i.1109 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc65, %cancel_wbuf_timer_nolock.exit.for.body56_crit_edge ]
  %32 = ptrtoint ptr %jheads58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %jheads58, align 8
  %arrayidx59 = getelementptr %struct.ubifs_jhead, ptr %33, i32 %i.1109
  %io_mutex61 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx59, i32 0, i32 9
  %jhead62 = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx59, i32 0, i32 7
  %34 = ptrtoint ptr %jhead62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %jhead62, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex61, i32 noundef %35) #8
  %no_timer.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx59, i32 0, i32 12
  %36 = ptrtoint ptr %no_timer.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i97 = load i8, ptr %no_timer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i97)
  %tobool.not.i98 = icmp sgt i8 %bf.load.i97, -1
  br i1 %tobool.not.i98, label %if.end.i, label %for.body56.cancel_wbuf_timer_nolock.exit_crit_edge

for.body56.cancel_wbuf_timer_nolock.exit_crit_edge: ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cancel_wbuf_timer_nolock.exit

if.end.i:                                         ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i97, -65
  %37 = ptrtoint ptr %no_timer.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.clear.i, ptr %no_timer.i, align 8
  %timer.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx59, i32 0, i32 11
  %call.i99 = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #8
  br label %cancel_wbuf_timer_nolock.exit

cancel_wbuf_timer_nolock.exit:                    ; preds = %if.end.i, %for.body56.cancel_wbuf_timer_nolock.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex61) #8
  %inc65 = add nuw nsw i32 %i.1109, 1
  %38 = ptrtoint ptr %jhead_cnt54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %jhead_cnt54, align 4
  %cmp55 = icmp slt i32 %inc65, %39
  br i1 %cmp55, label %cancel_wbuf_timer_nolock.exit.for.body56_crit_edge, label %cancel_wbuf_timer_nolock.exit.cleanup67_crit_edge

cancel_wbuf_timer_nolock.exit.cleanup67_crit_edge: ; preds = %cancel_wbuf_timer_nolock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

cancel_wbuf_timer_nolock.exit.for.body56_crit_edge: ; preds = %cancel_wbuf_timer_nolock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

cleanup67:                                        ; preds = %cancel_wbuf_timer_nolock.exit.cleanup67_crit_edge, %out_timers.cleanup67_crit_edge, %for.inc.cleanup67_crit_edge, %do.end32.cleanup67_crit_edge, %do.end.cleanup67_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup67_crit_edge ], [ %err.2, %out_timers.cleanup67_crit_edge ], [ 0, %do.end32.cleanup67_crit_edge ], [ %err.2, %cancel_wbuf_timer_nolock.exit.cleanup67_crit_edge ], [ 0, %for.inc.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_write_nolock(ptr noundef %wbuf, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 8
  %add = add i32 %len, 7
  %and = and i32 %add, -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_write_nolock, %if.then)) #8
          to label %do.body8 [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %node_type, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call ptr @dbg_ntype(i32 noundef %conv) #8
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %10 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jhead, align 4
  %call6 = tail call ptr @dbg_jhead(i32 noundef %11) #8
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %12 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lnum, align 8
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %14 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offs, align 4
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %16 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used, align 4
  %add7 = add i32 %17, %15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef %len, ptr noundef %call5, ptr noundef %call6, i32 noundef %13, i32 noundef %add7) #8
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp sgt i32 %len, 0
  br i1 %cmp, label %land.lhs.true, label %do.body8.if.then24_crit_edge, !prof !162

do.body8.if.then24_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

land.lhs.true:                                    ; preds = %do.body8
  %lnum10 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %18 = ptrtoint ptr %lnum10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lnum10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp11 = icmp sgt i32 %19, -1
  br i1 %cmp11, label %land.rhs, label %land.lhs.true.if.then24_crit_edge, !prof !162

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

land.rhs:                                         ; preds = %land.lhs.true
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 79
  %20 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp14 = icmp slt i32 %19, %21
  br i1 %cmp14, label %land.rhs.do.body28_crit_edge, label %land.rhs.if.then24_crit_edge, !prof !162

land.rhs.if.then24_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

land.rhs.do.body28_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

if.then24:                                        ; preds = %land.rhs.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge, %do.body8.if.then24_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef 748) #8
  br label %do.body28

do.body28:                                        ; preds = %if.then24, %land.rhs.do.body28_crit_edge
  %offs29 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %22 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp30 = icmp sgt i32 %23, -1
  br i1 %cmp30, label %land.rhs32, label %do.body28.if.then45_crit_edge, !prof !162

do.body28.if.then45_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

land.rhs32:                                       ; preds = %do.body28
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 71
  %24 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp34 = icmp eq i32 %rem, 0
  br i1 %cmp34, label %land.rhs32.do.body49_crit_edge, label %land.rhs32.if.then45_crit_edge, !prof !162

land.rhs32.if.then45_crit_edge:                   ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

land.rhs32.do.body49_crit_edge:                   ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.then45:                                        ; preds = %land.rhs32.if.then45_crit_edge, %do.body28.if.then45_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef 749) #8
  br label %do.body49

do.body49:                                        ; preds = %if.then45, %land.rhs32.do.body49_crit_edge
  %26 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offs29, align 4
  %and51 = and i32 %27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %land.rhs53, label %do.body49.if.then66_crit_edge, !prof !162

do.body49.if.then66_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

land.rhs53:                                       ; preds = %do.body49
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %28 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp55.not = icmp sgt i32 %27, %29
  br i1 %cmp55.not, label %land.rhs53.if.then66_crit_edge, label %land.rhs53.do.body70_crit_edge, !prof !163

land.rhs53.do.body70_crit_edge:                   ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

land.rhs53.if.then66_crit_edge:                   ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

if.then66:                                        ; preds = %land.rhs53.if.then66_crit_edge, %do.body49.if.then66_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef 750) #8
  br label %do.body70

do.body70:                                        ; preds = %if.then66, %land.rhs53.do.body70_crit_edge
  %avail = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 4
  %30 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %avail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp71 = icmp sgt i32 %31, 0
  br i1 %cmp71, label %land.rhs73, label %do.body70.if.then86_crit_edge, !prof !162

do.body70.if.then86_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

land.rhs73:                                       ; preds = %do.body70
  %size = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 6
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp75.not = icmp sgt i32 %31, %33
  br i1 %cmp75.not, label %land.rhs73.if.then86_crit_edge, label %land.rhs73.do.body90_crit_edge, !prof !163

land.rhs73.do.body90_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

land.rhs73.if.then86_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.then86:                                        ; preds = %land.rhs73.if.then86_crit_edge, %do.body70.if.then86_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 751) #8
  br label %do.body90

do.body90:                                        ; preds = %if.then86, %land.rhs73.do.body90_crit_edge
  %size91 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 6
  %34 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size91, align 8
  %min_io_size92 = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 71
  %36 = ptrtoint ptr %min_io_size92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_io_size92, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp93.not = icmp slt i32 %35, %37
  br i1 %cmp93.not, label %if.then103, label %do.body90.do.body107_crit_edge, !prof !163

do.body90.do.body107_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

if.then103:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef 752) #8
  br label %do.body107

do.body107:                                       ; preds = %if.then103, %do.body90.do.body107_crit_edge
  %38 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size91, align 8
  %max_write_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 73
  %40 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_write_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp109.not = icmp sgt i32 %39, %41
  br i1 %cmp109.not, label %if.then119, label %do.body107.do.body123_crit_edge, !prof !163

do.body107.do.body123_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef 753) #8
  br label %do.body123

do.body123:                                       ; preds = %if.then119, %do.body107.do.body123_crit_edge
  %42 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size91, align 8
  %44 = ptrtoint ptr %min_io_size92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min_io_size92, align 8
  %rem126 = srem i32 %43, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem126)
  %cmp127.not = icmp eq i32 %rem126, 0
  br i1 %cmp127.not, label %do.body123.do.body141_crit_edge, label %if.then137, !prof !162

do.body123.do.body141_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

if.then137:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 754) #8
  br label %do.body141

do.body141:                                       ; preds = %if.then137, %do.body123.do.body141_crit_edge
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 9
  %call142 = tail call zeroext i1 @mutex_is_locked(ptr noundef %io_mutex) #8
  br i1 %call142, label %do.body141.do.body155_crit_edge, label %if.then151, !prof !162

do.body141.do.body155_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body155

if.then151:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, i32 noundef 755) #8
  br label %do.body155

do.body155:                                       ; preds = %if.then151, %do.body141.do.body155_crit_edge
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 81
  %46 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %47 = icmp ult i8 %bf.load, 64
  br i1 %47, label %do.body155.do.body177_crit_edge, label %if.then173, !prof !162

do.body155.do.body177_crit_edge:                  ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body177

if.then173:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 756) #8
  br label %do.body177

do.body177:                                       ; preds = %if.then173, %do.body155.do.body177_crit_edge
  %space_fixup = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 30
  %48 = ptrtoint ptr %space_fixup to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load178 = load i16, ptr %space_fixup, align 8
  %49 = and i16 %bf.load178, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool182.not = icmp eq i16 %49, 0
  br i1 %tobool182.not, label %do.body177.do.end196_crit_edge, label %if.then193, !prof !162

do.body177.do.end196_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end196

if.then193:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef 757) #8
  br label %do.end196

do.end196:                                        ; preds = %if.then193, %do.body177.do.end196_crit_edge
  %leb_size197 = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %50 = ptrtoint ptr %leb_size197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %leb_size197, align 8
  %52 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offs29, align 4
  %sub = sub i32 %51, %53
  %54 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_write_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %55)
  %cmp200.not = icmp slt i32 %sub, %55
  br i1 %cmp200.not, label %do.end196.if.end224_crit_edge, label %do.body203

do.end196.if.end224_crit_edge:                    ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

do.body203:                                       ; preds = %do.end196
  %56 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size91, align 8
  %add206 = add i32 %57, %53
  %rem208 = srem i32 %add206, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem208)
  %tobool209.not = icmp eq i32 %rem208, 0
  br i1 %tobool209.not, label %do.body203.if.end224_crit_edge, label %if.then220, !prof !162

do.body203.if.end224_crit_edge:                   ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then220:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef 759) #8
  br label %if.end224

if.end224:                                        ; preds = %if.then220, %do.body203.if.end224_crit_edge, %do.end196.if.end224_crit_edge
  %58 = ptrtoint ptr %leb_size197 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %leb_size197, align 8
  %60 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offs29, align 4
  %used228 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %62 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %used228, align 4
  %64 = add i32 %61, %63
  %sub229 = sub i32 %59, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub229, i32 %and)
  %cmp230 = icmp slt i32 %sub229, %and
  br i1 %cmp230, label %if.end224.out_crit_edge, label %if.end233

if.end224.out_crit_edge:                          ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end233:                                        ; preds = %if.end224
  %no_timer.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 12
  %65 = ptrtoint ptr %no_timer.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %no_timer.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end233.cancel_wbuf_timer_nolock.exit_crit_edge

if.end233.cancel_wbuf_timer_nolock.exit_crit_edge: ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %cancel_wbuf_timer_nolock.exit

if.end.i:                                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i, -65
  %66 = ptrtoint ptr %no_timer.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %bf.clear.i, ptr %no_timer.i, align 8
  %timer.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 11
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #8
  br label %cancel_wbuf_timer_nolock.exit

cancel_wbuf_timer_nolock.exit:                    ; preds = %if.end.i, %if.end233.cancel_wbuf_timer_nolock.exit_crit_edge
  %67 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load234 = load i8, ptr %ro_media, align 8
  %68 = and i8 %bf.load234, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool238.not = icmp eq i8 %68, 0
  br i1 %tobool238.not, label %if.end240, label %cancel_wbuf_timer_nolock.exit.cleanup540_crit_edge

cancel_wbuf_timer_nolock.exit.cleanup540_crit_edge: ; preds = %cancel_wbuf_timer_nolock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.end240:                                        ; preds = %cancel_wbuf_timer_nolock.exit
  %69 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %avail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %70)
  %cmp242.not = icmp sgt i32 %and, %70
  br i1 %cmp242.not, label %if.end336, label %if.then244

if.then244:                                       ; preds = %if.end240
  %buf245 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %71 = ptrtoint ptr %buf245 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buf245, align 4
  %73 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used228, align 4
  %add.ptr = getelementptr i8, ptr %72, i32 %74
  %75 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %len)
  %cmp247 = icmp sgt i32 %and, %len
  br i1 %cmp247, label %do.body250, label %if.then244.if.end271_crit_edge

if.then244.if.end271_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

do.body250:                                       ; preds = %if.then244
  %sub251 = sub i32 %and, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub251)
  %cmp252 = icmp sgt i32 %sub251, 7
  br i1 %cmp252, label %do.end.i, label %do.end265, !prof !163

do.end265:                                        ; preds = %do.body250
  %76 = ptrtoint ptr %buf245 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buf245, align 4
  %78 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %used228, align 4
  %add.ptr268 = getelementptr i8, ptr %77, i32 %79
  %add.ptr269 = getelementptr i8, ptr %add.ptr268, i32 %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub251)
  %cmp.i = icmp slt i32 %sub251, 0
  br i1 %cmp.i, label %do.end.thread.i, label %do.end265.if.then10.i_crit_edge, !prof !163

do.end265.if.then10.i_crit_edge:                  ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

do.end.thread.i:                                  ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #8
  br label %if.then4.i

do.end.i:                                         ; preds = %do.body250
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef 778) #8
  %80 = ptrtoint ptr %buf245 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buf245, align 4
  %82 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %used228, align 4
  %add.ptr268805 = getelementptr i8, ptr %81, i32 %83
  %add.ptr269806 = getelementptr i8, ptr %add.ptr268805, i32 %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub251)
  %cmp3.i = icmp ugt i32 %sub251, 27
  br i1 %cmp3.i, label %do.end.i.if.then4.i_crit_edge, label %do.end.i.if.then10.i_crit_edge

do.end.i.if.then10.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

do.end.i.if.then4.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %do.end.i.if.then4.i_crit_edge, %do.end.thread.i
  %add.ptr269809 = phi ptr [ %add.ptr269806, %do.end.i.if.then4.i_crit_edge ], [ %add.ptr269, %do.end.thread.i ]
  %84 = ptrtoint ptr %add.ptr269809 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 823660550, ptr %add.ptr269809, align 1
  %node_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 4
  %85 = ptrtoint ptr %node_type.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 5, ptr %node_type.i, align 1
  %group_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 5
  %86 = ptrtoint ptr %group_type.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %group_type.i, align 1
  %padding.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 6, i32 1
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx.i, align 1
  %88 = ptrtoint ptr %padding.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %padding.i, align 1
  %sqnum.i = getelementptr %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 2
  %89 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 0, ptr %sqnum.i, align 1
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 3
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 469762048, ptr %len.i, align 1
  %sub.i = add i32 %sub251, -28
  %91 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  %pad_len.i = getelementptr inbounds %struct.ubifs_pad_node, ptr %add.ptr269809, i32 0, i32 1
  %92 = ptrtoint ptr %pad_len.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %pad_len.i, align 1
  %call.i779 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %sqnum.i, i32 noundef 20) #12
  %93 = tail call i32 @llvm.bswap.i32(i32 %call.i779) #8
  %crc7.i = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr269809, i32 0, i32 1
  %94 = ptrtoint ptr %crc7.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %crc7.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr269809, i32 28
  %95 = call ptr @memset(ptr %add.ptr8.i, i32 0, i32 %sub.i)
  br label %if.end271

if.then10.i:                                      ; preds = %do.end.i.if.then10.i_crit_edge, %do.end265.if.then10.i_crit_edge
  %add.ptr269808812815 = phi ptr [ %add.ptr269806, %do.end.i.if.then10.i_crit_edge ], [ %add.ptr269, %do.end265.if.then10.i_crit_edge ]
  %96 = call ptr @memset(ptr %add.ptr269808812815, i32 206, i32 %sub251)
  br label %if.end271

if.end271:                                        ; preds = %if.then10.i, %if.then4.i, %if.then244.if.end271_crit_edge
  %97 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %avail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %98)
  %cmp273 = icmp eq i32 %and, %98
  br i1 %cmp273, label %do.body276, label %if.else328

do.body276:                                       ; preds = %if.end271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_write_nolock, %if.then288)) #8
          to label %do.end298 [label %if.then288], !srcloc !164

if.then288:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #10
  %99 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i780 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i780 to ptr
  %task290 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task290 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task290, align 8
  %pid291 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 68
  %103 = ptrtoint ptr %pid291 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pid291, align 8
  %jhead292 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %105 = ptrtoint ptr %jhead292 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %jhead292, align 4
  %call293 = tail call ptr @dbg_jhead(i32 noundef %106) #8
  %lnum294 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %107 = ptrtoint ptr %lnum294 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lnum294, align 8
  %109 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offs29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.46, i32 noundef %104, ptr noundef %call293, i32 noundef %108, i32 noundef %110) #8
  br label %do.end298

do.end298:                                        ; preds = %if.then288, %do.body276
  %lnum299 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %111 = ptrtoint ptr %lnum299 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lnum299, align 8
  %113 = ptrtoint ptr %buf245 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %buf245, align 4
  %115 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %offs29, align 4
  %117 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size91, align 8
  %call303 = tail call i32 @ubifs_leb_write(ptr noundef %1, i32 noundef %112, ptr noundef %114, i32 noundef %116, i32 noundef %118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end306, label %do.end298.out_crit_edge

do.end298.out_crit_edge:                          ; preds = %do.end298
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end306:                                        ; preds = %do.end298
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %119 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size91, align 8
  %121 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offs29, align 4
  %add309 = add i32 %122, %120
  store i32 %add309, ptr %offs29, align 4
  %123 = ptrtoint ptr %leb_size197 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %leb_size197, align 8
  %sub312 = sub i32 %124, %add309
  %125 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_write_size, align 8
  %127 = tail call i32 @llvm.smin.i32(i32 %sub312, i32 %126)
  %128 = ptrtoint ptr %size91 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %size91, align 8
  %129 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %127, ptr %avail, align 8
  %130 = ptrtoint ptr %used228 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %used228, align 4
  %next_ino = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 13
  %131 = ptrtoint ptr %next_ino to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %next_ino, align 4
  br label %exit

if.else328:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  %lock329 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock329) #8
  %132 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %avail, align 8
  %sub331 = sub i32 %133, %and
  store i32 %sub331, ptr %avail, align 8
  %134 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %used228, align 4
  %add333 = add i32 %135, %and
  store i32 %add333, ptr %used228, align 4
  br label %exit

if.end336:                                        ; preds = %if.end240
  %136 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %used228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool338.not = icmp eq i32 %137, 0
  br i1 %tobool338.not, label %if.else384, label %do.body340

do.body340:                                       ; preds = %if.end336
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_write_nolock, %if.then352)) #8
          to label %do.end362 [label %if.then352], !srcloc !164

if.then352:                                       ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #10
  %138 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i781 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i781 to ptr
  %task354 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task354 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task354, align 8
  %pid355 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 68
  %142 = ptrtoint ptr %pid355 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pid355, align 8
  %jhead356 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %144 = ptrtoint ptr %jhead356 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %jhead356, align 4
  %call357 = tail call ptr @dbg_jhead(i32 noundef %145) #8
  %lnum358 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %146 = ptrtoint ptr %lnum358 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lnum358, align 8
  %148 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offs29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.46, i32 noundef %143, ptr noundef %call357, i32 noundef %147, i32 noundef %149) #8
  br label %do.end362

do.end362:                                        ; preds = %if.then352, %do.body340
  %buf363 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %150 = ptrtoint ptr %buf363 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %buf363, align 4
  %152 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %used228, align 4
  %add.ptr365 = getelementptr i8, ptr %151, i32 %153
  %154 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %avail, align 8
  %156 = call ptr @memcpy(ptr %add.ptr365, ptr %buf, i32 %155)
  %lnum367 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %157 = ptrtoint ptr %lnum367 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %lnum367, align 8
  %159 = load ptr, ptr %buf363, align 4
  %160 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %offs29, align 4
  %162 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %size91, align 8
  %call371 = tail call i32 @ubifs_leb_write(ptr noundef %1, i32 noundef %158, ptr noundef %159, i32 noundef %161, i32 noundef %163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %if.end374, label %do.end362.out_crit_edge

do.end362.out_crit_edge:                          ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end374:                                        ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size91, align 8
  %166 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %offs29, align 4
  %add377 = add i32 %167, %165
  store i32 %add377, ptr %offs29, align 4
  %168 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %avail, align 8
  %sub379 = sub i32 %len, %169
  %sub381 = sub i32 %and, %169
  br label %if.end430

if.else384:                                       ; preds = %if.end336
  %170 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %offs29, align 4
  %172 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %max_write_size, align 8
  %sub387 = add i32 %173, -1
  %and388 = and i32 %sub387, %171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %if.else384.if.end430_crit_edge, label %do.body391

if.else384.if.end430_crit_edge:                   ; preds = %if.else384
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end430

do.body391:                                       ; preds = %if.else384
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_write_nolock, %if.then403)) #8
          to label %do.end412 [label %if.then403], !srcloc !164

if.then403:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #10
  %174 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i782 = and i32 %174, -16384
  %175 = inttoptr i32 %and.i782 to ptr
  %task405 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %task405 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task405, align 8
  %pid406 = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 68
  %178 = ptrtoint ptr %pid406 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pid406, align 8
  %180 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %size91, align 8
  %lnum408 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %182 = ptrtoint ptr %lnum408 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %lnum408, align 8
  %184 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %offs29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.47, i32 noundef %179, i32 noundef %181, i32 noundef %183, i32 noundef %185) #8
  br label %do.end412

do.end412:                                        ; preds = %if.then403, %do.body391
  %lnum413 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %186 = ptrtoint ptr %lnum413 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %lnum413, align 8
  %188 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %offs29, align 4
  %190 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %size91, align 8
  %call416 = tail call i32 @ubifs_leb_write(ptr noundef %1, i32 noundef %187, ptr noundef %buf, i32 noundef %189, i32 noundef %191)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call416)
  %tobool417.not = icmp eq i32 %call416, 0
  br i1 %tobool417.not, label %if.end419, label %do.end412.out_crit_edge

do.end412.out_crit_edge:                          ; preds = %do.end412
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end419:                                        ; preds = %do.end412
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %size91, align 8
  %194 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %offs29, align 4
  %add422 = add i32 %195, %193
  store i32 %add422, ptr %offs29, align 4
  %sub424 = sub i32 %len, %193
  %sub426 = sub i32 %and, %193
  br label %if.end430

if.end430:                                        ; preds = %if.end419, %if.else384.if.end430_crit_edge, %if.end374
  %aligned_len.0 = phi i32 [ %sub381, %if.end374 ], [ %sub426, %if.end419 ], [ %and, %if.else384.if.end430_crit_edge ]
  %written.0 = phi i32 [ %169, %if.end374 ], [ %193, %if.end419 ], [ 0, %if.else384.if.end430_crit_edge ]
  %len.addr.0 = phi i32 [ %sub379, %if.end374 ], [ %sub424, %if.end419 ], [ %len, %if.else384.if.end430_crit_edge ]
  %max_write_shift = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 74
  %196 = ptrtoint ptr %max_write_shift to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %max_write_shift, align 4
  %shr = ashr i32 %aligned_len.0, %197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool431.not = icmp eq i32 %shr, 0
  br i1 %tobool431.not, label %if.end430.if.end467_crit_edge, label %if.then432

if.end430.if.end467_crit_edge:                    ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end467

if.then432:                                       ; preds = %if.end430
  %shl = shl i32 %shr, %197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_wbuf_write_nolock, %if.then446)) #8
          to label %do.end454 [label %if.then446], !srcloc !164

if.then446:                                       ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #10
  %198 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i783 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i783 to ptr
  %task448 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %task448 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %task448, align 8
  %pid449 = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 68
  %202 = ptrtoint ptr %pid449 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pid449, align 8
  %lnum450 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %204 = ptrtoint ptr %lnum450 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %lnum450, align 8
  %206 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %offs29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.47, i32 noundef %203, i32 noundef %shl, i32 noundef %205, i32 noundef %207) #8
  br label %do.end454

do.end454:                                        ; preds = %if.then446, %if.then432
  %lnum455 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %208 = ptrtoint ptr %lnum455 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %lnum455, align 8
  %add.ptr456 = getelementptr i8, ptr %buf, i32 %written.0
  %210 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %offs29, align 4
  %call458 = tail call i32 @ubifs_leb_write(ptr noundef %1, i32 noundef %209, ptr noundef %add.ptr456, i32 noundef %211, i32 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call458)
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %if.end461, label %do.end454.out_crit_edge

do.end454.out_crit_edge:                          ; preds = %do.end454
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end461:                                        ; preds = %do.end454
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %offs29, align 4
  %add463 = add i32 %213, %shl
  store i32 %add463, ptr %offs29, align 4
  %sub464 = sub i32 %aligned_len.0, %shl
  %sub465 = sub i32 %len.addr.0, %shl
  %add466 = add i32 %shl, %written.0
  br label %if.end467

if.end467:                                        ; preds = %if.end461, %if.end430.if.end467_crit_edge
  %aligned_len.1 = phi i32 [ %sub464, %if.end461 ], [ %aligned_len.0, %if.end430.if.end467_crit_edge ]
  %written.1 = phi i32 [ %add466, %if.end461 ], [ %written.0, %if.end430.if.end467_crit_edge ]
  %len.addr.1 = phi i32 [ %sub465, %if.end461 ], [ %len.addr.0, %if.end430.if.end467_crit_edge ]
  %lock468 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock468) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aligned_len.1)
  %tobool469.not = icmp eq i32 %aligned_len.1, 0
  br i1 %tobool469.not, label %if.end467.if.end496_crit_edge, label %if.then470

if.end467.if.end496_crit_edge:                    ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end496

if.then470:                                       ; preds = %if.end467
  %buf471 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %214 = ptrtoint ptr %buf471 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %buf471, align 4
  %add.ptr472 = getelementptr i8, ptr %buf, i32 %written.1
  %216 = call ptr @memcpy(ptr %215, ptr %add.ptr472, i32 %len.addr.1)
  call void @__sanitizer_cov_trace_cmp4(i32 %aligned_len.1, i32 %len.addr.1)
  %cmp473 = icmp sgt i32 %aligned_len.1, %len.addr.1
  br i1 %cmp473, label %do.body476, label %if.then470.if.end496_crit_edge

if.then470.if.end496_crit_edge:                   ; preds = %if.then470
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end496

do.body476:                                       ; preds = %if.then470
  %sub477 = sub i32 %aligned_len.1, %len.addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub477)
  %cmp478 = icmp sgt i32 %sub477, 7
  br i1 %cmp478, label %do.end.i787, label %do.end491, !prof !163

do.end491:                                        ; preds = %do.body476
  %217 = ptrtoint ptr %buf471 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %buf471, align 4
  %add.ptr493 = getelementptr i8, ptr %218, i32 %len.addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub477)
  %cmp.i784 = icmp slt i32 %sub477, 0
  br i1 %cmp.i784, label %do.end.thread.i785, label %do.end491.if.then10.i802_crit_edge, !prof !163

do.end491.if.then10.i802_crit_edge:               ; preds = %do.end491
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i802

do.end.thread.i785:                               ; preds = %do.end491
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 332) #8
  br label %if.then4.i799

do.end.i787:                                      ; preds = %do.body476
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef 879) #8
  %219 = ptrtoint ptr %buf471 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %buf471, align 4
  %add.ptr493820 = getelementptr i8, ptr %220, i32 %len.addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub477)
  %cmp3.i786 = icmp ugt i32 %sub477, 27
  br i1 %cmp3.i786, label %do.end.i787.if.then4.i799_crit_edge, label %do.end.i787.if.then10.i802_crit_edge

do.end.i787.if.then10.i802_crit_edge:             ; preds = %do.end.i787
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i802

do.end.i787.if.then4.i799_crit_edge:              ; preds = %do.end.i787
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i799

if.then4.i799:                                    ; preds = %do.end.i787.if.then4.i799_crit_edge, %do.end.thread.i785
  %add.ptr493823 = phi ptr [ %add.ptr493820, %do.end.i787.if.then4.i799_crit_edge ], [ %add.ptr493, %do.end.thread.i785 ]
  %221 = ptrtoint ptr %add.ptr493823 to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 823660550, ptr %add.ptr493823, align 1
  %node_type.i788 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 4
  %222 = ptrtoint ptr %node_type.i788 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 5, ptr %node_type.i788, align 1
  %group_type.i789 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 5
  %223 = ptrtoint ptr %group_type.i789 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %group_type.i789, align 1
  %padding.i790 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 6
  %arrayidx.i791 = getelementptr %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 6, i32 1
  %224 = ptrtoint ptr %arrayidx.i791 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %arrayidx.i791, align 1
  %225 = ptrtoint ptr %padding.i790 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %padding.i790, align 1
  %sqnum.i792 = getelementptr %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 2
  %226 = ptrtoint ptr %sqnum.i792 to i32
  call void @__asan_storeN_noabort(i32 %226, i32 8)
  store i64 0, ptr %sqnum.i792, align 1
  %len.i793 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 3
  %227 = ptrtoint ptr %len.i793 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 4)
  store i32 469762048, ptr %len.i793, align 1
  %sub.i794 = add i32 %sub477, -28
  %228 = tail call i32 @llvm.bswap.i32(i32 %sub.i794) #8
  %pad_len.i795 = getelementptr inbounds %struct.ubifs_pad_node, ptr %add.ptr493823, i32 0, i32 1
  %229 = ptrtoint ptr %pad_len.i795 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 4)
  store i32 %228, ptr %pad_len.i795, align 1
  %call.i796 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %sqnum.i792, i32 noundef 20) #12
  %230 = tail call i32 @llvm.bswap.i32(i32 %call.i796) #8
  %crc7.i797 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr493823, i32 0, i32 1
  %231 = ptrtoint ptr %crc7.i797 to i32
  call void @__asan_storeN_noabort(i32 %231, i32 4)
  store i32 %230, ptr %crc7.i797, align 1
  %add.ptr8.i798 = getelementptr i8, ptr %add.ptr493823, i32 28
  %232 = call ptr @memset(ptr %add.ptr8.i798, i32 0, i32 %sub.i794)
  br label %if.end496

if.then10.i802:                                   ; preds = %do.end.i787.if.then10.i802_crit_edge, %do.end491.if.then10.i802_crit_edge
  %add.ptr493822826829 = phi ptr [ %add.ptr493820, %do.end.i787.if.then10.i802_crit_edge ], [ %add.ptr493, %do.end491.if.then10.i802_crit_edge ]
  %233 = call ptr @memset(ptr %add.ptr493822826829, i32 206, i32 %sub477)
  br label %if.end496

if.end496:                                        ; preds = %if.then10.i802, %if.then4.i799, %if.then470.if.end496_crit_edge, %if.end467.if.end496_crit_edge
  %234 = ptrtoint ptr %leb_size197 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %leb_size197, align 8
  %236 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %offs29, align 4
  %sub499 = sub i32 %235, %237
  %238 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %max_write_size, align 8
  %240 = tail call i32 @llvm.smin.i32(i32 %sub499, i32 %239)
  %241 = ptrtoint ptr %size91 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %size91, align 8
  %sub513 = sub i32 %240, %aligned_len.1
  %242 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %sub513, ptr %avail, align 8
  %243 = ptrtoint ptr %used228 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %aligned_len.1, ptr %used228, align 4
  %next_ino516 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 13
  %244 = ptrtoint ptr %next_ino516 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %next_ino516, align 4
  br label %exit

exit:                                             ; preds = %if.end496, %if.else328, %if.end306
  %lock.sink = phi ptr [ %lock, %if.end306 ], [ %lock329, %if.else328 ], [ %lock468, %if.end496 ]
  %written.2 = phi i32 [ 0, %if.end306 ], [ 0, %if.else328 ], [ %written.1, %if.end496 ]
  %len.addr.2 = phi i32 [ %len, %if.end306 ], [ %len, %if.else328 ], [ %len.addr.1, %if.end496 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.sink) #8
  %sync_callback = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 8
  %245 = ptrtoint ptr %sync_callback to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %sync_callback, align 8
  %tobool518.not = icmp eq ptr %246, null
  br i1 %tobool518.not, label %exit.if.end531_crit_edge, label %if.then519

exit.if.end531_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end531

if.then519:                                       ; preds = %exit
  %247 = ptrtoint ptr %leb_size197 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %leb_size197, align 8
  %249 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %offs29, align 4
  %251 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %used228, align 4
  %253 = add i32 %250, %252
  %sub524 = sub i32 %248, %253
  %lnum526 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %254 = ptrtoint ptr %lnum526 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %lnum526, align 8
  %call527 = tail call i32 %246(ptr noundef %1, i32 noundef %255, i32 noundef %sub524, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call527)
  %tobool528.not = icmp eq i32 %call527, 0
  br i1 %tobool528.not, label %if.then519.if.end531_crit_edge, label %if.then519.out_crit_edge

if.then519.out_crit_edge:                         ; preds = %if.then519
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then519.if.end531_crit_edge:                   ; preds = %if.then519
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end531

if.end531:                                        ; preds = %if.then519.if.end531_crit_edge, %exit.if.end531_crit_edge
  %256 = ptrtoint ptr %used228 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %used228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool533.not = icmp eq i32 %257, 0
  br i1 %tobool533.not, label %if.end531.cleanup540_crit_edge, label %if.then534

if.end531.cleanup540_crit_edge:                   ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup540

if.then534:                                       ; preds = %if.end531
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @new_wbuf_timer_nolock(ptr noundef %1, ptr noundef %wbuf)
  br label %cleanup540

out:                                              ; preds = %if.then519.out_crit_edge, %do.end454.out_crit_edge, %do.end412.out_crit_edge, %do.end362.out_crit_edge, %do.end298.out_crit_edge, %if.end224.out_crit_edge
  %written.3 = phi i32 [ 0, %do.end298.out_crit_edge ], [ %written.2, %if.then519.out_crit_edge ], [ 0, %do.end362.out_crit_edge ], [ %written.0, %do.end454.out_crit_edge ], [ 0, %do.end412.out_crit_edge ], [ 0, %if.end224.out_crit_edge ]
  %err.0 = phi i32 [ %call303, %do.end298.out_crit_edge ], [ %call527, %if.then519.out_crit_edge ], [ %call371, %do.end362.out_crit_edge ], [ %call458, %do.end454.out_crit_edge ], [ %call416, %do.end412.out_crit_edge ], [ -28, %if.end224.out_crit_edge ]
  %len.addr.3 = phi i32 [ %len, %do.end298.out_crit_edge ], [ %len.addr.2, %if.then519.out_crit_edge ], [ %len, %do.end362.out_crit_edge ], [ %len.addr.0, %do.end454.out_crit_edge ], [ %len, %do.end412.out_crit_edge ], [ %len, %if.end224.out_crit_edge ]
  %lnum536 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %258 = ptrtoint ptr %lnum536 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %lnum536, align 8
  %260 = ptrtoint ptr %offs29 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %offs29, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %len.addr.3, i32 noundef %259, i32 noundef %261, i32 noundef %err.0) #8
  %add538 = add i32 %len.addr.3, %written.3
  tail call void @ubifs_dump_node(ptr noundef %1, ptr noundef %buf, i32 noundef %add538) #8
  tail call void @dump_stack() #11
  %262 = ptrtoint ptr %lnum536 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %lnum536, align 8
  tail call void @ubifs_dump_leb(ptr noundef %1, i32 noundef %263) #8
  br label %cleanup540

cleanup540:                                       ; preds = %out, %if.then534, %if.end531.cleanup540_crit_edge, %cancel_wbuf_timer_nolock.exit.cleanup540_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -30, %cancel_wbuf_timer_nolock.exit.cleanup540_crit_edge ], [ 0, %if.then534 ], [ 0, %if.end531.cleanup540_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_ntype(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @new_wbuf_timer_nolock(ptr noundef %c, ptr noundef %wbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %0 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %0, 10
  %conv = zext i32 %mul to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  %conv1 = zext i32 %0 to i64
  %mul2 = mul nuw nsw i64 %conv1, 1000000
  %timer = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 11
  %call3 = tail call zeroext i1 @hrtimer_active(ptr noundef %timer) #8
  br i1 %call3, label %if.then, label %entry.do.body7_crit_edge, !prof !163

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.3, i32 noundef 520) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry.do.body7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul2)
  %cmp = icmp ugt i64 %mul2, 4294967295
  br i1 %cmp, label %if.then17, label %do.body7.do.end20_crit_edge, !prof !163

do.body7.do.end20_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.then17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3, i32 noundef 521) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body7.do.end20_crit_edge
  %no_timer = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 12
  %1 = ptrtoint ptr %no_timer to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %no_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %do.body24, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body24:                                        ; preds = %do.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @new_wbuf_timer_nolock.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@new_wbuf_timer_nolock, %if.then33)) #8
          to label %do.end42 [label %if.then33], !srcloc !164

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %8 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jhead, align 4
  %call35 = tail call ptr @dbg_jhead(i32 noundef %9) #8
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i) #13, !srcloc !165
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i, i64 %10, i32 0) #13, !srcloc !166
  %asmresult10.i.i.i = extractvalue { i64, i32 } %11, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %add = add nuw nsw i64 %mul.i, %mul2
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add) #13, !srcloc !165
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add, i64 %12, i32 0) #13, !srcloc !166
  %asmresult10.i.i.i54 = extractvalue { i64, i32 } %13, 0
  %div1581.i.i55 = lshr i64 %asmresult10.i.i.i54, 18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @new_wbuf_timer_nolock.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.71, i32 noundef %7, ptr noundef %call35, i64 noundef %div1581.i.i, i64 noundef %div1581.i.i55) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then33, %do.body24
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %mul.i, i64 noundef %mul2, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end20.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_leb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %hmac_offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %0 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_io_size, align 8
  %sub = add i32 %len, -1
  %add = add i32 %sub, %1
  %neg = sub i32 0, %1
  %and = and i32 %add, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_write_node_hmac.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_write_node_hmac, %if.then)) #8
          to label %do.body7 [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %node_type, align 1
  %conv = zext i8 %9 to i32
  %call6 = tail call ptr @dbg_ntype(i32 noundef %conv) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_write_node_hmac.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.50, i32 noundef %7, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call6, i32 noundef %len, i32 noundef %and) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp = icmp sgt i32 %lnum, -1
  br i1 %cmp, label %land.lhs.true, label %do.body7.if.then21_crit_edge, !prof !162

do.body7.if.then21_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

land.lhs.true:                                    ; preds = %do.body7
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %10 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lnum)
  %cmp9 = icmp sle i32 %11, %lnum
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs)
  %cmp11 = icmp slt i32 %offs, 0
  %spec.select = or i1 %cmp11, %cmp9
  br i1 %spec.select, label %land.lhs.true.if.then21_crit_edge, label %land.lhs.true.do.body25_crit_edge, !prof !163

land.lhs.true.do.body25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %land.lhs.true.if.then21_crit_edge, %do.body7.if.then21_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 939) #8
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %land.lhs.true.do.body25_crit_edge
  %12 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %offs, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp27 = icmp eq i32 %rem, 0
  br i1 %cmp27, label %land.rhs29, label %do.body25.if.then41_crit_edge, !prof !162

do.body25.if.then41_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

land.rhs29:                                       ; preds = %do.body25
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %offs)
  %cmp30.not = icmp sgt i32 %15, %offs
  br i1 %cmp30.not, label %land.rhs29.do.body45_crit_edge, label %land.rhs29.if.then41_crit_edge, !prof !162

land.rhs29.if.then41_crit_edge:                   ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

land.rhs29.do.body45_crit_edge:                   ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

if.then41:                                        ; preds = %land.rhs29.if.then41_crit_edge, %do.body25.if.then41_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.3, i32 noundef 940) #8
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %land.rhs29.do.body45_crit_edge
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %16 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %do.body45.do.body67_crit_edge, label %if.then63, !prof !162

do.body45.do.body67_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.then63:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 941) #8
  br label %do.body67

do.body67:                                        ; preds = %if.then63, %do.body45.do.body67_crit_edge
  %space_fixup = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %17 = ptrtoint ptr %space_fixup to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load68 = load i16, ptr %space_fixup, align 8
  %18 = and i16 %bf.load68, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool72.not = icmp eq i16 %18, 0
  br i1 %tobool72.not, label %do.body67.do.end86_crit_edge, label %if.then83, !prof !162

do.body67.do.end86_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end86

if.then83:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef 942) #8
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body67.do.end86_crit_edge
  %19 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load87 = load i8, ptr %ro_media, align 8
  %20 = and i8 %bf.load87, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool91.not = icmp eq i8 %20, 0
  br i1 %tobool91.not, label %if.end93, label %do.end86.cleanup_crit_edge

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %do.end86
  tail call void @ubifs_init_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hmac_offs)
  %cmp.i = icmp sgt i32 %hmac_offs, 0
  br i1 %cmp.i, label %if.then.i, label %if.end93.if.end97_crit_edge

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then.i:                                        ; preds = %if.end93
  %21 = ptrtoint ptr %space_fixup to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i.i = load i16, ptr %space_fixup, align 8
  %22 = and i16 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end97_crit_edge, label %ubifs_node_insert_hmac.exit.i

if.then.i.if.end97_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

ubifs_node_insert_hmac.exit.i:                    ; preds = %if.then.i
  %call1.i.i = tail call i32 @__ubifs_node_insert_hmac(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %hmac_offs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %ubifs_node_insert_hmac.exit.i.if.end97_crit_edge, label %ubifs_node_insert_hmac.exit.i.cleanup_crit_edge

ubifs_node_insert_hmac.exit.i.cleanup_crit_edge:  ; preds = %ubifs_node_insert_hmac.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ubifs_node_insert_hmac.exit.i.if.end97_crit_edge: ; preds = %ubifs_node_insert_hmac.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.end97:                                         ; preds = %ubifs_node_insert_hmac.exit.i.if.end97_crit_edge, %if.then.i.if.end97_crit_edge, %if.end93.if.end97_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 8
  %sub.i.i = add i32 %len, -8
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  %crc1.i.i = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %crc1.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %crc1.i.i, align 1
  %call98 = tail call i32 @ubifs_leb_write(ptr noundef %c, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.then100

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end97.cleanup_crit_edge, %ubifs_node_insert_hmac.exit.i.cleanup_crit_edge, %do.end86.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %do.end86.cleanup_crit_edge ], [ %call98, %if.then100 ], [ 0, %if.end97.cleanup_crit_edge ], [ %call1.i.i, %ubifs_node_insert_hmac.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubifs_write_node_hmac(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_node_wbuf(ptr noundef %wbuf, ptr noundef %buf, i32 noundef %type, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_read_node_wbuf.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_read_node_wbuf, %if.then)) #8
          to label %do.body7 [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %call5 = tail call ptr @dbg_ntype(i32 noundef %type) #8
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 7
  %8 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jhead, align 4
  %call6 = tail call ptr @dbg_jhead(i32 noundef %9) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_read_node_wbuf.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.53, i32 noundef %7, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call5, i32 noundef %len, ptr noundef %call6) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %tobool8.not = icmp ne ptr %wbuf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp = icmp sgt i32 %lnum, -1
  %or.cond = and i1 %tobool8.not, %cmp
  br i1 %or.cond, label %land.lhs.true9, label %do.body7.if.then20_crit_edge, !prof !167

do.body7.if.then20_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

land.lhs.true9:                                   ; preds = %do.body7
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 79
  %10 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lnum)
  %cmp10 = icmp sle i32 %11, %lnum
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs)
  %cmp11 = icmp slt i32 %offs, 0
  %spec.select = or i1 %cmp11, %cmp10
  br i1 %spec.select, label %land.lhs.true9.if.then20_crit_edge, label %land.lhs.true9.do.body24_crit_edge, !prof !163

land.lhs.true9.do.body24_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

land.lhs.true9.if.then20_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true9.if.then20_crit_edge, %do.body7.if.then20_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, i32 noundef 1002) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %land.lhs.true9.do.body24_crit_edge
  %and = and i32 %offs, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.rhs26, label %do.body24.if.then37_crit_edge, !prof !162

do.body24.if.then37_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

land.rhs26:                                       ; preds = %do.body24
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %12 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %offs)
  %cmp27.not = icmp sgt i32 %13, %offs
  br i1 %cmp27.not, label %land.rhs26.do.body41_crit_edge, label %land.rhs26.if.then37_crit_edge, !prof !162

land.rhs26.if.then37_crit_edge:                   ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

land.rhs26.do.body41_crit_edge:                   ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then37:                                        ; preds = %land.rhs26.if.then37_crit_edge, %do.body24.if.then37_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1003) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %land.rhs26.do.body41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %14 = icmp ugt i32 %type, 13
  br i1 %14, label %if.then54, label %do.body41.do.end57_crit_edge, !prof !163

do.body41.do.end57_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

if.then54:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef 1004) #8
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %do.body41.do.end57_crit_edge
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %lnum58 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %15 = ptrtoint ptr %lnum58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lnum58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %lnum)
  %cmp59 = icmp eq i32 %16, %lnum
  br i1 %cmp59, label %land.rhs60, label %do.end57.if.then65_crit_edge

do.end57.if.then65_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

land.rhs60:                                       ; preds = %do.end57
  %add = add i32 %offs, %len
  %offs61 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %17 = ptrtoint ptr %offs61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offs61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp62 = icmp sgt i32 %add, %18
  br i1 %cmp62, label %if.end68, label %land.rhs60.if.then65_crit_edge

land.rhs60.if.then65_crit_edge:                   ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %land.rhs60.if.then65_crit_edge, %do.end57.if.then65_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %call67 = tail call i32 @ubifs_read_node(ptr noundef %1, ptr noundef %buf, i32 noundef %type, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs)
  br label %cleanup

if.end68:                                         ; preds = %land.rhs60
  %sub = sub i32 %18, %offs
  %19 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %add.ptr = getelementptr i8, ptr %buf, i32 %19
  %buf73 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %20 = ptrtoint ptr %buf73 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf73, align 4
  %add.ptr74 = getelementptr i8, ptr %21, i32 %offs
  %add.ptr75 = getelementptr i8, ptr %add.ptr74, i32 %19
  %idx.neg = sub i32 0, %18
  %add.ptr77 = getelementptr i8, ptr %add.ptr75, i32 %idx.neg
  %sub78 = sub i32 %len, %19
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr77, i32 %sub78)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp80.not = icmp slt i32 %sub, 1
  br i1 %cmp80.not, label %if.end68.if.end88_crit_edge, label %if.then81

if.end68.if.end88_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then81:                                        ; preds = %if.end68
  %ubi.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 100
  %23 = ptrtoint ptr %ubi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ubi.i, align 4
  %call.i.i = tail call i32 @ubi_leb_read(ptr noundef %24, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %19, i32 noundef 0) #8
  %25 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call.i.i, label %if.then.i [
    i32 0, label %if.then81.if.end88_crit_edge
    i32 -74, label %if.then81.if.end88_crit_edge180
  ]

if.then81.if.end88_crit_edge180:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then.i:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %lnum, i32 noundef %offs, i32 noundef %call.i.i) #8
  tail call void @dump_stack() #11
  br label %cleanup

if.end88:                                         ; preds = %if.then81.if.end88_crit_edge, %if.then81.if.end88_crit_edge180, %if.end68.if.end88_crit_edge
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %26 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %node_type, align 1
  %conv = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp89.not = icmp eq i32 %conv, %type
  br i1 %cmp89.not, label %if.end94, label %if.then91

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %type) #8
  br label %out

if.end94:                                         ; preds = %if.end88
  %call95 = tail call i32 @ubifs_check_node(ptr noundef %1, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %type) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end94
  %len99 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %28 = ptrtoint ptr %len99 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %len99, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %len)
  %cmp100.not = icmp eq i32 %30, %len
  br i1 %cmp100.not, label %if.end98.cleanup_crit_edge, label %if.then102

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %30, i32 noundef %len) #8
  br label %out

out:                                              ; preds = %if.then102, %if.then91
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %lnum, i32 noundef %offs) #8
  tail call void @ubifs_dump_node(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #8
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end98.cleanup_crit_edge, %if.then97, %if.then.i, %if.then65
  %retval.0 = phi i32 [ -22, %out ], [ %call95, %if.then97 ], [ %call67, %if.then65 ], [ %call.i.i, %if.then.i ], [ 0, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_node(ptr noundef %c, ptr noundef %buf, i32 noundef %type, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_read_node.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_read_node, %if.then)) #8
          to label %do.body5 [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %call4 = tail call ptr @dbg_ntype(i32 noundef %type) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_read_node.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.60, i32 noundef %5, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call4, i32 noundef %len) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp = icmp sgt i32 %lnum, -1
  br i1 %cmp, label %land.lhs.true, label %do.body5.if.then16_crit_edge, !prof !162

do.body5.if.then16_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true:                                    ; preds = %do.body5
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %6 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnum)
  %cmp6 = icmp sgt i32 %7, %lnum
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offs)
  %cmp7 = icmp sgt i32 %offs, -1
  %spec.select = and i1 %cmp7, %cmp6
  br i1 %spec.select, label %land.lhs.true.do.body20_crit_edge, label %land.lhs.true.if.then16_crit_edge, !prof !162

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then16:                                        ; preds = %land.lhs.true.if.then16_crit_edge, %do.body5.if.then16_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 1077) #8
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %land.lhs.true.do.body20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %len)
  %cmp21 = icmp ugt i32 %len, 23
  br i1 %cmp21, label %land.rhs22, label %do.body20.if.then33_crit_edge, !prof !162

do.body20.if.then33_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.rhs22:                                       ; preds = %do.body20
  %add = add i32 %offs, %len
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %8 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp23 = icmp sgt i32 %add, %9
  br i1 %cmp23, label %land.rhs22.if.then33_crit_edge, label %land.rhs22.do.body37_crit_edge, !prof !163

land.rhs22.do.body37_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37

land.rhs22.if.then33_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %land.rhs22.if.then33_crit_edge, %do.body20.if.then33_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.3, i32 noundef 1078) #8
  br label %do.body37

do.body37:                                        ; preds = %if.then33, %land.rhs22.do.body37_crit_edge
  %and = and i32 %offs, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %land.rhs39, label %do.body37.if.then51_crit_edge, !prof !162

do.body37.if.then51_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

land.rhs39:                                       ; preds = %do.body37
  %leb_size40 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %10 = ptrtoint ptr %leb_size40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %offs)
  %cmp41.not = icmp sgt i32 %11, %offs
  br i1 %cmp41.not, label %land.rhs39.do.body55_crit_edge, label %land.rhs39.if.then51_crit_edge, !prof !162

land.rhs39.if.then51_crit_edge:                   ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

land.rhs39.do.body55_crit_edge:                   ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then51:                                        ; preds = %land.rhs39.if.then51_crit_edge, %do.body37.if.then51_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1079) #8
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %land.rhs39.do.body55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %type)
  %12 = icmp ugt i32 %type, 13
  br i1 %12, label %if.then68, label %do.body55.do.end71_crit_edge, !prof !163

do.body55.do.end71_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

if.then68:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef 1080) #8
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body55.do.end71_crit_edge
  %ubi.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 100
  %13 = ptrtoint ptr %ubi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ubi.i, align 4
  %call.i.i = tail call i32 @ubi_leb_read(ptr noundef %14, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %len, i32 noundef 0) #8
  %15 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call.i.i, label %if.then.i [
    i32 0, label %do.end71.if.end77_crit_edge
    i32 -74, label %do.end71.if.end77_crit_edge199
  ]

do.end71.if.end77_crit_edge199:                   ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end71.if.end77_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then.i:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.1, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %call.i.i) #8
  tail call void @dump_stack() #11
  br label %cleanup

if.end77:                                         ; preds = %do.end71.if.end77_crit_edge, %do.end71.if.end77_crit_edge199
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %16 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %node_type, align 1
  %conv = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp78.not = icmp eq i32 %conv, %type
  br i1 %cmp78.not, label %if.end89, label %do.body81

do.body81:                                        ; preds = %if.end77
  %probing = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %18 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %probing, align 4
  %19 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool82.not = icmp eq i8 %19, 0
  br i1 %tobool82.not, label %if.then83, label %do.body81.do.body121_crit_edge

do.body81.do.body121_crit_edge:                   ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body121

if.then83:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %type) #8
  br label %do.body121

if.end89:                                         ; preds = %if.end77
  %call90 = tail call i32 @ubifs_check_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end104, label %do.body93

do.body93:                                        ; preds = %if.end89
  %probing94 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %20 = ptrtoint ptr %probing94 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load95 = load i8, ptr %probing94, align 4
  %21 = and i8 %bf.load95, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool99.not = icmp eq i8 %21, 0
  br i1 %tobool99.not, label %if.then100, label %do.body93.cleanup_crit_edge

do.body93.cleanup_crit_edge:                      ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then100:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.57, i32 noundef %type) #8
  br label %cleanup

if.end104:                                        ; preds = %if.end89
  %len105 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %len105 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %len105, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %len)
  %cmp106.not = icmp eq i32 %24, %len
  br i1 %cmp106.not, label %if.end104.cleanup_crit_edge, label %do.body109

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body109:                                       ; preds = %if.end104
  %probing110 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %25 = ptrtoint ptr %probing110 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load111 = load i8, ptr %probing110, align 4
  %26 = and i8 %bf.load111, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool115.not = icmp eq i8 %26, 0
  br i1 %tobool115.not, label %if.then116, label %do.body109.do.body121_crit_edge

do.body109.do.body121_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body121

if.then116:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.58, i32 noundef %24, i32 noundef %len) #8
  br label %do.body121

do.body121:                                       ; preds = %if.then116, %do.body109.do.body121_crit_edge, %if.then83, %do.body81.do.body121_crit_edge
  %probing122 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %27 = ptrtoint ptr %probing122 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load123 = load i8, ptr %probing122, align 4
  %28 = and i8 %bf.load123, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool127.not = icmp eq i8 %28, 0
  br i1 %tobool127.not, label %if.then128, label %do.body121.do.end132_crit_edge

do.body121.do.end132_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132

if.then128:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ubi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ubi.i, align 4
  %call129 = tail call i32 @ubi_is_mapped(ptr noundef %30, i32 noundef %lnum) #8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.62, i32 noundef %lnum, i32 noundef %offs, i32 noundef %call129) #8
  br label %do.end132

do.end132:                                        ; preds = %if.then128, %do.body121.do.end132_crit_edge
  %31 = ptrtoint ptr %probing122 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load134 = load i8, ptr %probing122, align 4
  %32 = and i8 %bf.load134, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool138.not = icmp eq i8 %32, 0
  br i1 %tobool138.not, label %if.then139, label %do.end132.cleanup_crit_edge

do.end132.cleanup_crit_edge:                      ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then139:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len) #8
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %do.end132.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.then100, %do.body93.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ %call.i.i, %if.then.i ], [ %call90, %if.then100 ], [ %call90, %do.body93.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ -22, %if.then139 ], [ -22, %do.end132.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_wbuf_init(ptr noundef %c, ptr noundef %wbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %0 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #14
  %buf = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i67

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i67:                                      ; preds = %entry
  %3 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_write_size, align 8
  %div = udiv i32 %4, 24
  %add = shl nuw nsw i32 %div, 2
  %mul = add nuw nsw i32 %add, 4
  %call9.i66 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #14
  %inodes = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 14
  %5 = ptrtoint ptr %inodes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i66, ptr %inodes, align 8
  %tobool5.not = icmp eq ptr %call9.i66, null
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end8.i67
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buf, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i67
  call void @__sanitizer_cov_trace_pc() #10
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %9 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %used, align 4
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %10 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %offs, align 4
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %11 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %lnum, align 8
  %12 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_write_size, align 8
  %leb_start = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 76
  %14 = ptrtoint ptr %leb_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_start, align 4
  %rem = srem i32 %15, %13
  %sub = sub i32 %13, %rem
  %size12 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 6
  %16 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %size12, align 8
  %avail = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 4
  %17 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %avail, align 8
  %sync_callback = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 8
  %18 = ptrtoint ptr %sync_callback to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sync_callback, align 8
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %io_mutex, ptr noundef nonnull @.str.63, ptr noundef nonnull @ubifs_wbuf_init.__key) #8
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @ubifs_wbuf_init.__key.64, i16 noundef signext 3) #8
  %19 = ptrtoint ptr %wbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %c, ptr %wbuf, align 8
  %next_ino = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 13
  %20 = ptrtoint ptr %next_ino to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %next_ino, align 4
  %timer = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 11
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 1) #8
  %function = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wbuf_timer_callback_nolock, ptr %function, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wbuf_timer_callback_nolock(ptr nocapture noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wbuf_timer_callback_nolock.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wbuf_timer_callback_nolock, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %jhead = getelementptr i8, ptr %timer, i32 -148
  %6 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jhead, align 4
  %call5 = tail call ptr @dbg_jhead(i32 noundef %7) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wbuf_timer_callback_nolock.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.73, i32 noundef %5, ptr noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %timer, i32 -176
  %need_sync = getelementptr i8, ptr %timer, i32 48
  %8 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %need_sync, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %need_sync, align 8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %need_wbuf_sync = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 120
  %11 = ptrtoint ptr %need_wbuf_sync to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %need_wbuf_sync, align 8
  %12 = load ptr, ptr %add.ptr, align 8
  %bgt.i = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 117
  %13 = ptrtoint ptr %bgt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bgt.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.ubifs_wake_up_bgt.exit_crit_edge, label %land.lhs.true.i

do.end.ubifs_wake_up_bgt.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_wake_up_bgt.exit

land.lhs.true.i:                                  ; preds = %do.end
  %need_bgt.i = getelementptr inbounds %struct.ubifs_info, ptr %12, i32 0, i32 119
  %15 = ptrtoint ptr %need_bgt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %need_bgt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.ubifs_wake_up_bgt.exit_crit_edge

land.lhs.true.i.ubifs_wake_up_bgt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ubifs_wake_up_bgt.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %need_bgt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %need_bgt.i, align 4
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %14) #8
  br label %ubifs_wake_up_bgt.exit

ubifs_wake_up_bgt.exit:                           ; preds = %if.then.i, %land.lhs.true.i.ubifs_wake_up_bgt.exit_crit_edge, %do.end.ubifs_wake_up_bgt.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_wbuf_add_ino_nolock(ptr noundef %wbuf, i32 noundef %inum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %used = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 5
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inodes = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 14
  %4 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inodes, align 8
  %next_ino = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 13
  %6 = ptrtoint ptr %next_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_ino, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %next_ino, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inum, ptr %arrayidx, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_sync_wbufs_by_inode(ptr noundef %c, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %0 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53 = icmp sgt i32 %1, 0
  br i1 %cmp53, label %for.body.lr.ph, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %3, i32 %i.054
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.054)
  %cmp2 = icmp eq i32 %i.054, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %lock.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %next_ino.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 13
  %6 = ptrtoint ptr %next_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_ino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.i = icmp sgt i32 %7, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %if.end.wbuf_has_ino.exit.thread_crit_edge

if.end.wbuf_has_ino.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %wbuf_has_ino.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %inodes.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 14
  %8 = ptrtoint ptr %inodes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inodes.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.wbuf_has_ino.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.wbuf_has_ino.exit.thread_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wbuf_has_ino.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %9, i32 %i.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp1.i = icmp eq i32 %11, %5
  br i1 %cmp1.i, label %if.end4, label %for.cond.i

wbuf_has_ino.exit.thread:                         ; preds = %for.cond.i.wbuf_has_ino.exit.thread_crit_edge, %if.end.wbuf_has_ino.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  br label %for.inc

if.end4:                                          ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %12 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jhead, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %13) #8
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %16 = ptrtoint ptr %next_ino.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_ino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.i32 = icmp sgt i32 %17, 0
  br i1 %cmp8.i32, label %for.body.lr.ph.i34, label %if.end4.if.end10.thread_crit_edge

if.end4.if.end10.thread_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread

for.body.lr.ph.i34:                               ; preds = %if.end4
  %18 = ptrtoint ptr %inodes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inodes.i, align 8
  br label %for.body.i41

for.cond.i37:                                     ; preds = %for.body.i41
  %inc.i35 = add nuw nsw i32 %i.09.i38, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, %17
  br i1 %exitcond.not.i36, label %for.cond.i37.if.end10.thread_crit_edge, label %for.cond.i37.for.body.i41_crit_edge

for.cond.i37.for.body.i41_crit_edge:              ; preds = %for.cond.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i41

for.cond.i37.if.end10.thread_crit_edge:           ; preds = %for.cond.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.thread

for.body.i41:                                     ; preds = %for.cond.i37.for.body.i41_crit_edge, %for.body.lr.ph.i34
  %i.09.i38 = phi i32 [ 0, %for.body.lr.ph.i34 ], [ %inc.i35, %for.cond.i37.for.body.i41_crit_edge ]
  %arrayidx.i39 = getelementptr i32, ptr %19, i32 %i.09.i38
  %20 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %15)
  %cmp1.i40 = icmp eq i32 %21, %15
  br i1 %cmp1.i40, label %if.end10, label %for.cond.i37

if.end10.thread:                                  ; preds = %for.cond.i37.if.end10.thread_crit_edge, %if.end4.if.end10.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %for.inc

if.end10:                                         ; preds = %for.body.i41
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %call9 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx)
  tail call void @mutex_unlock(ptr noundef %io_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool12.not = icmp eq i32 %call9, 0
  br i1 %tobool12.not, label %if.end10.for.inc_crit_edge, label %if.then13

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then13:                                        ; preds = %if.end10
  %ro_error.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %22 = ptrtoint ptr %ro_error.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %ro_error.i, align 8
  %23 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.cleanup15_crit_edge

if.then13.cleanup15_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 32
  %24 = ptrtoint ptr %ro_error.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set.i, ptr %ro_error.i, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %25 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load4.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.clear5.i = and i16 %bf.load4.i, -2049
  store i16 %bf.clear5.i, ptr %no_chk_data_crc.i, align 8
  %26 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %29, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str, i32 noundef %call9) #8
  tail call void @dump_stack() #11
  br label %cleanup15

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %if.end10.thread, %wbuf_has_ino.exit.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %30 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup15_crit_edge

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %if.then.i, %if.then13.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.2 = phi i32 [ %call9, %if.then13.cleanup15_crit_edge ], [ %call9, %if.then.i ], [ 0, %entry.cleanup15_crit_edge ], [ 0, %for.inc.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_insert_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !98, !100, !102, !104, !105, !106, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !130, !132, !133, !135, !136, !138, !140, !142, !144, !146, !147, !148, !150, !151}
!llvm.named.register.sp = !{!152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/io.c", i32 76, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ubifs/io.c", i32 98, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/io.c", i32 110, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ubifs/io.c", i32 118, i32 16}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/io.c", i32 138, i32 16}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/io.c", i32 158, i32 16}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/io.c", i32 177, i32 16}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ubifs/io.c", i32 190, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/io.c", i32 251, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/io.c", i32 252, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/io.c", i32 257, i32 17}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/io.c", i32 267, i32 17}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ubifs/io.c", i32 291, i32 17}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/io.c", i32 302, i32 16}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ubifs/io.c", i32 305, i32 16}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/io.c", i32 332, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ubifs/io.c", i32 383, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/io.c", i32 568, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ubifs_wbuf_sync_nolock.__UNIQUE_ID_ddebug278, !36, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/io.c", i32 570, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/io.c", i32 571, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/io.c", i32 572, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/io.c", i32 573, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/io.c", i32 574, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/io.c", i32 577, i32 3}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/io.c", i32 637, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ubifs_wbuf_seek_nolock.__UNIQUE_ID_ddebug279, !53, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ubifs/io.c", i32 638, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/io.c", i32 639, i32 2}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ubifs/io.c", i32 640, i32 2}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/io.c", i32 641, i32 2}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/io.c", i32 642, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ubifs/io.c", i32 682, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ubifs_bg_wbufs_sync.__UNIQUE_ID_ddebug280, !67, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ubifs/io.c", i32 704, i32 17}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ubifs/io.c", i32 745, i32 2}
!74 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug281, !73, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/io.c", i32 748, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/io.c", i32 749, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/io.c", i32 750, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/io.c", i32 751, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/io.c", i32 755, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ubifs/io.c", i32 757, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ubifs/io.c", i32 778, i32 4}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ubifs/io.c", i32 783, i32 4}
!92 = !{ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug282, !91, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!93 = !{ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug283, !94, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!94 = !{!"../fs/ubifs/io.c", i32 816, i32 3}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ubifs/io.c", i32 836, i32 3}
!97 = !{ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug284, !96, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!98 = !{ptr @ubifs_wbuf_write_nolock.__UNIQUE_ID_ddebug285, !99, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!99 = !{!"../fs/ubifs/io.c", i32 858, i32 3}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ubifs/io.c", i32 908, i32 15}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ubifs/io.c", i32 936, i32 2}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ubifs_write_node_hmac.__UNIQUE_ID_ddebug286, !103, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ubifs/io.c", i32 940, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ubifs/io.c", i32 1000, i32 2}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ubifs_read_node_wbuf.__UNIQUE_ID_ddebug287, !109, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ubifs/io.c", i32 1002, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ubifs/io.c", i32 1004, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ubifs/io.c", i32 1031, i32 16}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ubifs/io.c", i32 1038, i32 16}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ubifs/io.c", i32 1044, i32 16}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ubifs/io.c", i32 1076, i32 2}
!124 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ubifs_read_node.__UNIQUE_ID_ddebug288, !123, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ubifs/io.c", i32 1078, i32 2}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ubifs/io.c", i32 1107, i32 2}
!130 = !{ptr @ubifs_wbuf_init.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../fs/ubifs/io.c", i32 1151, i32 2}
!132 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ubifs_wbuf_init.__key.64, !134, !"__key", i1 false, i1 false}
!134 = !{!"../fs/ubifs/io.c", i32 1152, i32 2}
!135 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ubifs/io.c", i32 368, i32 17}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ubifs/io.c", i32 372, i32 17}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ubifs/io.c", i32 520, i32 2}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ubifs/io.c", i32 521, i32 2}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ubifs/io.c", i32 525, i32 2}
!146 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @new_wbuf_timer_nolock.__UNIQUE_ID_ddebug277, !145, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ubifs/io.c", i32 500, i32 2}
!150 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @wbuf_timer_callback_nolock.__UNIQUE_ID_ddebug276, !149, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!152 = !{!"sp"}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i64 2148242445, i64 2148242450, i64 2148242463, i64 2148242507, i64 2148242541, i64 2148242562}
!165 = !{i64 985673, i64 985700}
!166 = !{i64 986368, i64 986395, i64 986428, i64 986449, i64 986476, i64 986502}
!167 = !{!"branch_weights", i32 4000000, i32 4001}
