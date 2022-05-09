; ModuleID = '/llk/IR_all_yes/fs/ntfs3/fsntfs.c_pt.bc'
source_filename = "../fs/ntfs3/fsntfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_str = type { i8, i8, [10 x i16] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%union.anon.65 = type { i32 }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.81 = type { %struct.wnd_bitmap, i32 }
%struct.anon.82 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.83 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.85 = type { %struct.ntfs_index, ptr }
%struct.anon.86 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.78, %struct.anon.80, i32, %struct.inode }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%union.anon.78 = type { %struct.ntfs_index }
%struct.anon.80 = type { %struct.runs_tree, ptr, i32, i8 }
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
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.34 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ATTR_DEF_ENTRY = type { [64 x i16], i32, i32, i32, i32, i64, i64 }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.VOLUME_INFO = type { i64, i8, i8, i16 }
%struct.SECURITY_DESCRIPTOR_RELATIVE = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.SID = type { i8, i8, [6 x i8], [0 x i32] }
%struct.ACL = type { i8, i8, i16, i16, i16 }
%struct.ACE_HEADER = type { i8, i8, i16 }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HDR }
%struct.INDEX_HDR = type { i32, i32, i32, i8, [3 x i8] }
%struct.anon.88 = type { i16, i16, i32 }
%struct.NTFS_DE_SII = type { %struct.NTFS_DE, i32, %struct.SECURITY_HDR }
%struct.NTFS_DE = type { %union.anon.87, i16, i16, i16, i16 }
%union.anon.87 = type { %struct.MFT_REF }
%struct.SECURITY_HDR = type <{ %struct.SECURITY_KEY, i64, i32 }>
%struct.SECURITY_KEY = type { i32, i32 }
%struct.NTFS_DE_SDH = type { %struct.NTFS_DE, %struct.SECURITY_KEY, %struct.SECURITY_HDR, [2 x i16] }
%struct.NTFS_DE_R = type { %struct.NTFS_DE, %struct.REPARSE_KEY, i32 }
%struct.REPARSE_KEY = type { i32, %struct.MFT_REF }

@NAME_MFT = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 4, i8 0, [10 x i16] [i16 36, i16 77, i16 70, i16 84, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_MIRROR = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 8, i8 0, [10 x i16] [i16 36, i16 77, i16 70, i16 84, i16 77, i16 105, i16 114, i16 114, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_LOGFILE = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 8, i8 0, [10 x i16] [i16 36, i16 76, i16 111, i16 103, i16 70, i16 105, i16 108, i16 101, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_VOLUME = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 7, i8 0, [10 x i16] [i16 36, i16 86, i16 111, i16 108, i16 117, i16 109, i16 101, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_ATTRDEF = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 8, i8 0, [10 x i16] [i16 36, i16 65, i16 116, i16 116, i16 114, i16 68, i16 101, i16 102, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_ROOT = dso_local constant { { i8, i8, <{ i16, [9 x i16] }> }, [42 x i8] } { { i8, i8, <{ i16, [9 x i16] }> } { i8 1, i8 0, <{ i16, [9 x i16] }> <{ i16 46, [9 x i16] zeroinitializer }> }, [42 x i8] zeroinitializer }, align 32
@NAME_BITMAP = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 7, i8 0, [10 x i16] [i16 36, i16 66, i16 105, i16 116, i16 109, i16 97, i16 112, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_BOOT = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 5, i8 0, [10 x i16] [i16 36, i16 66, i16 111, i16 111, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_BADCLUS = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 8, i8 0, [10 x i16] [i16 36, i16 66, i16 97, i16 100, i16 67, i16 108, i16 117, i16 115, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_QUOTA = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 6, i8 0, [10 x i16] [i16 36, i16 81, i16 117, i16 111, i16 116, i16 97, i16 0, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_SECURE = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 7, i8 0, [10 x i16] [i16 36, i16 83, i16 101, i16 99, i16 117, i16 114, i16 101, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_UPCASE = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 7, i8 0, [10 x i16] [i16 36, i16 85, i16 112, i16 67, i16 97, i16 115, i16 101, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_EXTEND = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 7, i8 0, [10 x i16] [i16 36, i16 69, i16 120, i16 116, i16 101, i16 110, i16 100, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_OBJID = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 6, i8 0, [10 x i16] [i16 36, i16 79, i16 98, i16 106, i16 73, i16 100, i16 0, i16 0, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_REPARSE = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 8, i8 0, [10 x i16] [i16 36, i16 82, i16 101, i16 112, i16 97, i16 114, i16 115, i16 101, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@NAME_USNJRNL = dso_local constant { %struct.cpu_str, [42 x i8] } { %struct.cpu_str { i8 8, i8 0, [10 x i16] [i16 36, i16 85, i16 115, i16 110, i16 74, i16 114, i16 110, i16 108, i16 0, i16 0] }, [42 x i8] zeroinitializer }, align 32
@BAD_NAME = dso_local constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 9216, i16 16896, i16 24832, i16 25600], [24 x i8] zeroinitializer }, align 32
@I30_NAME = dso_local constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 9216, i16 18688, i16 13056, i16 12288], [24 x i8] zeroinitializer }, align 32
@SII_NAME = dso_local constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 9216, i16 21248, i16 18688, i16 18688], [24 x i8] zeroinitializer }, align 32
@SDH_NAME = dso_local constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 9216, i16 21248, i16 17408, i16 18432], [24 x i8] zeroinitializer }, align 32
@SDS_NAME = dso_local constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 9216, i16 21248, i16 17408, i16 21248], [24 x i8] zeroinitializer }, align 32
@SO_NAME = dso_local constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 9216, i16 20224], [28 x i8] zeroinitializer }, align 32
@SQ_NAME = dso_local constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 9216, i16 20736], [28 x i8] zeroinitializer }, align 32
@SR_NAME = dso_local constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 9216, i16 20992], [28 x i8] zeroinitializer }, align 32
@WOF_NAME = dso_local constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 22272, i16 28416, i16 26112, i16 17152, i16 28416, i16 27904, i16 28672, i16 29184, i16 25856, i16 29440, i16 29440, i16 25856, i16 25600, i16 17408, i16 24832, i16 29696, i16 24832], [62 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015Skip $Extend 'cause NTFS version\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to load $Extend.\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013$LogFile is too big\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to load $MFT.\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013no free space to extend mft\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015Invalid reserved record %x\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015MftZone: unavailable\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015Mark volume as dirty due to NTFS errors\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013failed to read block %llx\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013failed to sync buffer at block %llx, error %d\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ntfs3/fsntfs.c\00", [46 x i8] zeroinitializer }, align 32
@s_default_security = dso_local constant { [80 x i8], [48 x i8] } { [80 x i8] c"\01\00\04\800\00\00\00@\00\00\00\00\00\00\00\14\00\00\00\02\00\1C\00\01\00\00\00\00\03\14\00\FF\01\1F\00\01\01\00\00\00\00\00\01\00\00\00\00\01\02\00\00\00\00\00\05 \00\00\00 \02\00\00\01\02\00\00\00\00\00\05 \00\00\00 \02\00\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to load $Secure.\00", [38 x i8] zeroinitializer }, align 32
@__func__.ntfs_extend_mft = private unnamed_addr constant [16 x i8] c"ntfs_extend_mft\00", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013failed to read volume at offset 0x%llx\00", [55 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"NAME_MFT\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 18, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"NAME_MIRROR\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 21, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"NAME_LOGFILE\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 24, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"NAME_VOLUME\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 27, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"NAME_ATTRDEF\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 30, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"NAME_ROOT\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 33, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"NAME_BITMAP\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 36, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"NAME_BOOT\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 39, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"NAME_BADCLUS\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 42, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"NAME_QUOTA\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 45, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"NAME_SECURE\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 48, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"NAME_UPCASE\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 51, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"NAME_EXTEND\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 54, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"NAME_OBJID\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 57, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"NAME_REPARSE\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 60, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"NAME_USNJRNL\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 63, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"BAD_NAME\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 66, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"I30_NAME\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 69, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"SII_NAME\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 72, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"SDH_NAME\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 75, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"SDS_NAME\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 78, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"SO_NAME\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 81, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"SQ_NAME\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 84, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"SR_NAME\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"WOF_NAME\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 92, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 192, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 202, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 261, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 290, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 379, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 593, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 817, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 936, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1034, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1063, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1527, i32 9 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"s_default_security\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1696, i32 10 }
@___asan_gen_.132 = private constant [21 x i8] c"../fs/ntfs3/fsntfs.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1860, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 366, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [22 x i8] c"../fs/ntfs3/ntfs_fs.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1018, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 788, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 260, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 717, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @NAME_MFT, ptr @NAME_MIRROR, ptr @NAME_LOGFILE, ptr @NAME_VOLUME, ptr @NAME_ATTRDEF, ptr @NAME_ROOT, ptr @NAME_BITMAP, ptr @NAME_BOOT, ptr @NAME_BADCLUS, ptr @NAME_QUOTA, ptr @NAME_SECURE, ptr @NAME_UPCASE, ptr @NAME_EXTEND, ptr @NAME_OBJID, ptr @NAME_REPARSE, ptr @NAME_USNJRNL, ptr @BAD_NAME, ptr @I30_NAME, ptr @SII_NAME, ptr @SDH_NAME, ptr @SDS_NAME, ptr @SO_NAME, ptr @SQ_NAME, ptr @SR_NAME, ptr @WOF_NAME, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @s_default_security, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_MFT to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_MIRROR to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_LOGFILE to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_VOLUME to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_ATTRDEF to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_ROOT to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_BITMAP to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_BOOT to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_BADCLUS to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_QUOTA to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_SECURE to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_UPCASE to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_EXTEND to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_OBJID to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_REPARSE to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NAME_USNJRNL to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BAD_NAME to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @I30_NAME to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SII_NAME to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SDH_NAME to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SDS_NAME to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SO_NAME to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SQ_NAME to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SR_NAME to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WOF_NAME to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_default_security to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_fix_pre_write(ptr nocapture noundef %rhdr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fix_off = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 1
  %0 = ptrtoint ptr %fix_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fix_off, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %fix_num = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 2
  %3 = ptrtoint ptr %fix_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fix_num, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv2 = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %add = add nuw nsw i32 %mul, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp = icmp ugt i32 %add, 512
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %dec = add i16 %5, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp eq i16 %4, 0
  %conv7 = zext i16 %dec to i32
  %mul8 = shl nuw nsw i32 %conv7, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8, i32 %bytes)
  %cmp9 = icmp ugt i32 %mul8, %bytes
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %add.ptr = getelementptr i8, ptr %rhdr, i32 %conv
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32766, i16 %7)
  %cmp13 = icmp ugt i16 %7, 32766
  %add17 = add i16 %7, 1
  %storemerge = select i1 %cmp13, i16 1, i16 %add17
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %storemerge, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool22.not42 = icmp eq i16 %dec, 0
  br i1 %tobool22.not42, label %if.end.cleanup_crit_edge, label %while.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %add.ptr20 = getelementptr i8, ptr %rhdr, i32 510
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %fn.045 = phi i16 [ %dec21, %while.body.while.body_crit_edge ], [ %dec, %while.body.preheader ]
  %ptr.044 = phi ptr [ %add.ptr23, %while.body.while.body_crit_edge ], [ %add.ptr20, %while.body.preheader ]
  %fixup.043 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec21 = add i16 %fn.045, -1
  %9 = ptrtoint ptr %ptr.044 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ptr.044, align 2
  %incdec.ptr = getelementptr i16, ptr %fixup.043, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %incdec.ptr, align 2
  store i16 %storemerge, ptr %ptr.044, align 2
  %add.ptr23 = getelementptr i16, ptr %ptr.044, i32 256
  %tobool22.not = icmp eq i16 %dec21, 0
  br i1 %tobool22.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false4.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_fix_post_read(ptr nocapture noundef %rhdr, i32 noundef %bytes, i1 noundef zeroext %simple) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fix_off = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 1
  %0 = ptrtoint ptr %fix_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fix_off, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  br i1 %simple, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %bytes, 9
  %add = add nuw nsw i32 %shr, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fix_num = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 2
  %3 = ptrtoint ptr %fix_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fix_num, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv, %cond.false ]
  %conv1 = trunc i32 %cond to i16
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %conv5 = shl nuw nsw i32 %cond, 1
  %mul = and i32 %conv5, 131070
  %add6 = add nuw nsw i32 %mul, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add6)
  %cmp = icmp ugt i32 %add6, 512
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %dec = add i16 %conv1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1)
  %tobool9.not = icmp eq i16 %conv1, 0
  %conv11 = zext i16 %dec to i32
  %mul12 = shl nuw nsw i32 %conv11, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12, i32 %bytes)
  %cmp13 = icmp ugt i32 %mul12, %bytes
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %lor.lhs.false8.cleanup_crit_edge, label %if.end

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %add.ptr = getelementptr i8, ptr %rhdr, i32 %conv2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool18.not43 = icmp eq i16 %dec, 0
  br i1 %tobool18.not43, label %if.end.cleanup_crit_edge, label %while.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %add.ptr16 = getelementptr i8, ptr %rhdr, i32 510
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %fn.047 = phi i16 [ %dec17, %while.body.while.body_crit_edge ], [ %dec, %while.body.preheader ]
  %ptr.046 = phi ptr [ %add.ptr25, %while.body.while.body_crit_edge ], [ %add.ptr16, %while.body.preheader ]
  %fixup.045 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %ret.044 = phi i32 [ %spec.select, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dec17 = add i16 %fn.047, -1
  %8 = ptrtoint ptr %ptr.046 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ptr.046, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp21.not = icmp eq i16 %9, %7
  %spec.select = select i1 %cmp21.not, i32 %ret.044, i32 -555
  %incdec.ptr = getelementptr i16, ptr %fixup.045, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %incdec.ptr, align 2
  %12 = ptrtoint ptr %ptr.046 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ptr.046, align 2
  %add.ptr25 = getelementptr i16, ptr %ptr.046, i32 256
  %tobool18.not = icmp eq i16 %dec17, 0
  br i1 %tobool18.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_extend_init(ptr nocapture noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  %ref = alloca %struct.MFT_REF, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #11
  %major_ver = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 29, i32 5
  %2 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %5 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 184549376, ptr %ref, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %5, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2816, ptr %4, align 2
  %call = call ptr @ntfs_iget5(ptr noundef %1, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_EXTEND) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call to i32
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  br label %out

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp8 = icmp eq i16 %12, 16384
  br i1 %cmp8, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end6
  %call12 = call ptr @dir_search_u(ptr noundef %call, ptr noundef nonnull @NAME_OBJID, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call12, null
  %cmp.i80 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i80
  br i1 %or.cond, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  %call15 = call zeroext i1 @is_bad_inode(ptr noundef nonnull %call12) #11
  br i1 %call15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef nonnull %call12) #11
  br label %if.end19

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call12, i32 -360
  %ni = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32, i32 1
  %13 = ptrtoint ptr %ni to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ni, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call12, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %objid_no = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 18
  %16 = ptrtoint ptr %objid_no to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %objid_no, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16, %if.end11.if.end19_crit_edge
  %call20 = call ptr @dir_search_u(ptr noundef %call, ptr noundef nonnull @NAME_QUOTA, ptr noundef null) #11
  %tobool21.not = icmp eq ptr %call20, null
  %cmp.i81 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  %or.cond85 = or i1 %tobool21.not, %cmp.i81
  br i1 %or.cond85, label %if.end19.if.end26_crit_edge, label %if.then24

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino25 = getelementptr inbounds %struct.inode, ptr %call20, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino25, align 8
  %quota_no = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 19
  %19 = ptrtoint ptr %quota_no to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %quota_no, align 8
  call void @iput(ptr noundef nonnull %call20) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %call27 = call ptr @dir_search_u(ptr noundef %call, ptr noundef nonnull @NAME_REPARSE, ptr noundef null) #11
  %tobool28.not = icmp eq ptr %call27, null
  %cmp.i82 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  %or.cond86 = or i1 %tobool28.not, %cmp.i82
  br i1 %or.cond86, label %if.end26.if.end35_crit_edge, label %if.then31

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i83 = getelementptr i8, ptr %call27, i32 -360
  %ni33 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31, i32 1
  %20 = ptrtoint ptr %ni33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i83, ptr %ni33, align 8
  %i_ino34 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino34, align 8
  %reparse_no = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 20
  %23 = ptrtoint ptr %reparse_no to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %reparse_no, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end26.if.end35_crit_edge
  %call36 = call ptr @dir_search_u(ptr noundef %call, ptr noundef nonnull @NAME_USNJRNL, ptr noundef null) #11
  %tobool37.not = icmp eq ptr %call36, null
  %cmp.i84 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %or.cond87 = or i1 %tobool37.not, %cmp.i84
  br i1 %or.cond87, label %if.end35.out_crit_edge, label %if.then40

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %i_ino41 = getelementptr inbounds %struct.inode, ptr %call36, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino41, align 8
  %usn_jrnl_no = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 21
  %26 = ptrtoint ptr %usn_jrnl_no to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %usn_jrnl_no, align 8
  call void @iput(ptr noundef nonnull %call36) #11
  br label %out

out:                                              ; preds = %if.then40, %if.end35.out_crit_edge, %if.end6.out_crit_edge, %if.then4
  %err.0 = phi i32 [ %9, %if.then4 ], [ -22, %if.end6.out_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end35.out_crit_edge ]
  %inode.0 = phi ptr [ null, %if.then4 ], [ %call, %if.end6.out_crit_edge ], [ %call, %if.then40 ], [ %call, %if.end35.out_crit_edge ]
  call void @iput(ptr noundef %inode.0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget5(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dir_search_u(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_loadlog_and_replay(ptr noundef %ni, ptr nocapture noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  %initialized = alloca i8, align 1
  %ref = alloca %struct.MFT_REF, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %initialized) #11
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %initialized, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #11
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %4)
  %cmp = icmp ugt i64 %4, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  br label %out

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %6 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 8
  store i32 %or, ptr %flags, align 8
  %9 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ref, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %6, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 256, ptr %5, align 2
  %call = call ptr @ntfs_iget5(ptr noundef %1, ptr noundef nonnull %ref, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %tobool.not77 = icmp eq ptr %call, null
  %tobool.not = or i1 %cmp.i, %tobool.not77
  br i1 %tobool.not, label %if.then5, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then5:                                         ; preds = %if.end
  %mft = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27
  %12 = ptrtoint ptr %mft to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mft, align 8
  %lbo2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 1
  %14 = ptrtoint ptr %lbo2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lbo2, align 8
  store i64 %15, ptr %mft, align 8
  %call9 = call ptr @ntfs_iget5(ptr noundef %1, ptr noundef nonnull %ref, ptr noundef null) #11
  %16 = ptrtoint ptr %mft to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %mft, align 8
  %cmp.i70 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %tobool16.not = icmp eq ptr %call9, null
  %or.cond = or i1 %cmp.i70, %tobool16.not
  br i1 %or.cond, label %if.then17, label %if.then5.if.end18_crit_edge

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  br label %out

if.end18:                                         ; preds = %if.then5.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %inode.276 = phi ptr [ %call, %if.end.if.end18_crit_edge ], [ %call9, %if.then5.if.end18_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %inode.276, i32 -360
  %ni21 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  %17 = ptrtoint ptr %ni21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %ni21, align 8
  %call24 = call i32 @ni_load_all_mi(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = call i32 @log_replay(ptr noundef %ni, ptr noundef nonnull %initialized) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end18.if.end28_crit_edge
  %err.0 = phi i32 [ %call24, %if.end18.if.end28_crit_edge ], [ %call27, %if.then26 ]
  call void @iput(ptr noundef nonnull %inode.276) #11
  %18 = ptrtoint ptr %ni21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ni21, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev, align 4
  %call31 = call i32 @sync_blockdev(ptr noundef %20) #11
  %21 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev, align 4
  call void @invalidate_bdev(ptr noundef %22) #11
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %and = and i32 %24, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end36, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end36:                                         ; preds = %if.end28
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %if.end36
  %27 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %initialized, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool38.not = icmp eq i8 %28, 0
  br i1 %tobool38.not, label %lor.lhs.false.out_crit_edge, label %if.end40

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end40:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %call41 = call i32 @ntfs_bio_fill_1(ptr noundef %sbi, ptr noundef %run)
  br label %out

out:                                              ; preds = %if.end40, %lor.lhs.false.out_crit_edge, %if.end36.out_crit_edge, %if.end28.out_crit_edge, %if.then17, %if.then
  %err.1 = phi i32 [ -22, %if.then ], [ %err.0, %if.end36.out_crit_edge ], [ %call41, %if.end40 ], [ %err.0, %lor.lhs.false.out_crit_edge ], [ -22, %if.then17 ], [ 0, %if.end28.out_crit_edge ]
  %flags42 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 14
  %29 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags42, align 8
  %and43 = and i32 %30, -9
  store i32 %and43, ptr %flags42, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %initialized) #11
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_load_all_mi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @log_replay(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_bio_fill_1(ptr nocapture noundef readonly %sbi, ptr noundef %run) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %run_idx = alloca i32, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %4 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %6 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #11
  %7 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %clen, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_idx) #11
  %8 = ptrtoint ptr %run_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %run_idx, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #11
  %9 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %15 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i) #11
  %21 = call ptr @memset(ptr %call.i.i, i32 255, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %22 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %28 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef nonnull %call38.i.i.i) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 788) #11
  %32 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !108

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i94 = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i94, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i95 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i95)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i95, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !108

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !109
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef 4) #11
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and.i.i4.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %36, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %43 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %phi.cmp.i.i.i = icmp eq i32 %43, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %36) #11
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call7 = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef 0, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %run_idx) #11
  br i1 %call7, label %if.end9, label %lock_page.exit.out_crit_edge

lock_page.exit.out_crit_edge:                     ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %lock_page.exit
  call void @blk_start_plug(ptr noundef nonnull %plug) #11
  %sh_prom = zext i8 %5 to i64
  br label %do.body10

do.body10:                                        ; preds = %do.cond38.do.body10_crit_edge, %if.end9
  %bio.0 = phi ptr [ null, %if.end9 ], [ %bio.1.i, %do.cond38.do.body10_crit_edge ]
  %44 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lcn, align 4
  %conv = zext i32 %45 to i64
  %shl = shl i64 %conv, %sh_prom
  %46 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clen, align 4
  %conv12 = zext i32 %47 to i64
  %shl15 = shl i64 %conv12, %sh_prom
  br label %new_bio

new_bio:                                          ; preds = %for.cond.new_bio_crit_edge, %do.body10
  %bio.1 = phi ptr [ %bio.0, %do.body10 ], [ %bio.1.i, %for.cond.new_bio_crit_edge ]
  %lbo.0 = phi i64 [ %shl, %do.body10 ], [ %lbo.1, %for.cond.new_bio_crit_edge ]
  %len.0 = phi i64 [ %shl15, %do.body10 ], [ %len.1, %for.cond.new_bio_crit_edge ]
  %call.i.i96 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #11
  %tobool.not.i = icmp eq ptr %call.i.i96, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %new_bio.if.end19_crit_edge

new_bio.if.end19_crit_edge:                       ; preds = %new_bio
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true.i:                                  ; preds = %new_bio
  %48 = call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i97 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i97 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %53, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end40_crit_edge, label %land.rhs.i.preheader

land.lhs.true.i.do.end40_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.rhs.i.preheader:                             ; preds = %land.lhs.true.i
  %call.i12.i = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 128, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i = icmp eq ptr %call.i12.i, null
  br i1 %tobool3.not.i, label %land.rhs.i.1, label %land.rhs.i.preheader.if.end19_crit_edge

land.rhs.i.preheader.if.end19_crit_edge:          ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.1:                                     ; preds = %land.rhs.i.preheader
  %call.i12.i.1 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 64, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.1 = icmp eq ptr %call.i12.i.1, null
  br i1 %tobool3.not.i.1, label %land.rhs.i.2, label %land.rhs.i.1.if.end19_crit_edge

land.rhs.i.1.if.end19_crit_edge:                  ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.2:                                     ; preds = %land.rhs.i.1
  %call.i12.i.2 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 32, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.2 = icmp eq ptr %call.i12.i.2, null
  br i1 %tobool3.not.i.2, label %land.rhs.i.3, label %land.rhs.i.2.if.end19_crit_edge

land.rhs.i.2.if.end19_crit_edge:                  ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.3:                                     ; preds = %land.rhs.i.2
  %call.i12.i.3 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 16, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.3 = icmp eq ptr %call.i12.i.3, null
  br i1 %tobool3.not.i.3, label %land.rhs.i.4, label %land.rhs.i.3.if.end19_crit_edge

land.rhs.i.3.if.end19_crit_edge:                  ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.4:                                     ; preds = %land.rhs.i.3
  %call.i12.i.4 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 8, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.4 = icmp eq ptr %call.i12.i.4, null
  br i1 %tobool3.not.i.4, label %land.rhs.i.5, label %land.rhs.i.4.if.end19_crit_edge

land.rhs.i.4.if.end19_crit_edge:                  ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.5:                                     ; preds = %land.rhs.i.4
  %call.i12.i.5 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 4, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.5 = icmp eq ptr %call.i12.i.5, null
  br i1 %tobool3.not.i.5, label %land.rhs.i.6, label %land.rhs.i.5.if.end19_crit_edge

land.rhs.i.5.if.end19_crit_edge:                  ; preds = %land.rhs.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.6:                                     ; preds = %land.rhs.i.5
  %call.i12.i.6 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 2, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.6 = icmp eq ptr %call.i12.i.6, null
  br i1 %tobool3.not.i.6, label %land.rhs.i.7, label %land.rhs.i.6.if.end19_crit_edge

land.rhs.i.6.if.end19_crit_edge:                  ; preds = %land.rhs.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.7:                                     ; preds = %land.rhs.i.6
  %call.i12.i.7 = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i.7 = icmp eq ptr %call.i12.i.7, null
  br i1 %tobool3.not.i.7, label %land.rhs.i.7.do.end40_crit_edge, label %land.rhs.i.7.if.end19_crit_edge

land.rhs.i.7.if.end19_crit_edge:                  ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.rhs.i.7.do.end40_crit_edge:                  ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

if.end19:                                         ; preds = %land.rhs.i.7.if.end19_crit_edge, %land.rhs.i.6.if.end19_crit_edge, %land.rhs.i.5.if.end19_crit_edge, %land.rhs.i.4.if.end19_crit_edge, %land.rhs.i.3.if.end19_crit_edge, %land.rhs.i.2.if.end19_crit_edge, %land.rhs.i.1.if.end19_crit_edge, %land.rhs.i.preheader.if.end19_crit_edge, %new_bio.if.end19_crit_edge
  %bio.1.i = phi ptr [ %call.i.i96, %new_bio.if.end19_crit_edge ], [ %call.i12.i, %land.rhs.i.preheader.if.end19_crit_edge ], [ %call.i12.i.1, %land.rhs.i.1.if.end19_crit_edge ], [ %call.i12.i.2, %land.rhs.i.2.if.end19_crit_edge ], [ %call.i12.i.3, %land.rhs.i.3.if.end19_crit_edge ], [ %call.i12.i.4, %land.rhs.i.4.if.end19_crit_edge ], [ %call.i12.i.5, %land.rhs.i.5.if.end19_crit_edge ], [ %call.i12.i.6, %land.rhs.i.6.if.end19_crit_edge ], [ %call.i12.i.7, %land.rhs.i.7.if.end19_crit_edge ]
  %tobool20.not = icmp eq ptr %bio.1, null
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @bio_chain(ptr noundef nonnull %bio.1, ptr noundef nonnull %bio.1.i) #11
  call void @submit_bio(ptr noundef nonnull %bio.1) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 3
  %54 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %55, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 1
  %56 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %57, %3
  br i1 %cmp.not.i, label %if.end22.bio_set_dev.exit_crit_edge, label %if.then.i98

if.end22.bio_set_dev.exit_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i98:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %55, -2177
  %58 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i98, %if.end22.bio_set_dev.exit_crit_edge
  %59 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %3, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio.1.i) #11
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 2
  %60 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %bi_opf, align 8
  %shr = lshr i64 %lbo.0, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 8
  %61 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %shr, ptr %bi_iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end29.for.cond_crit_edge, %bio_set_dev.exit
  %lbo.1 = phi i64 [ %lbo.0, %bio_set_dev.exit ], [ %add31, %if.end29.for.cond_crit_edge ]
  %len.1 = phi i64 [ %len.0, %bio_set_dev.exit ], [ %sub, %if.end29.for.cond_crit_edge ]
  %62 = call i64 @llvm.umin.i64(i64 %len.1, i64 4096)
  %63 = trunc i64 %62 to i32
  %call25 = call i32 @bio_add_page(ptr noundef nonnull %bio.1.i, ptr noundef nonnull %call38.i.i.i, i32 noundef %63, i32 noundef 0) #11
  %cmp26 = icmp ult i32 %call25, %63
  br i1 %cmp26, label %for.cond.new_bio_crit_edge, label %if.end29

for.cond.new_bio_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %new_bio

if.end29:                                         ; preds = %for.cond
  %add31 = add i64 %62, %lbo.1
  %cmp33.not = icmp ugt i64 %len.1, 4096
  %sub = sub i64 %len.1, %62
  br i1 %cmp33.not, label %if.end29.for.cond_crit_edge, label %do.cond38

if.end29.for.cond_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.cond38:                                        ; preds = %if.end29
  %64 = ptrtoint ptr %run_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %run_idx, align 4
  %inc = add i32 %65, 1
  store i32 %inc, ptr %run_idx, align 4
  %call39 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc, ptr noundef null, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #11
  br i1 %call39, label %do.cond38.do.body10_crit_edge, label %do.end40.thread

do.cond38.do.body10_crit_edge:                    ; preds = %do.cond38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.end40:                                         ; preds = %land.rhs.i.7.do.end40_crit_edge, %land.lhs.true.i.do.end40_crit_edge
  %tobool41.not = icmp eq ptr %bio.1, null
  br i1 %tobool41.not, label %do.end40.if.end47_crit_edge, label %do.end40.if.end46_crit_edge

do.end40.if.end46_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end40.if.end47_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

do.end40.thread:                                  ; preds = %do.cond38
  %tobool41.not116 = icmp eq ptr %bio.1.i, null
  br i1 %tobool41.not116, label %do.end40.thread.if.end47_crit_edge, label %if.then44

do.end40.thread.if.end47_crit_edge:               ; preds = %do.end40.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then44:                                        ; preds = %do.end40.thread
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = call i32 @submit_bio_wait(ptr noundef nonnull %bio.1.i) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.end40.if.end46_crit_edge
  %bio.2120 = phi ptr [ %bio.1.i, %if.then44 ], [ %bio.1, %do.end40.if.end46_crit_edge ]
  %err.1 = phi i32 [ %call45, %if.then44 ], [ -12, %do.end40.if.end46_crit_edge ]
  call void @bio_put(ptr noundef nonnull %bio.2120) #11
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %do.end40.thread.if.end47_crit_edge, %do.end40.if.end47_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end46 ], [ -12, %do.end40.if.end47_crit_edge ], [ 0, %do.end40.thread.if.end47_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #11
  br label %out

out:                                              ; preds = %if.end47, %lock_page.exit.out_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end47 ], [ -2, %lock_page.exit.out_crit_edge ]
  call void @unlock_page(ptr noundef nonnull %call38.i.i.i) #11
  %66 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %32, align 4
  %and.i.i99 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %and.i.i99, 0
  br i1 %tobool.not.i.i100, label %if.end.i.i103, label %if.then.i.i102, !prof !108

if.then.i.i102:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i101 = add i32 %67, -1
  br label %_compound_head.exit.i105

if.end.i.i103:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i105

_compound_head.exit.i105:                         ; preds = %if.end.i.i103, %if.then.i.i102
  %retval.0.i.i104 = phi i32 [ %sub.i.i101, %if.then.i.i102 ], [ %68, %if.end.i.i103 ]
  %69 = inttoptr i32 %retval.0.i.i104 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %70 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !112

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i105
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.18) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i105
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_bio_fill_1, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !117

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %69, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup48_crit_edge

folio_put_testzero.exit.i.i.cleanup48_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %69) #11
  br label %cleanup48

cleanup48:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup48_crit_edge ], [ %err.3, %folio_put_testzero.exit.i.i.cleanup48_crit_edge ], [ %err.3, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_query_def(ptr nocapture noundef readonly %sbi, i32 noundef %type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %type)
  %def_entries = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 23
  %1 = ptrtoint ptr %def_entries to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %def_entries, align 8
  %sub = add i32 %2, -1
  %def_table = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 22
  %3 = ptrtoint ptr %def_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %def_table, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry
  %max_idx.033 = phi i32 [ %sub, %entry ], [ %max_idx.2, %cleanup.while.body_crit_edge ]
  %min_idx.032 = phi i32 [ 0, %entry ], [ %min_idx.2, %cleanup.while.body_crit_edge ]
  %sub1 = sub i32 %max_idx.033, %min_idx.032
  %shr = lshr i32 %sub1, 1
  %add = add i32 %shr, %min_idx.032
  %type3 = getelementptr %struct.ATTR_DEF_ENTRY, ptr %4, i32 %add, i32 1
  %5 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %type)
  %tobool.not = icmp eq i32 %6, %type
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr %struct.ATTR_DEF_ENTRY, ptr %4, i32 %add
  br label %cleanup16

if.end:                                           ; preds = %while.body
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %sub4 = sub i32 %7, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp5 = icmp slt i32 %sub4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add7 = add i32 %add, 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool8.not = icmp eq i32 %add, 0
  br i1 %tobool8.not, label %if.else.cleanup16_crit_edge, label %if.then9

if.else.cleanup16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub10 = add i32 %add, -1
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then6
  %min_idx.2 = phi i32 [ %add7, %if.then6 ], [ %min_idx.032, %if.then9 ]
  %max_idx.2 = phi i32 [ %max_idx.033, %if.then6 ], [ %sub10, %if.then9 ]
  %cmp.not = icmp ult i32 %max_idx.2, %min_idx.2
  br i1 %cmp.not, label %cleanup.cleanup16_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup.cleanup16_crit_edge, %if.else.cleanup16_crit_edge, %if.then
  %retval.2 = phi ptr [ %add.ptr, %if.then ], [ null, %cleanup.cleanup16_crit_edge ], [ null, %if.else.cleanup16_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_look_for_free_space(ptr noundef %sbi, i32 noundef %lcn, i32 noundef %len, ptr nocapture noundef writeonly %new_lcn, ptr nocapture noundef writeonly %new_len, i32 noundef %opt) local_unnamed_addr #3 align 64 {
entry:
  %alcn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alcn) #11
  %2 = ptrtoint ptr %alcn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alcn, align 4, !annotation !103
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 1
  tail call void @down_write_nested(ptr noundef %rw_lock, i32 noundef 0) #11
  %and = and i32 %opt, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %zone_end.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 15
  %3 = ptrtoint ptr %zone_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zone_end.i, align 4
  %zone_bit.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 14
  %5 = ptrtoint ptr %zone_bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %zone_bit.i, align 4
  %sub.i = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool2.not = icmp eq i32 %sub.i, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @ntfs_refresh_zone(ptr noundef %sbi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then3.up_write_crit_edge

if.then3.up_write_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %up_write

if.end8:                                          ; preds = %if.then3
  %7 = ptrtoint ptr %zone_end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %zone_end.i, align 4
  %9 = ptrtoint ptr %zone_bit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %zone_bit.i, align 4
  %sub.i124 = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i124)
  %tobool9.not = icmp eq i32 %sub.i124, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sbi, align 8
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %12, ptr noundef nonnull @.str.4) #11
  br label %up_write

if.end12:                                         ; preds = %if.end8.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %zlen.0132 = phi i32 [ %sub.i124, %if.end8.if.end12_crit_edge ], [ %sub.i, %if.then.if.end12_crit_edge ]
  %13 = ptrtoint ptr %zone_bit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_bit.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %zlen.0132, i32 %len)
  %add = add i32 %14, %15
  %sub = sub i32 %zlen.0132, %15
  tail call void @wnd_zone_set(ptr noundef %used, i32 noundef %add, i32 noundef %sub) #11
  %call14 = tail call i32 @wnd_set_used(ptr noundef %used, i32 noundef %14, i32 noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.up_write_crit_edge

if.end12.up_write_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %up_write

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %alcn to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %alcn, align 4
  br label %space_found

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lcn)
  %tobool19.not = icmp eq i32 %lcn, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %next_free_lcn = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 1
  %17 = ptrtoint ptr %next_free_lcn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next_free_lcn, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %lcn.addr.0 = phi i32 [ %lcn, %if.end18.if.end22_crit_edge ], [ %18, %if.then20 ]
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 3
  %19 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %lcn.addr.0, i32 %20)
  %cmp23.not = icmp ult i32 %lcn.addr.0, %20
  %spec.store.select = select i1 %cmp23.not, i32 %lcn.addr.0, i32 0
  %call26 = call i32 @wnd_find(ptr noundef %used, i32 noundef %len, i32 noundef %spec.store.select, i32 noundef 1, ptr noundef nonnull %alcn) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.space_found_crit_edge

if.end22.space_found_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %space_found

if.end29:                                         ; preds = %if.end22
  %zone_end.i126 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 15
  %21 = ptrtoint ptr %zone_end.i126 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %zone_end.i126, align 4
  %zone_bit.i127 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 14
  %23 = ptrtoint ptr %zone_bit.i127 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %zone_bit.i127, align 4
  %sub.i128 = sub i32 %22, %24
  %total_zeroes.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 4
  %25 = ptrtoint ptr %total_zeroes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_zeroes.i, align 4
  %add32 = add i32 %26, %sub.i128
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %len)
  %cmp33 = icmp ult i32 %add32, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %sub.i128)
  %cmp34 = icmp ult i32 %sub.i128, 101
  %or.cond = or i1 %cmp34, %cmp33
  br i1 %or.cond, label %if.end29.up_write_crit_edge, label %if.end36

if.end29.up_write_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %up_write

if.end36:                                         ; preds = %if.end29
  %shr = lshr i32 %sub.i128, 1
  %27 = call i32 @llvm.umax.i32(i32 %shr, i32 %len)
  %28 = call i32 @llvm.usub.sat.i32(i32 %sub.i128, i32 %27)
  %29 = call i32 @llvm.umax.i32(i32 %28, i32 100)
  call void @wnd_zone_set(ptr noundef %used, i32 noundef %24, i32 noundef %29) #11
  %call57 = call i32 @wnd_find(ptr noundef %used, i32 noundef %len, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %alcn) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end36.up_write_crit_edge, label %if.end36.space_found_crit_edge

if.end36.space_found_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %space_found

if.end36.up_write_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %up_write

space_found:                                      ; preds = %if.end36.space_found_crit_edge, %if.end22.space_found_crit_edge, %if.end17
  %alen.0 = phi i32 [ %15, %if.end17 ], [ %call26, %if.end22.space_found_crit_edge ], [ %call57, %if.end36.space_found_crit_edge ]
  %30 = ptrtoint ptr %new_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %alen.0, ptr %new_len, align 4
  %31 = ptrtoint ptr %alcn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alcn, align 4
  %33 = ptrtoint ptr %new_lcn to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %new_lcn, align 4
  call void @ntfs_unmap_meta(ptr noundef %1, i32 noundef %32, i32 noundef %alen.0) #11
  br i1 %tobool.not, label %if.then63, label %space_found.up_write_crit_edge

space_found.up_write_crit_edge:                   ; preds = %space_found
  call void @__sanitizer_cov_trace_pc() #13
  br label %up_write

if.then63:                                        ; preds = %space_found
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %alcn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %alcn, align 4
  %add64 = add i32 %35, %alen.0
  %next_free_lcn66 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 1
  %36 = ptrtoint ptr %next_free_lcn66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add64, ptr %next_free_lcn66, align 8
  br label %up_write

up_write:                                         ; preds = %if.then63, %space_found.up_write_crit_edge, %if.end36.up_write_crit_edge, %if.end29.up_write_crit_edge, %if.end12.up_write_crit_edge, %if.then10, %if.then3.up_write_crit_edge
  %err.0 = phi i32 [ %call14, %if.end12.up_write_crit_edge ], [ 0, %space_found.up_write_crit_edge ], [ 0, %if.then63 ], [ -28, %if.then10 ], [ %call4, %if.then3.up_write_crit_edge ], [ -28, %if.end29.up_write_crit_edge ], [ -28, %if.end36.up_write_crit_edge ]
  call void @up_write(ptr noundef %rw_lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alcn) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_refresh_zone(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  %lcn_s = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %0 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn_s) #11
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  %zone_end.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 15
  %2 = ptrtoint ptr %zone_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_end.i, align 4
  %zone_bit.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 14
  %4 = ptrtoint ptr %zone_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_bit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %tobool.not = icmp eq i32 %3, %5
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  %6 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ni1, align 8
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %8 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cluster_bits, align 8
  %conv = zext i8 %9 to i32
  %shr = lshr i32 536870912, %conv
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 3
  %10 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbits, align 4
  %shr2 = lshr i32 %11, 3
  %12 = tail call i32 @llvm.umin.i32(i32 %shr2, i32 %shr)
  %nbits8 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  %13 = ptrtoint ptr %nbits8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbits8, align 4
  %conv9 = zext i32 %14 to i64
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 11
  %15 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %record_bits, align 1
  %sh_prom = zext i8 %16 to i64
  %shl = shl i64 %conv9, %sh_prom
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %17 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %18 to i64
  %add.i = add i64 %shl, %conv.i
  %sh_prom.i = zext i8 %9 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %7, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %sub = add i32 %conv2.i, -1
  %call12 = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %sub, ptr noundef nonnull %lcn, ptr noundef nonnull %len, ptr noundef null) #11
  br i1 %call12, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %19 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp15 = icmp eq i32 %.pr, -1
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %add = add nuw i32 %.pr, 1
  %20 = ptrtoint ptr %lcn_s to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %lcn_s, align 4
  %call19 = call i32 @wnd_find(ptr noundef %used, i32 noundef %12, i32 noundef %add, i32 noundef 0, ptr noundef nonnull %lcn_s) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sbi, align 8
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %22, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %lcn_s to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lcn_s, align 4
  call void @wnd_zone_set(ptr noundef %used, i32 noundef %24, i32 noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 0, %if.then21 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn_s) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wnd_zone_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_set_used(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_find(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_unmap_meta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_look_free_mft(ptr noundef %sbi, ptr nocapture noundef %rno, i1 noundef zeroext %mft, ptr noundef %ni, ptr noundef %mi) local_unnamed_addr #3 align 64 {
entry:
  %zbit = alloca i32, align 4
  %fr = alloca i32, align 4
  %ref = alloca %struct.MFT_REF, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zbit) #11
  %0 = ptrtoint ptr %zbit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %zbit, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fr) #11
  %1 = ptrtoint ptr %fr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fr, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #11
  %2 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %3 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ref, align 8
  %5 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sbi, align 8
  %bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3
  br i1 %mft, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %zone_end.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 15
  %7 = ptrtoint ptr %zone_end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %zone_end.i, align 4
  %zone_bit.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 14
  %9 = ptrtoint ptr %zone_bit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %zone_bit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %tobool3.not = icmp eq i32 %8, %10
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then6.critedge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.thread:                                    ; preds = %entry
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 1
  tail call void @down_write_nested(ptr noundef %rw_lock, i32 noundef 1) #11
  %zone_end.i264 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 15
  %11 = ptrtoint ptr %zone_end.i264 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zone_end.i264, align 4
  %zone_bit.i265 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 14
  %13 = ptrtoint ptr %zone_bit.i265 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_bit.i265, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %tobool3.not267 = icmp eq i32 %12, %14
  br i1 %tobool3.not267, label %if.end.thread.if.end9_crit_edge, label %if.end.thread.if.then108_crit_edge

if.end.thread.if.then108_crit_edge:               ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

if.end.thread.if.end9_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %zbit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %zbit, align 4
  %16 = ptrtoint ptr %rno to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %rno, align 4
  %add = add i32 %10, 1
  %17 = xor i32 %10, -1
  %sub = add i32 %8, %17
  tail call void @wnd_zone_set(ptr noundef %bitmap, i32 noundef %add, i32 noundef %sub) #11
  br label %if.end145

if.end9:                                          ; preds = %if.end.thread.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = call i32 @wnd_find(ptr noundef %bitmap, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %zbit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.reserve_mft_crit_edge

if.end9.reserve_mft_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %reserve_mft

if.then12:                                        ; preds = %if.end9
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  %18 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbits, align 4
  %call13 = call fastcc i32 @ntfs_extend_mft(ptr noundef %sbi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %zbit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %zbit, align 4
  br label %reserve_mft

if.end16:                                         ; preds = %if.then12
  br i1 %mft, label %lor.lhs.false, label %if.end16.if.then168_crit_edge

if.end16.if.then168_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

lor.lhs.false:                                    ; preds = %if.end16
  %next_reserved = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 8
  %21 = ptrtoint ptr %next_reserved to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %next_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp = icmp eq i8 %22, 16
  br i1 %cmp, label %lor.lhs.false.if.end170_crit_edge, label %if.end21

lor.lhs.false.if.end170_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.end21:                                         ; preds = %lor.lhs.false
  %reserved_bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 4
  %23 = ptrtoint ptr %reserved_bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reserved_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end61_crit_edge

if.end21.if.end61_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then24:                                        ; preds = %if.end21
  %25 = ptrtoint ptr %reserved_bitmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 255, ptr %reserved_bitmap, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %2, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then24
  %ir.0275 = phi i32 [ 11, %if.then24 ], [ %inc, %cleanup.for.body_crit_edge ]
  %27 = call i32 @llvm.bswap.i32(i32 %ir.0275)
  %28 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ref, align 8
  %conv30 = trunc i32 %ir.0275 to i16
  %29 = call i16 @llvm.bswap.i16(i16 %conv30)
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %3, align 2
  %call31 = call ptr @ntfs_iget5(ptr noundef %6, ptr noundef nonnull %ref, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.next_crit_edge, label %if.end35

for.body.next_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

next:                                             ; preds = %if.end51.next_crit_edge, %if.end47.next_crit_edge, %if.end44.next_crit_edge, %is_rec_base.exit.next_crit_edge, %land.lhs.true.i.next_crit_edge, %if.end38.next_crit_edge, %if.then37, %for.body.next_crit_edge
  %31 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ref, align 8
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef %32) #11
  br label %cleanup

if.end35:                                         ; preds = %for.body
  %call36 = call zeroext i1 @is_bad_inode(ptr noundef %call31) #11
  br i1 %call36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef %call31) #11
  br label %next

if.end38:                                         ; preds = %if.end35
  %add.ptr.i263 = getelementptr i8, ptr %call31, i32 -360
  %mrec41 = getelementptr i8, ptr %call31, i32 -344
  %33 = ptrtoint ptr %mrec41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mrec41, align 8
  %parent_ref.i = getelementptr inbounds %struct.MFT_REC, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %parent_ref.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %parent_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end38.next_crit_edge

if.end38.next_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

land.lhs.true.i:                                  ; preds = %if.end38
  %high.i = getelementptr inbounds %struct.MFT_REC, ptr %34, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %high.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %high.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool1.not.i = icmp eq i16 %38, 0
  br i1 %tobool1.not.i, label %is_rec_base.exit, label %land.lhs.true.i.next_crit_edge

land.lhs.true.i.next_crit_edge:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

is_rec_base.exit:                                 ; preds = %land.lhs.true.i
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %34, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %seq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool2.not.i = icmp eq i16 %40, 0
  br i1 %tobool2.not.i, label %if.end44, label %is_rec_base.exit.next_crit_edge

is_rec_base.exit.next_crit_edge:                  ; preds = %is_rec_base.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.end44:                                         ; preds = %is_rec_base.exit
  %hard_links = getelementptr inbounds %struct.MFT_REC, ptr %34, i32 0, i32 2
  %41 = ptrtoint ptr %hard_links to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hard_links, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool45.not = icmp eq i16 %42, 0
  br i1 %tobool45.not, label %if.end47, label %if.end44.next_crit_edge

if.end44.next_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.end47:                                         ; preds = %if.end44
  %call48 = call ptr @ni_std(ptr noundef %add.ptr.i263) #11
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.next_crit_edge, label %if.end51

if.end47.next_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.end51:                                         ; preds = %if.end47
  %call52 = call ptr @ni_find_attr(ptr noundef %add.ptr.i263, ptr noundef null, ptr noundef null, i32 noundef 805306368, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #11
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end55, label %if.end51.next_crit_edge

if.end51.next_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %sub56 = add nsw i32 %ir.0275, -11
  %shl.i = shl nuw i32 1, %sub56
  %div2.i = lshr i32 %sub56, 5
  %add.ptr.i = getelementptr i32, ptr %reserved_bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %44, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %next
  %inc = add nuw nsw i32 %ir.0275, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %cleanup.if.end61_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.if.end61_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %cleanup.if.end61_crit_edge, %if.end21.if.end61_crit_edge
  %call64 = call i32 @_find_next_zero_bit_be(ptr noundef %reserved_bitmap, i32 noundef 16, i32 noundef 11) #11
  %45 = ptrtoint ptr %zbit to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call64, ptr %zbit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call64)
  %cmp65 = icmp ugt i32 %call64, 15
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %next_reserved to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 16, ptr %next_reserved, align 4
  br label %out

if.end70:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %conv71 = trunc i32 %call64 to i8
  %47 = ptrtoint ptr %next_reserved to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv71, ptr %next_reserved, align 4
  br label %if.end101

reserve_mft:                                      ; preds = %if.then15, %if.end9.reserve_mft_crit_edge
  %48 = ptrtoint ptr %zbit to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %zbit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %49)
  %cmp74 = icmp eq i32 %49, 16
  %cond = select i1 %cmp74, i32 8, i32 4
  %add76 = add i32 %cond, %49
  %nbits77 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  %50 = ptrtoint ptr %nbits77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nbits77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add76, i32 %51)
  %cmp78 = icmp ugt i32 %add76, %51
  %sub82 = sub i32 %51, %49
  %spec.select = select i1 %cmp78, i32 %sub82, i32 %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp84278 = icmp ugt i32 %spec.select, 1
  br i1 %cmp84278, label %reserve_mft.land.rhs_crit_edge, label %reserve_mft.while.end_crit_edge

reserve_mft.while.end_crit_edge:                  ; preds = %reserve_mft
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

reserve_mft.land.rhs_crit_edge:                   ; preds = %reserve_mft
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %reserve_mft.land.rhs_crit_edge
  %zlen.1279 = phi i32 [ %sub87, %while.body.land.rhs_crit_edge ], [ %spec.select, %reserve_mft.land.rhs_crit_edge ]
  %52 = ptrtoint ptr %zbit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %zbit, align 4
  %call86 = call zeroext i1 @wnd_is_free(ptr noundef %bitmap, i32 noundef %53, i32 noundef %zlen.1279) #11
  br i1 %call86, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %sub87 = add i32 %zlen.1279, -1
  %cmp84 = icmp ugt i32 %sub87, 1
  br i1 %cmp84, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %reserve_mft.while.end_crit_edge
  %zlen.1.lcssa = phi i32 [ %spec.select, %reserve_mft.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ %zlen.1279, %land.rhs.while.end_crit_edge ]
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 6
  %54 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %used, align 4
  %56 = ptrtoint ptr %zbit to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %zbit, align 4
  %58 = call i32 @llvm.umax.i32(i32 %55, i32 %57)
  %add93 = add i32 %57, %zlen.1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add93)
  %cmp94 = icmp ult i32 %58, %add93
  br i1 %cmp94, label %if.then96, label %while.end.if.end101_crit_edge

while.end.if.end101_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then96:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call97 = call i32 @ntfs_clear_mft_tail(ptr noundef %sbi, i32 noundef %58, i32 noundef %add93)
  %59 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add93, ptr %used, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %while.end.if.end101_crit_edge, %if.end70
  %zlen.2 = phi i32 [ %zlen.1.lcssa, %if.then96 ], [ %zlen.1.lcssa, %while.end.if.end101_crit_edge ], [ 1, %if.end70 ]
  %60 = ptrtoint ptr %zbit to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %zbit, align 4
  br i1 %mft, label %if.then103, label %if.then108.critedge259

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %rno to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rno, align 4
  %add104 = add i32 %61, 1
  %63 = ptrtoint ptr %zbit to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add104, ptr %zbit, align 4
  %sub105 = add i32 %zlen.2, -1
  call void @wnd_zone_set(ptr noundef %bitmap, i32 noundef %add104, i32 noundef %sub105) #11
  br label %if.end145

if.then108.critedge259:                           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  call void @wnd_zone_set(ptr noundef %bitmap, i32 noundef %61, i32 noundef %zlen.2) #11
  br label %if.then108

if.then108:                                       ; preds = %if.then108.critedge259, %if.end.thread.if.then108_crit_edge
  %next_free = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 5
  %64 = ptrtoint ptr %next_free to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %next_free, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %65)
  %cmp110 = icmp ult i32 %65, 24
  br i1 %cmp110, label %if.then112, label %if.then108.if.end115_crit_edge

if.then108.if.end115_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then112:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 24, ptr %next_free, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.then108.if.end115_crit_edge
  %nbits121 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  br label %for.cond116

for.cond116:                                      ; preds = %if.end139.for.cond116_crit_edge, %if.end115
  %67 = ptrtoint ptr %next_free to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %next_free, align 8
  %69 = ptrtoint ptr %nbits121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nbits121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp122.not = icmp ult i32 %68, %70
  br i1 %cmp122.not, label %if.else125, label %for.cond116.if.end139_crit_edge

for.cond116.if.end139_crit_edge:                  ; preds = %for.cond116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.else125:                                       ; preds = %for.cond116
  %call126 = call i32 @wnd_find(ptr noundef %bitmap, i32 noundef 1, i32 noundef 24, i32 noundef 0, ptr noundef nonnull %fr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %if.else134

if.then128:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %nbits121 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nbits121, align 4
  %73 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %next_free, align 8
  br label %if.end139

if.else134:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %fr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fr, align 4
  %76 = ptrtoint ptr %rno to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rno, align 4
  %add135 = add i32 %75, 1
  %77 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add135, ptr %next_free, align 8
  br label %if.end145

if.end139:                                        ; preds = %if.then128, %for.cond116.if.end139_crit_edge
  %call140 = call fastcc i32 @ntfs_extend_mft(ptr noundef %sbi)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end139.for.cond116_crit_edge, label %if.end139.out_crit_edge

if.end139.out_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end139.for.cond116_crit_edge:                  ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond116

if.end145:                                        ; preds = %if.else134, %if.then103, %if.then6.critedge
  %tobool146.not = icmp eq ptr %ni, null
  br i1 %tobool146.not, label %if.end145.if.end149_crit_edge, label %land.lhs.true

if.end145.if.end149_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

land.lhs.true:                                    ; preds = %if.end145
  %78 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rno, align 4
  %call147 = call zeroext i1 @ni_add_subrecord(ptr noundef nonnull %ni, i32 noundef %79, ptr noundef %mi) #11
  br i1 %call147, label %land.lhs.true.if.end149_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.if.end149_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

if.end149:                                        ; preds = %land.lhs.true.if.end149_crit_edge, %if.end145.if.end149_crit_edge
  %80 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %81)
  %cmp150 = icmp ugt i32 %81, 15
  br i1 %cmp150, label %if.then152, label %if.else154

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  %call153 = call i32 @wnd_set_used(ptr noundef %bitmap, i32 noundef %81, i32 noundef 1) #11
  br label %out

if.else154:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %81)
  %cmp155 = icmp ugt i32 %81, 10
  br i1 %cmp155, label %land.lhs.true157, label %if.else154.out_crit_edge

if.else154.out_crit_edge:                         ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true157:                                 ; preds = %if.else154
  %reserved_bitmap_inited = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 9
  %82 = ptrtoint ptr %reserved_bitmap_inited to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %reserved_bitmap_inited, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool160.not = icmp eq i8 %83, 0
  br i1 %tobool160.not, label %land.lhs.true157.out_crit_edge, label %if.then161

land.lhs.true157.out_crit_edge:                   ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then161:                                       ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  %sub162 = add nsw i32 %81, -11
  %reserved_bitmap164 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 4
  %shl.i261 = shl nuw nsw i32 1, %sub162
  %84 = ptrtoint ptr %reserved_bitmap164 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reserved_bitmap164, align 4
  %or.i = or i32 %85, %shl.i261
  store i32 %or.i, ptr %reserved_bitmap164, align 4
  br label %out

out:                                              ; preds = %if.then161, %land.lhs.true157.out_crit_edge, %if.else154.out_crit_edge, %if.then152, %land.lhs.true.out_crit_edge, %if.end139.out_crit_edge, %if.then67
  %err.5 = phi i32 [ 0, %if.then152 ], [ 0, %if.then161 ], [ 0, %land.lhs.true157.out_crit_edge ], [ 0, %if.else154.out_crit_edge ], [ 0, %if.then67 ], [ -12, %land.lhs.true.out_crit_edge ], [ %call140, %if.end139.out_crit_edge ]
  br i1 %mft, label %out.if.end170_crit_edge, label %out.if.then168_crit_edge

out.if.then168_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then168

out.if.end170_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then168:                                       ; preds = %out.if.then168_crit_edge, %if.end16.if.then168_crit_edge
  %err.5274 = phi i32 [ %err.5, %out.if.then168_crit_edge ], [ %call13, %if.end16.if.then168_crit_edge ]
  %rw_lock169 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 1
  call void @up_write(ptr noundef %rw_lock169) #11
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %out.if.end170_crit_edge, %lor.lhs.false.if.end170_crit_edge
  %err.5271 = phi i32 [ %err.5274, %if.then168 ], [ %err.5, %out.if.end170_crit_edge ], [ %call13, %lor.lhs.false.if.end170_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zbit) #11
  ret i32 %err.5271
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_extend_mft(ptr noundef %sbi) unnamed_addr #3 align 64 {
entry:
  %new_bitmap_bytes = alloca i64, align 8
  %attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ni1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_bitmap_bytes) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #11
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr, align 4, !annotation !103
  %bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  %3 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbits, align 4
  %add3 = add i32 %4, 1151
  %and = and i32 %add3, -128
  %conv = zext i32 %and to i64
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 11
  %5 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %record_bits, align 1
  %sh_prom = zext i8 %6 to i64
  %shl = shl i64 %conv, %sh_prom
  %7 = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %7) #11
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %call = call i32 @attr_set_size(ptr noundef %1, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run, i64 noundef %shl, ptr noundef null, i1 noundef zeroext false, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_write(ptr noundef %7) #11
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr, align 4
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %9, i32 0, i32 7, i32 0, i32 6
  %10 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data_size, align 8
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %9, i32 0, i32 7, i32 0, i32 7
  %12 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %valid_size, align 8
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %9, i32 0, i32 7, i32 0, i32 5
  %13 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %alloc_size, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %record_bits, align 1
  %sh_prom8 = zext i8 %17 to i64
  %shr = lshr i64 %15, %sh_prom8
  %conv9 = trunc i64 %shr to i32
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dirty, align 4
  %add.i = add i32 %conv9, 7
  %shr.i = lshr i32 %add.i, 3
  %add1.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add1.i, 1073741816
  %conv11 = zext i32 %and.i to i64
  %19 = ptrtoint ptr %new_bitmap_bytes to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv11, ptr %new_bitmap_bytes, align 8
  %run14 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 2
  %call15 = call i32 @attr_set_size(ptr noundef %1, i32 noundef -1342177280, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run14, i64 noundef %conv11, ptr noundef nonnull %new_bitmap_bytes, i1 noundef zeroext true, ptr noundef null) #11
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 1
  call void @down_write_nested(ptr noundef %rw_lock, i32 noundef 0) #11
  %call17 = call i32 @ntfs_refresh_zone(ptr noundef %sbi)
  call void @up_write(ptr noundef %rw_lock) #11
  call void @up_write(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool22.not = icmp eq i32 %call15, 0
  br i1 %tobool22.not, label %if.end24, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end24:                                         ; preds = %if.end
  %call25 = call i32 @wnd_extend(ptr noundef %bitmap, i32 noundef %conv9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %used30 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 6
  %20 = ptrtoint ptr %used30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used30, align 4
  %call31 = call i32 @ntfs_clear_mft_tail(ptr noundef %sbi, i32 noundef %21, i32 noundef %conv9)
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 11
  %call32 = call i32 @ni_write_inode(ptr noundef %vfs_inode, i32 noundef 0, ptr noundef nonnull @__func__.ntfs_extend_mft) #11
  br label %out

out:                                              ; preds = %if.end28, %if.end24.out_crit_edge, %if.end.out_crit_edge, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call15, %if.end.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ], [ %call32, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_bitmap_bytes) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_std(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wnd_is_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_clear_mft_tail(ptr nocapture noundef %sbi, i32 noundef %from, i32 noundef %to) local_unnamed_addr #3 align 64 {
entry:
  %nb = alloca %struct.ntfs_buffers, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %from, i32 %to)
  %cmp.not = icmp ult i32 %from, %to
  br i1 %cmp.not, label %if.end, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup15

if.end:                                           ; preds = %entry
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 8
  %0 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %record_size, align 8
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  %2 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ni1, align 8
  %4 = getelementptr inbounds %struct.ntfs_inode, ptr %3, i32 0, i32 8
  %run2 = getelementptr inbounds %struct.ntfs_inode, ptr %3, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  tail call void @down_read(ptr noundef %4) #11
  %conv = zext i32 %from to i64
  %conv3 = zext i32 %1 to i64
  %mul = mul nuw i64 %conv3, %conv
  %new_rec = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 25
  %nbufs1.i = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %vbo.044 = phi i64 [ %mul, %if.end ], [ %add, %for.inc.for.body_crit_edge ]
  %from.addr.043 = phi i32 [ %from, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %nb) #11
  %5 = call ptr @memset(ptr %nb, i32 255, i32 44)
  %call = call i32 @ntfs_get_bh(ptr noundef %sbi, ptr noundef %run2, i64 noundef %vbo.044, i32 noundef %1, ptr noundef nonnull %nb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end7:                                          ; preds = %for.body
  %6 = ptrtoint ptr %new_rec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_rec, align 8
  %call8 = call i32 @ntfs_write_bh(ptr noundef %sbi, ptr noundef %7, ptr noundef nonnull %nb, i32 noundef 0)
  %8 = ptrtoint ptr %nbufs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbufs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end7.nb_put.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.nb_put.exit_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %nb_put.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x ptr], ptr %nb, i32 0, i32 %i.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #11, !srcloc !119
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.body.i.nb_put.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.nb_put.exit_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nb_put.exit

nb_put.exit:                                      ; preds = %for.body.i.nb_put.exit_crit_edge, %if.end7.nb_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc, label %nb_put.exit.cleanup.thread_crit_edge

nb_put.exit.cleanup.thread_crit_edge:             ; preds = %nb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %nb_put.exit.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call8, %nb_put.exit.cleanup.thread_crit_edge ], [ %call, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %nb) #11
  br label %out

for.inc:                                          ; preds = %nb_put.exit
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %nb) #11
  %inc = add nuw i32 %from.addr.043, 1
  %add = add i64 %vbo.044, %conv3
  %exitcond.not = icmp eq i32 %inc, %to
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %cleanup.thread
  %from.addr.041 = phi i32 [ %from.addr.043, %cleanup.thread ], [ %to, %for.inc.out_crit_edge ]
  %err.2 = phi i32 [ %err.1.ph, %cleanup.thread ], [ 0, %for.inc.out_crit_edge ]
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 6
  %13 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %from.addr.041, ptr %used, align 4
  tail call void @up_read(ptr noundef %4) #11
  br label %cleanup15

cleanup15:                                        ; preds = %out, %entry.cleanup15_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ 0, %entry.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ni_add_subrecord(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_mark_rec_free(ptr noundef %sbi, i32 noundef %rno) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 1
  tail call void @down_write_nested(ptr noundef %rw_lock, i32 noundef 1) #11
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 3
  %0 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rno)
  %cmp.not = icmp ugt i32 %1, %rno
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rno)
  %cmp1 = icmp ugt i32 %rno, 15
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.end
  %call = tail call zeroext i1 @wnd_is_used(ptr noundef %bitmap, i32 noundef %rno, i32 noundef 1) #11
  br i1 %call, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @ntfs_set_state(ptr noundef %sbi, i32 noundef 2)
  br label %if.end13

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @wnd_set_free(ptr noundef %bitmap, i32 noundef %rno, i32 noundef 1) #11
  br label %if.end13

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %rno)
  %cmp8 = icmp ugt i32 %rno, 10
  br i1 %cmp8, label %land.lhs.true, label %if.else7.if.end13_crit_edge

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.else7
  %reserved_bitmap_inited = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %reserved_bitmap_inited to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reserved_bitmap_inited, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %rno, -11
  %reserved_bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 4
  %shl.i = shl nuw nsw i32 1, %sub
  %div2.i = lshr i32 %sub, 5
  %add.ptr.i = getelementptr i32, ptr %reserved_bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %if.else7.if.end13_crit_edge, %if.else, %if.then3
  %zone_bit.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3, i32 14
  %6 = ptrtoint ptr %zone_bit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_bit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rno)
  %cmp15 = icmp ugt i32 %7, %rno
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wnd_zone_set(ptr noundef %bitmap, i32 noundef %rno, i32 noundef 1) #11
  br label %out

if.else18:                                        ; preds = %if.end13
  %next_free = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 5
  %8 = ptrtoint ptr %next_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_free, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rno)
  %cmp20 = icmp ugt i32 %9, %rno
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %rno)
  %cmp23 = icmp ugt i32 %rno, 23
  %or.cond = and i1 %cmp23, %cmp20
  br i1 %or.cond, label %if.then25, label %if.else18.out_crit_edge

if.else18.out_crit_edge:                          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rno, ptr %next_free, align 8
  br label %out

out:                                              ; preds = %if.then25, %if.else18.out_crit_edge, %if.then17, %entry.out_crit_edge
  tail call void @up_write(ptr noundef %rw_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wnd_is_used(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_set_state(ptr nocapture noundef %sbi, i32 noundef %dirty) local_unnamed_addr #3 align 64 {
entry:
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #11
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !103
  %real_dirty = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 29, i32 8
  %1 = ptrtoint ptr %real_dirty to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %real_dirty, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sbi, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %cmp = icmp eq i32 %dirty, 0
  %cond = select i1 %cmp, i32 0, i32 256
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 29, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 4
  %9 = and i16 %8, 256
  %and = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %and)
  %cmp2 = icmp eq i32 %cond, %and
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ni7 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 29, i32 3
  %10 = ptrtoint ptr %ni7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ni7, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock, i32 noundef 0) #11
  %call11 = call ptr @ni_find_attr(ptr noundef nonnull %11, ptr noundef null, ptr noundef null, i32 noundef 1879048192, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %mi) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.out.thread_crit_edge, label %if.end14

if.end10.out.thread_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end14:                                         ; preds = %if.end10
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call11, i32 0, i32 2
  %12 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.out.thread_crit_edge

if.end14.out.thread_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end.i:                                         ; preds = %if.end14
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call11, i32 0, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = getelementptr inbounds %struct.ATTRIB, ptr %call11, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data_off.i, align 4
  %20 = call i16 @llvm.bswap.i16(i16 %19) #11
  %conv.i = zext i16 %20 to i32
  %add.i = add nuw nsw i32 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i)
  %cmp.i = icmp ult i32 %16, %add.i
  br i1 %cmp.i, label %if.end.i.out.thread_crit_edge, label %if.end3.i

if.end.i.out.thread_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end3.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %23 = call i32 @llvm.bswap.i32(i32 %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %cmp4.i = icmp ult i32 %23, 12
  %add.ptr.i = getelementptr i8, ptr %call11, i32 %conv.i
  %tobool16.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp4.i, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end3.i.out.thread_crit_edge, label %if.end18

if.end3.i.out.thread_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end18:                                         ; preds = %if.end3.i
  %24 = zext i32 %dirty to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dirty, label %if.end18.if.end37_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end18.sw.bb22_crit_edge
    i32 0, label %sw.bb26
  ]

if.end18.sw.bb22_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sbi, align 8
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %26, ptr noundef nonnull @.str.7) #11
  %27 = ptrtoint ptr %real_dirty to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %real_dirty, align 1
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb, %if.end18.sw.bb22_crit_edge
  %flags23 = getelementptr inbounds %struct.VOLUME_INFO, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %flags23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags23, align 2
  %30 = or i16 %29, 256
  store i16 %30, ptr %flags23, align 2
  br label %if.end37

sw.bb26:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %flags27 = getelementptr inbounds %struct.VOLUME_INFO, ptr %add.ptr.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags27 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags27, align 2
  %33 = and i16 %32, -257
  store i16 %33, ptr %flags27, align 2
  br label %if.end37

out.thread:                                       ; preds = %if.end3.i.out.thread_crit_edge, %if.end.i.out.thread_crit_edge, %if.end14.out.thread_crit_edge, %if.end10.out.thread_crit_edge
  call void @mutex_unlock(ptr noundef %ni_lock) #11
  br label %cleanup

if.end37:                                         ; preds = %sw.bb26, %sw.bb22, %if.end18.if.end37_crit_edge
  %flags31 = getelementptr inbounds %struct.VOLUME_INFO, ptr %add.ptr.i, i32 0, i32 3
  %34 = ptrtoint ptr %flags31 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags31, align 2
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %flags, align 4
  %37 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mi, align 4
  %dirty34 = getelementptr inbounds %struct.mft_inode, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %dirty34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %dirty34, align 4
  call void @mutex_unlock(ptr noundef %ni_lock) #11
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 11
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #11
  %call39 = call i32 @sync_inode_metadata(ptr noundef %vfs_inode, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %i_mapping = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 11, i32 9
  %40 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_mapping, align 8
  %call43 = call i32 @filemap_fdatawrite(ptr noundef %41) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end37.cleanup_crit_edge, %out.thread, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ %call43, %if.then41 ], [ -22, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_set_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_get_bh(ptr nocapture noundef readonly %sbi, ptr noundef %run, i64 noundef %vbo, i32 noundef %bytes, ptr nocapture noundef %nb) local_unnamed_addr #3 align 64 {
entry:
  %vcn = alloca i32, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %4 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #11
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %6 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3, ptr %vcn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %7 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #11
  %8 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %clen, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #11
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %idx, align 4, !annotation !103
  %bytes4 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 1
  %10 = ptrtoint ptr %bytes4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bytes, ptr %bytes4, align 4
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %conv3, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #11
  br i1 %call, label %if.end, label %entry.cleanup85_crit_edge

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

if.end:                                           ; preds = %entry
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %11 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cluster_mask, align 4
  %13 = trunc i64 %vbo to i32
  %conv6 = and i32 %12, %13
  %14 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lcn, align 4
  %conv7 = zext i32 %15 to i64
  %shl = shl i64 %conv7, %sh_prom
  %conv10 = zext i32 %conv6 to i64
  %add = add i64 %shl, %conv10
  %16 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clen, align 4
  %conv11 = zext i32 %17 to i64
  %shl14 = shl i64 %conv11, %sh_prom
  %sub = sub i64 %shl14, %conv10
  %sub16 = add i32 %3, -1
  %18 = trunc i64 %add to i32
  %conv19 = and i32 %sub16, %18
  %off20 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 3
  %19 = ptrtoint ptr %off20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv19, ptr %off20, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  br label %for.cond

for.cond:                                         ; preds = %cleanup75, %if.end
  %bytes.addr.0 = phi i32 [ %bytes, %if.end ], [ %sub52, %cleanup75 ]
  %off.0 = phi i32 [ %conv19, %if.end ], [ 0, %cleanup75 ]
  %nbh.0 = phi i32 [ 0, %if.end ], [ %inc, %cleanup75 ]
  %lbo.0 = phi i64 [ %add, %if.end ], [ %shl70, %cleanup75 ]
  %len.0 = phi i64 [ %sub, %if.end ], [ %shl74, %cleanup75 ]
  %conv21 = zext i32 %bytes.addr.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %len.0, i64 %conv21)
  %cmp = icmp ult i64 %len.0, %conv21
  %extract.t = trunc i64 %len.0 to i32
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 %bytes.addr.0
  %20 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom25 = zext i8 %21 to i64
  %shr26 = lshr i64 %lbo.0, %sh_prom25
  %umax = call i32 @llvm.umax.i32(i32 %nbh.0, i32 8)
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %for.cond
  %bytes.addr.1 = phi i32 [ %bytes.addr.0, %for.cond ], [ %sub52, %do.cond.do.body_crit_edge ]
  %off.1 = phi i32 [ %off.0, %for.cond ], [ 0, %do.cond.do.body_crit_edge ]
  %nbh.1 = phi i32 [ %nbh.0, %for.cond ], [ %inc, %do.cond.do.body_crit_edge ]
  %len32.0 = phi i32 [ %cond.off0, %for.cond ], [ %sub57, %do.cond.do.body_crit_edge ]
  %block.0 = phi i64 [ %shr26, %for.cond ], [ %add56, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nbh.1, i32 %umax)
  %exitcond = icmp eq i32 %nbh.1, %umax
  br i1 %exitcond, label %do.body.while.body.preheader_crit_edge, label %if.end30

do.body.while.body.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

if.end30:                                         ; preds = %do.body
  %sub31 = sub i32 %3, %off.1
  %22 = call i32 @llvm.umin.i32(i32 %sub31, i32 %len32.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %3)
  %cmp36 = icmp eq i32 %22, %3
  %23 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i.i, align 4
  %25 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize, align 16
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end30
  %call.i = call ptr @__getblk_gfp(ptr noundef %24, i64 noundef %block.0, i32 noundef %26, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then38.out_crit_edge, label %if.end41

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end41:                                         ; preds = %if.then38
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %call.i, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool43.not = icmp eq i32 %29, 0
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wait_on_buffer(ptr noundef nonnull %call.i) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %call.i, align 4
  %and1.i.i146 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i146)
  %tobool.not.i = icmp eq i32 %and1.i.i146, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end45.if.end50_crit_edge

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #11
  br label %if.end50

if.else:                                          ; preds = %if.end30
  %call.i.i = call ptr @__bread_gfp(ptr noundef %24, i64 noundef %block.0, i32 noundef %26, i32 noundef 8) #11
  %tobool.not.i147 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i147, label %ntfs_bread.exit.thread, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

ntfs_bread.exit.thread:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom.i = zext i8 %33 to i64
  %shl.i = shl i64 %block.0, %sh_prom.i
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %shl.i) #11
  br label %out

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then.i, %if.end45.if.end50_crit_edge
  %bh.0 = phi ptr [ %call.i, %if.end45.if.end50_crit_edge ], [ %call.i, %if.then.i ], [ %call.i.i, %if.else.if.end50_crit_edge ]
  %inc = add i32 %nbh.1, 1
  %arrayidx = getelementptr [8 x ptr], ptr %nb, i32 0, i32 %nbh.1
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %bh.0, ptr %arrayidx, align 4
  %sub52 = sub i32 %bytes.addr.1, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52)
  %tobool53.not = icmp eq i32 %sub52, 0
  br i1 %tobool53.not, label %if.end50.cleanup85_crit_edge, label %do.cond

if.end50.cleanup85_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

do.cond:                                          ; preds = %if.end50
  %add56 = add i64 %block.0, 1
  %sub57 = sub i32 %len32.0, %22
  %tobool59.not = icmp eq i32 %sub57, 0
  br i1 %tobool59.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.cond
  %35 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vcn, align 4
  %37 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clen, align 4
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx, align 4
  %inc61 = add i32 %40, 1
  store i32 %inc61, ptr %idx, align 4
  %call62 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc61, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #11
  br i1 %call62, label %lor.lhs.false, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %do.end
  %add60 = add i32 %38, %36
  %41 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vcn, align 4
  %cmp63.not = icmp eq i32 %42, %add60
  br i1 %cmp63.not, label %cleanup75, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup75:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lcn, align 4
  %conv67 = zext i32 %44 to i64
  %shl70 = shl i64 %conv67, %sh_prom
  %45 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clen, align 4
  %conv71 = zext i32 %46 to i64
  %shl74 = shl i64 %conv71, %sh_prom
  br label %for.cond

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %do.end.out_crit_edge, %ntfs_bread.exit.thread, %if.then38.out_crit_edge
  %err.4 = phi i32 [ -5, %ntfs_bread.exit.thread ], [ -12, %if.then38.out_crit_edge ], [ -2, %lor.lhs.false.out_crit_edge ], [ -2, %do.end.out_crit_edge ]
  %nbh.3 = phi i32 [ %nbh.1, %ntfs_bread.exit.thread ], [ %nbh.1, %if.then38.out_crit_edge ], [ %inc, %lor.lhs.false.out_crit_edge ], [ %inc, %do.end.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbh.3)
  %tobool79.not195 = icmp eq i32 %nbh.3, 0
  br i1 %tobool79.not195, label %out.cleanup85_crit_edge, label %out.while.body.preheader_crit_edge

out.while.body.preheader_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

out.cleanup85_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

while.body.preheader:                             ; preds = %out.while.body.preheader_crit_edge, %do.body.while.body.preheader_crit_edge
  %nbh.3215 = phi i32 [ %nbh.3, %out.while.body.preheader_crit_edge ], [ %umax, %do.body.while.body.preheader_crit_edge ]
  %err.4214 = phi i32 [ %err.4, %out.while.body.preheader_crit_edge ], [ -22, %do.body.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %nbh.4196 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %nbh.3215, %while.body.preheader ]
  %dec = add i32 %nbh.4196, -1
  %arrayidx81 = getelementptr [8 x ptr], ptr %nb, i32 0, i32 %dec
  %47 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx81, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !119
  %50 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx81, align 4
  %tobool79.not = icmp eq i32 %dec, 0
  br i1 %tobool79.not, label %while.body.cleanup85_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup85_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

cleanup85:                                        ; preds = %while.body.cleanup85_crit_edge, %out.cleanup85_crit_edge, %if.end50.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %inc.lcssa.sink = phi i32 [ 0, %entry.cleanup85_crit_edge ], [ 0, %out.cleanup85_crit_edge ], [ 0, %while.body.cleanup85_crit_edge ], [ %inc, %if.end50.cleanup85_crit_edge ]
  %retval.3 = phi i32 [ -2, %entry.cleanup85_crit_edge ], [ %err.4, %out.cleanup85_crit_edge ], [ %err.4214, %while.body.cleanup85_crit_edge ], [ 0, %if.end50.cleanup85_crit_edge ]
  %nbufs = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 2
  %51 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.lcssa.sink, ptr %nbufs, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #11
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_write_bh(ptr nocapture noundef readonly %sbi, ptr nocapture noundef %rhdr, ptr nocapture noundef readonly %nb, i32 noundef %sync) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %bytes2 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 1
  %4 = ptrtoint ptr %bytes2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes2, align 4
  %off3 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 3
  %6 = ptrtoint ptr %off3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %off3, align 4
  %fix_off = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 1
  %8 = ptrtoint ptr %fix_off to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fix_off, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %fix_num = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 2
  %11 = ptrtoint ptr %fix_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fix_num, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv5 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv5, 1
  %add = add nuw nsw i32 %mul, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp = icmp ugt i32 %add, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool8.not = icmp eq i16 %12, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %dec = add i16 %13, -1
  %conv10 = zext i16 %dec to i32
  %mul11 = shl nuw nsw i32 %conv10, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul11, i32 %5)
  %cmp12 = icmp ugt i32 %mul11, %5
  br i1 %cmp12, label %lor.lhs.false9.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false9
  %nbufs = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not118 = icmp eq i32 %5, 0
  br i1 %tobool14.not118, label %for.cond.preheader.cleanup_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool47.not = icmp eq i32 %sync, 0
  br label %land.rhs

land.rhs:                                         ; preds = %if.end54.land.rhs_crit_edge, %land.rhs.lr.ph
  %sample.0126 = phi i16 [ -1, %land.rhs.lr.ph ], [ %sample.2, %if.end54.land.rhs_crit_edge ]
  %fixup.0125 = phi ptr [ inttoptr (i32 -1 to ptr), %land.rhs.lr.ph ], [ %incdec.ptr, %if.end54.land.rhs_crit_edge ]
  %idx.0124 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add57, %if.end54.land.rhs_crit_edge ]
  %off.0123 = phi i32 [ %7, %land.rhs.lr.ph ], [ 0, %if.end54.land.rhs_crit_edge ]
  %bytes.0122 = phi i32 [ %5, %land.rhs.lr.ph ], [ %sub55, %if.end54.land.rhs_crit_edge ]
  %err.0121 = phi i32 [ 0, %land.rhs.lr.ph ], [ %err.2, %if.end54.land.rhs_crit_edge ]
  %rhdr.addr.0119 = phi ptr [ %rhdr, %land.rhs.lr.ph ], [ %add.ptr56, %if.end54.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %nbufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0124, i32 %15)
  %cmp15 = icmp ult i32 %idx.0124, %15
  br i1 %cmp15, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %sub = sub i32 %3, %off.0123
  %arrayidx = getelementptr [8 x ptr], ptr %nb, i32 0, i32 %idx.0124
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bytes.0122)
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %17, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool22.not = icmp eq i32 %21, 0
  br i1 %tobool22.not, label %for.body.if.end24_crit_edge, label %if.then23

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wait_on_buffer(ptr noundef %17) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body.if.end24_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef 4) #11
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end24.if.then.i116_crit_edge

if.end24.if.then.i116_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i116

trylock_buffer.exit.i:                            ; preds = %if.end24
  tail call void @llvm.prefetch.p0(ptr %23, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 4, ptr elementtype(i32) %23) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %27 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i116_crit_edge

trylock_buffer.exit.i.if.then.i116_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i116

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i116:                                     ; preds = %trylock_buffer.exit.i.if.then.i116_crit_edge, %if.end24.if.then.i116_crit_edge
  tail call void @__lock_buffer(ptr noundef %23) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i116, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %off.0123
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %18
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %rhdr.addr.0119, i32 %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0124)
  %tobool28.not = icmp eq i32 %idx.0124, 0
  br i1 %tobool28.not, label %if.then29, label %lock_buffer.exit.if.end42_crit_edge

lock_buffer.exit.if.end42_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then29:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %conv
  %31 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr31, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  call void @__sanitizer_cov_trace_const_cmp2(i16 32766, i16 %33)
  %cmp33 = icmp ugt i16 %33, 32766
  %add37 = add i16 %33, 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %add37)
  %storemerge = select i1 %cmp33, i16 256, i16 %34
  %35 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %storemerge, ptr %add.ptr31, align 2
  %add.ptr41 = getelementptr i8, ptr %rhdr.addr.0119, i32 %conv
  %36 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %storemerge, ptr %add.ptr41, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then29, %lock_buffer.exit.if.end42_crit_edge
  %fixup.1 = phi ptr [ %fixup.0125, %lock_buffer.exit.if.end42_crit_edge ], [ %add.ptr31, %if.then29 ]
  %sample.2 = phi i16 [ %sample.0126, %lock_buffer.exit.if.end42_crit_edge ], [ %storemerge, %if.then29 ]
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 510
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end42
  %fixup.2 = phi ptr [ %fixup.1, %if.end42 ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %ptr.0 = phi ptr [ %add.ptr43, %if.end42 ], [ %add.ptr44, %do.body.do.body_crit_edge ]
  %37 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ptr.0, align 2
  %incdec.ptr = getelementptr i16, ptr %fixup.2, i32 1
  %39 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %incdec.ptr, align 2
  store i16 %sample.2, ptr %ptr.0, align 2
  %add.ptr44 = getelementptr i16, ptr %ptr.0, i32 256
  %cmp45 = icmp ult ptr %add.ptr44, %add.ptr27
  br i1 %cmp45, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  %40 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %17, align 4
  %and1.i.i115 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i115)
  %tobool.not.i = icmp eq i32 %and1.i.i115, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.set_buffer_uptodate.exit_crit_edge

do.end.set_buffer_uptodate.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %do.end.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %17) #11
  tail call void @unlock_buffer(ptr noundef %17) #11
  br i1 %tobool47.not, label %set_buffer_uptodate.exit.if.end54_crit_edge, label %if.then48

set_buffer_uptodate.exit.if.end54_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then48:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call49 = tail call i32 @sync_dirty_buffer(ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0121)
  %tobool50.not = icmp eq i32 %err.0121, 0
  %spec.select117 = select i1 %tobool50.not, i32 %call49, i32 %err.0121
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %set_buffer_uptodate.exit.if.end54_crit_edge
  %err.2 = phi i32 [ %err.0121, %set_buffer_uptodate.exit.if.end54_crit_edge ], [ %spec.select117, %if.then48 ]
  %sub55 = sub i32 %bytes.0122, %18
  %add.ptr56 = getelementptr i8, ptr %rhdr.addr.0119, i32 %18
  %add57 = add i32 %idx.0124, 1
  %tobool14.not = icmp eq i32 %sub55, 0
  br i1 %tobool14.not, label %if.end54.cleanup_crit_edge, label %if.end54.land.rhs_crit_edge

if.end54.land.rhs_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %err.2, %if.end54.cleanup_crit_edge ], [ %err.0121, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_lookup_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_update_mftmirr(ptr nocapture noundef %sbi, i32 noundef %wait) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

if.end:                                           ; preds = %entry
  %recs_mirr = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 7
  %6 = ptrtoint ptr %recs_mirr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recs_mirr, align 8
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 11
  %8 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %record_bits, align 1
  %conv = zext i8 %9 to i32
  %shl = shl i32 %7, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %3)
  %cmp.not79 = icmp ult i32 %shl, %3
  br i1 %cmp.not79, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %lbo2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 1
  %10 = ptrtoint ptr %lbo2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lbo2, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %13 to i64
  %shr8 = lshr i64 %11, %sh_prom
  %mft = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27
  %14 = ptrtoint ptr %mft to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mft, align 8
  %shr = lshr i64 %15, %sh_prom
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool23.not = icmp eq i32 %wait, 0
  br label %for.body

for.cond:                                         ; preds = %if.end26
  %sub = sub i32 %bytes.082, %3
  %cmp.not = icmp ult i32 %sub, %3
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %bytes.082 = phi i32 [ %shl, %for.body.lr.ph ], [ %sub, %for.cond.for.body_crit_edge ]
  %block2.081 = phi i64 [ %shr8, %for.body.lr.ph ], [ %inc13, %for.cond.for.body_crit_edge ]
  %block1.080 = phi i64 [ %shr, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %inc = add i64 %block1.080, 1
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %block1.080, i32 noundef %19, i32 noundef 8) #11
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %for.body.cleanup33_crit_edge, label %if.end12

for.body.cleanup33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

if.end12:                                         ; preds = %for.body
  %inc13 = add i64 %block2.081, 1
  %20 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_bdev.i, align 4
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %call.i68 = tail call ptr @__getblk_gfp(ptr noundef %21, i64 noundef %block2.081, i32 noundef %23, i32 noundef 8) #11
  %tobool15.not = icmp eq ptr %call.i68, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !119
  br label %cleanup33

if.end17:                                         ; preds = %if.end12
  %25 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %call.i68, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wait_on_buffer(ptr noundef nonnull %call.i68) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i68, i32 noundef 4) #11
  %28 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call.i68, align 4
  %and.i.i.i.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end21.if.then.i69_crit_edge

if.end21.if.then.i69_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i69

trylock_buffer.exit.i:                            ; preds = %if.end21
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i68, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i68, ptr nonnull %call.i68, i32 4, ptr nonnull elementtype(i32) %call.i68) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %31 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i69_crit_edge

trylock_buffer.exit.i.if.then.i69_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i69

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i69:                                      ; preds = %trylock_buffer.exit.i.if.then.i69_crit_edge, %if.end21.if.then.i69_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i68) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i69, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i68, i32 0, i32 5
  %32 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data, align 4
  %b_data22 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %b_data22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data22, align 4
  %36 = call ptr @memcpy(ptr %33, ptr %35, i32 %3)
  %37 = ptrtoint ptr %call.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call.i68, align 4
  %and1.i.i65 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i65)
  %tobool.not.i = icmp eq i32 %and1.i.i65, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i68) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i68) #11
  tail call void @unlock_buffer(ptr noundef nonnull %call.i68) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i70 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i70, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i70, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i70, ptr %b_count.i70, i32 1, ptr elementtype(i32) %b_count.i70) #11, !srcloc !119
  br i1 %tobool23.not, label %set_buffer_uptodate.exit.if.end26_crit_edge, label %if.then24

set_buffer_uptodate.exit.if.end26_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i68) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %set_buffer_uptodate.exit.if.end26_crit_edge
  %err.1 = phi i32 [ %call25, %if.then24 ], [ 0, %set_buffer_uptodate.exit.if.end26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i72 = getelementptr inbounds %struct.buffer_head, ptr %call.i68, i32 0, i32 11
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i72, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i72, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i72, ptr %b_count.i72, i32 1, ptr elementtype(i32) %b_count.i72) #11, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool27.not = icmp eq i32 %err.1, 0
  br i1 %tobool27.not, label %for.cond, label %if.end26.cleanup33_crit_edge

if.end26.cleanup33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and32 = and i32 %42, -4097
  store i32 %and32, ptr %flags, align 8
  br label %cleanup33

cleanup33:                                        ; preds = %for.end, %if.end26.cleanup33_crit_edge, %if.then16, %for.body.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup33_crit_edge ], [ 0, %for.end ], [ -5, %if.then16 ], [ -5, %for.body.cleanup33_crit_edge ], [ %err.1, %if.end26.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_sb_read(ptr nocapture noundef readonly %sb, i64 noundef %lbo, i32 noundef %bytes, ptr nocapture noundef writeonly %buffer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not34 = icmp eq i32 %bytes, 0
  br i1 %tobool.not34, label %entry.cleanup10_crit_edge, label %for.body.preheader

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

for.body.preheader:                               ; preds = %entry
  %sub = add i32 %3, -1
  %4 = trunc i64 %lbo to i32
  %conv2 = and i32 %sub, %4
  %sub3 = sub i32 %3, %conv2
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %5 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %lbo, %sh_prom
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %op.039 = phi i32 [ %3, %for.inc.for.body_crit_edge ], [ %sub3, %for.body.preheader ]
  %off.038 = phi i32 [ 0, %for.inc.for.body_crit_edge ], [ %conv2, %for.body.preheader ]
  %block.037 = phi i64 [ %add, %for.inc.for.body_crit_edge ], [ %shr, %for.body.preheader ]
  %buffer.addr.036 = phi ptr [ %add.ptr9, %for.inc.for.body_crit_edge ], [ %buffer, %for.body.preheader ]
  %bytes.addr.035 = phi i32 [ %sub8, %for.inc.for.body_crit_edge ], [ %bytes, %for.body.preheader ]
  %call.i = tail call ptr @__bread_gfp(ptr noundef %1, i64 noundef %block.037, i32 noundef %3, i32 noundef 8) #11
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %for.body.cleanup10_crit_edge, label %for.inc

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

for.inc:                                          ; preds = %for.body
  %7 = tail call i32 @llvm.umin.i32(i32 %op.039, i32 %bytes.addr.035)
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %off.038
  %10 = call ptr @memcpy(ptr %buffer.addr.036, ptr %add.ptr, i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !119
  %sub8 = sub i32 %bytes.addr.035, %7
  %add.ptr9 = getelementptr i8, ptr %buffer.addr.036, i32 %7
  %add = add i64 %block.037, 1
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %for.inc.cleanup10_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %for.body.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ -5, %for.body.cleanup10_crit_edge ], [ 0, %for.inc.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_sb_write(ptr noundef %sb, i64 noundef %lbo, i32 noundef %bytes, ptr noundef readonly %buf, i32 noundef %wait) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %lbo, %sh_prom
  %sub = add i32 %1, -1
  %6 = trunc i64 %lbo to i32
  %conv2 = and i32 %sub, %6
  %sub3 = sub i32 %1, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %7 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_flags, align 4
  %and4 = lshr i32 %8, 4
  %and4.lobit = and i32 %and4, 1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %wait.addr.0 = phi i32 [ %wait, %entry.if.end_crit_edge ], [ %and4.lobit, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool6.not98 = icmp eq i32 %bytes, 0
  br i1 %tobool6.not98, label %if.end.cleanup40_crit_edge, label %for.body.lr.ph

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait.addr.0)
  %tobool32.not = icmp eq i32 %wait.addr.0, 0
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %op.0104 = phi i32 [ %sub3, %for.body.lr.ph ], [ %1, %if.end38.for.body_crit_edge ]
  %off.0103 = phi i32 [ %conv2, %for.body.lr.ph ], [ 0, %if.end38.for.body_crit_edge ]
  %block.0101 = phi i64 [ %shr, %for.body.lr.ph ], [ %add, %if.end38.for.body_crit_edge ]
  %buf.addr.0100 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %if.end38.for.body_crit_edge ]
  %bytes.addr.099 = phi i32 [ %bytes, %for.body.lr.ph ], [ %sub39, %if.end38.for.body_crit_edge ]
  %9 = tail call i32 @llvm.umin.i32(i32 %op.0104, i32 %bytes.addr.099)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp10 = icmp ult i32 %9, %1
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  %call.i = tail call ptr @__bread_gfp(ptr noundef %3, i64 noundef %block.0101, i32 noundef %1, i32 noundef 8) #11
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.then14, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.8, i64 noundef %block.0101) #11
  br label %cleanup40

if.else:                                          ; preds = %for.body
  %call.i91 = tail call ptr @__getblk_gfp(ptr noundef %3, i64 noundef %block.0101, i32 noundef %1, i32 noundef 8) #11
  %tobool17.not = icmp eq ptr %call.i91, null
  br i1 %tobool17.not, label %if.else.cleanup40_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.else.cleanup40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then12.if.end20_crit_edge
  %bh.0 = phi ptr [ %call.i, %if.then12.if.end20_crit_edge ], [ %call.i91, %if.else.if.end20_crit_edge ]
  %10 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh.0, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wait_on_buffer(ptr noundef nonnull %bh.0) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bh.0, i32 noundef 4) #11
  %13 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end24.if.then.i92_crit_edge

if.end24.if.then.i92_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i92

trylock_buffer.exit.i:                            ; preds = %if.end24
  tail call void @llvm.prefetch.p0(ptr nonnull %bh.0, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bh.0, ptr nonnull %bh.0, i32 4, ptr nonnull elementtype(i32) %bh.0) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %16 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i92_crit_edge

trylock_buffer.exit.i.if.then.i92_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i92

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i92:                                      ; preds = %trylock_buffer.exit.i.if.then.i92_crit_edge, %if.end24.if.then.i92_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %bh.0) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i92, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %tobool25.not = icmp eq ptr %buf.addr.0100, null
  %b_data29 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %17 = ptrtoint ptr %b_data29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data29, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 %off.0103
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = call ptr @memcpy(ptr %add.ptr30, ptr %buf.addr.0100, i32 %9)
  %add.ptr27 = getelementptr i8, ptr %buf.addr.0100, i32 %9
  br label %if.end31

if.else28:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = call ptr @memset(ptr %add.ptr30, i32 255, i32 %9)
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then26
  %buf.addr.1 = phi ptr [ %add.ptr27, %if.then26 ], [ null, %if.else28 ]
  %21 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i90 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i90)
  %tobool.not.i = icmp eq i32 %and1.i.i90, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end31.set_buffer_uptodate.exit_crit_edge

if.end31.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %bh.0) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end31.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %bh.0) #11
  tail call void @unlock_buffer(ptr noundef nonnull %bh.0) #11
  br i1 %tobool32.not, label %set_buffer_uptodate.exit.if.end38_crit_edge, label %if.then33

set_buffer_uptodate.exit.if.end38_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %set_buffer_uptodate.exit
  %call34 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %bh.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %cleanup

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

cleanup:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.9, i64 noundef %block.0101, i32 noundef %call34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !119
  br label %cleanup40

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %set_buffer_uptodate.exit.if.end38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i93 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i93, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %b_count.i93, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i93, ptr %b_count.i93, i32 1, ptr elementtype(i32) %b_count.i93) #11, !srcloc !119
  %sub39 = sub i32 %bytes.addr.099, %9
  %add = add i64 %block.0101, 1
  %tobool6.not = icmp eq i32 %sub39, 0
  br i1 %tobool6.not, label %if.end38.cleanup40_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end38.cleanup40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

cleanup40:                                        ; preds = %if.end38.cleanup40_crit_edge, %cleanup, %if.else.cleanup40_crit_edge, %if.then14, %if.end.cleanup40_crit_edge
  %retval.3 = phi i32 [ %call34, %cleanup ], [ -5, %if.then14 ], [ 0, %if.end.cleanup40_crit_edge ], [ -12, %if.else.cleanup40_crit_edge ], [ 0, %if.end38.cleanup40_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_sb_write_run(ptr nocapture noundef readonly %sbi, ptr noundef %run, i64 noundef %vbo, ptr noundef %buf, i32 noundef %bytes, i32 noundef %sync) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %vcn = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits2, align 8
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %4 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_mask, align 4
  %6 = trunc i64 %vbo to i32
  %conv3 = and i32 %5, %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %7 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #11
  %8 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %clen, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #11
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv5 = trunc i64 %shr to i32
  %9 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %vcn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #11
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %idx, align 4, !annotation !103
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %conv5, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #11
  br i1 %call, label %if.end, label %entry.cleanup51_crit_edge

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.end.cleanup51_crit_edge, label %if.end8

if.end.cleanup51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end8:                                          ; preds = %if.end
  %conv9 = zext i32 %12 to i64
  %shl = shl i64 %conv9, %sh_prom
  %conv12 = zext i32 %conv3 to i64
  %add = add i64 %shl, %conv12
  %13 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clen, align 4
  %conv13 = zext i32 %14 to i64
  %shl16 = shl i64 %conv13, %sh_prom
  %sub = sub i64 %shl16, %conv12
  %conv1893 = zext i32 %bytes to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv1893)
  %cmp1994 = icmp ult i64 %sub, %conv1893
  %extract.t95 = trunc i64 %sub to i32
  %cond.off096 = select i1 %cmp1994, i32 %extract.t95, i32 %bytes
  %call2297 = call i32 @ntfs_sb_write(ptr noundef %1, i64 noundef %add, i32 noundef %cond.off096, ptr noundef %buf, i32 noundef %sync)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2297)
  %tobool.not98 = icmp eq i32 %call2297, 0
  br i1 %tobool.not98, label %if.end8.if.end24_crit_edge, label %if.end8.cleanup51_crit_edge

if.end8.cleanup51_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  br label %if.end24

if.end24:                                         ; preds = %cleanup.if.end24_crit_edge, %if.end8.if.end24_crit_edge
  %cond.off0101 = phi i32 [ %cond.off0, %cleanup.if.end24_crit_edge ], [ %cond.off096, %if.end8.if.end24_crit_edge ]
  %buf.addr.0100 = phi ptr [ %spec.select, %cleanup.if.end24_crit_edge ], [ %buf, %if.end8.if.end24_crit_edge ]
  %bytes.addr.099 = phi i32 [ %sub25, %cleanup.if.end24_crit_edge ], [ %bytes, %if.end8.if.end24_crit_edge ]
  %sub25 = sub i32 %bytes.addr.099, %cond.off0101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %tobool26.not = icmp eq i32 %sub25, 0
  br i1 %tobool26.not, label %if.end24.cleanup51_crit_edge, label %if.end28

if.end24.cleanup51_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end28:                                         ; preds = %if.end24
  %15 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vcn, align 4
  %17 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clen, align 4
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %idx, align 4
  %call30 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #11
  br i1 %call30, label %lor.lhs.false, label %if.end28.cleanup51_crit_edge

if.end28.cleanup51_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

lor.lhs.false:                                    ; preds = %if.end28
  %add29 = add i32 %18, %16
  %21 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add29)
  %cmp31.not = icmp eq i32 %22, %add29
  br i1 %cmp31.not, label %if.end34, label %lor.lhs.false.cleanup51_crit_edge

lor.lhs.false.cleanup51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end34:                                         ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp35 = icmp eq i32 %24, -1
  br i1 %cmp35, label %if.end34.cleanup51_crit_edge, label %cleanup

if.end34.cleanup51_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

cleanup:                                          ; preds = %if.end34
  %tobool39.not = icmp eq ptr %buf.addr.0100, null
  %add.ptr = getelementptr i8, ptr %buf.addr.0100, i32 %cond.off0101
  %spec.select = select i1 %tobool39.not, ptr null, ptr %add.ptr
  %conv42 = zext i32 %24 to i64
  %shl45 = shl i64 %conv42, %sh_prom
  %25 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clen, align 4
  %conv46 = zext i32 %26 to i64
  %shl49 = shl i64 %conv46, %sh_prom
  %conv18 = zext i32 %sub25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl49, i64 %conv18)
  %cmp19 = icmp ult i64 %shl49, %conv18
  %extract.t = trunc i64 %shl49 to i32
  %cond.off0 = select i1 %cmp19, i32 %extract.t, i32 %sub25
  %call22 = call i32 @ntfs_sb_write(ptr noundef %1, i64 noundef %shl45, i32 noundef %cond.off0, ptr noundef %spec.select, i32 noundef %sync)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %cleanup.if.end24_crit_edge, label %cleanup.cleanup51_crit_edge

cleanup.cleanup51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

cleanup.if.end24_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

cleanup51:                                        ; preds = %cleanup.cleanup51_crit_edge, %if.end34.cleanup51_crit_edge, %lor.lhs.false.cleanup51_crit_edge, %if.end28.cleanup51_crit_edge, %if.end24.cleanup51_crit_edge, %if.end8.cleanup51_crit_edge, %if.end.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.2 = phi i32 [ -2, %entry.cleanup51_crit_edge ], [ -22, %if.end.cleanup51_crit_edge ], [ %call2297, %if.end8.cleanup51_crit_edge ], [ 0, %if.end24.cleanup51_crit_edge ], [ %call22, %cleanup.cleanup51_crit_edge ], [ -2, %lor.lhs.false.cleanup51_crit_edge ], [ -2, %if.end28.cleanup51_crit_edge ], [ -22, %if.end34.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_bread_run(ptr nocapture noundef readonly %sbi, ptr noundef %run, i64 noundef %vbo) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %4 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv3 = trunc i64 %shr to i32
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %conv3, ptr noundef nonnull %lcn, ptr noundef null, ptr noundef null) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lcn, align 4
  %conv5 = zext i32 %6 to i64
  %shl = shl i64 %conv5, %sh_prom
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %7 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cluster_mask, align 4
  %conv8 = zext i32 %8 to i64
  %and = and i64 %conv8, %vbo
  %add = add i64 %and, %shl
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom10 = zext i8 %10 to i64
  %shr11 = lshr i64 %add, %sh_prom10
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %12, i64 noundef %shr11, i32 noundef %14, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom.i = zext i8 %16 to i64
  %shl.i = shl i64 %shr11, %sh_prom.i
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %shl.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ null, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_read_run_nb(ptr nocapture noundef readonly %sbi, ptr noundef %run, i64 noundef %vbo, ptr noundef writeonly %buf, i32 noundef %bytes, ptr noundef %nb) local_unnamed_addr #3 align 64 {
entry:
  %vcn = alloca i32, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %4 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cluster_bits2, align 8
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %6 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cluster_mask, align 4
  %8 = trunc i64 %vbo to i32
  %conv3 = and i32 %7, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #11
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv5 = trunc i64 %shr to i32
  %9 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %vcn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %10 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #11
  %11 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %clen, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #11
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %idx, align 4, !annotation !103
  %tobool.not = icmp eq ptr %run, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 8
  %13 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %record_size, align 8
  %mul = mul i32 %14, 3
  %conv6 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv6, i64 %vbo)
  %cmp = icmp ult i64 %conv6, %vbo
  br i1 %cmp, label %if.then.cleanup109_crit_edge, label %if.end

if.then.cleanup109_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mft = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27
  %15 = ptrtoint ptr %mft to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mft, align 8
  %add = add i64 %16, %vbo
  %conv11 = zext i32 %14 to i64
  br label %if.end29

if.else:                                          ; preds = %entry
  %call = call zeroext i1 @run_lookup_entry(ptr noundef nonnull %run, i32 noundef %conv5, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #11
  br i1 %call, label %if.else13, label %if.else.cleanup109_crit_edge

if.else.cleanup109_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.else13:                                        ; preds = %if.else
  %17 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp14 = icmp eq i32 %18, -1
  br i1 %cmp14, label %if.else13.cleanup109_crit_edge, label %if.end17

if.else13.cleanup109_crit_edge:                   ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.end17:                                         ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  %conv18 = zext i32 %18 to i64
  %shl = shl i64 %conv18, %sh_prom
  %conv21 = zext i32 %conv3 to i64
  %add22 = add i64 %shl, %conv21
  %19 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clen, align 4
  %conv23 = zext i32 %20 to i64
  %shl26 = shl i64 %conv23, %sh_prom
  %sub = sub i64 %shl26, %conv21
  br label %if.end29

if.end29:                                         ; preds = %if.end17, %if.end
  %lbo.0 = phi i64 [ %add22, %if.end17 ], [ %add, %if.end ]
  %len.0 = phi i64 [ %sub, %if.end17 ], [ %conv11, %if.end ]
  %sub30 = add i32 %3, -1
  %21 = trunc i64 %lbo.0 to i32
  %conv33 = and i32 %sub30, %21
  %tobool34.not = icmp eq ptr %nb, null
  br i1 %tobool34.not, label %if.end29.if.end38_crit_edge, label %if.then35

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %off36 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 3
  %22 = ptrtoint ptr %off36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv33, ptr %off36, align 4
  %bytes37 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 1
  %23 = ptrtoint ptr %bytes37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bytes, ptr %bytes37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end29.if.end38_crit_edge
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %nbufs = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %cleanup96, %if.end38
  %buf.addr.0 = phi ptr [ %buf, %if.end38 ], [ %buf.addr.2, %cleanup96 ]
  %bytes.addr.0 = phi i32 [ %bytes, %if.end38 ], [ %sub70, %cleanup96 ]
  %off.0 = phi i32 [ %conv33, %if.end38 ], [ 0, %cleanup96 ]
  %nbh.0 = phi i32 [ 0, %if.end38 ], [ %nbh.2, %cleanup96 ]
  %lbo.1 = phi i64 [ %lbo.0, %if.end38 ], [ %shl91, %cleanup96 ]
  %len.1 = phi i64 [ %len.0, %if.end38 ], [ %shl95, %cleanup96 ]
  %conv39 = zext i32 %bytes.addr.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %len.1, i64 %conv39)
  %cmp40.not = icmp ult i64 %len.1, %conv39
  %extract.t181 = trunc i64 %len.1 to i32
  %cond.off0 = select i1 %cmp40.not, i32 %extract.t181, i32 %bytes.addr.0
  %24 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom45 = zext i8 %25 to i64
  %shr46 = lshr i64 %lbo.1, %sh_prom45
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %for.cond
  %buf.addr.1 = phi ptr [ %buf.addr.0, %for.cond ], [ %buf.addr.2, %do.cond.do.body_crit_edge ]
  %bytes.addr.1 = phi i32 [ %bytes.addr.0, %for.cond ], [ %sub70, %do.cond.do.body_crit_edge ]
  %off.1 = phi i32 [ %off.0, %for.cond ], [ 0, %do.cond.do.body_crit_edge ]
  %nbh.1 = phi i32 [ %nbh.0, %for.cond ], [ %nbh.2, %do.cond.do.body_crit_edge ]
  %len32.0 = phi i32 [ %cond.off0, %for.cond ], [ %sub74, %do.cond.do.body_crit_edge ]
  %block.0 = phi i64 [ %shr46, %for.cond ], [ %add75, %do.cond.do.body_crit_edge ]
  %sub47 = sub i32 %3, %off.1
  %26 = call i32 @llvm.umin.i32(i32 %sub47, i32 %len32.0)
  %27 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i.i, align 4
  %29 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %28, i64 noundef %block.0, i32 noundef %30, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %ntfs_bread.exit.thread, label %if.end55

ntfs_bread.exit.thread:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom.i = zext i8 %32 to i64
  %shl.i = shl i64 %block.0, %sh_prom.i
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.13, i64 noundef %shl.i) #11
  br label %out

if.end55:                                         ; preds = %do.body
  %tobool56.not = icmp eq ptr %buf.addr.1, null
  br i1 %tobool56.not, label %if.end55.if.end59_crit_edge, label %if.then57

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %off.1
  %35 = call ptr @memcpy(ptr %buf.addr.1, ptr %add.ptr, i32 %26)
  %add.ptr58 = getelementptr i8, ptr %buf.addr.1, i32 %26
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55.if.end59_crit_edge
  %buf.addr.2 = phi ptr [ %add.ptr58, %if.then57 ], [ null, %if.end55.if.end59_crit_edge ]
  br i1 %tobool34.not, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #11
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #11, !srcloc !119
  br label %if.end69

if.else62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %nbh.1)
  %cmp63 = icmp ugt i32 %nbh.1, 7
  br i1 %cmp63, label %if.else62.while.body.preheader_crit_edge, label %if.else66

if.else62.while.body.preheader_crit_edge:         ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

if.else66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i32 %nbh.1, 1
  %arrayidx = getelementptr [8 x ptr], ptr %nb, i32 0, i32 %nbh.1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc, ptr %nbufs, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then61
  %nbh.2 = phi i32 [ %inc, %if.else66 ], [ %nbh.1, %if.then61 ]
  %sub70 = sub i32 %bytes.addr.1, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub70)
  %tobool71.not = icmp eq i32 %sub70, 0
  br i1 %tobool71.not, label %if.end69.cleanup109_crit_edge, label %do.cond

if.end69.cleanup109_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

do.cond:                                          ; preds = %if.end69
  %sub74 = sub i32 %len32.0, %26
  %add75 = add i64 %block.0, 1
  %tobool76.not = icmp eq i32 %sub74, 0
  br i1 %tobool76.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.cond
  %39 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vcn, align 4
  %41 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clen, align 4
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx, align 4
  %inc78 = add i32 %44, 1
  store i32 %inc78, ptr %idx, align 4
  %call79 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc78, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #11
  br i1 %call79, label %lor.lhs.false, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %do.end
  %add77 = add i32 %42, %40
  %45 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add77)
  %cmp80.not = icmp eq i32 %46, %add77
  br i1 %cmp80.not, label %if.end83, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end83:                                         ; preds = %lor.lhs.false
  %47 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lcn, align 4
  %cmp84 = icmp eq i32 %48, -1
  br i1 %cmp84, label %if.end83.out_crit_edge, label %cleanup96

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup96:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %conv88 = zext i32 %48 to i64
  %shl91 = shl i64 %conv88, %sh_prom
  %49 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clen, align 4
  %conv92 = zext i32 %50 to i64
  %shl95 = shl i64 %conv92, %sh_prom
  br label %for.cond

out:                                              ; preds = %if.end83.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end.out_crit_edge, %ntfs_bread.exit.thread
  %err.4 = phi i32 [ -5, %ntfs_bread.exit.thread ], [ -2, %lor.lhs.false.out_crit_edge ], [ -2, %do.end.out_crit_edge ], [ -22, %if.end83.out_crit_edge ]
  %nbh.4 = phi i32 [ %nbh.1, %ntfs_bread.exit.thread ], [ %nbh.2, %lor.lhs.false.out_crit_edge ], [ %nbh.2, %do.end.out_crit_edge ], [ %nbh.2, %if.end83.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbh.4)
  %tobool100.not = icmp eq i32 %nbh.4, 0
  br i1 %tobool100.not, label %out.cleanup109_crit_edge, label %out.while.body.preheader_crit_edge

out.while.body.preheader_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

out.cleanup109_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

while.body.preheader:                             ; preds = %out.while.body.preheader_crit_edge, %if.else62.while.body.preheader_crit_edge
  %nbh.4258 = phi i32 [ %nbh.4, %out.while.body.preheader_crit_edge ], [ %nbh.1, %if.else62.while.body.preheader_crit_edge ]
  %err.4257 = phi i32 [ %err.4, %out.while.body.preheader_crit_edge ], [ -22, %if.else62.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %nbh.5242 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %nbh.4258, %while.body.preheader ]
  %dec = add i32 %nbh.5242, -1
  %arrayidx105 = getelementptr [8 x ptr], ptr %nb, i32 0, i32 %dec
  %51 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx105, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !118
  %b_count.i182 = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 11
  %call.i.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i182, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %b_count.i182, i32 1, i32 3, i32 1) #11
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i182, ptr %b_count.i182, i32 1, ptr elementtype(i32) %b_count.i182) #11, !srcloc !119
  %54 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %arrayidx105, align 4
  %tobool103.not = icmp eq i32 %dec, 0
  br i1 %tobool103.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %nbufs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %nbufs, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %while.end, %out.cleanup109_crit_edge, %if.end69.cleanup109_crit_edge, %if.else13.cleanup109_crit_edge, %if.else.cleanup109_crit_edge, %if.then.cleanup109_crit_edge
  %retval.3 = phi i32 [ %err.4257, %while.end ], [ %err.4, %out.cleanup109_crit_edge ], [ -22, %if.else13.cleanup109_crit_edge ], [ -2, %if.else.cleanup109_crit_edge ], [ -2, %if.then.cleanup109_crit_edge ], [ 0, %if.end69.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #11
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_read_bh(ptr nocapture noundef readonly %sbi, ptr noundef %run, i64 noundef %vbo, ptr noundef %rhdr, i32 noundef %bytes, ptr noundef %nb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ntfs_read_run_nb(ptr noundef %sbi, ptr noundef %run, i64 noundef %vbo, ptr noundef %rhdr, i32 noundef %bytes, ptr noundef %nb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes1 = getelementptr inbounds %struct.ntfs_buffers, ptr %nb, i32 0, i32 1
  %0 = ptrtoint ptr %bytes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes1, align 4
  %fix_off.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rhdr, i32 0, i32 1
  %2 = ptrtoint ptr %fix_off.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fix_off.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #11
  %shr.i = lshr i32 %1, 9
  %add.i = add nuw nsw i32 %shr.i, 1
  %conv1.i = trunc i32 %add.i to i16
  %conv2.i = zext i16 %4 to i32
  %and.i = and i32 %conv2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %conv5.i = shl nuw nsw i32 %add.i, 1
  %mul.i = and i32 %conv5.i, 131070
  %add6.i = add nuw nsw i32 %mul.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add6.i)
  %cmp.i = icmp ugt i32 %add6.i, 512
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %dec.i = add i16 %conv1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1.i)
  %tobool9.not.i = icmp eq i16 %conv1.i, 0
  %conv11.i = zext i16 %dec.i to i32
  %mul12.i = shl nuw nsw i32 %conv11.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12.i, i32 %1)
  %cmp13.i = icmp ugt i32 %mul12.i, %1
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %lor.lhs.false8.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false8.i.cleanup_crit_edge:               ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %add.ptr.i = getelementptr i8, ptr %rhdr, i32 %conv2.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool18.not43.i = icmp eq i16 %dec.i, 0
  br i1 %tobool18.not43.i, label %if.end.i.cleanup_crit_edge, label %while.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader.i:                           ; preds = %if.end.i
  %add.ptr16.i = getelementptr i8, ptr %rhdr, i32 510
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %fn.047.i = phi i16 [ %dec17.i, %while.body.i.while.body.i_crit_edge ], [ %dec.i, %while.body.preheader.i ]
  %ptr.046.i = phi ptr [ %add.ptr25.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr16.i, %while.body.preheader.i ]
  %fixup.045.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %ret.044.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %dec17.i = add i16 %fn.047.i, -1
  %7 = ptrtoint ptr %ptr.046.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ptr.046.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp21.not.i = icmp eq i16 %8, %6
  %spec.select.i = select i1 %cmp21.not.i, i32 %ret.044.i, i32 -555
  %incdec.ptr.i = getelementptr i16, ptr %fixup.045.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr.i, align 2
  %11 = ptrtoint ptr %ptr.046.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ptr.046.i, align 2
  %add.ptr25.i = getelementptr i16, ptr %ptr.046.i, i32 256
  %tobool18.not.i = icmp eq i16 %dec17.i, 0
  br i1 %tobool18.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false8.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false8.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %spec.select.i, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_bio_pages(ptr nocapture noundef readonly %sbi, ptr noundef %run, ptr nocapture noundef readonly %pages, i32 noundef %nr_pages, i64 noundef %vbo, i32 noundef %bytes, i32 noundef %op) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %vcn = alloca i32, align 4
  %run_idx = alloca i32, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %4 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %6 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #11
  %7 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %clen, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %run_idx) #11
  %8 = ptrtoint ptr %run_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %run_idx, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #11
  %9 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not = icmp eq i32 %bytes, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @blk_start_plug(ptr noundef nonnull %plug) #11
  %and5 = and i64 %vbo, -512
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %and5, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %10 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8, ptr %vcn, align 4
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %conv8, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %run_idx) #11
  br i1 %call, label %if.end10, label %if.end.if.end109_crit_edge

if.end.if.end109_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.end10:                                         ; preds = %if.end
  %conv = zext i32 %bytes to i64
  %add3 = add i64 %vbo, 511
  %add4 = add i64 %add3, %conv
  %and = and i64 %add4, 4294966784
  %sub = sub i64 %and, %and5
  %conv6 = trunc i64 %sub to i32
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %11 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cluster_mask, align 4
  %13 = trunc i64 %and5 to i32
  %conv13 = and i32 %12, %13
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %if.end10
  %bytes.addr.0 = phi i32 [ %conv6, %if.end10 ], [ %bytes.addr.3, %lor.lhs.false.for.cond_crit_edge ]
  %bio.0 = phi ptr [ null, %if.end10 ], [ %bio.1.i, %lor.lhs.false.for.cond_crit_edge ]
  %vbo.addr.0 = phi i64 [ %and5, %if.end10 ], [ %vbo.addr.3, %lor.lhs.false.for.cond_crit_edge ]
  %page.0 = phi ptr [ %15, %if.end10 ], [ %page.4, %lor.lhs.false.for.cond_crit_edge ]
  %off.0 = phi i32 [ %conv13, %if.end10 ], [ 0, %lor.lhs.false.for.cond_crit_edge ]
  %page_idx.0 = phi i32 [ 0, %if.end10 ], [ %page_idx.4, %lor.lhs.false.for.cond_crit_edge ]
  %16 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lcn, align 4
  %conv14 = zext i32 %17 to i64
  %shl = shl i64 %conv14, %sh_prom
  %conv17 = zext i32 %off.0 to i64
  %add18 = add i64 %shl, %conv17
  %18 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clen, align 4
  %conv19 = zext i32 %19 to i64
  %shl22 = shl i64 %conv19, %sh_prom
  %sub24 = sub i64 %shl22, %conv17
  br label %new_bio

new_bio:                                          ; preds = %while.body.new_bio_crit_edge, %for.cond
  %bytes.addr.1 = phi i32 [ %bytes.addr.0, %for.cond ], [ %bytes.addr.2225, %while.body.new_bio_crit_edge ]
  %bio.1 = phi ptr [ %bio.0, %for.cond ], [ %bio.1.i, %while.body.new_bio_crit_edge ]
  %vbo.addr.1 = phi i64 [ %vbo.addr.0, %for.cond ], [ %vbo.addr.2226, %while.body.new_bio_crit_edge ]
  %page.1 = phi ptr [ %page.0, %for.cond ], [ %page.2227, %while.body.new_bio_crit_edge ]
  %page_idx.1 = phi i32 [ %page_idx.0, %for.cond ], [ %page_idx.2228, %while.body.new_bio_crit_edge ]
  %lbo.0 = phi i64 [ %add18, %for.cond ], [ %lbo.1229, %while.body.new_bio_crit_edge ]
  %len.0 = phi i64 [ %sub24, %for.cond ], [ %len.1230, %while.body.new_bio_crit_edge ]
  %sub25 = sub i32 %nr_pages, %page_idx.1
  %conv.i = trunc i32 %sub25 to i16
  %call.i.i = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %new_bio.if.end29_crit_edge

new_bio.if.end29_crit_edge:                       ; preds = %new_bio
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true.i:                                  ; preds = %new_bio
  %20 = call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.land.rhs.i_crit_edge

land.lhs.true.i.land.rhs.i_crit_edge:             ; preds = %land.lhs.true.i
  br label %land.rhs.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.lhs.true.i.land.rhs.i_crit_edge
  %nr_vecs.addr.013.i = phi i32 [ %div11.i, %while.body.i.land.rhs.i_crit_edge ], [ %sub25, %land.lhs.true.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nr_vecs.addr.013.i)
  %tobool4.not.i = icmp ult i32 %nr_vecs.addr.013.i, 2
  br i1 %tobool4.not.i, label %land.rhs.i.out_crit_edge, label %while.body.i

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.i:                                     ; preds = %land.rhs.i
  %div11.i = lshr i32 %nr_vecs.addr.013.i, 1
  %conv5.i = trunc i32 %div11.i to i16
  %call.i12.i = call ptr @bio_alloc_bioset(i32 noundef 3168, i16 noundef zeroext %conv5.i, ptr noundef nonnull @fs_bio_set) #11
  %tobool3.not.i = icmp eq ptr %call.i12.i, null
  br i1 %tobool3.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end29_crit_edge

while.body.i.if.end29_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end29:                                         ; preds = %while.body.i.if.end29_crit_edge, %new_bio.if.end29_crit_edge
  %bio.1.i = phi ptr [ %call.i.i, %new_bio.if.end29_crit_edge ], [ %call.i12.i, %while.body.i.if.end29_crit_edge ]
  %tobool30.not = icmp eq ptr %bio.1, null
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @bio_chain(ptr noundef nonnull %bio.1, ptr noundef nonnull %bio.1.i) #11
  call void @submit_bio(ptr noundef nonnull %bio.1) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 3
  %26 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %27, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 1
  %28 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %29, %3
  br i1 %cmp.not.i, label %if.end32.bio_set_dev.exit_crit_edge, label %if.then.i

if.end32.bio_set_dev.exit_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %27, -2177
  %30 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end32.bio_set_dev.exit_crit_edge
  %31 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio.1.i) #11
  %shr33 = lshr i64 %lbo.0, 9
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 8
  %32 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %shr33, ptr %bi_iter, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 2
  %33 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %op, ptr %bi_opf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.0)
  %tobool34.not224 = icmp eq i64 %len.0, 0
  br i1 %tobool34.not224, label %bio_set_dev.exit.while.end_crit_edge, label %bio_set_dev.exit.while.body_crit_edge

bio_set_dev.exit.while.body_crit_edge:            ; preds = %bio_set_dev.exit
  br label %while.body

bio_set_dev.exit.while.end_crit_edge:             ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end92.while.body_crit_edge, %bio_set_dev.exit.while.body_crit_edge
  %len.1230 = phi i64 [ %sub94, %if.end92.while.body_crit_edge ], [ %len.0, %bio_set_dev.exit.while.body_crit_edge ]
  %lbo.1229 = phi i64 [ %add96, %if.end92.while.body_crit_edge ], [ %lbo.0, %bio_set_dev.exit.while.body_crit_edge ]
  %page_idx.2228 = phi i32 [ %page_idx.3, %if.end92.while.body_crit_edge ], [ %page_idx.1, %bio_set_dev.exit.while.body_crit_edge ]
  %page.2227 = phi ptr [ %page.3, %if.end92.while.body_crit_edge ], [ %page.1, %bio_set_dev.exit.while.body_crit_edge ]
  %vbo.addr.2226 = phi i64 [ %add54, %if.end92.while.body_crit_edge ], [ %vbo.addr.1, %bio_set_dev.exit.while.body_crit_edge ]
  %bytes.addr.2225 = phi i32 [ %sub52, %if.end92.while.body_crit_edge ], [ %bytes.addr.1, %bio_set_dev.exit.while.body_crit_edge ]
  %34 = trunc i64 %vbo.addr.2226 to i32
  %conv36 = and i32 %34, 4095
  %conv37 = zext i32 %conv36 to i64
  %add38 = add i64 %len.1230, %conv37
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add38)
  %cmp = icmp ugt i64 %add38, 4096
  %sub40 = sub nuw nsw i32 4096, %conv36
  %extract.t178 = trunc i64 %len.1230 to i32
  %cond.off0 = select i1 %cmp, i32 %sub40, i32 %extract.t178
  %call43 = call i32 @bio_add_page(ptr noundef nonnull %bio.1.i, ptr noundef %page.2227, i32 noundef %cond.off0, i32 noundef %conv36) #11
  %cmp44 = icmp ult i32 %call43, %cond.off0
  br i1 %cmp44, label %while.body.new_bio_crit_edge, label %if.end47

while.body.new_bio_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %new_bio

if.end47:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.2225, i32 %cond.off0)
  %cmp48.not = icmp ugt i32 %bytes.addr.2225, %cond.off0
  br i1 %cmp48.not, label %if.end51, label %out.thread186

if.end51:                                         ; preds = %if.end47
  %sub52 = sub i32 %bytes.addr.2225, %cond.off0
  %conv53 = zext i32 %cond.off0 to i64
  %add54 = add i64 %vbo.addr.2226, %conv53
  %add55 = add i32 %cond.off0, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add55)
  %cmp56 = icmp eq i32 %add55, 4096
  br i1 %cmp56, label %if.then58, label %if.end51.if.end87_crit_edge

if.end51.if.end87_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then58:                                        ; preds = %if.end51
  %add59 = add i32 %page_idx.2228, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %nr_pages)
  %cmp60.not = icmp ult i32 %add59, %nr_pages
  br i1 %cmp60.not, label %if.end85, label %do.end, !prof !108

do.end:                                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1527, i32 noundef 9, ptr noundef null) #11
  br label %out

if.end85:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx86 = getelementptr ptr, ptr %pages, i32 %add59
  %35 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end51.if.end87_crit_edge
  %page.3 = phi ptr [ %36, %if.end85 ], [ %page.2227, %if.end51.if.end87_crit_edge ]
  %page_idx.3 = phi i32 [ %add59, %if.end85 ], [ %page_idx.2228, %if.end51.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %len.1230, i64 %conv53)
  %cmp89.not = icmp ugt i64 %len.1230, %conv53
  br i1 %cmp89.not, label %if.end92, label %if.end87.while.end_crit_edge

if.end87.while.end_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end92:                                         ; preds = %if.end87
  %sub94 = sub i64 %len.1230, %conv53
  %add96 = add i64 %lbo.1229, %conv53
  %tobool34.not = icmp eq i64 %sub94, 0
  br i1 %tobool34.not, label %if.end92.while.end_crit_edge, label %if.end92.while.body_crit_edge

if.end92.while.body_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end92.while.end_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end92.while.end_crit_edge, %if.end87.while.end_crit_edge, %bio_set_dev.exit.while.end_crit_edge
  %bytes.addr.3 = phi i32 [ %sub52, %if.end87.while.end_crit_edge ], [ %sub52, %if.end92.while.end_crit_edge ], [ %bytes.addr.1, %bio_set_dev.exit.while.end_crit_edge ]
  %vbo.addr.3 = phi i64 [ %add54, %if.end87.while.end_crit_edge ], [ %add54, %if.end92.while.end_crit_edge ], [ %vbo.addr.1, %bio_set_dev.exit.while.end_crit_edge ]
  %page.4 = phi ptr [ %page.3, %if.end87.while.end_crit_edge ], [ %page.3, %if.end92.while.end_crit_edge ], [ %page.1, %bio_set_dev.exit.while.end_crit_edge ]
  %page_idx.4 = phi i32 [ %page_idx.3, %if.end87.while.end_crit_edge ], [ %page_idx.3, %if.end92.while.end_crit_edge ], [ %page_idx.1, %bio_set_dev.exit.while.end_crit_edge ]
  %37 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vcn, align 4
  %39 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clen, align 4
  %41 = ptrtoint ptr %run_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %run_idx, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %run_idx, align 4
  %call98 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #11
  br i1 %call98, label %lor.lhs.false, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %while.end
  %add97 = add i32 %40, %38
  %43 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vcn, align 4
  %cmp99.not = icmp eq i32 %44, %add97
  br i1 %cmp99.not, label %lor.lhs.false.for.cond_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %while.end.out_crit_edge, %do.end, %land.rhs.i.out_crit_edge, %land.lhs.true.i.out_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ -12, %land.rhs.i.out_crit_edge ], [ -12, %land.lhs.true.i.out_crit_edge ], [ -2, %lor.lhs.false.out_crit_edge ], [ -2, %while.end.out_crit_edge ]
  %bio.2 = phi ptr [ %bio.1.i, %do.end ], [ %bio.1, %land.rhs.i.out_crit_edge ], [ %bio.1, %land.lhs.true.i.out_crit_edge ], [ %bio.1.i, %lor.lhs.false.out_crit_edge ], [ %bio.1.i, %while.end.out_crit_edge ]
  %tobool103.not = icmp eq ptr %bio.2, null
  br i1 %tobool103.not, label %out.if.end109_crit_edge, label %out.if.end108_crit_edge

out.if.end108_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

out.if.end109_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

out.thread186:                                    ; preds = %if.end47
  %tobool103.not190 = icmp eq ptr %bio.1.i, null
  br i1 %tobool103.not190, label %out.thread186.if.end109_crit_edge, label %if.then106

out.thread186.if.end109_crit_edge:                ; preds = %out.thread186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then106:                                       ; preds = %out.thread186
  call void @__sanitizer_cov_trace_pc() #13
  %call107 = call i32 @submit_bio_wait(ptr noundef nonnull %bio.1.i) #11
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %out.if.end108_crit_edge
  %bio.2185 = phi ptr [ %bio.1.i, %if.then106 ], [ %bio.2, %out.if.end108_crit_edge ]
  %err.1 = phi i32 [ %call107, %if.then106 ], [ %err.0, %out.if.end108_crit_edge ]
  call void @bio_put(ptr noundef nonnull %bio.2185) #11
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %out.thread186.if.end109_crit_edge, %out.if.end109_crit_edge, %if.end.if.end109_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end108 ], [ %err.0, %out.if.end109_crit_edge ], [ 0, %out.thread186.if.end109_crit_edge ], [ -2, %if.end.if.end109_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %if.end109 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %run_idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_vbo_to_lbo(ptr nocapture noundef readonly %sbi, ptr noundef %run, i64 noundef %vbo, ptr nocapture noundef writeonly %lbo, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %0 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !103
  %cluster_bits1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits1, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %conv2, ptr noundef nonnull %lcn, ptr noundef nonnull %len, ptr noundef null) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %4 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cluster_mask, align 4
  %6 = trunc i64 %vbo to i32
  %conv4 = and i32 %5, %6
  %7 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i32 %conv4 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = zext i32 %8 to i64
  %shl = shl i64 %conv6, %sh_prom
  %conv9 = zext i32 %conv4 to i64
  %add = add i64 %shl, %conv9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %conv14.pre-phi = phi i64 [ %.pre, %if.end.cond.end_crit_edge ], [ %conv9, %cond.false ]
  %cond = phi i64 [ -1, %if.end.cond.end_crit_edge ], [ %add, %cond.false ]
  %9 = ptrtoint ptr %lbo to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %cond, ptr %lbo, align 8
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %conv10 = zext i32 %11 to i64
  %shl13 = shl i64 %conv10, %sh_prom
  %sub = sub i64 %shl13, %conv14.pre-phi
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %sub, ptr %bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_new_inode(ptr noundef %sbi, i32 noundef %rno, i1 noundef zeroext %dir) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %call = tail call ptr @new_inode(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 -360
  %conv = select i1 %dir, i16 512, i16 0
  %call5 = tail call i32 @mi_format_new(ptr noundef %add.ptr.i, ptr noundef %sbi, i32 noundef %rno, i16 noundef zeroext %conv, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end8:                                          ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rno, ptr %i_ino, align 8
  %call9 = tail call i32 @insert_inode_locked(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.if.then14_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.if.then14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %if.end8.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %err.0.ph = phi i32 [ %call5, %if.end.if.then14_crit_edge ], [ -5, %if.end8.if.then14_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call) #11
  %3 = inttoptr i32 %err.0.ph to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.then14 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %add.ptr.i, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_format_new(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_sd_valid(ptr nocapture noundef readonly %sd, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  br i1 %cmp, label %entry.cleanup84_crit_edge, label %if.end

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1.not = icmp eq i8 %1, 1
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup84_crit_edge

if.end.cleanup84_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end4:                                          ; preds = %if.end
  %Sbz1 = getelementptr inbounds %struct.SECURITY_DESCRIPTOR_RELATIVE, ptr %sd, i32 0, i32 1
  %2 = ptrtoint ptr %Sbz1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %Sbz1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.cleanup84_crit_edge

if.end4.cleanup84_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end6:                                          ; preds = %if.end4
  %Control = getelementptr inbounds %struct.SECURITY_DESCRIPTOR_RELATIVE, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %Control to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %Control, align 2
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  br i1 %tobool8.not, label %if.end6.cleanup84_crit_edge, label %if.end10

if.end6.cleanup84_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end10:                                         ; preds = %if.end6
  %Owner = getelementptr inbounds %struct.SECURITY_DESCRIPTOR_RELATIVE, ptr %sd, i32 0, i32 3
  %7 = ptrtoint ptr %Owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %Owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %if.end10.if.end28_crit_edge, label %if.then12

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then12:                                        ; preds = %if.end10
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add.ptr = getelementptr i8, ptr %sd, i32 %9
  %add = add i32 %9, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp13 = icmp ugt i32 %add, %len
  br i1 %cmp13, label %if.then12.cleanup84_crit_edge, label %if.end16

if.then12.cleanup84_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end16:                                         ; preds = %if.then12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp19.not = icmp eq i8 %11, 1
  br i1 %cmp19.not, label %if.end22, label %if.end16.cleanup84_crit_edge

if.end16.cleanup84_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end22:                                         ; preds = %if.end16
  %SubAuthorityCount.i = getelementptr inbounds %struct.SID, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %SubAuthorityCount.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %SubAuthorityCount.i, align 1
  %conv.i = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv.i, 2
  %add23 = add i32 %add, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %len)
  %cmp24.not = icmp ugt i32 %add23, %len
  br i1 %cmp24.not, label %if.end22.cleanup84_crit_edge, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end22.cleanup84_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end28:                                         ; preds = %if.end22.if.end28_crit_edge, %if.end10.if.end28_crit_edge
  %Group = getelementptr inbounds %struct.SECURITY_DESCRIPTOR_RELATIVE, ptr %sd, i32 0, i32 4
  %15 = ptrtoint ptr %Group to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %Group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not = icmp eq i32 %16, 0
  br i1 %tobool29.not, label %if.end28.if.end52_crit_edge, label %if.then30

if.end28.if.end52_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then30:                                        ; preds = %if.end28
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add.ptr31 = getelementptr i8, ptr %sd, i32 %17
  %add32 = add i32 %17, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %len)
  %cmp33 = icmp ugt i32 %add32, %len
  br i1 %cmp33, label %if.then30.cleanup84_crit_edge, label %if.end36

if.then30.cleanup84_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end36:                                         ; preds = %if.then30
  %18 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp39.not = icmp eq i8 %19, 1
  br i1 %cmp39.not, label %if.end42, label %if.end36.cleanup84_crit_edge

if.end36.cleanup84_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end42:                                         ; preds = %if.end36
  %SubAuthorityCount.i137 = getelementptr inbounds %struct.SID, ptr %add.ptr31, i32 0, i32 1
  %20 = ptrtoint ptr %SubAuthorityCount.i137 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %SubAuthorityCount.i137, align 1
  %conv.i138 = zext i8 %21 to i32
  %22 = shl nuw nsw i32 %conv.i138, 2
  %add44 = add i32 %add32, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %len)
  %cmp45.not = icmp ugt i32 %add44, %len
  br i1 %cmp45.not, label %if.end42.cleanup84_crit_edge, label %if.end42.if.end52_crit_edge

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end42.cleanup84_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end52:                                         ; preds = %if.end42.if.end52_crit_edge, %if.end28.if.end52_crit_edge
  %Sacl = getelementptr inbounds %struct.SECURITY_DESCRIPTOR_RELATIVE, ptr %sd, i32 0, i32 5
  %23 = ptrtoint ptr %Sacl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Sacl, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool53.not = icmp eq i32 %24, 0
  br i1 %tobool53.not, label %if.end52.if.end67_crit_edge, label %if.then54

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then54:                                        ; preds = %if.end52
  %add56 = add i32 %25, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add56, i32 %len)
  %cmp57 = icmp ugt i32 %add56, %len
  br i1 %cmp57, label %if.then54.cleanup84_crit_edge, label %if.end60

if.then54.cleanup84_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end60:                                         ; preds = %if.then54
  %add.ptr55 = getelementptr i8, ptr %sd, i32 %25
  %sub = sub i32 %len, %25
  %call61 = tail call fastcc zeroext i1 @is_acl_valid(ptr noundef %add.ptr55, i32 noundef %sub)
  br i1 %call61, label %if.end60.if.end67_crit_edge, label %if.end60.cleanup84_crit_edge

if.end60.cleanup84_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.end67:                                         ; preds = %if.end60.if.end67_crit_edge, %if.end52.if.end67_crit_edge
  %Dacl = getelementptr inbounds %struct.SECURITY_DESCRIPTOR_RELATIVE, ptr %sd, i32 0, i32 6
  %26 = ptrtoint ptr %Dacl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %Dacl, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool68.not = icmp eq i32 %27, 0
  br i1 %tobool68.not, label %if.end67.if.end83_crit_edge, label %if.then69

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then69:                                        ; preds = %if.end67
  %add71 = add i32 %28, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %len)
  %cmp72 = icmp ugt i32 %add71, %len
  br i1 %cmp72, label %if.then69.cleanup84_crit_edge, label %if.end75

if.then69.cleanup84_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end75:                                         ; preds = %if.then69
  %add.ptr70 = getelementptr i8, ptr %sd, i32 %28
  %sub76 = sub i32 %len, %28
  %call77 = tail call fastcc zeroext i1 @is_acl_valid(ptr noundef %add.ptr70, i32 noundef %sub76)
  br i1 %call77, label %if.end75.if.end83_crit_edge, label %if.end75.cleanup84_crit_edge

if.end75.cleanup84_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup84

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.end83:                                         ; preds = %if.end75.if.end83_crit_edge, %if.end67.if.end83_crit_edge
  br label %cleanup84

cleanup84:                                        ; preds = %if.end83, %if.end75.cleanup84_crit_edge, %if.then69.cleanup84_crit_edge, %if.end60.cleanup84_crit_edge, %if.then54.cleanup84_crit_edge, %if.end42.cleanup84_crit_edge, %if.end36.cleanup84_crit_edge, %if.then30.cleanup84_crit_edge, %if.end22.cleanup84_crit_edge, %if.end16.cleanup84_crit_edge, %if.then12.cleanup84_crit_edge, %if.end6.cleanup84_crit_edge, %if.end4.cleanup84_crit_edge, %if.end.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.7 = phi i1 [ true, %if.end83 ], [ false, %if.end75.cleanup84_crit_edge ], [ false, %if.end60.cleanup84_crit_edge ], [ false, %if.end42.cleanup84_crit_edge ], [ false, %if.end22.cleanup84_crit_edge ], [ false, %entry.cleanup84_crit_edge ], [ false, %if.end.cleanup84_crit_edge ], [ false, %if.end4.cleanup84_crit_edge ], [ false, %if.end6.cleanup84_crit_edge ], [ false, %if.then12.cleanup84_crit_edge ], [ false, %if.end16.cleanup84_crit_edge ], [ false, %if.then30.cleanup84_crit_edge ], [ false, %if.end36.cleanup84_crit_edge ], [ false, %if.then54.cleanup84_crit_edge ], [ false, %if.then69.cleanup84_crit_edge ]
  ret i1 %retval.7
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_acl_valid(ptr nocapture noundef readonly %acl, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %acl, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.end_crit_edge
    i8 4, label %entry.if.end_crit_edge54
  ]

entry.if.end_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge54
  %Sbz1 = getelementptr inbounds %struct.ACL, ptr %acl, i32 0, i32 1
  %3 = ptrtoint ptr %Sbz1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %Sbz1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %AclSize = getelementptr inbounds %struct.ACL, ptr %acl, i32 0, i32 2
  %5 = ptrtoint ptr %AclSize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %AclSize, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv8 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %len)
  %cmp9 = icmp ugt i32 %conv8, %len
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %Sbz2 = getelementptr inbounds %struct.ACL, ptr %acl, i32 0, i32 4
  %8 = ptrtoint ptr %Sbz2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %Sbz2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool13.not = icmp eq i16 %9, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %AceCount = getelementptr inbounds %struct.ACL, ptr %acl, i32 0, i32 3
  %10 = ptrtoint ptr %AceCount to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %AceCount, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1748.not = icmp eq i16 %11, 0
  br i1 %cmp1748.not, label %if.end15.cleanup_crit_edge, label %for.body.preheader

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end15
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %arrayidx = getelementptr %struct.ACL, ptr %acl, i32 1
  %sub = add i32 %len, -8
  %13 = call i16 @llvm.umax.i16(i16 %12, i16 1)
  %umax = zext i16 %13 to i32
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.preheader
  %i.051 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ace.050 = phi ptr [ %add.ptr, %if.end27.for.body_crit_edge ], [ %arrayidx, %for.body.preheader ]
  %len.addr.049 = phi i32 [ %sub29, %if.end27.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.049)
  %cmp19 = icmp ult i32 %len.addr.049, 4
  br i1 %cmp19, label %for.body.cleanup_crit_edge, label %if.end22

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %AceSize = getelementptr inbounds %struct.ACE_HEADER, ptr %ace.050, i32 0, i32 2
  %14 = ptrtoint ptr %AceSize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %AceSize, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv23 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.049, i32 %conv23)
  %cmp24 = icmp ult i32 %len.addr.049, %conv23
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %sub29 = sub i32 %len.addr.049, %conv23
  %add.ptr = getelementptr i8, ptr %ace.050, i32 %conv23
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end27.cleanup_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ false, %if.end12.cleanup_crit_edge ], [ true, %if.end15.cleanup_crit_edge ], [ false, %for.body.cleanup_crit_edge ], [ false, %if.end22.cleanup_crit_edge ], [ true, %if.end27.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_security_init(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  %ref = alloca %struct.MFT_REF, align 4
  %le = alloca ptr, align 4
  %off = alloca i32, align 4
  %ne = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #11
  %2 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %3 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #11
  %4 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %le, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ne) #11
  %security = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30
  %index_sdh = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 1
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 150994944, ptr %ref, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2304, ptr %3, align 2
  %call = call ptr @ntfs_iget5(ptr noundef %1, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_SECURE) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call to i32
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.11) #11
  br label %out.thread

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 -360
  %9 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %le, align 4
  %call6 = call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1879048192, ptr noundef nonnull @SDH_NAME, i8 noundef zeroext 4, ptr noundef null, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.out.thread_crit_edge, label %if.end8

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end8:                                          ; preds = %if.end
  %10 = getelementptr inbounds %struct.ATTRIB, ptr %call6, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_off.i, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %12) #11
  %conv.i = zext i16 %13 to i32
  %add.ptr.i110 = getelementptr i8, ptr %call6, i32 %conv.i
  %14 = ptrtoint ptr %add.ptr.i110 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end8.out.thread_crit_edge

if.end8.out.thread_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

lor.lhs.false:                                    ; preds = %if.end8
  %rule = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i110, i32 0, i32 1
  %16 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rule, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 301989888, i32 %17)
  %cmp10.not = icmp eq i32 %17, 301989888
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false.out.thread_crit_edge

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = call i32 @indx_init(ptr noundef %index_sdh, ptr noundef %sbi, ptr noundef nonnull %call6, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out.thread_crit_edge

if.end12.out.thread_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end16:                                         ; preds = %if.end12
  %call17 = call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef nonnull %call6, ptr noundef nonnull %le, i32 noundef -1879048192, ptr noundef nonnull @SII_NAME, i8 noundef zeroext 4, ptr noundef null, ptr noundef null) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.out.thread_crit_edge, label %if.end20

if.end16.out.thread_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end20:                                         ; preds = %if.end16
  %18 = getelementptr inbounds %struct.ATTRIB, ptr %call17, i32 0, i32 7
  %data_off.i111 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data_off.i111 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_off.i111, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20) #11
  %conv.i112 = zext i16 %21 to i32
  %add.ptr.i113 = getelementptr i8, ptr %call17, i32 %conv.i112
  %22 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23.not = icmp eq i32 %23, 0
  br i1 %cmp23.not, label %lor.lhs.false24, label %if.end20.out.thread_crit_edge

if.end20.out.thread_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

lor.lhs.false24:                                  ; preds = %if.end20
  %rule25 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i113, i32 0, i32 1
  %24 = ptrtoint ptr %rule25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rule25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %25)
  %cmp26.not = icmp eq i32 %25, 268435456
  br i1 %cmp26.not, label %if.end28, label %lor.lhs.false24.out.thread_crit_edge

lor.lhs.false24.out.thread_crit_edge:             ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end28:                                         ; preds = %lor.lhs.false24
  %call29 = call i32 @indx_init(ptr noundef %security, ptr noundef %sbi, ptr noundef nonnull %call17, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out.thread_crit_edge

if.end28.out.thread_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end32:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3392, i32 noundef 168) #14
  %tobool34.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool34.not, label %if.end32.out.thread_crit_edge, label %if.end36

if.end32.out.thread_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end36:                                         ; preds = %if.end32
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size, align 8
  %next_id = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 3
  %29 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %next_id, align 4
  %add = add i64 %28, -262129
  %and = and i64 %add, -16
  %next_off = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 4
  %30 = ptrtoint ptr %next_off to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %and, ptr %next_off, align 8
  %31 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %off, align 4
  %32 = ptrtoint ptr %ne to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ne, align 4
  %call40122 = call i32 @indx_find_raw(ptr noundef %security, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i113, ptr noundef nonnull %ne, ptr noundef nonnull %off, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40122)
  %tobool41.not123 = icmp eq i32 %call40122, 0
  br i1 %tobool41.not123, label %if.end36.lor.lhs.false42_crit_edge, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end36.lor.lhs.false42_crit_edge:               ; preds = %if.end36
  br label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %cleanup.lor.lhs.false42_crit_edge, %if.end36.lor.lhs.false42_crit_edge
  %33 = ptrtoint ptr %ne to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ne, align 4
  %tobool43.not = icmp eq ptr %34, null
  br i1 %tobool43.not, label %lor.lhs.false42.out_crit_edge, label %if.end45

lor.lhs.false42.out_crit_edge:                    ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %lor.lhs.false42
  %data_size = getelementptr inbounds %struct.anon.88, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %data_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %data_size, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %37)
  %cmp46 = icmp ult i16 %37, 20
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %sec_id = getelementptr inbounds %struct.NTFS_DE_SII, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %sec_id to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %sec_id, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %add50 = add i32 %40, 1
  %41 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %next_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %42)
  %cmp53.not = icmp ult i32 %add50, %42
  br i1 %cmp53.not, label %if.end49.cleanup_crit_edge, label %if.then55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add50, ptr %next_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %call40 = call i32 @indx_find_raw(ptr noundef %security, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i113, ptr noundef nonnull %ne, ptr noundef nonnull %off, ptr noundef nonnull %call7.i.i.i) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup.lor.lhs.false42_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup.lor.lhs.false42_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false42

out.thread:                                       ; preds = %if.end32.out.thread_crit_edge, %if.end28.out.thread_crit_edge, %lor.lhs.false24.out.thread_crit_edge, %if.end20.out.thread_crit_edge, %if.end16.out.thread_crit_edge, %if.end12.out.thread_crit_edge, %lor.lhs.false.out.thread_crit_edge, %if.end8.out.thread_crit_edge, %if.end.out.thread_crit_edge, %if.then
  %err.0.ph = phi i32 [ -12, %if.end32.out.thread_crit_edge ], [ -22, %if.end20.out.thread_crit_edge ], [ -22, %lor.lhs.false24.out.thread_crit_edge ], [ -22, %if.end16.out.thread_crit_edge ], [ -22, %if.end8.out.thread_crit_edge ], [ -22, %lor.lhs.false.out.thread_crit_edge ], [ -22, %if.end.out.thread_crit_edge ], [ %call29, %if.end28.out.thread_crit_edge ], [ %call13, %if.end12.out.thread_crit_edge ], [ %8, %if.then ]
  %inode.0.ph = phi ptr [ %call, %if.end32.out.thread_crit_edge ], [ %call, %if.end20.out.thread_crit_edge ], [ %call, %lor.lhs.false24.out.thread_crit_edge ], [ %call, %if.end16.out.thread_crit_edge ], [ %call, %if.end8.out.thread_crit_edge ], [ %call, %lor.lhs.false.out.thread_crit_edge ], [ %call, %if.end.out.thread_crit_edge ], [ %call, %if.end28.out.thread_crit_edge ], [ %call, %if.end12.out.thread_crit_edge ], [ null, %if.then ]
  call void @iput(ptr noundef %inode.0.ph) #11
  br label %fnd_put.exit

out:                                              ; preds = %cleanup.out_crit_edge, %lor.lhs.false42.out_crit_edge, %if.end36.out_crit_edge
  %call40.lcssa = phi i32 [ %call40122, %if.end36.out_crit_edge ], [ %call40, %cleanup.out_crit_edge ], [ 0, %lor.lhs.false42.out_crit_edge ]
  %ni60 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 2
  %44 = ptrtoint ptr %ni60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %ni60, align 8
  call void @iput(ptr noundef null) #11
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %fnd_put.exit

fnd_put.exit:                                     ; preds = %out, %out.thread
  %err.0121 = phi i32 [ %err.0.ph, %out.thread ], [ %call40.lcssa, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ne) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #11
  ret i32 %err.0121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_find_raw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_get_security_by_id(ptr noundef %sbi, i32 noundef %security_id, ptr nocapture noundef writeonly %sd, ptr nocapture noundef %size) local_unnamed_addr #3 align 64 {
entry:
  %security_id.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  %sii_e = alloca ptr, align 4
  %d_security = alloca %struct.SECURITY_HDR, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %security_id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %security_id, ptr %security_id.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #11
  %1 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %diff, align 4, !annotation !103
  %security = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 2
  %2 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ni1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sii_e) #11
  %4 = ptrtoint ptr %sii_e to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %sii_e, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %d_security) #11
  %5 = call ptr @memset(ptr %d_security, i32 255, i32 20)
  %6 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sd, align 4
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3392, i32 noundef 168) #14
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @indx_get_root(ptr noundef %security, ptr noundef %3, ptr noundef null, ptr noundef null) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.then.i64_crit_edge, label %if.end6

if.end.if.then.i64_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @indx_find(ptr noundef %security, ptr noundef %3, ptr noundef nonnull %call3, ptr noundef nonnull %security_id.addr, i32 noundef 4, ptr noundef null, ptr noundef nonnull %diff, ptr noundef nonnull %sii_e, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.if.then.i64_crit_edge

if.end6.if.then.i64_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end10:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.if.then.i64_crit_edge

if.end10.if.then.i64_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end13:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %sii_e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sii_e, align 4
  %size14 = getelementptr inbounds %struct.NTFS_DE_SII, ptr %11, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %size14 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %size14, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %14)
  %cmp = icmp ult i32 %14, 20
  br i1 %cmp, label %if.end13.if.then.i64_crit_edge, label %if.end16

if.end13.if.then.i64_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65556, i32 %14)
  %cmp17 = icmp ugt i32 %14, 65556
  br i1 %cmp17, label %if.end16.if.then.i64_crit_edge, label %if.end19

if.end16.if.then.i64_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end19:                                         ; preds = %if.end16
  %sub = add nsw i32 %14, -20
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %size, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3136) #15
  %tobool21.not = icmp eq ptr %call9.i, null
  br i1 %tobool21.not, label %if.end19.if.then.i64_crit_edge, label %if.end23

if.end19.if.then.i64_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end23:                                         ; preds = %if.end19
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %3, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %16 = ptrtoint ptr %sii_e to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sii_e, align 4
  %off = getelementptr inbounds %struct.NTFS_DE_SII, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %off to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %off, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19)
  %call25 = call i32 @ntfs_read_run_nb(ptr noundef %sbi, ptr noundef %run, i64 noundef %20, ptr noundef nonnull %d_security, i32 noundef 20, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.if.then.i64_crit_edge

if.end23.if.then.i64_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end28:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %sii_e to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sii_e, align 4
  %sec_hdr29 = getelementptr inbounds %struct.NTFS_DE_SII, ptr %22, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %d_security, ptr noundef dereferenceable(20) %sec_hdr29, i32 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool31.not = icmp eq i32 %bcmp, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.if.then.i64_crit_edge

if.end28.if.then.i64_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end33:                                         ; preds = %if.end28
  %off36 = getelementptr inbounds %struct.NTFS_DE_SII, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %off36 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %off36, align 1
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %add = add i64 %25, 20
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %call37 = call i32 @ntfs_read_run_nb(ptr noundef %sbi, ptr noundef %run, i64 noundef %add, ptr noundef nonnull %call9.i, i32 noundef %27, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end33.if.then.i64_crit_edge

if.end33.if.then.i64_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i64

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %sd, align 4
  br label %if.then.i64

out:                                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef null) #11
  br label %fnd_put.exit

if.then.i64:                                      ; preds = %if.end40, %if.end33.if.then.i64_crit_edge, %if.end28.if.then.i64_crit_edge, %if.end23.if.then.i64_crit_edge, %if.end19.if.then.i64_crit_edge, %if.end16.if.then.i64_crit_edge, %if.end13.if.then.i64_crit_edge, %if.end10.if.then.i64_crit_edge, %if.end6.if.then.i64_crit_edge, %if.end.if.then.i64_crit_edge
  %err.0.ph = phi i32 [ -22, %if.end28.if.then.i64_crit_edge ], [ -12, %if.end19.if.then.i64_crit_edge ], [ -27, %if.end16.if.then.i64_crit_edge ], [ -22, %if.end13.if.then.i64_crit_edge ], [ -22, %if.end.if.then.i64_crit_edge ], [ 0, %if.end40 ], [ %call37, %if.end33.if.then.i64_crit_edge ], [ %call25, %if.end23.if.then.i64_crit_edge ], [ 0, %if.end10.if.then.i64_crit_edge ], [ %call7, %if.end6.if.then.i64_crit_edge ]
  %p.0.ph = phi ptr [ %call9.i, %if.end28.if.then.i64_crit_edge ], [ null, %if.end19.if.then.i64_crit_edge ], [ null, %if.end16.if.then.i64_crit_edge ], [ null, %if.end13.if.then.i64_crit_edge ], [ null, %if.end.if.then.i64_crit_edge ], [ null, %if.end40 ], [ %call9.i, %if.end33.if.then.i64_crit_edge ], [ %call9.i, %if.end23.if.then.i64_crit_edge ], [ null, %if.end10.if.then.i64_crit_edge ], [ null, %if.end6.if.then.i64_crit_edge ]
  call void @kfree(ptr noundef %p.0.ph) #11
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %fnd_put.exit

fnd_put.exit:                                     ; preds = %if.then.i64, %out
  %err.072 = phi i32 [ -12, %out ], [ %err.0.ph, %if.then.i64 ]
  call void @mutex_unlock(ptr noundef %ni_lock) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %d_security) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sii_e) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #11
  ret i32 %err.072
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @indx_get_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_insert_security(ptr noundef %sbi, ptr nocapture noundef readonly %sd, i32 noundef %size_sd, ptr nocapture noundef writeonly %security_id, ptr noundef writeonly %inserted) local_unnamed_addr #3 align 64 {
entry:
  %diff = alloca i32, align 4
  %e = alloca ptr, align 4
  %sdh_e = alloca %struct.NTFS_DE_SDH, align 4
  %sii_e = alloca %struct.NTFS_DE_SII, align 2
  %hash_key = alloca %struct.SECURITY_KEY, align 4
  %new_sds_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #11
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !103
  %security = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 2
  %1 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ni1, align 8
  %index_sdh = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #11
  %3 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sdh_e) #11
  %4 = call ptr @memset(ptr %sdh_e, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sii_e) #11
  %5 = call ptr @memset(ptr %sii_e, i32 255, i32 40)
  %add = add i32 %size_sd, 20
  %add4 = add i32 %size_sd, 35
  %and = and i32 %add4, -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_key) #11
  %6 = getelementptr inbounds %struct.SECURITY_KEY, ptr %hash_key, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_sds_size) #11
  %7 = ptrtoint ptr %new_sds_size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %new_sds_size, align 8, !annotation !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size_sd)
  %tobool.not5.i = icmp ult i32 %size_sd, 4
  br i1 %tobool.not5.i, label %entry.security_hash.exit_crit_edge, label %while.body.preheader.i

entry.security_hash.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %security_hash.exit

while.body.preheader.i:                           ; preds = %entry
  %shr.i = lshr i32 %size_sd, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ptr.08.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %sd, %while.body.preheader.i ]
  %hash.07.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %bytes.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %bytes.addr.06.i, -1
  %or.i = tail call i32 @llvm.fshl.i32(i32 %hash.07.i, i32 %hash.07.i, i32 3) #11
  %incdec.ptr.i = getelementptr i32, ptr %ptr.08.i, i32 1
  %8 = ptrtoint ptr %ptr.08.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr.08.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %add.i = add i32 %10, %or.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.security_hash.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.security_hash.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %security_hash.exit

security_hash.exit:                               ; preds = %while.body.i.security_hash.exit_crit_edge, %entry.security_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ 0, %entry.security_hash.exit_crit_edge ], [ %add.i, %while.body.i.security_hash.exit_crit_edge ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %hash.0.lcssa.i) #11
  %12 = ptrtoint ptr %hash_key to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hash_key, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %6, align 4
  %tobool.not = icmp eq ptr %inserted, null
  br i1 %tobool.not, label %security_hash.exit.if.end_crit_edge, label %if.then

security_hash.exit.if.end_crit_edge:              ; preds = %security_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %security_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %inserted to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %inserted, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %security_hash.exit.if.end_crit_edge
  %15 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %security_id, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3392) #15
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %2, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3392, i32 noundef 168) #14
  %tobool10.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not, label %if.end8.fnd_put.exit_crit_edge, label %if.end12

if.end8.fnd_put.exit_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %fnd_put.exit

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @indx_get_root(ptr noundef %index_sdh, ptr noundef %2, ptr noundef null, ptr noundef null) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.if.then.i_crit_edge, label %if.end16

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @indx_get_root(ptr noundef %security, ptr noundef %2, ptr noundef null, ptr noundef null) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.if.then.i_crit_edge, label %if.end20

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end20:                                         ; preds = %if.end16
  %sec_id21 = getelementptr inbounds %struct.SECURITY_KEY, ptr %call9.i.i, i32 0, i32 1
  %call22 = call i32 @indx_find(ptr noundef %index_sdh, ptr noundef %2, ptr noundef nonnull %call13, ptr noundef nonnull %hash_key, i32 noundef 8, ptr noundef %sec_id21, ptr noundef nonnull %diff, ptr noundef nonnull %e, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.cond.preheader, label %if.end20.if.then.i_crit_edge

if.end20.if.then.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

while.cond.preheader:                             ; preds = %if.end20
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %2, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %size33 = getelementptr inbounds %struct.SECURITY_HDR, ptr %call9.i.i, i32 0, i32 2
  %add.ptr = getelementptr %struct.SECURITY_HDR, ptr %call9.i.i, i32 1
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false.while.cond_crit_edge, %while.cond.preheader
  %17 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %e, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %size = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %18, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add)
  %cmp = icmp eq i32 %21, %add
  br i1 %cmp, label %if.then27, label %while.body.if.end46_crit_edge

while.body.if.end46_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then27:                                        ; preds = %while.body
  %off = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %18, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %off to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %off, align 4
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %call29 = call i32 @ntfs_read_run_nb(ptr noundef %sbi, ptr noundef %run, i64 noundef %24, ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then27.if.then.i_crit_edge

if.then27.if.then.i_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end32:                                         ; preds = %if.then27
  %25 = ptrtoint ptr %size33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size33, align 16
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add)
  %cmp34 = icmp eq i32 %27, %add
  br i1 %cmp34, label %land.lhs.true, label %if.end32.if.end46_crit_edge

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end32
  %28 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call9.i.i, align 128
  %30 = ptrtoint ptr %hash_key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hash_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp38 = icmp eq i32 %29, %31
  br i1 %cmp38, label %land.lhs.true39, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true39:                                  ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr %add.ptr, ptr %sd, i32 %size_sd) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool41.not = icmp eq i32 %bcmp, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true39.if.end46_crit_edge

land.lhs.true39.if.end46_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %sec_id21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sec_id21, align 4
  %34 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %security_id, align 4
  br label %if.then.i

if.end46:                                         ; preds = %land.lhs.true39.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end32.if.end46_crit_edge, %while.body.if.end46_crit_edge
  %call47 = call i32 @indx_find_sort(ptr noundef %index_sdh, ptr noundef %2, ptr noundef nonnull %call13, ptr noundef nonnull %e, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.if.then.i_crit_edge

if.end46.if.then.i_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end50:                                         ; preds = %if.end46
  %35 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %e, align 4
  %tobool51.not = icmp eq ptr %36, null
  br i1 %tobool51.not, label %if.end50.while.end_crit_edge, label %lor.lhs.false

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end50
  %key52 = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %key52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key52, align 4
  %39 = ptrtoint ptr %hash_key to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hash_key, align 4
  %cmp55.not = icmp eq i32 %38, %40
  br i1 %cmp55.not, label %lor.lhs.false.while.cond_crit_edge, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %if.end50.while.end_crit_edge, %while.cond.while.end_crit_edge
  %next_off = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 4
  %41 = ptrtoint ptr %next_off to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %next_off, align 8
  %43 = trunc i64 %42 to i32
  %conv = and i32 %43, 262143
  %sub = sub nuw nsw i32 262144, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add)
  %cmp60 = icmp ult i32 %sub, %add
  br i1 %cmp60, label %if.then62, label %while.end.if.end68_crit_edge

while.end.if.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then62:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %add63 = sub nuw nsw i32 524288, %conv
  %conv64 = zext i32 %add63 to i64
  %add67 = add i64 %42, %conv64
  %44 = ptrtoint ptr %next_off to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add67, ptr %next_off, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %while.end.if.end68_crit_edge
  %45 = ptrtoint ptr %hash_key to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash_key, align 4
  %47 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %call9.i.i, align 128
  %next_id = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 3
  %48 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %next_id, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %sec_id21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %sec_id21, align 4
  %52 = ptrtoint ptr %next_off to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %next_off, align 8
  %54 = call i64 @llvm.bswap.i64(i64 %53)
  %off77 = getelementptr inbounds %struct.SECURITY_HDR, ptr %call9.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %off77 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %off77, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %add)
  %57 = ptrtoint ptr %size33 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %size33, align 16
  %58 = call ptr @memcpy(ptr %add.ptr, ptr %sd, i32 %size_sd)
  %59 = ptrtoint ptr %next_off to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %next_off, align 8
  %call83 = call i32 @ntfs_sb_write_run(ptr noundef %sbi, ptr noundef %run, i64 noundef %60, ptr noundef nonnull %call9.i.i, i32 noundef %and, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end68.if.then.i_crit_edge

if.end68.if.then.i_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end86:                                         ; preds = %if.end68
  %61 = ptrtoint ptr %next_off to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %next_off, align 8
  %add89 = add i64 %62, 262144
  %conv90 = zext i32 %and to i64
  %add91 = add i64 %add89, %conv90
  %63 = ptrtoint ptr %new_sds_size to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add91, ptr %new_sds_size, align 8
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %2, i32 0, i32 11, i32 14
  %64 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add91, i64 %65)
  %cmp92 = icmp ugt i64 %add91, %65
  br i1 %cmp92, label %if.then94, label %if.end86.if.end100_crit_edge

if.end86.if.end100_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then94:                                        ; preds = %if.end86
  %call96 = call i32 @attr_set_size(ptr noundef %2, i32 noundef -2147483648, ptr noundef nonnull @SDS_NAME, i8 noundef zeroext 4, ptr noundef %run, i64 noundef %add91, ptr noundef nonnull %new_sds_size, i1 noundef zeroext false, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then94.if.end100_crit_edge, label %if.then94.if.then.i_crit_edge

if.then94.if.then.i_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then94.if.end100_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.end100:                                        ; preds = %if.then94.if.end100_crit_edge, %if.end86.if.end100_crit_edge
  %call102 = call i32 @ntfs_sb_write_run(ptr noundef %sbi, ptr noundef %run, i64 noundef %add89, ptr noundef nonnull %call9.i.i, i32 noundef %and, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end100.if.then.i_crit_edge

if.end100.if.then.i_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end105:                                        ; preds = %if.end100
  %66 = ptrtoint ptr %sii_e to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 5120, ptr %sii_e, align 2
  %data_size = getelementptr inbounds %struct.anon.88, ptr %sii_e, i32 0, i32 1
  %67 = ptrtoint ptr %data_size to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 5120, ptr %data_size, align 2
  %res = getelementptr inbounds %struct.anon.88, ptr %sii_e, i32 0, i32 2
  %68 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 0, ptr %res, align 2
  %size109 = getelementptr inbounds %struct.NTFS_DE, ptr %sii_e, i32 0, i32 1
  %69 = ptrtoint ptr %size109 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 10240, ptr %size109, align 2
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %sii_e, i32 0, i32 2
  %70 = ptrtoint ptr %key_size to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1024, ptr %key_size, align 2
  %flags = getelementptr inbounds %struct.NTFS_DE, ptr %sii_e, i32 0, i32 3
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags, align 2
  %res113 = getelementptr inbounds %struct.NTFS_DE, ptr %sii_e, i32 0, i32 4
  %72 = ptrtoint ptr %res113 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %res113, align 2
  %73 = ptrtoint ptr %sec_id21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sec_id21, align 4
  %sec_id116 = getelementptr inbounds %struct.NTFS_DE_SII, ptr %sii_e, i32 0, i32 1
  %75 = ptrtoint ptr %sec_id116 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %sec_id116, align 2
  %sec_hdr117 = getelementptr inbounds %struct.NTFS_DE_SII, ptr %sii_e, i32 0, i32 2
  %76 = call ptr @memcpy(ptr %sec_hdr117, ptr %call9.i.i, i32 20)
  %call119 = call i32 @indx_insert_entry(ptr noundef %security, ptr noundef %2, ptr noundef nonnull %sii_e, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end105.if.then.i_crit_edge

if.end105.if.then.i_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end122:                                        ; preds = %if.end105
  %77 = ptrtoint ptr %sdh_e to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 6144, ptr %sdh_e, align 4
  %data_size126 = getelementptr inbounds %struct.anon.88, ptr %sdh_e, i32 0, i32 1
  %78 = ptrtoint ptr %data_size126 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 5120, ptr %data_size126, align 2
  %res128 = getelementptr inbounds %struct.anon.88, ptr %sdh_e, i32 0, i32 2
  %79 = ptrtoint ptr %res128 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %res128, align 4
  %size130 = getelementptr inbounds %struct.NTFS_DE, ptr %sdh_e, i32 0, i32 1
  %80 = ptrtoint ptr %size130 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 12288, ptr %size130, align 4
  %key_size132 = getelementptr inbounds %struct.NTFS_DE, ptr %sdh_e, i32 0, i32 2
  %81 = ptrtoint ptr %key_size132 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2048, ptr %key_size132, align 2
  %flags134 = getelementptr inbounds %struct.NTFS_DE, ptr %sdh_e, i32 0, i32 3
  %82 = ptrtoint ptr %flags134 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags134, align 4
  %res136 = getelementptr inbounds %struct.NTFS_DE, ptr %sdh_e, i32 0, i32 4
  %83 = ptrtoint ptr %res136 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %res136, align 2
  %84 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call9.i.i, align 128
  %key139 = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %sdh_e, i32 0, i32 1
  %86 = ptrtoint ptr %key139 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %key139, align 4
  %87 = ptrtoint ptr %sec_id21 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sec_id21, align 4
  %sec_id144 = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %sdh_e, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %sec_id144 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %sec_id144, align 4
  %sec_hdr145 = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %sdh_e, i32 0, i32 2
  %90 = call ptr @memcpy(ptr %sec_hdr145, ptr %call9.i.i, i32 20)
  %magic = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %sdh_e, i32 0, i32 3
  %91 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 18688, ptr %magic, align 4
  %arrayidx147 = getelementptr inbounds %struct.NTFS_DE_SDH, ptr %sdh_e, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 18688, ptr %arrayidx147, align 2
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #11
  %call149 = call i32 @indx_insert_entry(ptr noundef %index_sdh, ptr noundef %2, ptr noundef nonnull %sdh_e, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end122.if.then.i_crit_edge

if.end122.if.then.i_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end152:                                        ; preds = %if.end122
  %93 = ptrtoint ptr %sec_id21 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sec_id21, align 4
  %95 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %security_id, align 4
  br i1 %tobool.not, label %if.end152.if.end157_crit_edge, label %if.then156

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %inserted to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %inserted, align 1
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end152.if.end157_crit_edge
  %97 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %next_id, align 4
  %add160 = add i32 %98, 1
  store i32 %add160, ptr %next_id, align 4
  %99 = ptrtoint ptr %next_off to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %next_off, align 8
  %add164 = add i64 %100, %conv90
  store i64 %add164, ptr %next_off, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end157, %if.end122.if.then.i_crit_edge, %if.end105.if.then.i_crit_edge, %if.end100.if.then.i_crit_edge, %if.then94.if.then.i_crit_edge, %if.end68.if.then.i_crit_edge, %if.end46.if.then.i_crit_edge, %if.then42, %if.then27.if.then.i_crit_edge, %if.end20.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge
  %err.0277 = phi i32 [ -22, %if.end16.if.then.i_crit_edge ], [ -22, %if.end12.if.then.i_crit_edge ], [ %call22, %if.end20.if.then.i_crit_edge ], [ %call83, %if.end68.if.then.i_crit_edge ], [ %call96, %if.then94.if.then.i_crit_edge ], [ %call102, %if.end100.if.then.i_crit_edge ], [ %call119, %if.end105.if.then.i_crit_edge ], [ %call149, %if.end122.if.then.i_crit_edge ], [ 0, %if.end157 ], [ 0, %if.then42 ], [ %call47, %if.end46.if.then.i_crit_edge ], [ %call29, %if.then27.if.then.i_crit_edge ]
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %fnd_put.exit

fnd_put.exit:                                     ; preds = %if.then.i, %if.end8.fnd_put.exit_crit_edge
  %err.0278 = phi i32 [ %err.0277, %if.then.i ], [ -12, %if.end8.fnd_put.exit_crit_edge ]
  %vfs_inode165 = getelementptr inbounds %struct.ntfs_inode, ptr %2, i32 0, i32 11
  call void @__mark_inode_dirty(ptr noundef %vfs_inode165, i32 noundef 7) #11
  call void @mutex_unlock(ptr noundef %ni_lock) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fnd_put.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0278, %fnd_put.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_sds_size) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_key) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sii_e) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sdh_e) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_find_sort(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_set_size(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_insert_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fnd_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_reparse_init(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reparse = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31, i32 1
  %0 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ni1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %le, align 4
  %call = call ptr @ni_find_attr(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1879048192, ptr noundef nonnull @SR_NAME, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_off.i, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %5) #11
  %conv.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %rule = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rule, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 318767104, i32 %10)
  %cmp7.not = icmp eq i32 %10, 318767104
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 @indx_init(ptr noundef %reparse, ptr noundef %sbi, ptr noundef nonnull %call, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end9 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_objid_init(ptr noundef %sbi) local_unnamed_addr #3 align 64 {
entry:
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objid = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32, i32 1
  %0 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ni1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %le, align 4
  %call = call ptr @ni_find_attr(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1879048192, ptr noundef nonnull @SO_NAME, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_off.i, align 4
  %6 = call i16 @llvm.bswap.i16(i16 %5) #11
  %conv.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %rule = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rule, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 318767104, i32 %10)
  %cmp7.not = icmp eq i32 %10, 318767104
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 @indx_init(ptr noundef %objid, ptr noundef %sbi, ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end9 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_objid_remove(ptr noundef %sbi, ptr noundef %guid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32, i32 1
  %0 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ni1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %objid = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock, i32 noundef 2) #11
  %call = tail call i32 @indx_delete_entry(ptr noundef %objid, ptr noundef nonnull %1, ptr noundef %guid, i32 noundef 16, ptr noundef null) #11
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 11
  tail call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #11
  tail call void @mutex_unlock(ptr noundef %ni_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_delete_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_insert_reparse(ptr noundef %sbi, i32 noundef %rtag, ptr nocapture noundef readonly %ref) local_unnamed_addr #3 align 64 {
entry:
  %re = alloca %struct.NTFS_DE_R, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31, i32 1
  %0 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ni1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %re) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = getelementptr inbounds %struct.NTFS_DE_R, ptr %re, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.NTFS_DE_R, ptr %re, i32 0, i32 1
  %4 = getelementptr inbounds %struct.NTFS_DE, ptr %re, i32 0, i32 2
  %5 = getelementptr inbounds %struct.NTFS_DE, ptr %re, i32 0, i32 1
  %reparse = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31
  %6 = call ptr @memset(ptr %re, i32 0, i32 32)
  %7 = ptrtoint ptr %re to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 7168, ptr %re, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 8192, ptr %5, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3072, ptr %4, align 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rtag, ptr %3, align 4
  %11 = ptrtoint ptr %ref to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %ref, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %2, align 4
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock, i32 noundef 3) #11
  %call = call i32 @indx_insert_entry(ptr noundef %reparse, ptr noundef nonnull %1, ptr noundef nonnull %re, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #11
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %1, i32 0, i32 11
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #11
  call void @mutex_unlock(ptr noundef %ni_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %re) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_remove_reparse(ptr noundef %sbi, i32 noundef %rtag, ptr nocapture noundef readonly %ref) local_unnamed_addr #3 align 64 {
entry:
  %diff = alloca i32, align 4
  %rkey = alloca %struct.REPARSE_KEY, align 4
  %re = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #11
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !103
  %reparse = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31, i32 1
  %1 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ni1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rkey) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %re) #11
  %3 = ptrtoint ptr %re to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %re, align 4, !annotation !103
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.REPARSE_KEY, ptr %rkey, i32 0, i32 1
  %5 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rtag, ptr %rkey, align 4
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %ref, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %4, align 4
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %2, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ni_lock, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rtag)
  %tobool4.not = icmp eq i32 %rtag, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 @indx_delete_entry(ptr noundef %reparse, ptr noundef nonnull %2, ptr noundef nonnull %rkey, i32 noundef 12, ptr noundef null) #11
  br label %out1

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 168) #14
  %tobool8.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not, label %if.end6.out1_crit_edge, label %if.end10

if.end6.out1_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out1

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @indx_get_root(ptr noundef %reparse, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.if.then.i55_crit_edge, label %if.end14

if.end10.if.then.i55_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @indx_find(ptr noundef %reparse, ptr noundef nonnull %2, ptr noundef nonnull %call11, ptr noundef nonnull %rkey, i32 noundef 12, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %diff, ptr noundef nonnull %re, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.if.then.i55_crit_edge

if.end14.if.then.i55_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55

if.end18:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %re to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %re, align 4
  %ref19 = getelementptr inbounds %struct.NTFS_DE_R, ptr %11, i32 0, i32 1, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %ref19, ptr noundef dereferenceable(8) %ref, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %out, label %if.end18.if.then.i55_crit_edge

if.end18.if.then.i55_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i55

out:                                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %key = getelementptr inbounds %struct.NTFS_DE_R, ptr %11, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %rkey, ptr %key, i32 12)
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %call25 = call i32 @indx_delete_entry(ptr noundef %reparse, ptr noundef nonnull %2, ptr noundef nonnull %rkey, i32 noundef 12, ptr noundef null) #11
  br label %out1

if.then.i55:                                      ; preds = %if.end18.if.then.i55_crit_edge, %if.end14.if.then.i55_crit_edge, %if.end10.if.then.i55_crit_edge
  %err.0.ph = phi i32 [ -22, %if.end10.if.then.i55_crit_edge ], [ 0, %if.end18.if.then.i55_crit_edge ], [ %call15, %if.end14.if.then.i55_crit_edge ]
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %out1

out1:                                             ; preds = %if.then.i55, %out, %if.end6.out1_crit_edge, %if.then5
  %err.1 = phi i32 [ %call, %if.then5 ], [ -12, %if.end6.out1_crit_edge ], [ %call25, %out ], [ %err.0.ph, %if.then.i55 ]
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %2, i32 0, i32 11
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #11
  call void @mutex_unlock(ptr noundef %ni_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out1 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %re) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rkey) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mark_as_free_ex(ptr noundef %sbi, i32 noundef %lcn, i32 noundef %len, i1 noundef zeroext %trim) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 1
  tail call void @down_write_nested(ptr noundef %rw_lock, i32 noundef 0) #11
  %call = tail call zeroext i1 @wnd_is_used(ptr noundef %used, i32 noundef %lcn, i32 noundef %len) #11
  br i1 %call, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ntfs_set_state(ptr noundef %sbi, i32 noundef 2)
  %add = add i32 %len, %lcn
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %lcn)
  %cmp51 = icmp ugt i32 %add, %lcn
  br i1 %cmp51, label %if.then.for.body_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %lcn, %if.then.for.body_crit_edge ]
  %lcn.addr.054 = phi i32 [ %lcn.addr.2, %for.inc.for.body_crit_edge ], [ %lcn, %if.then.for.body_crit_edge ]
  %len.addr.052 = phi i32 [ %len.addr.1, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %call2 = tail call zeroext i1 @wnd_is_used(ptr noundef %used, i32 noundef %i.056, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.052)
  %tobool.not = icmp eq i32 %len.addr.052, 0
  br i1 %call2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %tobool.not, i32 %i.056, i32 %lcn.addr.054
  %add5 = add i32 %len.addr.052, 1
  br label %for.inc

if.end6:                                          ; preds = %for.body
  br i1 %tobool.not, label %if.end6.for.inc_crit_edge, label %if.end9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  br i1 %trim, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  tail call void @ntfs_unmap_meta(ptr noundef %1, i32 noundef %lcn.addr.054, i32 noundef %len.addr.052) #11
  %call.i = tail call i32 @ntfs_discard(ptr noundef %sbi, i32 noundef %lcn.addr.054, i32 noundef %len.addr.052) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %call13 = tail call i32 @wnd_set_free(ptr noundef %used, i32 noundef %lcn.addr.054, i32 noundef %len.addr.052) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.end6.for.inc_crit_edge, %if.then3
  %len.addr.1 = phi i32 [ %add5, %if.then3 ], [ 0, %if.end12 ], [ 0, %if.end6.for.inc_crit_edge ]
  %lcn.addr.2 = phi i32 [ %spec.select, %if.then3 ], [ %lcn.addr.054, %if.end12 ], [ %lcn.addr.054, %if.end6.for.inc_crit_edge ]
  %inc = add i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1)
  %tobool14.not = icmp eq i32 %len.addr.1, 0
  br i1 %tobool14.not, label %for.end.out_crit_edge, label %for.end.if.end17_crit_edge

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %for.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %len.addr.2 = phi i32 [ %len, %entry.if.end17_crit_edge ], [ %len.addr.1, %for.end.if.end17_crit_edge ]
  %lcn.addr.3 = phi i32 [ %lcn, %entry.if.end17_crit_edge ], [ %lcn.addr.2, %for.end.if.end17_crit_edge ]
  br i1 %trim, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi, align 8
  tail call void @ntfs_unmap_meta(ptr noundef %3, i32 noundef %lcn.addr.3, i32 noundef %len.addr.2) #11
  %call.i50 = tail call i32 @ntfs_discard(ptr noundef %sbi, i32 noundef %lcn.addr.3, i32 noundef %len.addr.2) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %call21 = tail call i32 @wnd_set_free(ptr noundef %used, i32 noundef %lcn.addr.3, i32 noundef %len.addr.2) #11
  br label %out

out:                                              ; preds = %if.end20, %for.end.out_crit_edge, %if.then.out_crit_edge
  tail call void @up_write(ptr noundef %rw_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @run_deallocate(ptr noundef %sbi, ptr noundef %run, i1 noundef zeroext %trim) local_unnamed_addr #3 align 64 {
entry:
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #11
  %0 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lcn, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !103
  %call1 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef 0, ptr noundef null, ptr noundef nonnull %lcn, ptr noundef nonnull %len) #11
  br i1 %call1, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %inc2 = phi i32 [ %inc, %while.cond.backedge.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @mark_as_free_ex(ptr noundef %sbi, i32 noundef %3, i32 noundef %5, i1 noundef zeroext %trim)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body.while.cond.backedge_crit_edge
  %inc = add i32 %inc2, 1
  %call = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc2, ptr noundef null, ptr noundef nonnull %lcn, ptr noundef nonnull %len) #11
  br i1 %call, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_extend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_write_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @NAME_MFT, !1, !"NAME_MFT", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/fsntfs.c", i32 18, i32 22}
!2 = !{ptr @NAME_MIRROR, !3, !"NAME_MIRROR", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/fsntfs.c", i32 21, i32 22}
!4 = !{ptr @NAME_LOGFILE, !5, !"NAME_LOGFILE", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/fsntfs.c", i32 24, i32 22}
!6 = !{ptr @NAME_VOLUME, !7, !"NAME_VOLUME", i1 false, i1 false}
!7 = !{!"../fs/ntfs3/fsntfs.c", i32 27, i32 22}
!8 = !{ptr @NAME_ATTRDEF, !9, !"NAME_ATTRDEF", i1 false, i1 false}
!9 = !{!"../fs/ntfs3/fsntfs.c", i32 30, i32 22}
!10 = !{ptr @NAME_ROOT, !11, !"NAME_ROOT", i1 false, i1 false}
!11 = !{!"../fs/ntfs3/fsntfs.c", i32 33, i32 22}
!12 = !{ptr @NAME_BITMAP, !13, !"NAME_BITMAP", i1 false, i1 false}
!13 = !{!"../fs/ntfs3/fsntfs.c", i32 36, i32 22}
!14 = !{ptr @NAME_BOOT, !15, !"NAME_BOOT", i1 false, i1 false}
!15 = !{!"../fs/ntfs3/fsntfs.c", i32 39, i32 22}
!16 = !{ptr @NAME_BADCLUS, !17, !"NAME_BADCLUS", i1 false, i1 false}
!17 = !{!"../fs/ntfs3/fsntfs.c", i32 42, i32 22}
!18 = !{ptr @NAME_QUOTA, !19, !"NAME_QUOTA", i1 false, i1 false}
!19 = !{!"../fs/ntfs3/fsntfs.c", i32 45, i32 22}
!20 = !{ptr @NAME_SECURE, !21, !"NAME_SECURE", i1 false, i1 false}
!21 = !{!"../fs/ntfs3/fsntfs.c", i32 48, i32 22}
!22 = !{ptr @NAME_UPCASE, !23, !"NAME_UPCASE", i1 false, i1 false}
!23 = !{!"../fs/ntfs3/fsntfs.c", i32 51, i32 22}
!24 = !{ptr @NAME_EXTEND, !25, !"NAME_EXTEND", i1 false, i1 false}
!25 = !{!"../fs/ntfs3/fsntfs.c", i32 54, i32 22}
!26 = !{ptr @NAME_OBJID, !27, !"NAME_OBJID", i1 false, i1 false}
!27 = !{!"../fs/ntfs3/fsntfs.c", i32 57, i32 22}
!28 = !{ptr @NAME_REPARSE, !29, !"NAME_REPARSE", i1 false, i1 false}
!29 = !{!"../fs/ntfs3/fsntfs.c", i32 60, i32 22}
!30 = !{ptr @NAME_USNJRNL, !31, !"NAME_USNJRNL", i1 false, i1 false}
!31 = !{!"../fs/ntfs3/fsntfs.c", i32 63, i32 22}
!32 = !{ptr @BAD_NAME, !33, !"BAD_NAME", i1 false, i1 false}
!33 = !{!"../fs/ntfs3/fsntfs.c", i32 66, i32 14}
!34 = !{ptr @I30_NAME, !35, !"I30_NAME", i1 false, i1 false}
!35 = !{!"../fs/ntfs3/fsntfs.c", i32 69, i32 14}
!36 = !{ptr @SII_NAME, !37, !"SII_NAME", i1 false, i1 false}
!37 = !{!"../fs/ntfs3/fsntfs.c", i32 72, i32 14}
!38 = !{ptr @SDH_NAME, !39, !"SDH_NAME", i1 false, i1 false}
!39 = !{!"../fs/ntfs3/fsntfs.c", i32 75, i32 14}
!40 = !{ptr @SDS_NAME, !41, !"SDS_NAME", i1 false, i1 false}
!41 = !{!"../fs/ntfs3/fsntfs.c", i32 78, i32 14}
!42 = !{ptr @SO_NAME, !43, !"SO_NAME", i1 false, i1 false}
!43 = !{!"../fs/ntfs3/fsntfs.c", i32 81, i32 14}
!44 = !{ptr @SQ_NAME, !45, !"SQ_NAME", i1 false, i1 false}
!45 = !{!"../fs/ntfs3/fsntfs.c", i32 84, i32 14}
!46 = !{ptr @SR_NAME, !47, !"SR_NAME", i1 false, i1 false}
!47 = !{!"../fs/ntfs3/fsntfs.c", i32 87, i32 14}
!48 = !{ptr @WOF_NAME, !49, !"WOF_NAME", i1 false, i1 false}
!49 = !{!"../fs/ntfs3/fsntfs.c", i32 92, i32 14}
!50 = !{ptr @.str, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ntfs3/fsntfs.c", i32 192, i32 3}
!52 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ntfs3/fsntfs.c", i32 202, i32 3}
!54 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ntfs3/fsntfs.c", i32 261, i32 3}
!56 = !{ptr @.str.3, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ntfs3/fsntfs.c", i32 290, i32 3}
!58 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ntfs3/fsntfs.c", i32 379, i32 4}
!60 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ntfs3/fsntfs.c", i32 593, i32 6}
!62 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ntfs3/fsntfs.c", i32 817, i32 3}
!64 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ntfs3/fsntfs.c", i32 936, i32 3}
!66 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs3/fsntfs.c", i32 1034, i32 5}
!68 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ntfs3/fsntfs.c", i32 1063, i32 5}
!70 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ntfs3/fsntfs.c", i32 1527, i32 9}
!72 = !{ptr @s_default_security, !73, !"s_default_security", i1 false, i1 false}
!73 = !{!"../fs/ntfs3/fsntfs.c", i32 1696, i32 10}
!74 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ntfs3/fsntfs.c", i32 1860, i32 3}
!76 = !{ptr @__func__.ntfs_extend_mft, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ntfs3/fsntfs.c", i32 519, i32 8}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!80 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ntfs3/ntfs_fs.h", i32 1018, i32 2}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!84 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/mm.h", i32 717, i32 2}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{!"auto-init"}
!104 = !{i64 2153757195}
!105 = !{i64 2152306506}
!106 = !{i64 2152306713}
!107 = !{i64 2153759966}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2151051127, i64 2151051618, i64 2151051164, i64 2151051220, i64 2151051254, i64 2151051278, i64 2151051319, i64 2151051340, i64 2151051368, i64 2151051402}
!110 = !{i64 2148519799, i64 2148519831, i64 2148519860, i64 2148519894, i64 2148519925, i64 2148519948}
!111 = !{i64 2148608880}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2153261185, i64 2153261668, i64 2153261222, i64 2153261278, i64 2153261312, i64 2153261336, i64 2153261377, i64 2153261398, i64 2153261426, i64 2153261460}
!114 = !{i64 2148599393}
!115 = !{i64 2148514126, i64 2148514158, i64 2148514187, i64 2148514221, i64 2148514252, i64 2148514275}
!116 = !{i64 2148599622}
!117 = !{i64 2148324334, i64 2148324339, i64 2148324352, i64 2148324396, i64 2148324430, i64 2148324451}
!118 = !{i64 2154419699}
!119 = !{i64 2148513406, i64 2148513432, i64 2148513461, i64 2148513495, i64 2148513526, i64 2148513549}
