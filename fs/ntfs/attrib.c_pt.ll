; ModuleID = '/llk/IR_all_yes/fs/ntfs/attrib.c_pt.bc'
source_filename = "../fs/ntfs/attrib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.84, %struct.mutex, i32, %union.anon.87 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.87 = type { ptr }
%struct.MFT_RECORD = type { i32, i16, i16, i64, i16, i16, i16, i16, i32, i32, i64, i16, i16, i32 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.ATTR_LIST_ENTRY = type <{ i32, i16, i8, i8, i64, i64, i16, [0 x i16] }>
%struct.anon.89 = type { i32, i16, i8, i8 }
%struct.runlist_element = type { i64, i64, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ATTR_DEF = type { [64 x i16], i32, i32, i32, i32, i64, i64 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ntfs/attrib.c\00", [47 x i8] zeroinitializer }, align 32
@__func__.ntfs_map_runlist_nolock = private unnamed_addr constant [24 x i8] c"ntfs_map_runlist_nolock\00", align 1
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Mapping runlist part containing vcn 0x%llx.\00", [52 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_vcn_to_lcn_nolock = private unnamed_addr constant [28 x i8] c"ntfs_attr_vcn_to_lcn_nolock\00", align 1
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Entering for i_ino 0x%lx, vcn 0x%llx, %s_locked.\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Done, lcn 0x%llx.\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed with error code %lli.\00", [35 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_find_vcn_nolock = private unnamed_addr constant [26 x i8] c"ntfs_attr_find_vcn_nolock\00", align 1
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Entering for i_ino 0x%lx, vcn 0x%llx, with%s ctx.\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed with error code %i.\00", [37 x i8] zeroinitializer }, align 32
@__func__.load_attribute_list = private unnamed_addr constant [20 x i8] c"load_attribute_list\00", align 1
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Cannot read attribute list since runlist is missing.\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Reading vcn = 0x%llx, lcn = 0x%llx.\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ntfs_rl_vcn_to_lcn() failed.  Cannot read attribute list.\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_block = 0x%lx.\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reading block = 0x%lx.\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sb_bread() failed. Cannot read attribute list.\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Attribute list buffer overflow. Read attribute list is truncated.\00", [62 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_lookup = private unnamed_addr constant [17 x i8] c"ntfs_attr_lookup\00", align 1
@ntfs_attr_ctx_cache = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ntfs_attr_record_resize = private unnamed_addr constant [24 x i8] c"ntfs_attr_record_resize\00", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for new_size %u.\00", [38 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_make_non_resident = private unnamed_addr constant [28 x i8] c"ntfs_attr_make_non_resident\00", align 1
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Attribute is not allowed to be non-resident.\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Attribute not defined on the NTFS volume!\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate cluster%s, error code %i.\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to get size for mapping pairs array, error code %i.\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to build mapping pairs, error code %i.\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [230 x i8], [58 x i8] } { [230 x i8] c"Failed to undo partial resident to non-resident attribute conversion.  Truncating inode 0x%lx, attribute type 0x%x from %i bytes to %i bytes to maintain metadata consistency.  THIS MEANS YOU ARE LOSING %i BYTES DATA FROM THIS %s.\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FILE\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATTRIBUTE\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Failed to release allocated cluster(s) in error code path.  Run chkdsk to recover the lost cluster(s).\00", [57 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_extend_allocation = private unnamed_addr constant [28 x i8] c"ntfs_attr_extend_allocation\00", align 1
@.str.31 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"Entering for i_ino 0x%lx, attribute type 0x%x, old_allocated_size 0x%llx, new_allocated_size 0x%llx, new_data_size 0x%llx, data_start 0x%llx.\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because the new allocation would exceed the maximum allowed size for this attribute type.\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [171 x i8], [53 x i8] } { [171 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because this attribute type is not defined on the NTFS volume.  Possible corruption!  You should run chkdsk!\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Allocated size already exceeds requested size.\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because the conversion from resident to non-resident attribute failed with error code %i.\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Not enough space in the mft record/on disk for the non-resident attribute value.  This case is not implemented yet.\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"This attribute type may not be non-resident.  This case is not implemented yet.\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Inserting holes is not-implemented yet.  Falling back to allocating real clusters instead.\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because the mapping of a runlist fragment failed with error code %i.\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because the allocation of clusters failed with error code %i.\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because the runlist merge failed with error code %i.\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Allocated 0x%llx clusters.\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because determining the size for the mapping pairs failed with error code %i.\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Not enough space in the mft record for the extended attribute record.  This case is not implemented yet.\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"Cannot extend allocation of inode 0x%lx, attribute type 0x%x, because building the mapping pairs failed with error code %i.\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Done, new_allocated_size 0x%llx.\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"Cannot complete extension of allocation of inode 0x%lx, attribute type 0x%x, because lookup of first attribute extent failed with error code %i.\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Failed to find last attribute extent of attribute in error code path.  Run chkdsk to recover.\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to %s in error code path.  Run chkdsk to recover.\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"restore attribute search context\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"truncate attribute runlist\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Failed to restore attribute record in error code path.  Run chkdsk to recover.\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Failed to restore mapping pairs array in error code path.  Run chkdsk to recover.\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed.  Returning error code %i.\00", [62 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_set = private unnamed_addr constant [14 x i8] c"ntfs_attr_set\00", align 1
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Entering for ofs 0x%llx, cnt 0x%llx, val 0x%hx.\00", [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Request exceeds end of attribute.\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to read first partial page (error, index 0x%lx).\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Insufficient memory to grab page (index 0x%lx).\00", [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to read last partial page (error, index 0x%lx).\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ntfs_attr_find = private unnamed_addr constant [15 x i8] c"ntfs_attr_find\00", align 1
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Inode is corrupt.  Run chkdsk.\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" Unmount and run chkdsk.\00", [39 x i8] zeroinitializer }, align 32
@__func__.ntfs_external_attr_find = private unnamed_addr constant [24 x i8] c"ntfs_external_attr_find\00", align 1
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Entering for inode 0x%lx, type 0x%x.\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Found stale mft reference in attribute list of base inode 0x%lx.%s\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to map extent mft record 0x%lx of base inode 0x%lx.%s\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Done, found.\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Base inode 0x%lx contains corrupt attribute list attribute.%s\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Done, not found.\00", [47 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_find_in_attrdef = private unnamed_addr constant [26 x i8] c"ntfs_attr_find_in_attrdef\00", align 1
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Attribute type 0x%x not found in $AttrDef.\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 64, i64 -3, i64 -2]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967284, i64 4294967294]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 64, i64 -3, i64 -2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967268, i64 4294967295]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 64, i64 -3, i64 -2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967284]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 83, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 335, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 352, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 388, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 459, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 477, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 514, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 710, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 724, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 731, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 736, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 744, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 746, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 749, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 786, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1423, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1542, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1545, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1575, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1589, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1693, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1768, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1815, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1911, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1942, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1951, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2006, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2081, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2097, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2102, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2155, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2174, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2212, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2225, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2243, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2257, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2279, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2293, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2358, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2363, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2374, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2420, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2427, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2438, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2455, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2488, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2509, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2517, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2545, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 2582, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1160, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 717, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 675, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 856, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 860, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 969, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 991, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1062, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1071, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1130, i32 2 }
@___asan_gen_.300 = private constant [20 x i8] c"../fs/ntfs/attrib.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1311, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 260, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 271, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 452, i32 1 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 230, i32 288, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 171, i32 224, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_map_runlist_nolock(ptr noundef %ni, i64 noundef %vcn, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 84, ptr noundef nonnull @__func__.ntfs_map_runlist_nolock, ptr noundef nonnull @.str.1, i64 noundef %vcn) #11
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %3 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %base_ni.0 = phi ptr [ %4, %if.else ], [ %ni, %entry.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %ctx, null
  br i1 %tobool1.not, label %if.then2, label %if.else15

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %6 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3136) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.if.end184_crit_edge, label %ntfs_attr_get_search_ctx.exit

if.end7.if.end184_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

ntfs_attr_get_search_ctx.exit:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %attrs_offset.i.i = getelementptr inbounds %struct.MFT_RECORD, ptr %call3, i32 0, i32 6
  %7 = ptrtoint ptr %attrs_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %attrs_offset.i.i, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #11
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call3, i32 %conv.i.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %call.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 4
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 8
  %12 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.42.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 12
  %13 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %base_ni.0, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 16
  %14 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 16)
  br label %if.then108

if.else15:                                        ; preds = %if.end
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %cmp.i396 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i396, label %do.body24, label %do.end30, !prof !166

do.body24:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

do.end30:                                         ; preds = %if.else15
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr, align 4
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool32.not = icmp eq i8 %20, 0
  br i1 %tobool32.not, label %do.body42, label %do.end50, !prof !166

do.body42:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end50:                                         ; preds = %do.end30
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %18, i32 0, i32 7
  %highest_vcn = getelementptr inbounds %struct.ATTR_RECORD, ptr %18, i32 0, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %highest_vcn to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %highest_vcn, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #11
  %call53 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #11
  %allocated_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %24 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %allocated_size, align 8
  %vol = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %26 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vol, align 8
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %29 to i64
  %shr = ashr i64 %25, %sh_prom
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call53) #11
  %30 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool67.not = icmp eq i64 %31, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %23)
  %cmp68 = icmp slt i64 %23, 1
  %or.cond = select i1 %tobool67.not, i1 %cmp68, i1 false
  %sub = add i64 %shr, -1
  %end_vcn.0 = select i1 %or.cond, i64 %sub, i64 %23
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %vcn)
  %cmp72.not = icmp sgt i64 %shr, %vcn
  br i1 %cmp72.not, label %lor.lhs.false, label %do.end50.if.end148_crit_edge

do.end50.if.end148_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

lor.lhs.false:                                    ; preds = %do.end50
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %18, align 1
  %type74 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 8
  %34 = ptrtoint ptr %type74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp75 = icmp eq i32 %33, %35
  br i1 %cmp75, label %land.lhs.true77, label %lor.lhs.false.if.else96_crit_edge

lor.lhs.false.if.else96_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

land.lhs.true77:                                  ; preds = %lor.lhs.false
  %name_length = getelementptr inbounds %struct.ATTR_RECORD, ptr %18, i32 0, i32 3
  %36 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %name_length, align 1
  %conv78 = zext i8 %37 to i32
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %38 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv78)
  %cmp79 = icmp eq i32 %39, %conv78
  br i1 %cmp79, label %land.lhs.true81, label %land.lhs.true77.if.else96_crit_edge

land.lhs.true77.if.else96_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

land.lhs.true81:                                  ; preds = %land.lhs.true77
  %name_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %18, i32 0, i32 4
  %40 = ptrtoint ptr %name_offset to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %name_offset, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv82 = zext i16 %42 to i32
  %add.ptr = getelementptr i8, ptr %18, i32 %conv82
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 8
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %44, i32 %conv78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool85.not = icmp eq i32 %bcmp, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %land.lhs.true81.if.else96_crit_edge

land.lhs.true81.if.else96_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

land.lhs.true86:                                  ; preds = %land.lhs.true81
  %45 = tail call i64 @llvm.bswap.i64(i64 %31) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %vcn)
  %cmp90.not = icmp sgt i64 %45, %vcn
  call void @__sanitizer_cov_trace_cmp8(i64 %end_vcn.0, i64 %vcn)
  %cmp93.not = icmp slt i64 %end_vcn.0, %vcn
  %or.cond392 = select i1 %cmp90.not, i1 true, i1 %cmp93.not
  br i1 %or.cond392, label %land.lhs.true86.if.else96_crit_edge, label %land.lhs.true86.if.end148_crit_edge

land.lhs.true86.if.end148_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

land.lhs.true86.if.else96_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

if.else96:                                        ; preds = %land.lhs.true86.if.else96_crit_edge, %land.lhs.true81.if.else96_crit_edge, %land.lhs.true77.if.else96_crit_edge, %lor.lhs.false.if.else96_crit_edge
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %old_ctx.sroa.0.0.copyload = load ptr, ptr %ctx, align 4
  %47 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %47)
  %old_ctx.sroa.8.0.copyload = load ptr, ptr %attr, align 4
  %old_ctx.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %ctx, i32 8
  %48 = ptrtoint ptr %old_ctx.sroa.10.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %old_ctx.sroa.10.0.copyload = load i32, ptr %old_ctx.sroa.10.0..sroa_idx, align 4
  %old_ctx.sroa.10294.0..sroa_idx = getelementptr inbounds i8, ptr %ctx, i32 12
  %49 = ptrtoint ptr %old_ctx.sroa.10294.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %old_ctx.sroa.10294.0.copyload = load ptr, ptr %old_ctx.sroa.10294.0..sroa_idx, align 4
  %old_ctx.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %ctx, i32 16
  %50 = ptrtoint ptr %old_ctx.sroa.16.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %old_ctx.sroa.16.0.copyload = load ptr, ptr %old_ctx.sroa.16.0..sroa_idx, align 4
  %old_ctx.sroa.16303.0..sroa_idx = getelementptr inbounds i8, ptr %ctx, i32 20
  %51 = ptrtoint ptr %old_ctx.sroa.16303.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %old_ctx.sroa.16303.0.copyload = load ptr, ptr %old_ctx.sroa.16303.0..sroa_idx, align 4
  %old_ctx.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %ctx, i32 24
  %52 = ptrtoint ptr %old_ctx.sroa.21.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %old_ctx.sroa.21.0..sroa_idx, align 4
  %tobool97.not = icmp eq ptr %old_ctx.sroa.16303.0.copyload, null
  %cmp100.not = icmp eq ptr %old_ctx.sroa.10294.0.copyload, %old_ctx.sroa.16303.0.copyload
  %or.cond393 = select i1 %tobool97.not, i1 true, i1 %cmp100.not
  br i1 %or.cond393, label %if.else96.if.end104_crit_edge, label %if.then102

if.else96.if.end104_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then102:                                       ; preds = %if.else96
  %page = getelementptr inbounds %struct._ntfs_inode, ptr %old_ctx.sroa.10294.0.copyload, i32 0, i32 13
  %54 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %page, align 8
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !169

if.then.i.i:                                      ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %58, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %55 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %59, %if.end.i.i ]
  %60 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %61 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %62, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !166

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.60) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !170
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ntfs_map_runlist_nolock, %if.then.i.i.i.i)) #11
          to label %if.end104 [label %if.then.i.i.i.i], !srcloc !172

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %60, i32 noundef 1) #11
  br label %if.end104

if.end104:                                        ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.else96.if.end104_crit_edge
  %put_this_page.0 = phi ptr [ null, %if.else96.if.end104_crit_edge ], [ %55, %do.end5.i.i ], [ %55, %if.then.i.i.i.i ]
  %64 = ptrtoint ptr %old_ctx.sroa.16303.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %old_ctx.sroa.16303.0..sroa_idx, align 4
  %tobool.not.i397 = icmp eq ptr %65, null
  br i1 %tobool.not.i397, label %if.then.i398, label %if.end.i, !prof !169

if.then.i398:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %old_ctx.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %old_ctx.sroa.10.0..sroa_idx, align 4
  %67 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctx, align 4
  %attrs_offset.i = getelementptr inbounds %struct.MFT_RECORD, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %attrs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %attrs_offset.i, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #11
  %conv.i = zext i16 %71 to i32
  %add.ptr.i = getelementptr i8, ptr %68, i32 %conv.i
  %72 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i, ptr %attr, align 4
  %73 = ptrtoint ptr %old_ctx.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %old_ctx.sroa.16.0..sroa_idx, align 4
  br label %if.then108

if.end.i:                                         ; preds = %if.end104
  %74 = ptrtoint ptr %old_ctx.sroa.10294.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %old_ctx.sroa.10294.0..sroa_idx, align 4
  %cmp.not.i = icmp eq ptr %75, %65
  br i1 %cmp.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %75) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %76 = ptrtoint ptr %old_ctx.sroa.16303.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %old_ctx.sroa.16303.0..sroa_idx, align 4
  %78 = ptrtoint ptr %old_ctx.sroa.21.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %old_ctx.sroa.21.0..sroa_idx, align 4
  %attrs_offset.i.i399 = getelementptr inbounds %struct.MFT_RECORD, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %attrs_offset.i.i399 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %attrs_offset.i.i399, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #11
  %conv.i.i400 = zext i16 %82 to i32
  %add.ptr.i.i401 = getelementptr i8, ptr %79, i32 %conv.i.i400
  %83 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %79, ptr %ctx, align 4
  %84 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i.i401, ptr %attr, align 4
  %85 = ptrtoint ptr %old_ctx.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %old_ctx.sroa.10.0..sroa_idx, align 4
  %86 = ptrtoint ptr %old_ctx.sroa.10294.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %77, ptr %old_ctx.sroa.10294.0..sroa_idx, align 4
  %87 = call ptr @memset(ptr %old_ctx.sroa.16.0..sroa_idx, i32 0, i32 16)
  br label %if.then108

if.then108:                                       ; preds = %if.end9.i, %if.then.i398, %ntfs_attr_get_search_ctx.exit
  %old_ctx.sroa.21.sroa.0.0.ph = phi i64 [ %53, %if.end9.i ], [ %53, %if.then.i398 ], [ 0, %ntfs_attr_get_search_ctx.exit ]
  %put_this_page.2.ph = phi ptr [ %put_this_page.0, %if.end9.i ], [ %put_this_page.0, %if.then.i398 ], [ null, %ntfs_attr_get_search_ctx.exit ]
  %old_ctx.sroa.0.1.ph = phi ptr [ %old_ctx.sroa.0.0.copyload, %if.end9.i ], [ %old_ctx.sroa.0.0.copyload, %if.then.i398 ], [ null, %ntfs_attr_get_search_ctx.exit ]
  %old_ctx.sroa.8.1.ph = phi ptr [ %old_ctx.sroa.8.0.copyload, %if.end9.i ], [ %old_ctx.sroa.8.0.copyload, %if.then.i398 ], [ null, %ntfs_attr_get_search_ctx.exit ]
  %old_ctx.sroa.10.1.ph = phi i32 [ %old_ctx.sroa.10.0.copyload, %if.end9.i ], [ %old_ctx.sroa.10.0.copyload, %if.then.i398 ], [ 0, %ntfs_attr_get_search_ctx.exit ]
  %old_ctx.sroa.10294.1.ph = phi ptr [ %old_ctx.sroa.10294.0.copyload, %if.end9.i ], [ %old_ctx.sroa.10294.0.copyload, %if.then.i398 ], [ null, %ntfs_attr_get_search_ctx.exit ]
  %old_ctx.sroa.16.1.ph = phi ptr [ %old_ctx.sroa.16.0.copyload, %if.end9.i ], [ %old_ctx.sroa.16.0.copyload, %if.then.i398 ], [ null, %ntfs_attr_get_search_ctx.exit ]
  %old_ctx.sroa.16303.1.ph = phi ptr [ %old_ctx.sroa.16303.0.copyload, %if.end9.i ], [ %old_ctx.sroa.16303.0.copyload, %if.then.i398 ], [ null, %ntfs_attr_get_search_ctx.exit ]
  %ctx.addr.0.ph = phi ptr [ %ctx, %if.end9.i ], [ %ctx, %if.then.i398 ], [ %call.i, %ntfs_attr_get_search_ctx.exit ]
  %type109 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 8
  %88 = ptrtoint ptr %type109 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type109, align 4
  %name110 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %90 = ptrtoint ptr %name110 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name110, align 8
  %name_len111 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %92 = ptrtoint ptr %name_len111 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %name_len111, align 4
  %call112 = tail call i32 @ntfs_attr_lookup(i32 noundef %89, ptr noundef %91, i32 noundef %93, i32 noundef 0, i64 noundef %vcn, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ctx.addr.0.ph)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %do.body126, label %if.then120, !prof !169

if.then120:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call112)
  %cmp121 = icmp eq i32 %call112, -2
  %spec.store.select = select i1 %cmp121, i32 -5, i32 %call112
  br i1 %tobool1.not, label %if.then120.if.then183_crit_edge, label %if.then120.if.then187_crit_edge

if.then120.if.then187_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then187

if.then120.if.then183_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

do.body126:                                       ; preds = %if.then108
  %attr127 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.0.ph, i32 0, i32 1
  %94 = ptrtoint ptr %attr127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %attr127, align 4
  %non_resident128 = getelementptr inbounds %struct.ATTR_RECORD, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %non_resident128 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %non_resident128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool129.not = icmp eq i8 %97, 0
  br i1 %tobool129.not, label %do.body139, label %do.body126.if.end148_crit_edge, !prof !166

do.body126.if.end148_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.body139:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #11, !srcloc !173
  unreachable

if.end148:                                        ; preds = %do.body126.if.end148_crit_edge, %land.lhs.true86.if.end148_crit_edge, %do.end50.if.end148_crit_edge
  %ctx.addr.0454 = phi ptr [ %ctx.addr.0.ph, %do.body126.if.end148_crit_edge ], [ %ctx, %do.end50.if.end148_crit_edge ], [ %ctx, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.16303.1452 = phi ptr [ %old_ctx.sroa.16303.1.ph, %do.body126.if.end148_crit_edge ], [ null, %do.end50.if.end148_crit_edge ], [ null, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.16.1450 = phi ptr [ %old_ctx.sroa.16.1.ph, %do.body126.if.end148_crit_edge ], [ null, %do.end50.if.end148_crit_edge ], [ null, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.10294.1448 = phi ptr [ %old_ctx.sroa.10294.1.ph, %do.body126.if.end148_crit_edge ], [ null, %do.end50.if.end148_crit_edge ], [ null, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.10.1446 = phi i32 [ %old_ctx.sroa.10.1.ph, %do.body126.if.end148_crit_edge ], [ 0, %do.end50.if.end148_crit_edge ], [ 0, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.8.1444 = phi ptr [ %old_ctx.sroa.8.1.ph, %do.body126.if.end148_crit_edge ], [ null, %do.end50.if.end148_crit_edge ], [ null, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.0.1442 = phi ptr [ %old_ctx.sroa.0.1.ph, %do.body126.if.end148_crit_edge ], [ null, %do.end50.if.end148_crit_edge ], [ null, %land.lhs.true86.if.end148_crit_edge ]
  %ctx_needs_reset.1.off0440 = phi i1 [ true, %do.body126.if.end148_crit_edge ], [ false, %do.end50.if.end148_crit_edge ], [ false, %land.lhs.true86.if.end148_crit_edge ]
  %put_this_page.2438 = phi ptr [ %put_this_page.2.ph, %do.body126.if.end148_crit_edge ], [ null, %do.end50.if.end148_crit_edge ], [ null, %land.lhs.true86.if.end148_crit_edge ]
  %old_ctx.sroa.21.sroa.0.0435 = phi i64 [ %old_ctx.sroa.21.sroa.0.0.ph, %do.body126.if.end148_crit_edge ], [ 0, %do.end50.if.end148_crit_edge ], [ 0, %land.lhs.true86.if.end148_crit_edge ]
  %attr149 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.0454, i32 0, i32 1
  %98 = ptrtoint ptr %attr149 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %attr149, align 4
  %highest_vcn151 = getelementptr inbounds %struct.ATTR_RECORD, ptr %99, i32 0, i32 7, i32 0, i32 1
  %100 = ptrtoint ptr %highest_vcn151 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %highest_vcn151, align 1
  %102 = tail call i64 @llvm.bswap.i64(i64 %101) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vcn)
  %tobool153.not = icmp ne i64 %vcn, 0
  %add = add i64 %102, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %vcn)
  %cmp154 = icmp sle i64 %add, %vcn
  %103 = select i1 %tobool153.not, i1 %cmp154, i1 false
  br i1 %103, label %err_out, label %if.end163, !prof !166

if.end163:                                        ; preds = %if.end148
  %vol164 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %104 = ptrtoint ptr %vol164 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vol164, align 8
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %106 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %runlist, align 8
  %call166 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %105, ptr noundef %99, ptr noundef %107) #11
  %cmp.i405 = icmp ugt ptr %call166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i405, label %if.then168, label %if.else170

if.then168:                                       ; preds = %if.end163
  %108 = ptrtoint ptr %call166 to i32
  br i1 %tobool1.not, label %if.then168.if.then183_crit_edge, label %if.then168.if.else185_crit_edge

if.then168.if.else185_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else185

if.then168.if.then183_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

if.else170:                                       ; preds = %if.end163
  %109 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call166, ptr %runlist, align 8
  br i1 %tobool1.not, label %if.else170.if.then183_crit_edge, label %if.else170.if.else185_crit_edge

if.else170.if.else185_crit_edge:                  ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else185

if.else170.if.then183_crit_edge:                  ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

err_out:                                          ; preds = %if.end148
  br i1 %tobool1.not, label %err_out.if.then183_crit_edge, label %err_out.if.else185_crit_edge

err_out.if.else185_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else185

err_out.if.then183_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

if.then183:                                       ; preds = %err_out.if.then183_crit_edge, %if.else170.if.then183_crit_edge, %if.then168.if.then183_crit_edge, %if.then120.if.then183_crit_edge
  %ctx.addr.1470.ph = phi ptr [ %ctx.addr.0454, %if.else170.if.then183_crit_edge ], [ %ctx.addr.0454, %if.then168.if.then183_crit_edge ], [ %ctx.addr.0.ph, %if.then120.if.then183_crit_edge ], [ %ctx.addr.0454, %err_out.if.then183_crit_edge ]
  %err.1467.ph = phi i32 [ 0, %if.else170.if.then183_crit_edge ], [ %108, %if.then168.if.then183_crit_edge ], [ %spec.store.select, %if.then120.if.then183_crit_edge ], [ -2, %err_out.if.then183_crit_edge ]
  %base_ntfs_ino.i406 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.1470.ph, i32 0, i32 5
  %110 = ptrtoint ptr %base_ntfs_ino.i406 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base_ntfs_ino.i406, align 4
  %tobool.not.i407 = icmp eq ptr %111, null
  br i1 %tobool.not.i407, label %if.then183.ntfs_attr_put_search_ctx.exit_crit_edge, label %land.lhs.true.i

if.then183.ntfs_attr_put_search_ctx.exit_crit_edge: ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit

land.lhs.true.i:                                  ; preds = %if.then183
  %ntfs_ino.i408 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.1470.ph, i32 0, i32 3
  %112 = ptrtoint ptr %ntfs_ino.i408 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ntfs_ino.i408, align 4
  %cmp.not.i409 = icmp eq ptr %113, %111
  br i1 %cmp.not.i409, label %land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge, label %if.then.i410

land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit

if.then.i410:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %113) #11
  br label %ntfs_attr_put_search_ctx.exit

ntfs_attr_put_search_ctx.exit:                    ; preds = %if.then.i410, %land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge, %if.then183.ntfs_attr_put_search_ctx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %114 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %114, ptr noundef nonnull %ctx.addr.1470.ph) #11
  br label %if.end184

if.end184:                                        ; preds = %ntfs_attr_put_search_ctx.exit, %if.end7.if.end184_crit_edge
  %err.1467491 = phi i32 [ %err.1467.ph, %ntfs_attr_put_search_ctx.exit ], [ -12, %if.end7.if.end184_crit_edge ]
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  br label %cleanup

if.else185:                                       ; preds = %err_out.if.else185_crit_edge, %if.else170.if.else185_crit_edge, %if.then168.if.else185_crit_edge
  %err.1477 = phi i32 [ -2, %err_out.if.else185_crit_edge ], [ %108, %if.then168.if.else185_crit_edge ], [ 0, %if.else170.if.else185_crit_edge ]
  br i1 %ctx_needs_reset.1.off0440, label %if.else185.if.then187_crit_edge, label %if.else185.cleanup_crit_edge

if.else185.cleanup_crit_edge:                     ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else185.if.then187_crit_edge:                  ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then187

if.then187:                                       ; preds = %if.else185.if.then187_crit_edge, %if.then120.if.then187_crit_edge
  %old_ctx.sroa.21.sroa.0.1475512 = phi i64 [ %old_ctx.sroa.21.sroa.0.0435, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.21.sroa.0.0.ph, %if.then120.if.then187_crit_edge ]
  %put_this_page.3476511 = phi ptr [ %put_this_page.2438, %if.else185.if.then187_crit_edge ], [ %put_this_page.2.ph, %if.then120.if.then187_crit_edge ]
  %err.1477510 = phi i32 [ %err.1477, %if.else185.if.then187_crit_edge ], [ %spec.store.select, %if.then120.if.then187_crit_edge ]
  %old_ctx.sroa.0.2479509 = phi ptr [ %old_ctx.sroa.0.1442, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.0.1.ph, %if.then120.if.then187_crit_edge ]
  %old_ctx.sroa.8.2480508 = phi ptr [ %old_ctx.sroa.8.1444, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.8.1.ph, %if.then120.if.then187_crit_edge ]
  %old_ctx.sroa.10.2481507 = phi i32 [ %old_ctx.sroa.10.1446, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.10.1.ph, %if.then120.if.then187_crit_edge ]
  %old_ctx.sroa.10294.2482506 = phi ptr [ %old_ctx.sroa.10294.1448, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.10294.1.ph, %if.then120.if.then187_crit_edge ]
  %old_ctx.sroa.16.2483505 = phi ptr [ %old_ctx.sroa.16.1450, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.16.1.ph, %if.then120.if.then187_crit_edge ]
  %old_ctx.sroa.16303.2484504 = phi ptr [ %old_ctx.sroa.16303.1452, %if.else185.if.then187_crit_edge ], [ %old_ctx.sroa.16303.1.ph, %if.then120.if.then187_crit_edge ]
  %ctx.addr.1485503 = phi ptr [ %ctx.addr.0454, %if.else185.if.then187_crit_edge ], [ %ctx.addr.0.ph, %if.then120.if.then187_crit_edge ]
  %state.i412 = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0, i32 0, i32 3
  %115 = ptrtoint ptr %state.i412 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %state.i412, align 4
  %117 = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool189.not = icmp eq i32 %117, 0
  br i1 %tobool189.not, label %if.then187.if.end271_crit_edge, label %if.then190

if.then187.if.end271_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.then190:                                       ; preds = %if.then187
  %ntfs_ino191 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.1485503, i32 0, i32 3
  %118 = ptrtoint ptr %ntfs_ino191 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ntfs_ino191, align 4
  %cmp193.not = icmp eq ptr %119, %old_ctx.sroa.10294.2482506
  br i1 %cmp193.not, label %if.then190.if.end253thread-pre-split_crit_edge, label %if.then195

if.then190.if.end253thread-pre-split_crit_edge:   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253thread-pre-split

if.then195:                                       ; preds = %if.then190
  %base_ntfs_ino196 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.1485503, i32 0, i32 5
  %120 = ptrtoint ptr %base_ntfs_ino196 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base_ntfs_ino196, align 4
  %tobool197.not = icmp eq ptr %121, null
  %cmp201.not = icmp eq ptr %119, %121
  %or.cond394 = select i1 %tobool197.not, i1 true, i1 %cmp201.not
  br i1 %or.cond394, label %if.then195.if.end227_crit_edge, label %if.then203

if.then195.if.end227_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

if.then203:                                       ; preds = %if.then195
  tail call void @unmap_mft_record(ptr noundef %119) #11
  %base_mrec = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.addr.1485503, i32 0, i32 6
  %122 = ptrtoint ptr %base_mrec to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base_mrec, align 4
  %124 = ptrtoint ptr %ctx.addr.1485503 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %ctx.addr.1485503, align 4
  %tobool208.not = icmp eq ptr %123, null
  br i1 %tobool208.not, label %do.body218, label %if.then203.if.end227_crit_edge, !prof !166

if.then203.if.end227_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

do.body218:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #11, !srcloc !174
  unreachable

if.end227:                                        ; preds = %if.then203.if.end227_crit_edge, %if.then195.if.end227_crit_edge
  %tobool229.not = icmp eq ptr %old_ctx.sroa.16303.2484504, null
  %cmp233.not = icmp eq ptr %old_ctx.sroa.10294.2482506, %old_ctx.sroa.16303.2484504
  %or.cond395 = select i1 %tobool229.not, i1 true, i1 %cmp233.not
  br i1 %or.cond395, label %if.end227.if.end253thread-pre-split_crit_edge, label %retry_map.preheader

if.end227.if.end253thread-pre-split_crit_edge:    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253thread-pre-split

retry_map.preheader:                              ; preds = %if.end227
  %call237513 = tail call ptr @map_mft_record(ptr noundef %old_ctx.sroa.10294.2482506) #11
  %125 = ptrtoint ptr %ctx.addr.1485503 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call237513, ptr %ctx.addr.1485503, align 4
  %cmp.i415514 = icmp ugt ptr %call237513, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i415514, label %retry_map.preheader.if.then241_crit_edge, label %retry_map.preheader.if.end253_crit_edge

retry_map.preheader.if.end253_crit_edge:          ; preds = %retry_map.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

retry_map.preheader.if.then241_crit_edge:         ; preds = %retry_map.preheader
  br label %if.then241

if.then241:                                       ; preds = %if.then246.if.then241_crit_edge, %retry_map.preheader.if.then241_crit_edge
  %call237515 = phi ptr [ %call237, %if.then246.if.then241_crit_edge ], [ %call237513, %retry_map.preheader.if.then241_crit_edge ]
  %cmp244 = icmp eq ptr %call237515, inttoptr (i32 -12 to ptr)
  br i1 %cmp244, label %if.then246, label %if.then241.if.end253_crit_edge

if.then241.if.end253_crit_edge:                   ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

if.then246:                                       ; preds = %if.then241
  tail call void @schedule() #11
  %call237 = tail call ptr @map_mft_record(ptr noundef %old_ctx.sroa.10294.2482506) #11
  %126 = ptrtoint ptr %ctx.addr.1485503 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call237, ptr %ctx.addr.1485503, align 4
  %cmp.i415 = icmp ugt ptr %call237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i415, label %if.then246.if.then241_crit_edge, label %if.then246.if.end253_crit_edge

if.then246.if.end253_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

if.then246.if.then241_crit_edge:                  ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then241

if.end253thread-pre-split:                        ; preds = %if.end227.if.end253thread-pre-split_crit_edge, %if.then190.if.end253thread-pre-split_crit_edge
  %127 = ptrtoint ptr %ctx.addr.1485503 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr = load ptr, ptr %ctx.addr.1485503, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.end253thread-pre-split, %if.then246.if.end253_crit_edge, %if.then241.if.end253_crit_edge, %retry_map.preheader.if.end253_crit_edge
  %128 = phi ptr [ %.pr, %if.end253thread-pre-split ], [ %call237513, %retry_map.preheader.if.end253_crit_edge ], [ %call237, %if.then246.if.end253_crit_edge ], [ %call237515, %if.then241.if.end253_crit_edge ]
  %old_ctx.sroa.10294.3 = phi ptr [ %old_ctx.sroa.10294.2482506, %if.end253thread-pre-split ], [ %old_ctx.sroa.10294.2482506, %retry_map.preheader.if.end253_crit_edge ], [ %old_ctx.sroa.10294.2482506, %if.then246.if.end253_crit_edge ], [ %old_ctx.sroa.16303.2484504, %if.then241.if.end253_crit_edge ]
  %cmp256.not = icmp eq ptr %128, %old_ctx.sroa.0.2479509
  br i1 %cmp256.not, label %if.end253.if.end271_crit_edge, label %if.then258

if.end253.if.end271_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.then258:                                       ; preds = %if.end253
  %cmp.i416 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i416, label %if.then258.if.end271_crit_edge, label %if.then261

if.then258.if.end271_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.then261:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast = ptrtoint ptr %old_ctx.sroa.8.2480508 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %old_ctx.sroa.0.2479509 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr265 = getelementptr i8, ptr %128, i32 %sub.ptr.sub
  br label %if.end271

if.end271:                                        ; preds = %if.then261, %if.then258.if.end271_crit_edge, %if.end253.if.end271_crit_edge, %if.then187.if.end271_crit_edge
  %old_ctx.sroa.0.3 = phi ptr [ %old_ctx.sroa.0.2479509, %if.end253.if.end271_crit_edge ], [ %old_ctx.sroa.0.2479509, %if.then187.if.end271_crit_edge ], [ %128, %if.then261 ], [ %128, %if.then258.if.end271_crit_edge ]
  %old_ctx.sroa.8.4 = phi ptr [ %old_ctx.sroa.8.2480508, %if.end253.if.end271_crit_edge ], [ %old_ctx.sroa.8.2480508, %if.then187.if.end271_crit_edge ], [ %add.ptr265, %if.then261 ], [ %old_ctx.sroa.8.2480508, %if.then258.if.end271_crit_edge ]
  %old_ctx.sroa.10294.4 = phi ptr [ %old_ctx.sroa.10294.3, %if.end253.if.end271_crit_edge ], [ %old_ctx.sroa.10294.2482506, %if.then187.if.end271_crit_edge ], [ %old_ctx.sroa.10294.3, %if.then261 ], [ %old_ctx.sroa.10294.3, %if.then258.if.end271_crit_edge ]
  %129 = ptrtoint ptr %ctx.addr.1485503 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %old_ctx.sroa.0.3, ptr %ctx.addr.1485503, align 4
  %old_ctx.sroa.8.0..sroa_idx290 = getelementptr inbounds i8, ptr %ctx.addr.1485503, i32 4
  %130 = ptrtoint ptr %old_ctx.sroa.8.0..sroa_idx290 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %old_ctx.sroa.8.4, ptr %old_ctx.sroa.8.0..sroa_idx290, align 4
  %old_ctx.sroa.10.0..sroa_idx292 = getelementptr inbounds i8, ptr %ctx.addr.1485503, i32 8
  %131 = ptrtoint ptr %old_ctx.sroa.10.0..sroa_idx292 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %old_ctx.sroa.10.2481507, ptr %old_ctx.sroa.10.0..sroa_idx292, align 4
  %old_ctx.sroa.10294.0..sroa_idx295 = getelementptr inbounds i8, ptr %ctx.addr.1485503, i32 12
  %132 = ptrtoint ptr %old_ctx.sroa.10294.0..sroa_idx295 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %old_ctx.sroa.10294.4, ptr %old_ctx.sroa.10294.0..sroa_idx295, align 4
  %old_ctx.sroa.16.0..sroa_idx301 = getelementptr inbounds i8, ptr %ctx.addr.1485503, i32 16
  %133 = ptrtoint ptr %old_ctx.sroa.16.0..sroa_idx301 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %old_ctx.sroa.16.2483505, ptr %old_ctx.sroa.16.0..sroa_idx301, align 4
  %old_ctx.sroa.16303.0..sroa_idx304 = getelementptr inbounds i8, ptr %ctx.addr.1485503, i32 20
  %134 = ptrtoint ptr %old_ctx.sroa.16303.0..sroa_idx304 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %old_ctx.sroa.16303.2484504, ptr %old_ctx.sroa.16303.0..sroa_idx304, align 4
  %old_ctx.sroa.21.0..sroa_idx310 = getelementptr inbounds i8, ptr %ctx.addr.1485503, i32 24
  %135 = ptrtoint ptr %old_ctx.sroa.21.0..sroa_idx310 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %old_ctx.sroa.21.sroa.0.1475512, ptr %old_ctx.sroa.21.0..sroa_idx310, align 4
  %tobool272.not = icmp eq ptr %put_this_page.3476511, null
  br i1 %tobool272.not, label %if.end271.cleanup_crit_edge, label %if.then273

if.end271.cleanup_crit_edge:                      ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then273:                                       ; preds = %if.end271
  %136 = getelementptr inbounds %struct.page, ptr %put_this_page.3476511, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %136, align 4
  %and.i.i417 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i417)
  %tobool.not.i.i418 = icmp eq i32 %and.i.i417, 0
  br i1 %tobool.not.i.i418, label %if.end.i.i421, label %if.then.i.i420, !prof !169

if.then.i.i420:                                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i419 = add i32 %138, -1
  br label %_compound_head.exit.i423

if.end.i.i421:                                    ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %put_this_page.3476511 to i32
  br label %_compound_head.exit.i423

_compound_head.exit.i423:                         ; preds = %if.end.i.i421, %if.then.i.i420
  %retval.0.i.i422 = phi i32 [ %sub.i.i419, %if.then.i.i420 ], [ %139, %if.end.i.i421 ]
  %140 = inttoptr i32 %retval.0.i.i422 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %140, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %141 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i.i.i.i = icmp eq i32 %142, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i424, label %do.end5.i.i.i.i, !prof !166

if.then.i.i.i.i424:                               ; preds = %_compound_head.exit.i423
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %140, ptr noundef nonnull @.str.61) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i423
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %143, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_map_runlist_nolock, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !172

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %140, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %140) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end271.cleanup_crit_edge, %if.else185.cleanup_crit_edge, %if.end184, %if.then5
  %retval.0 = phi i32 [ %5, %if.then5 ], [ %err.1477, %if.else185.cleanup_crit_edge ], [ %err.1477510, %if.end271.cleanup_crit_edge ], [ %err.1467491, %if.end184 ], [ %err.1477510, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.1477510, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @ntfs_attr_get_search_ctx(ptr noundef %ni, ptr noundef %mrec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %0 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %attrs_offset.i = getelementptr inbounds %struct.MFT_RECORD, ptr %mrec, i32 0, i32 6
  %1 = ptrtoint ptr %attrs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %attrs_offset.i, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #11
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %mrec, i32 %conv.i
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mrec, ptr %call, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %call, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %call, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.42.0..sroa_idx.i = getelementptr inbounds i8, ptr %call, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ni, ptr %.compoundliteral.sroa.42.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call, i32 16
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_attr_reinit_search_ctx(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_ntfs_ino, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %is_first = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %is_first to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_first, align 4
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %attrs_offset = getelementptr inbounds %struct.MFT_RECORD, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %attrs_offset to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %attrs_offset, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %attr, align 4
  %al_entry = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %al_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %al_entry, align 4
  br label %return

if.end:                                           ; preds = %entry
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ntfs_ino, align 4
  %cmp.not = icmp eq ptr %11, %1
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %11) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_ntfs_ino, align 4
  %base_mrec = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %base_mrec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_mrec, align 4
  %attrs_offset.i = getelementptr inbounds %struct.MFT_RECORD, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %attrs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %attrs_offset.i, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #11
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv.i
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %ctx, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ctx, i32 4
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ctx, i32 8
  %21 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %22 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %13, ptr %ntfs_ino, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ctx, i32 16
  %23 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 16)
  br label %return

return:                                           ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_lookup(i32 noundef %type, ptr noundef %name, i32 noundef %name_len, i32 noundef %ic, i64 noundef %lowest_vcn, ptr noundef %val, i32 noundef %val_len, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %ni.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1180, ptr noundef nonnull @__func__.ntfs_attr_lookup, ptr noundef nonnull @.str.12) #11
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body2, label %do.end7, !prof !166

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1181, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end7:                                          ; preds = %entry
  %base_ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_ntfs_ino, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.body12, label %do.end7.do.end31_crit_edge

do.end7.do.end31_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.body12:                                        ; preds = %do.end7
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ntfs_ino, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.body23, label %do.body12.do.end31_crit_edge, !prof !166

do.body12.do.end31_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1187, 0\0A.popsection", ""() #11, !srcloc !180
  unreachable

do.end31:                                         ; preds = %do.body12.do.end31_crit_edge, %do.end7.do.end31_crit_edge
  %base_ni.054 = phi ptr [ %5, %do.body12.do.end31_crit_edge ], [ %3, %do.end7.do.end31_crit_edge ]
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.054, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool33.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %type)
  %cmp = icmp eq i32 %type, 536870912
  %or.cond = or i1 %cmp, %tobool33.not
  br i1 %or.cond, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call fastcc i32 @ntfs_attr_find(i32 noundef %type, ptr noundef %name, i32 noundef %name_len, i32 noundef %ic, ptr noundef %val, i32 noundef %val_len, ptr noundef %ctx)
  br label %cleanup

if.end36:                                         ; preds = %do.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ni.i) #11
  %ntfs_ino.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ntfs_ino.i, align 4
  %11 = ptrtoint ptr %ni.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ni.i, align 4
  %mft_no.i = getelementptr inbounds %struct._ntfs_inode, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %mft_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mft_no.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef nonnull @.str.64, i32 noundef %13, i32 noundef %type) #11
  br i1 %tobool8.not, label %if.then.i, label %if.end36.if.end.i_crit_edge

if.end36.if.end.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ntfs_ino.i, align 4
  %16 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %base_ntfs_ino, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %base_mrec.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 6
  %19 = ptrtoint ptr %base_mrec.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %base_mrec.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end36.if.end.i_crit_edge
  %base_ni.0.i = phi ptr [ %3, %if.end36.if.end.i_crit_edge ], [ %15, %if.then.i ]
  %20 = ptrtoint ptr %ni.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ni.i, align 4
  %cmp.i51 = icmp eq ptr %21, %base_ni.0.i
  br i1 %cmp.i51, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %attr.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %22 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %attr.i, align 4
  %base_attr.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 7
  %24 = ptrtoint ptr %base_attr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %base_attr.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp5.i = icmp eq i32 %type, -1
  br i1 %cmp5.i, label %if.then275.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end4.i
  %vol8.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0.i, i32 0, i32 7
  %25 = ptrtoint ptr %vol8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vol8.i, align 8
  %attr_list.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0.i, i32 0, i32 16
  %27 = ptrtoint ptr %attr_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attr_list.i, align 4
  %attr_list_size.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0.i, i32 0, i32 15
  %29 = ptrtoint ptr %attr_list_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %attr_list_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 %30
  %al_entry9.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 4
  %31 = ptrtoint ptr %al_entry9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %al_entry9.i, align 4
  %tobool10.not.i = icmp eq ptr %32, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %al_entry9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %28, ptr %al_entry9.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end13.i_crit_edge
  %is_first.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 2
  %34 = ptrtoint ptr %is_first.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_first.i, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool14.not.i = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %al_entry9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %al_entry9.i, align 4
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %is_first.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %is_first.i, align 4
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %length.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %length.i, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #11
  %conv.i = zext i16 %41 to i32
  %add.ptr20.i = getelementptr i8, ptr %37, i32 %conv.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then15.i
  %al_entry.0.i = phi ptr [ %37, %if.then15.i ], [ %add.ptr20.i, %if.else.i ]
  %42 = ptrtoint ptr %attr_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %attr_list.i, align 4
  %cmp23514.i = icmp ult ptr %al_entry.0.i, %43
  %cmp25515.i = icmp ugt ptr %al_entry.0.i, %add.ptr.i
  %or.cond516.i = select i1 %cmp23514.i, i1 true, i1 %cmp25515.i
  br i1 %or.cond516.i, label %if.end21.i.if.then253.i_crit_edge, label %if.end28.lr.ph.i

if.end21.i.if.then253.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end28.lr.ph.i:                                 ; preds = %if.end21.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %type) #11
  %tobool65.not.i = icmp eq ptr %name, null
  %upcase.i = getelementptr inbounds %struct.ntfs_volume, ptr %26, i32 0, i32 25
  %upcase_len.i = getelementptr inbounds %struct.ntfs_volume, ptr %26, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lowest_vcn)
  %tobool94.not.i = icmp ne i64 %lowest_vcn, 0
  br label %if.end28.i

if.end28.i:                                       ; preds = %for.inc.i.if.end28.i_crit_edge, %if.end28.lr.ph.i
  %al_entry.1517.i = phi ptr [ %al_entry.0.i, %if.end28.lr.ph.i ], [ %add.ptr44.i, %for.inc.i.if.end28.i_crit_edge ]
  %45 = ptrtoint ptr %al_entry9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %al_entry.1517.i, ptr %al_entry9.i, align 4
  %cmp30.i = icmp eq ptr %al_entry.1517.i, %add.ptr.i
  br i1 %cmp30.i, label %if.end28.i.if.end277.i_crit_edge, label %if.end33.i

if.end28.i.if.end277.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277.i

if.end33.i:                                       ; preds = %if.end28.i
  %length34.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.1517.i, i32 0, i32 1
  %46 = ptrtoint ptr %length34.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %length34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool35.not.i = icmp eq i16 %47, 0
  %add.ptr38.i = getelementptr i8, ptr %al_entry.1517.i, i32 6
  %cmp39.i = icmp ugt ptr %add.ptr38.i, %add.ptr.i
  %or.cond486.i = select i1 %tobool35.not.i, i1 true, i1 %cmp39.i
  br i1 %or.cond486.i, label %if.end33.i.if.then253.i_crit_edge, label %lor.lhs.false41.i

if.end33.i.if.then253.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

lor.lhs.false41.i:                                ; preds = %if.end33.i
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #11
  %conv43.i = zext i16 %48 to i32
  %add.ptr44.i = getelementptr i8, ptr %al_entry.1517.i, i32 %conv43.i
  %cmp45.i = icmp ugt ptr %add.ptr44.i, %add.ptr.i
  br i1 %cmp45.i, label %lor.lhs.false41.i.if.then253.i_crit_edge, label %if.end48.i

lor.lhs.false41.i.if.then253.i_crit_edge:         ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end48.i:                                       ; preds = %lor.lhs.false41.i
  %49 = ptrtoint ptr %al_entry.1517.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %al_entry.1517.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %44)
  %cmp53.i = icmp ugt i32 %51, %44
  br i1 %cmp53.i, label %if.end48.i.if.end277.i_crit_edge, label %if.end56.i

if.end48.i.if.end277.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277.i

if.end56.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %type)
  %cmp58.not.i = icmp eq i32 %50, %type
  br i1 %cmp58.not.i, label %if.end61.i, label %if.end56.i.for.inc.i_crit_edge

if.end56.i.for.inc.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end61.i:                                       ; preds = %if.end56.i
  %52 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr38.i, align 1
  %conv62.i = zext i8 %53 to i32
  %name_offset.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.1517.i, i32 0, i32 3
  %54 = ptrtoint ptr %name_offset.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %name_offset.i, align 1
  %conv63.i = zext i8 %55 to i32
  %add.ptr64.i = getelementptr i8, ptr %al_entry.1517.i, i32 %conv63.i
  br i1 %tobool65.not.i, label %if.then66.i, label %if.else70.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool67.not.i = icmp eq i8 %53, 0
  br i1 %tobool67.not.i, label %if.then66.i.if.end93.i_crit_edge, label %if.then66.i.if.end277.i_crit_edge

if.then66.i.if.end277.i_crit_edge:                ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277.i

if.then66.i.if.end93.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.else70.i:                                      ; preds = %if.end61.i
  %56 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %upcase.i, align 4
  %58 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %upcase_len.i, align 8
  %call.i = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %add.ptr64.i, i32 noundef %conv62.i, ptr noundef nonnull %name, i32 noundef %name_len, i32 noundef %ic, ptr noundef %57, i32 noundef %59) #11
  br i1 %call.i, label %if.else70.i.if.end93.i_crit_edge, label %if.then71.i

if.else70.i.if.end93.i_crit_edge:                 ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.then71.i:                                      ; preds = %if.else70.i
  %60 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %upcase.i, align 4
  %62 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %upcase_len.i, align 8
  %call74.i = tail call i32 @ntfs_collate_names(ptr noundef nonnull %name, i32 noundef %name_len, ptr noundef %add.ptr64.i, i32 noundef %conv62.i, i32 noundef 1, i32 noundef 1, ptr noundef %61, i32 noundef %63) #11
  %64 = zext i32 %call74.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call74.i, label %if.then71.i.for.inc.i_crit_edge [
    i32 -1, label %if.then71.i.if.end277.i_crit_edge
    i32 0, label %if.end81.i
  ]

if.then71.i.if.end277.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277.i

if.then71.i.for.inc.i_crit_edge:                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end81.i:                                       ; preds = %if.then71.i
  %65 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %upcase.i, align 4
  %67 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %upcase_len.i, align 8
  %call84.i = tail call i32 @ntfs_collate_names(ptr noundef nonnull %name, i32 noundef %name_len, ptr noundef %add.ptr64.i, i32 noundef %conv62.i, i32 noundef 1, i32 noundef 0, ptr noundef %66, i32 noundef %68) #11
  %69 = zext i32 %call84.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call84.i, label %if.end81.i.for.inc.i_crit_edge [
    i32 -1, label %if.end81.i.if.end277.i_crit_edge
    i32 0, label %if.end81.i.if.end93.i_crit_edge
  ]

if.end81.i.if.end93.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.end81.i.if.end277.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277.i

if.end81.i.for.inc.i_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end93.i:                                       ; preds = %if.end81.i.if.end93.i_crit_edge, %if.else70.i.if.end93.i_crit_edge, %if.then66.i.if.end93.i_crit_edge
  %cmp95.not.i = icmp uge ptr %add.ptr44.i, %28
  %or.cond487.i = select i1 %tobool94.not.i, i1 %cmp95.not.i, i1 false
  %add.ptr98.i = getelementptr i8, ptr %add.ptr44.i, i32 6
  %cmp99.i = icmp ult ptr %add.ptr98.i, %add.ptr.i
  %or.cond488.i = select i1 %or.cond487.i, i1 %cmp99.i, i1 false
  br i1 %or.cond488.i, label %land.lhs.true101.i, label %if.end93.i.if.end133.i_crit_edge

if.end93.i.if.end133.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

land.lhs.true101.i:                               ; preds = %if.end93.i
  %length102.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %add.ptr44.i, i32 0, i32 1
  %70 = ptrtoint ptr %length102.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %length102.i, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #11
  %conv103.i = zext i16 %72 to i32
  %add.ptr104.i = getelementptr i8, ptr %add.ptr44.i, i32 %conv103.i
  %cmp105.not.i = icmp ugt ptr %add.ptr104.i, %add.ptr.i
  br i1 %cmp105.not.i, label %land.lhs.true101.i.if.end133.i_crit_edge, label %land.lhs.true107.i

land.lhs.true101.i.if.end133.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

land.lhs.true107.i:                               ; preds = %land.lhs.true101.i
  %lowest_vcn108.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %add.ptr44.i, i32 0, i32 4
  %73 = ptrtoint ptr %lowest_vcn108.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %lowest_vcn108.i, align 1
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %lowest_vcn)
  %cmp110.not.i = icmp sgt i64 %75, %lowest_vcn
  br i1 %cmp110.not.i, label %land.lhs.true107.i.if.end133.i_crit_edge, label %land.lhs.true112.i

land.lhs.true107.i.if.end133.i_crit_edge:         ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

land.lhs.true112.i:                               ; preds = %land.lhs.true107.i
  %76 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %add.ptr44.i, align 1
  %78 = ptrtoint ptr %al_entry.1517.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %al_entry.1517.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp115.i = icmp eq i32 %77, %79
  br i1 %cmp115.i, label %land.lhs.true117.i, label %land.lhs.true112.i.if.end133.i_crit_edge

land.lhs.true112.i.if.end133.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

land.lhs.true117.i:                               ; preds = %land.lhs.true112.i
  %80 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr98.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %53)
  %cmp120.i = icmp eq i8 %81, %53
  br i1 %cmp120.i, label %land.lhs.true122.i, label %land.lhs.true117.i.if.end133.i_crit_edge

land.lhs.true117.i.if.end133.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

land.lhs.true122.i:                               ; preds = %land.lhs.true117.i
  %name_offset123.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %add.ptr44.i, i32 0, i32 3
  %82 = ptrtoint ptr %name_offset123.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %name_offset123.i, align 1
  %conv124.i = zext i8 %83 to i32
  %add.ptr125.i = getelementptr i8, ptr %add.ptr44.i, i32 %conv124.i
  %84 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %upcase.i, align 4
  %86 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %upcase_len.i, align 8
  %call130.i = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef %add.ptr125.i, i32 noundef %conv62.i, ptr noundef %add.ptr64.i, i32 noundef %conv62.i, i32 noundef 0, ptr noundef %85, i32 noundef %87) #11
  br i1 %call130.i, label %land.lhs.true122.i.for.inc.i_crit_edge, label %land.lhs.true122.i.if.end133.i_crit_edge

land.lhs.true122.i.if.end133.i_crit_edge:         ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133.i

land.lhs.true122.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end133.i:                                      ; preds = %land.lhs.true122.i.if.end133.i_crit_edge, %land.lhs.true117.i.if.end133.i_crit_edge, %land.lhs.true112.i.if.end133.i_crit_edge, %land.lhs.true107.i.if.end133.i_crit_edge, %land.lhs.true101.i.if.end133.i_crit_edge, %if.end93.i.if.end133.i_crit_edge
  %conv62.i.le = zext i8 %53 to i32
  %mft_reference.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.1517.i, i32 0, i32 5
  %88 = ptrtoint ptr %mft_reference.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %mft_reference.i, align 1
  %90 = tail call i64 @llvm.bswap.i64(i64 %89) #11
  %conv134.i = trunc i64 %90 to i32
  %91 = ptrtoint ptr %ni.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ni.i, align 4
  %mft_no135.i = getelementptr inbounds %struct._ntfs_inode, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %mft_no135.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mft_no135.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %conv134.i)
  %cmp136.i = icmp eq i32 %94, %conv134.i
  br i1 %cmp136.i, label %if.then138.i, label %if.else149.i

if.then138.i:                                     ; preds = %if.end133.i
  %shr.i = lshr i64 %90, 48
  %conv141.i = trunc i64 %shr.i to i32
  %seq_no.i = getelementptr inbounds %struct._ntfs_inode, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %seq_no.i, align 8
  %conv143.i = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv141.i, i32 %conv143.i)
  %cmp144.not.i = icmp eq i32 %conv141.i, %conv143.i
  br i1 %cmp144.not.i, label %if.then138.i.if.end190.i_crit_edge, label %if.then146.i

if.then138.i.if.end190.i_crit_edge:               ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190.i

if.then146.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %26, align 8
  %mft_no147.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0.i, i32 0, i32 4
  %99 = ptrtoint ptr %mft_no147.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mft_no147.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef %98, ptr noundef nonnull @.str.65, i32 noundef %100, ptr noundef nonnull @.str.63) #11
  br label %if.end256.i

if.else149.i:                                     ; preds = %if.end133.i
  %cmp150.not.i = icmp eq ptr %92, %base_ni.0.i
  br i1 %cmp150.not.i, label %if.else149.i.if.end153.i_crit_edge, label %if.then152.i

if.else149.i.if.end153.i_crit_edge:               ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153.i

if.then152.i:                                     ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %92) #11
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then152.i, %if.else149.i.if.end153.i_crit_edge
  %101 = ptrtoint ptr %mft_reference.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %102 = load i64, ptr %mft_reference.i, align 1
  %103 = tail call i64 @llvm.bswap.i64(i64 %102) #11
  %conv156.i = trunc i64 %103 to i32
  %mft_no157.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0.i, i32 0, i32 4
  %104 = ptrtoint ptr %mft_no157.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mft_no157.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %conv156.i)
  %cmp158.i = icmp eq i32 %105, %conv156.i
  br i1 %cmp158.i, label %if.then160.i, label %if.else164.i

if.then160.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %base_ni.0.i, ptr %ntfs_ino.i, align 4
  %107 = ptrtoint ptr %ni.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %base_ni.0.i, ptr %ni.i, align 4
  %base_mrec162.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 6
  %108 = ptrtoint ptr %base_mrec162.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base_mrec162.i, align 4
  %110 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %ctx, align 4
  br label %if.end184.i

if.else164.i:                                     ; preds = %if.end153.i
  %call166.i = call ptr @map_extent_mft_record(ptr noundef %base_ni.0.i, i64 noundef %103, ptr noundef nonnull %ni.i) #11
  %111 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call166.i, ptr %ctx, align 4
  %cmp.i.i = icmp ugt ptr %call166.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then170.i, label %if.end182.i

if.then170.i:                                     ; preds = %if.else164.i
  %112 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %26, align 8
  %114 = ptrtoint ptr %mft_reference.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %115 = load i64, ptr %mft_reference.i, align 1
  %116 = and i64 %115, -65536
  %117 = call i64 @llvm.bswap.i64(i64 %116) #11
  %conv174.i = trunc i64 %117 to i32
  %118 = ptrtoint ptr %mft_no157.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mft_no157.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef %113, ptr noundef nonnull @.str.66, i32 noundef %conv174.i, i32 noundef %119, ptr noundef nonnull @.str.63) #11
  %120 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx, align 4
  %122 = ptrtoint ptr %ni.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %ni.i, align 4
  %magicptr.i = ptrtoint ptr %121 to i32
  %123 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %magicptr.i, label %if.end256.thread.i [
    i32 -2, label %if.end256.thread523.i
    i32 0, label %if.then170.i.if.then253.i_crit_edge
  ]

if.then170.i.if.then253.i_crit_edge:              ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end182.i:                                      ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %ni.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ni.i, align 4
  %126 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %ntfs_ino.i, align 4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.end182.i, %if.then160.i
  %127 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ctx, align 4
  %attrs_offset.i = getelementptr inbounds %struct.MFT_RECORD, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %attrs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %attrs_offset.i, align 1
  %131 = call i16 @llvm.bswap.i16(i16 %130) #11
  %conv187.i = zext i16 %131 to i32
  %add.ptr188.i = getelementptr i8, ptr %128, i32 %conv187.i
  %attr189.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %132 = ptrtoint ptr %attr189.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr188.i, ptr %attr189.i, align 4
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.end184.i, %if.then138.i.if.end190.i_crit_edge
  %attr191.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %133 = ptrtoint ptr %attr191.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %attr191.i, align 4
  %135 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ctx, align 4
  %cmp193518.i = icmp ult ptr %134, %136
  br i1 %cmp193518.i, label %if.end190.i.if.then253.i_crit_edge, label %lor.lhs.false195.lr.ph.i

if.end190.i.if.then253.i_crit_edge:               ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

lor.lhs.false195.lr.ph.i:                         ; preds = %if.end190.i
  %instance.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %al_entry.1517.i, i32 0, i32 6
  %tobool236.not.i = icmp eq ptr %val, null
  br label %lor.lhs.false195.i

lor.lhs.false195.i:                               ; preds = %do_next_attr.i.lor.lhs.false195.i_crit_edge, %lor.lhs.false195.lr.ph.i
  %137 = phi ptr [ %136, %lor.lhs.false195.lr.ph.i ], [ %173, %do_next_attr.i.lor.lhs.false195.i_crit_edge ]
  %a.0519.i = phi ptr [ %134, %lor.lhs.false195.lr.ph.i ], [ %add.ptr251.i, %do_next_attr.i.lor.lhs.false195.i_crit_edge ]
  %bytes_allocated.i = getelementptr inbounds %struct.MFT_RECORD, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %bytes_allocated.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %bytes_allocated.i, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139) #11
  %add.ptr198.i = getelementptr i8, ptr %137, i32 %140
  %cmp199.i = icmp ugt ptr %a.0519.i, %add.ptr198.i
  br i1 %cmp199.i, label %lor.lhs.false195.i.if.then253.i_crit_edge, label %if.end202.i

lor.lhs.false195.i.if.then253.i_crit_edge:        ; preds = %lor.lhs.false195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end202.i:                                      ; preds = %lor.lhs.false195.i
  %141 = ptrtoint ptr %a.0519.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %a.0519.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp204.i = icmp eq i32 %142, -1
  br i1 %cmp204.i, label %if.end202.i.if.then253.i_crit_edge, label %if.end207.i

if.end202.i.if.then253.i_crit_edge:               ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end207.i:                                      ; preds = %if.end202.i
  %length208.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0519.i, i32 0, i32 1
  %143 = ptrtoint ptr %length208.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %length208.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool209.not.i = icmp eq i32 %144, 0
  br i1 %tobool209.not.i, label %if.end207.i.if.then253.i_crit_edge, label %if.end211.i

if.end207.i.if.then253.i_crit_edge:               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end211.i:                                      ; preds = %if.end207.i
  %145 = ptrtoint ptr %instance.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %instance.i, align 1
  %instance213.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0519.i, i32 0, i32 6
  %147 = ptrtoint ptr %instance213.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %instance213.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %148)
  %cmp215.not.i = icmp eq i16 %146, %148
  br i1 %cmp215.not.i, label %if.end218.i, label %if.end211.i.do_next_attr.i_crit_edge

if.end211.i.do_next_attr.i_crit_edge:             ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_next_attr.i

if.end218.i:                                      ; preds = %if.end211.i
  %149 = ptrtoint ptr %al_entry.1517.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %al_entry.1517.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %142)
  %cmp221.not.i = icmp eq i32 %150, %142
  br i1 %cmp221.not.i, label %if.end224.i, label %if.end218.i.if.then253.i_crit_edge

if.end218.i.if.then253.i_crit_edge:               ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end224.i:                                      ; preds = %if.end218.i
  %name_offset225.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0519.i, i32 0, i32 4
  %151 = ptrtoint ptr %name_offset225.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %name_offset225.i, align 1
  %153 = call i16 @llvm.bswap.i16(i16 %152) #11
  %conv226.i = zext i16 %153 to i32
  %add.ptr227.i = getelementptr i8, ptr %a.0519.i, i32 %conv226.i
  %name_length228.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0519.i, i32 0, i32 3
  %154 = ptrtoint ptr %name_length228.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %name_length228.i, align 1
  %conv229.i = zext i8 %155 to i32
  %156 = ptrtoint ptr %upcase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %upcase.i, align 4
  %158 = ptrtoint ptr %upcase_len.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %upcase_len.i, align 8
  %call232.i = call zeroext i1 @ntfs_are_names_equal(ptr noundef %add.ptr227.i, i32 noundef %conv229.i, ptr noundef %add.ptr64.i, i32 noundef %conv62.i.le, i32 noundef 0, ptr noundef %157, i32 noundef %159) #11
  br i1 %call232.i, label %if.end234.i, label %if.end224.i.if.then253.i_crit_edge

if.end224.i.if.then253.i_crit_edge:               ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.end234.i:                                      ; preds = %if.end224.i
  %160 = ptrtoint ptr %attr191.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %a.0519.i, ptr %attr191.i, align 4
  br i1 %tobool236.not.i, label %if.end234.i.if.then248.i_crit_edge, label %lor.lhs.false237.i

if.end234.i.if.then248.i_crit_edge:               ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then248.i

lor.lhs.false237.i:                               ; preds = %if.end234.i
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0519.i, i32 0, i32 2
  %161 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool238.not.i = icmp eq i8 %162, 0
  br i1 %tobool238.not.i, label %land.lhs.true239.i, label %lor.lhs.false237.i.do_next_attr.i_crit_edge

lor.lhs.false237.i.do_next_attr.i_crit_edge:      ; preds = %lor.lhs.false237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_next_attr.i

land.lhs.true239.i:                               ; preds = %lor.lhs.false237.i
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0519.i, i32 0, i32 7
  %163 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %data.i, align 1
  %165 = call i32 @llvm.bswap.i32(i32 %164) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %val_len)
  %cmp240.i = icmp eq i32 %165, %val_len
  br i1 %cmp240.i, label %land.lhs.true242.i, label %land.lhs.true239.i.do_next_attr.i_crit_edge

land.lhs.true239.i.do_next_attr.i_crit_edge:      ; preds = %land.lhs.true239.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_next_attr.i

land.lhs.true242.i:                               ; preds = %land.lhs.true239.i
  %value_offset.i = getelementptr inbounds %struct.anon.89, ptr %data.i, i32 0, i32 1
  %166 = ptrtoint ptr %value_offset.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %value_offset.i, align 1
  %168 = call i16 @llvm.bswap.i16(i16 %167) #11
  %conv244.i = zext i16 %168 to i32
  %add.ptr245.i = getelementptr i8, ptr %a.0519.i, i32 %conv244.i
  %bcmp.i = call i32 @bcmp(ptr %add.ptr245.i, ptr nonnull %val, i32 %val_len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool247.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool247.not.i, label %land.lhs.true242.i.if.then248.i_crit_edge, label %land.lhs.true242.i.do_next_attr.i_crit_edge

land.lhs.true242.i.do_next_attr.i_crit_edge:      ; preds = %land.lhs.true242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_next_attr.i

land.lhs.true242.i.if.then248.i_crit_edge:        ; preds = %land.lhs.true242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then248.i

if.then248.i:                                     ; preds = %land.lhs.true242.i.if.then248.i_crit_edge, %if.end234.i.if.then248.i_crit_edge
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef nonnull @.str.67) #11
  br label %ntfs_external_attr_find.exit

do_next_attr.i:                                   ; preds = %land.lhs.true242.i.do_next_attr.i_crit_edge, %land.lhs.true239.i.do_next_attr.i_crit_edge, %lor.lhs.false237.i.do_next_attr.i_crit_edge, %if.end211.i.do_next_attr.i_crit_edge
  %169 = ptrtoint ptr %length208.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %length208.i, align 1
  %171 = call i32 @llvm.bswap.i32(i32 %170) #11
  %add.ptr251.i = getelementptr i8, ptr %a.0519.i, i32 %171
  %172 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ctx, align 4
  %cmp193.i = icmp ult ptr %add.ptr251.i, %173
  br i1 %cmp193.i, label %do_next_attr.i.if.then253.i_crit_edge, label %do_next_attr.i.lor.lhs.false195.i_crit_edge

do_next_attr.i.lor.lhs.false195.i_crit_edge:      ; preds = %do_next_attr.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false195.i

do_next_attr.i.if.then253.i_crit_edge:            ; preds = %do_next_attr.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

for.inc.i:                                        ; preds = %land.lhs.true122.i.for.inc.i_crit_edge, %if.end81.i.for.inc.i_crit_edge, %if.then71.i.for.inc.i_crit_edge, %if.end56.i.for.inc.i_crit_edge
  %174 = ptrtoint ptr %attr_list.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %attr_list.i, align 4
  %cmp23.i = icmp ult ptr %add.ptr44.i, %175
  br i1 %cmp23.i, label %for.inc.i.if.then253.i_crit_edge, label %for.inc.i.if.end28.i_crit_edge

for.inc.i.if.end28.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.i.if.then253.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253.i

if.then253.i:                                     ; preds = %for.inc.i.if.then253.i_crit_edge, %do_next_attr.i.if.then253.i_crit_edge, %if.end224.i.if.then253.i_crit_edge, %if.end218.i.if.then253.i_crit_edge, %if.end207.i.if.then253.i_crit_edge, %if.end202.i.if.then253.i_crit_edge, %lor.lhs.false195.i.if.then253.i_crit_edge, %if.end190.i.if.then253.i_crit_edge, %if.then170.i.if.then253.i_crit_edge, %lor.lhs.false41.i.if.then253.i_crit_edge, %if.end33.i.if.then253.i_crit_edge, %if.end21.i.if.then253.i_crit_edge
  %176 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %26, align 8
  %mft_no255.i = getelementptr inbounds %struct._ntfs_inode, ptr %base_ni.0.i, i32 0, i32 4
  %178 = ptrtoint ptr %mft_no255.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mft_no255.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef %177, ptr noundef nonnull @.str.68, i32 noundef %179, ptr noundef nonnull @.str.63) #11
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.then253.i, %if.then146.i
  %180 = ptrtoint ptr %ni.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pr.pr.i = load ptr, ptr %ni.i, align 4
  %cmp257.not.i = icmp eq ptr %.pr.pr.i, %base_ni.0.i
  br i1 %cmp257.not.i, label %if.end256.i.if.then271.i_crit_edge, label %if.then259.i

if.end256.i.if.then271.i_crit_edge:               ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then271.i

if.end256.thread523.i:                            ; preds = %if.then170.i
  %cmp257.not525.i = icmp eq ptr %base_ni.0.i, null
  br i1 %cmp257.not525.i, label %if.end256.thread523.i.if.then271.i_crit_edge, label %if.end256.thread523.i.if.end262.i_crit_edge

if.end256.thread523.i.if.end262.i_crit_edge:      ; preds = %if.end256.thread523.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262.i

if.end256.thread523.i.if.then271.i_crit_edge:     ; preds = %if.end256.thread523.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then271.i

if.end256.thread.i:                               ; preds = %if.then170.i
  %cmp257.not502.i = icmp eq ptr %base_ni.0.i, null
  br i1 %cmp257.not502.i, label %if.end256.thread.i.if.end268.i_crit_edge, label %if.end256.thread.i.if.end262.i_crit_edge

if.end256.thread.i.if.end262.i_crit_edge:         ; preds = %if.end256.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262.i

if.end256.thread.i.if.end268.i_crit_edge:         ; preds = %if.end256.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end268.i

if.then259.i:                                     ; preds = %if.end256.i
  %tobool260.not.i = icmp eq ptr %.pr.pr.i, null
  br i1 %tobool260.not.i, label %if.then259.i.if.end262.i_crit_edge, label %if.then261.i

if.then259.i.if.end262.i_crit_edge:               ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262.i

if.then261.i:                                     ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @unmap_mft_record(ptr noundef nonnull %.pr.pr.i) #11
  br label %if.end262.i

if.end262.i:                                      ; preds = %if.then261.i, %if.then259.i.if.end262.i_crit_edge, %if.end256.thread.i.if.end262.i_crit_edge, %if.end256.thread523.i.if.end262.i_crit_edge
  %err.1503507.i = phi i32 [ -5, %if.then261.i ], [ -5, %if.then259.i.if.end262.i_crit_edge ], [ %magicptr.i, %if.end256.thread.i.if.end262.i_crit_edge ], [ -5, %if.end256.thread523.i.if.end262.i_crit_edge ]
  %181 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %base_ni.0.i, ptr %ntfs_ino.i, align 4
  %base_mrec264.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 6
  %182 = ptrtoint ptr %base_mrec264.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base_mrec264.i, align 4
  %184 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %ctx, align 4
  %base_attr266.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 7
  %185 = ptrtoint ptr %base_attr266.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base_attr266.i, align 4
  %attr267.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %187 = ptrtoint ptr %attr267.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %186, ptr %attr267.i, align 4
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.end262.i, %if.end256.thread.i.if.end268.i_crit_edge
  %err.1504.i = phi i32 [ %magicptr.i, %if.end256.thread.i.if.end268.i_crit_edge ], [ %err.1503507.i, %if.end262.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.1504.i)
  %cmp269.not.i = icmp eq i32 %err.1504.i, -12
  br i1 %cmp269.not.i, label %if.end268.i.ntfs_external_attr_find.exit_crit_edge, label %if.end268.i.if.then271.i_crit_edge

if.end268.i.if.then271.i_crit_edge:               ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then271.i

if.end268.i.ntfs_external_attr_find.exit_crit_edge: ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_external_attr_find.exit

if.then271.i:                                     ; preds = %if.end268.i.if.then271.i_crit_edge, %if.end256.thread523.i.if.then271.i_crit_edge, %if.end256.i.if.then271.i_crit_edge
  %err.1504510.i = phi i32 [ %err.1504.i, %if.end268.i.if.then271.i_crit_edge ], [ -5, %if.end256.i.if.then271.i_crit_edge ], [ -5, %if.end256.thread523.i.if.then271.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %26, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #11
  br label %ntfs_external_attr_find.exit

if.then275.i:                                     ; preds = %if.end4.i
  %188 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base_ntfs_ino, align 4
  %tobool.not.i.i = icmp eq ptr %189, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !prof !169

if.then.i.i:                                      ; preds = %if.then275.i
  call void @__sanitizer_cov_trace_pc() #13
  %is_first.i.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 2
  %190 = ptrtoint ptr %is_first.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %is_first.i.i, align 4
  %191 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ctx, align 4
  %attrs_offset.i.i = getelementptr inbounds %struct.MFT_RECORD, ptr %192, i32 0, i32 6
  %193 = ptrtoint ptr %attrs_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %attrs_offset.i.i, align 1
  %195 = tail call i16 @llvm.bswap.i16(i16 %194) #11
  %conv.i.i = zext i16 %195 to i32
  %add.ptr.i.i = getelementptr i8, ptr %192, i32 %conv.i.i
  %attr.i.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %196 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %add.ptr.i.i, ptr %attr.i.i, align 4
  %al_entry.i.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 4
  %197 = ptrtoint ptr %al_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %al_entry.i.i, align 4
  br label %ntfs_attr_reinit_search_ctx.exit.i

if.end.i.i:                                       ; preds = %if.then275.i
  %198 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ntfs_ino.i, align 4
  %cmp.not.i.i = icmp eq ptr %199, %189
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %199) #11
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %200 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base_ntfs_ino, align 4
  %base_mrec.i.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 6
  %202 = ptrtoint ptr %base_mrec.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base_mrec.i.i, align 4
  %attrs_offset.i.i.i = getelementptr inbounds %struct.MFT_RECORD, ptr %203, i32 0, i32 6
  %204 = ptrtoint ptr %attrs_offset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %attrs_offset.i.i.i, align 1
  %206 = tail call i16 @llvm.bswap.i16(i16 %205) #11
  %conv.i.i.i = zext i16 %206 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %203, i32 %conv.i.i.i
  %207 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %203, ptr %ctx, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %ctx, i32 4
  %208 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %add.ptr.i.i.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %ctx, i32 8
  %209 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i, align 4
  %210 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %201, ptr %ntfs_ino.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %ctx, i32 16
  %211 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i.i, i32 0, i32 16)
  br label %ntfs_attr_reinit_search_ctx.exit.i

ntfs_attr_reinit_search_ctx.exit.i:               ; preds = %if.end9.i.i, %if.then.i.i
  %call276.i = tail call fastcc i32 @ntfs_attr_find(i32 noundef -1, ptr noundef %name, i32 noundef %name_len, i32 noundef %ic, ptr noundef %val, i32 noundef %val_len, ptr noundef %ctx) #11
  br label %ntfs_external_attr_find.exit

if.end277.i:                                      ; preds = %if.end81.i.if.end277.i_crit_edge, %if.then71.i.if.end277.i_crit_edge, %if.then66.i.if.end277.i_crit_edge, %if.end48.i.if.end277.i_crit_edge, %if.end28.i.if.end277.i_crit_edge
  %212 = ptrtoint ptr %ni.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ni.i, align 4
  %cmp278.not.i = icmp eq ptr %213, %base_ni.0.i
  br i1 %cmp278.not.i, label %if.end277.i.if.end281.i_crit_edge, label %if.then280.i

if.end277.i.if.end281.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end281.i

if.then280.i:                                     ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %213) #11
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then280.i, %if.end277.i.if.end281.i_crit_edge
  %base_mrec282.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 6
  %214 = ptrtoint ptr %base_mrec282.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base_mrec282.i, align 4
  %216 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %215, ptr %ctx, align 4
  %attrs_offset286.i = getelementptr inbounds %struct.MFT_RECORD, ptr %215, i32 0, i32 6
  %217 = ptrtoint ptr %attrs_offset286.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %218 = load i16, ptr %attrs_offset286.i, align 1
  %219 = tail call i16 @llvm.bswap.i16(i16 %218) #11
  %conv287.i = zext i16 %219 to i32
  %add.ptr288.i = getelementptr i8, ptr %215, i32 %conv287.i
  %attr289.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %220 = ptrtoint ptr %attr289.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %add.ptr288.i, ptr %attr289.i, align 4
  %221 = ptrtoint ptr %is_first.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %is_first.i, align 4
  %222 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %base_ni.0.i, ptr %ntfs_ino.i, align 4
  %223 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %base_ntfs_ino, align 4
  %224 = ptrtoint ptr %base_mrec282.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr null, ptr %base_mrec282.i, align 4
  %base_attr294.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 7
  %225 = ptrtoint ptr %base_attr294.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr null, ptr %base_attr294.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end281.i
  %call295.i = tail call fastcc i32 @ntfs_attr_find(i32 noundef %type, ptr noundef %name, i32 noundef %name_len, i32 noundef %ic, ptr noundef %val, i32 noundef %val_len, ptr noundef %ctx) #11
  %tobool296.not.i = icmp eq i32 %call295.i, 0
  br i1 %tobool296.not.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1130, ptr noundef nonnull @__func__.ntfs_external_attr_find, ptr noundef nonnull @.str.69) #11
  br label %ntfs_external_attr_find.exit

ntfs_external_attr_find.exit:                     ; preds = %do.end.i, %ntfs_attr_reinit_search_ctx.exit.i, %if.then271.i, %if.end268.i.ntfs_external_attr_find.exit_crit_edge, %if.then248.i
  %retval.0.i = phi i32 [ %call276.i, %ntfs_attr_reinit_search_ctx.exit.i ], [ %call295.i, %do.end.i ], [ 0, %if.then248.i ], [ %err.1504510.i, %if.then271.i ], [ -12, %if.end268.i.ntfs_external_attr_find.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ni.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ntfs_external_attr_find.exit, %if.then34
  %retval.0 = phi i32 [ %call35, %if.then34 ], [ %retval.0.i, %ntfs_external_attr_find.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_mapping_pairs_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_attr_put_search_ctx(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %base_ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_ntfs_ino, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntfs_ino, align 4
  %cmp.not = icmp eq ptr %3, %1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %4 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %ctx) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_map_runlist(ptr noundef %ni, i64 noundef %vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11, i32 1
  tail call void @down_write(ptr noundef %lock) #11
  %0 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runlist, align 8
  %call = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %1, i64 noundef %vcn) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call)
  %cmp = icmp slt i64 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !169

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef %ni, i64 noundef %vcn, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @up_write(ptr noundef %lock) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef %ni, i64 noundef %vcn, i1 noundef zeroext %write_locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ni, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !166

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 334, 0\0A.popsection", ""() #11, !srcloc !182
  unreachable

do.end9:                                          ; preds = %entry
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no, align 4
  %cond = select i1 %write_locked, ptr @.str.3, ptr @.str.4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 337, ptr noundef nonnull @__func__.ntfs_attr_vcn_to_lcn_nolock, ptr noundef nonnull @.str.2, i32 noundef %1, i64 noundef %vcn, ptr noundef nonnull %cond) #11
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %do.body22, label %do.body31, !prof !166

do.body22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #11, !srcloc !183
  unreachable

do.body31:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vcn)
  %cmp = icmp slt i64 %vcn, 0
  br i1 %cmp, label %do.body39, label %do.end47, !prof !166

do.body39:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #11, !srcloc !184
  unreachable

do.end47:                                         ; preds = %do.body31
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %5 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runlist, align 8
  %tobool48.not = icmp eq ptr %6, null
  br i1 %tobool48.not, label %do.body50, label %do.end47.if.end76_crit_edge

do.end47.if.end76_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.body50:                                        ; preds = %do.end47
  %call52 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull %ni) #11
  %allocated_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %7 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %allocated_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool55.not = icmp eq i64 %8, 0
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull %ni, i32 noundef %call52) #11
  br i1 %tobool55.not, label %do.body50.cleanup157_crit_edge, label %do.body50.if.end76_crit_edge

do.body50.if.end76_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.body50.cleanup157_crit_edge:                   ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup157

if.end76:                                         ; preds = %do.body50.if.end76_crit_edge, %do.end47.if.end76_crit_edge
  %9 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runlist, align 8
  %call79214 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %10, i64 noundef %vcn) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %call79214)
  %cmp80215 = icmp sgt i64 %call79214, -2
  br i1 %cmp80215, label %if.end76.if.then88_crit_edge, label %if.end89.lr.ph, !prof !169

if.end76.if.then88_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

if.end89.lr.ph:                                   ; preds = %if.end76
  %lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11, i32 1
  br label %if.end89

if.then88:                                        ; preds = %cleanup.if.then88_crit_edge, %if.end76.if.then88_crit_edge
  %call79.lcssa = phi i64 [ %call79214, %if.end76.if.then88_crit_edge ], [ %call79, %cleanup.if.then88_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @__func__.ntfs_attr_vcn_to_lcn_nolock, ptr noundef nonnull @.str.5, i64 noundef %call79.lcssa) #11
  br label %cleanup157

if.end89:                                         ; preds = %cleanup.if.end89_crit_edge, %if.end89.lr.ph
  %call79217 = phi i64 [ %call79214, %if.end89.lr.ph ], [ %call79, %cleanup.if.end89_crit_edge ]
  %is_retry.0.off0216 = phi i1 [ false, %if.end89.lr.ph ], [ %is_retry.1.off0, %cleanup.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_switch(i64 %call79217, ptr @__sancov_gen_cov_switch_values.77)
  switch i64 %call79217, label %if.end89.if.then155.loopexit_crit_edge [
    i64 -2, label %if.else
    i64 -3, label %if.end89.cleanup157_crit_edge
  ]

if.end89.cleanup157_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup157

if.end89.if.then155.loopexit_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then155.loopexit

if.else:                                          ; preds = %if.end89
  br i1 %is_retry.0.off0216, label %if.else.if.then155.loopexit_crit_edge, label %if.then98

if.else.if.then155.loopexit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then155.loopexit

if.then98:                                        ; preds = %if.else
  br i1 %write_locked, label %if.end121.thread, label %if.then100

if.end121.thread:                                 ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  %call122195 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef nonnull %ni, i64 noundef %vcn, ptr noundef null)
  br label %if.end129

if.then100:                                       ; preds = %if.then98
  tail call void @up_read(ptr noundef %lock) #11
  tail call void @down_write(ptr noundef %lock) #11
  %11 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runlist, align 8
  %call106 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %12, i64 noundef %vcn) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %call106)
  %cmp107.not = icmp eq i64 %call106, -2
  br i1 %cmp107.not, label %if.then124, label %if.then115, !prof !169

if.then115:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_write(ptr noundef %lock) #11
  tail call void @down_read(ptr noundef %lock) #11
  br label %cleanup

if.then124:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  %call122 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef nonnull %ni, i64 noundef %vcn, ptr noundef null)
  tail call void @up_write(ptr noundef %lock) #11
  tail call void @down_read(ptr noundef %lock) #11
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end121.thread
  %call122196 = phi i32 [ %call122195, %if.end121.thread ], [ %call122, %if.then124 ]
  %13 = zext i32 %call122196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call122196, label %if.end129.if.then155_crit_edge [
    i32 0, label %if.end129.cleanup_crit_edge
    i32 -2, label %if.end129.cleanup157_crit_edge
    i32 -12, label %if.end129.if.then155.loopexit_crit_edge
  ], !prof !185

if.end129.if.then155.loopexit_crit_edge:          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then155.loopexit

if.end129.cleanup157_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup157

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end129.if.then155_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then155

cleanup:                                          ; preds = %if.end129.cleanup_crit_edge, %if.then115
  %is_retry.1.off0 = phi i1 [ false, %if.then115 ], [ true, %if.end129.cleanup_crit_edge ]
  %14 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runlist, align 8
  %call79 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %15, i64 noundef %vcn) #11
  %cmp80 = icmp sgt i64 %call79, -2
  br i1 %cmp80, label %cleanup.if.then88_crit_edge, label %cleanup.if.end89_crit_edge, !prof !169

cleanup.if.end89_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

cleanup.if.then88_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

if.then155.loopexit:                              ; preds = %if.end129.if.then155.loopexit_crit_edge, %if.else.if.then155.loopexit_crit_edge, %if.end89.if.then155.loopexit_crit_edge
  %lcn.2203.ph = phi i64 [ -5, %if.end89.if.then155.loopexit_crit_edge ], [ -4, %if.end129.if.then155.loopexit_crit_edge ], [ -2, %if.else.if.then155.loopexit_crit_edge ]
  br label %if.then155

if.then155:                                       ; preds = %if.then155.loopexit, %if.end129.if.then155_crit_edge
  %lcn.2203 = phi i64 [ %lcn.2203.ph, %if.then155.loopexit ], [ -5, %if.end129.if.then155_crit_edge ]
  %vol = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %16 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vol, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_vcn_to_lcn_nolock, ptr noundef %19, ptr noundef nonnull @.str.6, i64 noundef %lcn.2203) #11
  br label %cleanup157

cleanup157:                                       ; preds = %if.then155, %if.end129.cleanup157_crit_edge, %if.end89.cleanup157_crit_edge, %if.then88, %do.body50.cleanup157_crit_edge
  %retval.0 = phi i64 [ %call79.lcssa, %if.then88 ], [ %lcn.2203, %if.then155 ], [ -3, %do.body50.cleanup157_crit_edge ], [ %call79217, %if.end89.cleanup157_crit_edge ], [ -3, %if.end129.cleanup157_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_attr_find_vcn_nolock(ptr noundef %ni, i64 noundef %vcn, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ni, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !166

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 458, 0\0A.popsection", ""() #11, !srcloc !186
  unreachable

do.end9:                                          ; preds = %entry
  %mft_no = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 4
  %0 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mft_no, align 4
  %tobool10.not = icmp eq ptr %ctx, null
  %cond = select i1 %tobool10.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @__func__.ntfs_attr_find_vcn_nolock, ptr noundef nonnull @.str.7, i32 noundef %1, i64 noundef %vcn, ptr noundef nonnull %cond) #11
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %do.body22, label %do.body31, !prof !166

do.body22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #11, !srcloc !187
  unreachable

do.body31:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vcn)
  %cmp = icmp slt i64 %vcn, 0
  br i1 %cmp, label %do.body39, label %do.end47, !prof !166

do.body39:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #11, !srcloc !188
  unreachable

do.end47:                                         ; preds = %do.body31
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %5 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runlist, align 8
  %tobool49.not = icmp eq ptr %6, null
  br i1 %tobool49.not, label %do.body51, label %do.end47.land.rhs_crit_edge

do.end47.land.rhs_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.body51:                                        ; preds = %do.end47
  %call53 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull %ni) #11
  %allocated_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %7 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %allocated_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool56.not = icmp eq i64 %8, 0
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull %ni, i32 noundef %call53) #11
  br i1 %tobool56.not, label %do.body51.cleanup_crit_edge, label %if.end78

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end78:                                         ; preds = %do.body51
  %9 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %runlist, align 8
  %tobool81.not = icmp eq ptr %.pr, null
  br i1 %tobool81.not, label %if.end78.if.end143_crit_edge, label %if.end78.land.rhs_crit_edge, !prof !166

if.end78.land.rhs_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end78.if.end143_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

land.rhs:                                         ; preds = %if.end78.land.rhs_crit_edge, %do.end47.land.rhs_crit_edge
  %10 = phi ptr [ %.pr, %if.end78.land.rhs_crit_edge ], [ %6, %do.end47.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %vcn)
  %cmp83.not = icmp sgt i64 %12, %vcn
  br i1 %cmp83.not, label %land.rhs.if.end143_crit_edge, label %land.rhs.while.cond_crit_edge, !prof !166

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  br label %while.cond

land.rhs.if.end143_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %land.rhs.while.cond_crit_edge
  %rl.0 = phi ptr [ %arrayidx99, %while.body.while.cond_crit_edge ], [ %10, %land.rhs.while.cond_crit_edge ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 2
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool92.not = icmp eq i64 %14, 0
  br i1 %tobool92.not, label %while.cond.while.end_crit_edge, label %while.body, !prof !166

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx99 = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  %15 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx99, align 8
  %cmp101 = icmp sgt i64 %16, %vcn
  br i1 %cmp101, label %if.then109, label %while.body.while.cond_crit_edge, !prof !166

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then109:                                       ; preds = %while.body
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 1
  %17 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %18)
  %cmp110 = icmp sgt i64 %18, -2
  br i1 %cmp110, label %if.then109.if.then118_crit_edge, label %if.then109.while.end_crit_edge, !prof !169

if.then109.while.end_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then109.if.then118_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

if.then118:                                       ; preds = %if.then109.1.if.then118_crit_edge, %if.then109.if.then118_crit_edge
  %rl.0.lcssa234.lcssa = phi ptr [ %rl.0, %if.then109.if.then118_crit_edge ], [ %rl.0.1, %if.then109.1.if.then118_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @__func__.ntfs_attr_find_vcn_nolock, ptr noundef nonnull @.str.10) #11
  br label %cleanup

while.end:                                        ; preds = %if.then109.while.end_crit_edge, %while.cond.while.end_crit_edge
  %lcn121 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 1
  %19 = ptrtoint ptr %lcn121 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lcn121, align 8
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.79)
  switch i64 %20, label %while.end.if.then176_crit_edge [
    i64 -2, label %while.end.if.end143_crit_edge
    i64 -3, label %while.end.if.end177_crit_edge
  ], !prof !189

while.end.if.end177_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

while.end.if.end143_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

while.end.if.then176_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

if.end143:                                        ; preds = %while.end.if.end143_crit_edge, %land.rhs.if.end143_crit_edge, %if.end78.if.end143_crit_edge
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %cmp.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then148, label %if.else151

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %22 to i32
  br label %if.end164

if.else151:                                       ; preds = %if.end143
  %call152 = tail call i32 @ntfs_map_runlist_nolock(ptr noundef nonnull %ni, i64 noundef %vcn, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %retry_remap.1, label %if.else151.if.end164_crit_edge, !prof !169

if.else151.if.end164_crit_edge:                   ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

retry_remap.1:                                    ; preds = %if.else151
  %24 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runlist, align 8
  %tobool81.not.1 = icmp eq ptr %25, null
  br i1 %tobool81.not.1, label %retry_remap.1.if.then176_crit_edge, label %land.rhs.1, !prof !166

retry_remap.1.if.then176_crit_edge:               ; preds = %retry_remap.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

land.rhs.1:                                       ; preds = %retry_remap.1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %vcn)
  %cmp83.not.1 = icmp sgt i64 %27, %vcn
  br i1 %cmp83.not.1, label %land.rhs.1.if.then176_crit_edge, label %land.rhs.1.while.cond.1_crit_edge, !prof !166

land.rhs.1.while.cond.1_crit_edge:                ; preds = %land.rhs.1
  br label %while.cond.1

land.rhs.1.if.then176_crit_edge:                  ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

while.cond.1:                                     ; preds = %while.body.1.while.cond.1_crit_edge, %land.rhs.1.while.cond.1_crit_edge
  %rl.0.1 = phi ptr [ %arrayidx99.1, %while.body.1.while.cond.1_crit_edge ], [ %25, %land.rhs.1.while.cond.1_crit_edge ]
  %length.1 = getelementptr inbounds %struct.runlist_element, ptr %rl.0.1, i32 0, i32 2
  %28 = ptrtoint ptr %length.1 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %length.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool92.not.1 = icmp eq i64 %29, 0
  br i1 %tobool92.not.1, label %while.cond.1.while.end.1_crit_edge, label %while.body.1, !prof !166

while.cond.1.while.end.1_crit_edge:               ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.1

while.body.1:                                     ; preds = %while.cond.1
  %arrayidx99.1 = getelementptr %struct.runlist_element, ptr %rl.0.1, i32 1
  %30 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx99.1, align 8
  %cmp101.1 = icmp sgt i64 %31, %vcn
  br i1 %cmp101.1, label %if.then109.1, label %while.body.1.while.cond.1_crit_edge, !prof !166

while.body.1.while.cond.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.1

if.then109.1:                                     ; preds = %while.body.1
  %lcn.1 = getelementptr inbounds %struct.runlist_element, ptr %rl.0.1, i32 0, i32 1
  %32 = ptrtoint ptr %lcn.1 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lcn.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %33)
  %cmp110.1 = icmp sgt i64 %33, -2
  br i1 %cmp110.1, label %if.then109.1.if.then118_crit_edge, label %if.then109.1.while.end.1_crit_edge, !prof !169

if.then109.1.while.end.1_crit_edge:               ; preds = %if.then109.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.1

if.then109.1.if.then118_crit_edge:                ; preds = %if.then109.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

while.end.1:                                      ; preds = %if.then109.1.while.end.1_crit_edge, %while.cond.1.while.end.1_crit_edge
  %lcn121.1 = getelementptr inbounds %struct.runlist_element, ptr %rl.0.1, i32 0, i32 1
  %34 = ptrtoint ptr %lcn121.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %lcn121.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %35)
  %cond244 = icmp eq i64 %35, -3
  br i1 %cond244, label %while.end.1.if.end177_crit_edge, label %while.end.1.if.then176_crit_edge, !prof !190

while.end.1.if.then176_crit_edge:                 ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

while.end.1.if.end177_crit_edge:                  ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.end164:                                        ; preds = %if.else151.if.end164_crit_edge, %if.then148
  %err.2 = phi i32 [ %23, %if.then148 ], [ %call152, %if.else151.if.end164_crit_edge ]
  %36 = zext i32 %err.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %err.2, label %if.then176.fold.split [
    i32 -22, label %if.end164.if.then176_crit_edge
    i32 -2, label %if.end164.if.end177_crit_edge
  ]

if.end164.if.end177_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.end164.if.then176_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

if.then176.fold.split:                            ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then176

if.then176:                                       ; preds = %if.then176.fold.split, %if.end164.if.then176_crit_edge, %while.end.1.if.then176_crit_edge, %land.rhs.1.if.then176_crit_edge, %retry_remap.1.if.then176_crit_edge, %while.end.if.then176_crit_edge
  %err.3223 = phi i32 [ -5, %if.end164.if.then176_crit_edge ], [ -5, %while.end.if.then176_crit_edge ], [ -5, %retry_remap.1.if.then176_crit_edge ], [ -5, %land.rhs.1.if.then176_crit_edge ], [ -5, %while.end.1.if.then176_crit_edge ], [ %err.2, %if.then176.fold.split ]
  %vol = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %37 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vol, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_find_vcn_nolock, ptr noundef %40, ptr noundef nonnull @.str.11, i32 noundef %err.3223) #11
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end164.if.end177_crit_edge, %while.end.1.if.end177_crit_edge, %while.end.if.end177_crit_edge
  %err.3224 = phi i32 [ %err.3223, %if.then176 ], [ -2, %while.end.1.if.end177_crit_edge ], [ -2, %while.end.if.end177_crit_edge ], [ %err.2, %if.end164.if.end177_crit_edge ]
  %41 = inttoptr i32 %err.3224 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %if.then118, %do.body51.cleanup_crit_edge
  %retval.0 = phi ptr [ %rl.0.lcssa234.lcssa, %if.then118 ], [ %41, %if.end177 ], [ inttoptr (i32 -2 to ptr), %do.body51.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @load_attribute_list(ptr noundef readonly %vol, ptr noundef %runlist, ptr noundef %al_start, i64 noundef %size, i64 noundef %initialized_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.ext = trunc i64 %initialized_size to i32
  %add.ptr = getelementptr i8, ptr %al_start, i32 %idx.ext
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 710, ptr noundef nonnull @__func__.load_attribute_list, ptr noundef nonnull @.str.12) #11
  %tobool.not = icmp eq ptr %vol, null
  %tobool1.not = icmp eq ptr %runlist, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %al_start, null
  %or.cond132 = or i1 %or.cond, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %size)
  %cmp = icmp slt i64 %size, 1
  %or.cond133 = or i1 %or.cond132, %cmp
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %initialized_size)
  %cmp6 = icmp slt i64 %initialized_size, 0
  %or.cond134 = or i1 %or.cond133, %cmp6
  call void @__sanitizer_cov_trace_cmp8(i64 %size, i64 %initialized_size)
  %cmp8 = icmp slt i64 %size, %initialized_size
  %or.cond135 = or i1 %cmp8, %or.cond134
  br i1 %or.cond135, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %initialized_size)
  %tobool9.not = icmp eq i64 %initialized_size, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %size to i32
  %0 = call ptr @memset(ptr %al_start, i32 0, i32 %conv)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %1 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vol, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s_blocksize_bits, align 4
  %lock = getelementptr inbounds %struct.runlist, ptr %runlist, i32 0, i32 1
  tail call void @down_read(ptr noundef %lock) #11
  %7 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runlist, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %if.then15, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end11
  %length147 = getelementptr inbounds %struct.runlist_element, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %length147 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %length147, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool17.not148 = icmp eq i64 %10, 0
  br i1 %tobool17.not148, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 13
  %sh_prom25 = zext i8 %6 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 26
  br label %while.body

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %2, ptr noundef nonnull @.str.13) #11
  br label %done

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %length151 = phi ptr [ %length147, %while.body.lr.ph ], [ %length, %do.end.while.body_crit_edge ]
  %rl.0150 = phi ptr [ %8, %while.body.lr.ph ], [ %incdec.ptr, %do.end.while.body_crit_edge ]
  %al.0149 = phi ptr [ %al_start, %while.body.lr.ph ], [ %add.ptr42, %do.end.while.body_crit_edge ]
  %11 = ptrtoint ptr %rl.0150 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rl.0150, align 8
  %call = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.0150, i64 noundef %12) #11
  %13 = ptrtoint ptr %rl.0150 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rl.0150, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 733, ptr noundef nonnull @__func__.load_attribute_list, ptr noundef nonnull @.str.14, i64 noundef %14, i64 noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp19 = icmp slt i64 %call, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %2, ptr noundef nonnull @.str.15) #11
  br label %done

if.end22:                                         ; preds = %while.body
  %15 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %16 to i64
  %shl = shl i64 %call, %sh_prom
  %shr = ashr i64 %shl, %sh_prom25
  %conv26 = trunc i64 %shr to i32
  %17 = ptrtoint ptr %length151 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length151, align 8
  %shl32 = shl i64 %18, %sh_prom
  %shr35 = ashr i64 %shl32, %sh_prom25
  %add = add i64 %shr, %shr35
  %conv36 = trunc i64 %add to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 744, ptr noundef nonnull @__func__.load_attribute_list, ptr noundef nonnull @.str.16, i32 noundef %conv36) #11
  br label %do.body

do.body:                                          ; preds = %brelse.exit.do.body_crit_edge, %if.end22
  %al.1 = phi ptr [ %al.0149, %if.end22 ], [ %add.ptr42, %brelse.exit.do.body_crit_edge ]
  %block.0 = phi i32 [ %conv26, %if.end22 ], [ %inc, %brelse.exit.do.body_crit_edge ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 746, ptr noundef nonnull @__func__.load_attribute_list, ptr noundef nonnull @.str.17, i32 noundef %block.0) #11
  %conv37 = zext i32 %block.0 to i64
  %19 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i, align 4
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %20, i64 noundef %conv37, i32 noundef %22, i32 noundef 8) #11
  %tobool39.not = icmp eq ptr %call.i, null
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %2, ptr noundef nonnull @.str.18) #11
  br label %done

if.end41:                                         ; preds = %do.body
  %add.ptr42 = getelementptr i8, ptr %al.1, i32 %4
  %cmp43.not = icmp ult ptr %add.ptr42, %add.ptr
  br i1 %cmp43.not, label %brelse.exit, label %do_final

brelse.exit:                                      ; preds = %if.end41
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %25 = call ptr @memcpy(ptr %al.1, ptr %24, i32 %4)
  tail call void @__brelse(ptr noundef nonnull %call.i) #11
  %inc = add i32 %block.0, 1
  %cmp48 = icmp ult i32 %inc, %conv36
  br i1 %cmp48, label %brelse.exit.do.body_crit_edge, label %do.end

brelse.exit.do.body_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %brelse.exit
  %incdec.ptr = getelementptr %struct.runlist_element, ptr %rl.0150, i32 1
  %length = getelementptr %struct.runlist_element, ptr %rl.0150, i32 1, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %length, align 8
  %tobool17.not = icmp eq i64 %27, 0
  br i1 %tobool17.not, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %size, i64 %initialized_size)
  %cmp50 = icmp sgt i64 %size, %initialized_size
  br i1 %cmp50, label %while.end.initialize_crit_edge, label %while.end.done_crit_edge

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

while.end.initialize_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %initialize

initialize:                                       ; preds = %brelse.exit138.initialize_crit_edge, %while.end.initialize_crit_edge
  %sub = sub i64 %size, %initialized_size
  %conv55 = trunc i64 %sub to i32
  %28 = call ptr @memset(ptr %add.ptr, i32 0, i32 %conv55)
  br label %done

done:                                             ; preds = %brelse.exit141, %brelse.exit138.done_crit_edge, %initialize, %while.end.done_crit_edge, %if.then40, %if.then21, %if.then15
  %err.0 = phi i32 [ 0, %initialize ], [ 0, %brelse.exit138.done_crit_edge ], [ 0, %while.end.done_crit_edge ], [ -5, %brelse.exit141 ], [ -5, %if.then40 ], [ -5, %if.then21 ], [ -5, %if.then15 ]
  tail call void @up_read(ptr noundef %lock) #11
  br label %cleanup

do_final:                                         ; preds = %if.end41
  %cmp58 = icmp ult ptr %al.1, %add.ptr
  br i1 %cmp58, label %brelse.exit138, label %brelse.exit141

brelse.exit138:                                   ; preds = %do_final
  %b_data61 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %b_data61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data61, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %al.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = call ptr @memcpy(ptr %al.1, ptr %30, i32 %sub.ptr.sub)
  tail call void @__brelse(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %size, i64 %initialized_size)
  %cmp62 = icmp sgt i64 %size, %initialized_size
  br i1 %cmp62, label %brelse.exit138.initialize_crit_edge, label %brelse.exit138.done_crit_edge

brelse.exit138.done_crit_edge:                    ; preds = %brelse.exit138
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

brelse.exit138.initialize_crit_edge:              ; preds = %brelse.exit138
  call void @__sanitizer_cov_trace_pc() #13
  br label %initialize

brelse.exit141:                                   ; preds = %do_final
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %call.i) #11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_attribute_list, ptr noundef %2, ptr noundef nonnull @.str.19) #11
  br label %done

cleanup:                                          ; preds = %done, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ 0, %if.then10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_attr_find(i32 noundef %type, ptr noundef %name, i32 noundef %name_len, i32 noundef %ic, ptr noundef readonly %val, i32 noundef %val_len, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ntfs_ino, align 4
  %vol1 = getelementptr inbounds %struct._ntfs_inode, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol1, align 8
  %upcase2 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %upcase2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upcase2, align 4
  %upcase_len3 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %upcase_len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %upcase_len3, align 8
  %is_first = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %is_first to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_first, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %attr5 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %attr5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attr5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %is_first to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_first, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %length, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr = getelementptr i8, ptr %11, i32 %15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %a.0 = phi ptr [ %11, %if.then ], [ %add.ptr, %if.else ]
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %cmp187 = icmp ult ptr %a.0, %17
  br i1 %cmp187, label %if.end.for.end_crit_edge, label %lor.lhs.false.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false.lr.ph:                              ; preds = %if.end
  %attr13 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx, i32 0, i32 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %type)
  %tobool38.not = icmp eq ptr %name, null
  %tobool76.not = icmp eq ptr %val, null
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.inc.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %19 = phi ptr [ %17, %lor.lhs.false.lr.ph ], [ %59, %for.inc.lor.lhs.false_crit_edge ]
  %a.1188 = phi ptr [ %a.0, %lor.lhs.false.lr.ph ], [ %add.ptr112, %for.inc.lor.lhs.false_crit_edge ]
  %bytes_allocated = getelementptr inbounds %struct.MFT_RECORD, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %bytes_allocated to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %bytes_allocated, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %add.ptr9 = getelementptr i8, ptr %19, i32 %22
  %cmp10 = icmp ugt ptr %a.1188, %add.ptr9
  br i1 %cmp10, label %lor.lhs.false.for.end_crit_edge, label %if.end12

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end12:                                         ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %attr13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %a.1188, ptr %attr13, align 4
  %24 = ptrtoint ptr %a.1188 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %a.1188, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %18)
  %cmp15 = icmp ugt i32 %26, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp17 = icmp eq i32 %25, -1
  %spec.select = select i1 %cmp15, i1 true, i1 %cmp17, !prof !166
  br i1 %spec.select, label %if.end12.cleanup113_crit_edge, label %if.end21, !prof !166

if.end12.cleanup113_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

if.end21:                                         ; preds = %if.end12
  %length22 = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1188, i32 0, i32 1
  %27 = ptrtoint ptr %length22 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %length22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %if.end21.for.end_crit_edge, label %if.end33, !prof !166

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %type)
  %cmp35.not = icmp eq i32 %25, %type
  br i1 %cmp35.not, label %if.end37, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end37:                                         ; preds = %if.end33
  br i1 %tobool38.not, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.end37
  %name_length = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1188, i32 0, i32 3
  %29 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp ne i8 %30, 0
  %brmerge = or i1 %tobool40.not, %tobool76.not
  br i1 %brmerge, label %cleanup113.loopexit.split.loop.exit, label %if.then39.if.else78_crit_edge

if.then39.if.else78_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

if.else43:                                        ; preds = %if.end37
  %name_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1188, i32 0, i32 4
  %31 = ptrtoint ptr %name_offset to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %name_offset, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv = zext i16 %33 to i32
  %add.ptr44 = getelementptr i8, ptr %a.1188, i32 %conv
  %name_length45 = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1188, i32 0, i32 3
  %34 = ptrtoint ptr %name_length45 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %name_length45, align 1
  %conv46 = zext i8 %35 to i32
  %call = tail call zeroext i1 @ntfs_are_names_equal(ptr noundef nonnull %name, i32 noundef %name_len, ptr noundef %add.ptr44, i32 noundef %conv46, i32 noundef %ic, ptr noundef %5, i32 noundef %7) #11
  br i1 %call, label %if.else43.if.end75_crit_edge, label %if.then47

if.else43.if.end75_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then47:                                        ; preds = %if.else43
  %36 = ptrtoint ptr %name_offset to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %name_offset, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv49 = zext i16 %38 to i32
  %add.ptr50 = getelementptr i8, ptr %a.1188, i32 %conv49
  %39 = ptrtoint ptr %name_length45 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %name_length45, align 1
  %conv52 = zext i8 %40 to i32
  %call53 = tail call i32 @ntfs_collate_names(ptr noundef nonnull %name, i32 noundef %name_len, ptr noundef %add.ptr50, i32 noundef %conv52, i32 noundef 1, i32 noundef 1, ptr noundef %5, i32 noundef %7) #11
  %41 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call53, label %if.then47.for.inc_crit_edge [
    i32 -1, label %if.then47.cleanup113_crit_edge
    i32 0, label %if.end60
  ]

if.then47.cleanup113_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end60:                                         ; preds = %if.then47
  %42 = ptrtoint ptr %name_offset to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %name_offset, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv62 = zext i16 %44 to i32
  %add.ptr63 = getelementptr i8, ptr %a.1188, i32 %conv62
  %45 = ptrtoint ptr %name_length45 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %name_length45, align 1
  %conv65 = zext i8 %46 to i32
  %call66 = tail call i32 @ntfs_collate_names(ptr noundef nonnull %name, i32 noundef %name_len, ptr noundef %add.ptr63, i32 noundef %conv65, i32 noundef 1, i32 noundef 0, ptr noundef %5, i32 noundef %7) #11
  %47 = zext i32 %call66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call66, label %if.end60.for.inc_crit_edge [
    i32 -1, label %if.end60.cleanup113_crit_edge
    i32 0, label %if.end60.if.end75_crit_edge
  ]

if.end60.if.end75_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.end60.cleanup113_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end75:                                         ; preds = %if.end60.if.end75_crit_edge, %if.else43.if.end75_crit_edge
  br i1 %tobool76.not, label %if.end75.cleanup113_crit_edge, label %if.end75.if.else78_crit_edge

if.end75.if.else78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else78

if.end75.cleanup113_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

if.else78:                                        ; preds = %if.end75.if.else78_crit_edge, %if.then39.if.else78_crit_edge
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1188, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %48 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %value_offset, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv80 = zext i16 %50 to i32
  %add.ptr81 = getelementptr i8, ptr %a.1188, i32 %conv80
  %51 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %data, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %val_len)
  %call85 = tail call i32 @memcmp(ptr noundef nonnull %val, ptr noundef %add.ptr81, i32 noundef %54) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.else101

if.then87:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %val_len)
  %.not = icmp ult i32 %53, %val_len
  br i1 %.not, label %if.then87.for.inc_crit_edge, label %cleanup113.loopexit.split.loop.exit214

if.then87.for.inc_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else101:                                       ; preds = %if.else78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp102 = icmp slt i32 %call85, 0
  br i1 %cmp102, label %if.else101.cleanup113_crit_edge, label %if.else101.for.inc_crit_edge

if.else101.for.inc_crit_edge:                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else101.cleanup113_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

for.inc:                                          ; preds = %if.else101.for.inc_crit_edge, %if.then87.for.inc_crit_edge, %if.end60.for.inc_crit_edge, %if.then47.for.inc_crit_edge, %if.end33.for.inc_crit_edge
  %55 = ptrtoint ptr %length22 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %length22, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %add.ptr112 = getelementptr i8, ptr %a.1188, i32 %57
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  %cmp = icmp ult ptr %add.ptr112, %59
  br i1 %cmp, label %for.inc.for.end_crit_edge, label %for.inc.lor.lhs.false_crit_edge

for.inc.lor.lhs.false_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end.for.end_crit_edge
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_find, ptr noundef %61, ptr noundef nonnull @.str.62) #11
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #11
  br label %cleanup113

cleanup113.loopexit.split.loop.exit:              ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %.mux.le = select i1 %tobool40.not, i32 -2, i32 0
  br label %cleanup113

cleanup113.loopexit.split.loop.exit214:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %val_len)
  %cmp90.le = icmp eq i32 %53, %val_len
  %.mux.le216 = select i1 %cmp90.le, i32 0, i32 -2
  br label %cleanup113

cleanup113:                                       ; preds = %cleanup113.loopexit.split.loop.exit214, %cleanup113.loopexit.split.loop.exit, %for.end, %if.else101.cleanup113_crit_edge, %if.end75.cleanup113_crit_edge, %if.end60.cleanup113_crit_edge, %if.then47.cleanup113_crit_edge, %if.end12.cleanup113_crit_edge
  %retval.7 = phi i32 [ -5, %for.end ], [ %.mux.le, %cleanup113.loopexit.split.loop.exit ], [ %.mux.le216, %cleanup113.loopexit.split.loop.exit214 ], [ -2, %if.else101.cleanup113_crit_edge ], [ -2, %if.end60.cleanup113_crit_edge ], [ -2, %if.then47.cleanup113_crit_edge ], [ 0, %if.end75.cleanup113_crit_edge ], [ -2, %if.end12.cleanup113_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_size_bounds_check(ptr nocapture noundef readonly %vol, i32 noundef %type, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp = icmp slt i64 %size, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !166

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1333, 0\0A.popsection", ""() #11, !srcloc !191
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %type)
  %cmp8 = icmp eq i32 %type, 536870912
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %size)
  %cmp9 = icmp ugt i64 %size, 262144
  %spec.select = and i1 %cmp8, %cmp9
  br i1 %spec.select, label %do.end7.cleanup_crit_edge, label %if.end17, !prof !166

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %do.end7
  %attrdef.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 27
  %0 = ptrtoint ptr %attrdef.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrdef.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !166

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #11, !srcloc !192
  unreachable

do.body10.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool11.not.i = icmp eq i32 %type, 0
  br i1 %tobool11.not.i, label %do.body21.i, label %for.cond.preheader.i, !prof !166

for.cond.preheader.i:                             ; preds = %do.body10.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %attrdef_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 26
  %2 = ptrtoint ptr %attrdef_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attrdef_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp67.i = icmp sgt i32 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %type) #11
  br i1 %cmp67.i, label %for.cond.preheader.i.land.rhs.i_crit_edge, label %for.cond.preheader.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge

for.cond.preheader.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.cond.preheader.i.land.rhs.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %land.rhs.i

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1298, 0\0A.popsection", ""() #11, !srcloc !193
  unreachable

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.cond.preheader.i.land.rhs.i_crit_edge
  %ad.068.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %1, %for.cond.preheader.i.land.rhs.i_crit_edge ]
  %type32.i = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i, i32 0, i32 1
  %5 = ptrtoint ptr %type32.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %type32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool33.not.i = icmp eq i32 %6, 0
  br i1 %tobool33.not.i, label %land.rhs.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, label %for.body.i

land.rhs.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.body.i:                                       ; preds = %land.rhs.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp35.i = icmp ult i32 %7, %4
  br i1 %cmp35.i, label %for.inc.i, label %if.end43.i, !prof !169

if.end43.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %type)
  %cmp45.i = icmp eq i32 %6, %type
  br i1 %cmp45.i, label %ntfs_attr_find_in_attrdef.exit, label %if.end43.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, !prof !169

if.end43.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.ATTR_DEF, ptr %ad.068.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp slt i32 %sub.ptr.sub.i, %3
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge

for.inc.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

ntfs_attr_find_in_attrdef.exit.thread:            ; preds = %for.inc.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, %if.end43.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, %land.rhs.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, %for.cond.preheader.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @__func__.ntfs_attr_find_in_attrdef, ptr noundef nonnull @.str.70, i32 noundef %4) #11
  br label %cleanup

ntfs_attr_find_in_attrdef.exit:                   ; preds = %if.end43.i
  %tobool18.not = icmp eq ptr %ad.068.i, null
  br i1 %tobool18.not, label %ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge, label %if.end28, !prof !166

ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge: ; preds = %ntfs_attr_find_in_attrdef.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %ntfs_attr_find_in_attrdef.exit
  %min_size = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i, i32 0, i32 5
  %8 = ptrtoint ptr %min_size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %min_size, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp30 = icmp sgt i64 %10, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %size)
  %cmp33 = icmp sgt i64 %10, %size
  %or.cond = and i1 %cmp30, %cmp33
  br i1 %or.cond, label %if.end28.cleanup_crit_edge, label %lor.lhs.false

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %max_size = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i, i32 0, i32 6
  %11 = ptrtoint ptr %max_size to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %max_size, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp35 = icmp sgt i64 %13, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %size)
  %cmp39 = icmp slt i64 %13, %size
  %or.cond52 = and i1 %cmp35, %cmp39
  %spec.select53 = select i1 %or.cond52, i32 -34, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end28.cleanup_crit_edge, %ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge, %ntfs_attr_find_in_attrdef.exit.thread, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %do.end7.cleanup_crit_edge ], [ -2, %ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge ], [ -2, %ntfs_attr_find_in_attrdef.exit.thread ], [ -34, %if.end28.cleanup_crit_edge ], [ %spec.select53, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_can_be_non_resident(ptr nocapture noundef readonly %vol, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attrdef.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 27
  %0 = ptrtoint ptr %attrdef.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrdef.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !166

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #11, !srcloc !192
  unreachable

do.body10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool11.not.i = icmp eq i32 %type, 0
  br i1 %tobool11.not.i, label %do.body21.i, label %for.cond.preheader.i, !prof !166

for.cond.preheader.i:                             ; preds = %do.body10.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %attrdef_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 26
  %2 = ptrtoint ptr %attrdef_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attrdef_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp67.i = icmp sgt i32 %3, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %type) #11
  br i1 %cmp67.i, label %for.cond.preheader.i.land.rhs.i_crit_edge, label %for.cond.preheader.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge

for.cond.preheader.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.cond.preheader.i.land.rhs.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %land.rhs.i

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1298, 0\0A.popsection", ""() #11, !srcloc !193
  unreachable

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.cond.preheader.i.land.rhs.i_crit_edge
  %ad.068.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %1, %for.cond.preheader.i.land.rhs.i_crit_edge ]
  %type32.i = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i, i32 0, i32 1
  %5 = ptrtoint ptr %type32.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %type32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool33.not.i = icmp eq i32 %6, 0
  br i1 %tobool33.not.i, label %land.rhs.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, label %for.body.i

land.rhs.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.body.i:                                       ; preds = %land.rhs.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp35.i = icmp ult i32 %7, %4
  br i1 %cmp35.i, label %for.inc.i, label %if.end43.i, !prof !169

if.end43.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %type)
  %cmp45.i = icmp eq i32 %6, %type
  br i1 %cmp45.i, label %ntfs_attr_find_in_attrdef.exit, label %if.end43.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, !prof !169

if.end43.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.ATTR_DEF, ptr %ad.068.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp slt i32 %sub.ptr.sub.i, %3
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge

for.inc.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

ntfs_attr_find_in_attrdef.exit.thread:            ; preds = %for.inc.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, %if.end43.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, %land.rhs.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge, %for.cond.preheader.i.ntfs_attr_find_in_attrdef.exit.thread_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @__func__.ntfs_attr_find_in_attrdef, ptr noundef nonnull @.str.70, i32 noundef %4) #11
  br label %cleanup

ntfs_attr_find_in_attrdef.exit:                   ; preds = %if.end43.i
  %tobool.not = icmp eq ptr %ad.068.i, null
  br i1 %tobool.not, label %ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge, label %if.end, !prof !166

ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge: ; preds = %ntfs_attr_find_in_attrdef.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ntfs_attr_find_in_attrdef.exit
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags, align 1
  %and = shl i32 %9, 1
  %sext = ashr i32 %and, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge, %ntfs_attr_find_in_attrdef.exit.thread
  %retval.0 = phi i32 [ -2, %ntfs_attr_find_in_attrdef.exit.cleanup_crit_edge ], [ %sext, %if.end ], [ -2, %ntfs_attr_find_in_attrdef.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ntfs_attr_can_be_resident(ptr nocapture noundef readnone %vol, i32 noundef %type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %type)
  %cmp = icmp eq i32 %type, -1610612736
  %. = sext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_record_resize(ptr noundef %m, ptr noundef %a, i32 noundef %new_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1423, ptr noundef nonnull @__func__.ntfs_attr_record_resize, ptr noundef nonnull @.str.20, i32 noundef %new_size) #11
  %new_size.biased = add i32 %new_size, 7
  %new_size.addr.0 = and i32 %new_size.biased, -8
  %length = getelementptr inbounds %struct.ATTR_RECORD, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %length, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.addr.0, i32 %2)
  %cmp.not = icmp eq i32 %new_size.addr.0, %2
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then2:                                         ; preds = %entry
  %bytes_in_use = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 8
  %3 = ptrtoint ptr %bytes_in_use to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %bytes_in_use, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %sub = sub i32 %5, %2
  %add4 = add i32 %sub, %new_size.addr.0
  %bytes_allocated = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 9
  %6 = ptrtoint ptr %bytes_allocated to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %bytes_allocated, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %8)
  %cmp5 = icmp ugt i32 %add4, %8
  br i1 %cmp5, label %if.then2.return_crit_edge, label %if.end7

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %if.then2
  %add.ptr = getelementptr i8, ptr %a, i32 %new_size.addr.0
  %add.ptr9 = getelementptr i8, ptr %a, i32 %2
  %sub.ptr.lhs.cast = ptrtoint ptr %a to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %m to i32
  %9 = add i32 %2, %sub.ptr.lhs.cast
  %10 = sub i32 %sub.ptr.rhs.cast, %9
  %sub13 = add i32 %10, %5
  %11 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr9, i32 %sub13)
  %12 = tail call i32 @llvm.bswap.i32(i32 %add4)
  %13 = ptrtoint ptr %bytes_in_use to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %bytes_in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_size.addr.0)
  %cmp15.not = icmp eq i32 %new_size.addr.0, 0
  br i1 %cmp15.not, label %if.end7.return_crit_edge, label %if.then16

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %new_size.addr.0)
  %15 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %length, align 1
  br label %return

return:                                           ; preds = %if.then16, %if.end7.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -28, %if.then2.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ 0, %if.then16 ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_resident_attr_value_resize(ptr noundef %m, ptr noundef %a, i32 noundef %new_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %a, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %value_offset, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %add = add i32 %conv, %new_size
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1423, ptr noundef nonnull @__func__.ntfs_attr_record_resize, ptr noundef nonnull @.str.20, i32 noundef %add) #11
  %new_size.biased.i = add i32 %add, 7
  %new_size.addr.0.i = and i32 %new_size.biased.i, -8
  %length.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %length.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.addr.0.i, i32 %5)
  %cmp.not.i = icmp eq i32 %new_size.addr.0.i, %5
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then2.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2.i:                                       ; preds = %entry
  %bytes_in_use.i = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 8
  %6 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %bytes_in_use.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %sub.i = sub i32 %8, %5
  %add4.i = add i32 %sub.i, %new_size.addr.0.i
  %bytes_allocated.i = getelementptr inbounds %struct.MFT_RECORD, ptr %m, i32 0, i32 9
  %9 = ptrtoint ptr %bytes_allocated.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %bytes_allocated.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %11)
  %cmp5.i = icmp ugt i32 %add4.i, %11
  br i1 %cmp5.i, label %if.then2.i.cleanup_crit_edge, label %if.end7.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.then2.i
  %add.ptr.i = getelementptr i8, ptr %a, i32 %new_size.addr.0.i
  %add.ptr9.i = getelementptr i8, ptr %a, i32 %5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %a to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %m to i32
  %12 = add i32 %5, %sub.ptr.lhs.cast.i
  %13 = sub i32 %sub.ptr.rhs.cast.i, %12
  %sub13.i = add i32 %13, %8
  %14 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr9.i, i32 %sub13.i)
  %15 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #11
  %16 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %bytes_in_use.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_size.addr.0.i)
  %cmp15.not.i = icmp eq i32 %new_size.addr.0.i, 0
  br i1 %cmp15.not.i, label %if.end7.i.if.end_crit_edge, label %if.then16.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then16.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %new_size.addr.0.i) #11
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %length.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then16.i, %if.end7.i.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %new_size)
  %cmp = icmp ult i32 %21, %new_size
  br i1 %cmp, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %value_offset, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv6 = zext i16 %24 to i32
  %add.ptr = getelementptr i8, ptr %a, i32 %conv6
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %21
  %sub = sub i32 %new_size, %21
  %25 = call ptr @memset(ptr %add.ptr7, i32 0, i32 %sub)
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %26 = tail call i32 @llvm.bswap.i32(i32 %new_size)
  %27 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -28, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_make_non_resident(ptr noundef %ni, i32 noundef %data_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1
  %vol1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %type = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %attrdef.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %attrdef.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrdef.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.body10.i.i, !prof !166

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1297, 0\0A.popsection", ""() #11, !srcloc !192
  unreachable

do.body10.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool11.not.i.i, label %do.body21.i.i, label %for.cond.preheader.i.i, !prof !166

for.cond.preheader.i.i:                           ; preds = %do.body10.i.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %attrdef_size.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %attrdef_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attrdef_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp67.i.i = icmp sgt i32 %7, 0
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  br i1 %cmp67.i.i, label %for.cond.preheader.i.i.land.rhs.i.i_crit_edge, label %for.cond.preheader.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge

for.cond.preheader.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread.i

for.cond.preheader.i.i.land.rhs.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %land.rhs.i.i

do.body21.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1298, 0\0A.popsection", ""() #11, !srcloc !193
  unreachable

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge
  %ad.068.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %5, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge ]
  %type32.i.i = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %type32.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %type32.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool33.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool33.not.i.i, label %land.rhs.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge, label %for.body.i.i

land.rhs.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp35.i.i = icmp ult i32 %11, %8
  br i1 %cmp35.i.i, label %for.inc.i.i, label %if.end43.i.i, !prof !169

if.end43.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp45.i.i = icmp eq i32 %10, %3
  br i1 %cmp45.i.i, label %ntfs_attr_find_in_attrdef.exit.i, label %if.end43.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge, !prof !169

if.end43.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.ATTR_DEF, ptr %ad.068.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i, %7
  br i1 %cmp.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge

for.inc.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_find_in_attrdef.exit.thread.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

ntfs_attr_find_in_attrdef.exit.thread.i:          ; preds = %for.inc.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge, %if.end43.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge, %land.rhs.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge, %for.cond.preheader.i.i.ntfs_attr_find_in_attrdef.exit.thread.i_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @__func__.ntfs_attr_find_in_attrdef, ptr noundef nonnull @.str.70, i32 noundef %8) #11
  br label %if.else

ntfs_attr_find_in_attrdef.exit.i:                 ; preds = %if.end43.i.i
  %tobool.not.i = icmp eq ptr %ad.068.i.i, null
  br i1 %tobool.not.i, label %ntfs_attr_find_in_attrdef.exit.i.if.else_crit_edge, label %ntfs_attr_can_be_non_resident.exit, !prof !166

ntfs_attr_find_in_attrdef.exit.i.if.else_crit_edge: ; preds = %ntfs_attr_find_in_attrdef.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

ntfs_attr_can_be_non_resident.exit:               ; preds = %ntfs_attr_find_in_attrdef.exit.i
  %flags.i = getelementptr inbounds %struct.ATTR_DEF, ptr %ad.068.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %flags.i, align 1
  %and.i = shl i32 %13, 1
  %sext.i = ashr i32 %and.i, 31
  %14 = zext i32 %sext.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %sext.i, label %ntfs_attr_can_be_non_resident.exit.if.else_crit_edge [
    i32 0, label %do.body
    i32 -1, label %if.then5
  ], !prof !194

ntfs_attr_can_be_non_resident.exit.if.else_crit_edge: ; preds = %ntfs_attr_can_be_non_resident.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then5:                                         ; preds = %ntfs_attr_can_be_non_resident.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1543, ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.else:                                          ; preds = %ntfs_attr_can_be_non_resident.exit.if.else_crit_edge, %ntfs_attr_find_in_attrdef.exit.i.if.else_crit_edge, %ntfs_attr_find_in_attrdef.exit.thread.i
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1546, ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef nonnull @.str.22) #11
  br label %cleanup

do.body:                                          ; preds = %ntfs_attr_can_be_non_resident.exit
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %do.body23, label %do.body16, !prof !169

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1553, 0\0A.popsection", ""() #11, !srcloc !195
  unreachable

do.body23:                                        ; preds = %do.body
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %do.end41, label %do.body33, !prof !169

do.body33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1554, 0\0A.popsection", ""() #11, !srcloc !196
  unreachable

do.end41:                                         ; preds = %do.body23
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cluster_size, align 8
  %add = add i32 %data_size, -1
  %sub = add i32 %add, %22
  %neg = sub i32 0, %22
  %and = and i32 %sub, %neg
  %conv = zext i32 %and to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp44.not = icmp eq i32 %and, 0
  br i1 %cmp44.not, label %do.end41.if.end74_crit_edge, label %if.then46

do.end41.if.end74_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then46:                                        ; preds = %do.end41
  %i_mapping = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gfp_mask.i, align 4
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %24, i32 noundef 0, i32 noundef 7, i32 noundef %26) #11
  %tobool50.not = icmp eq ptr %call.i, null
  br i1 %tobool50.not, label %if.then46.cleanup_crit_edge, label %if.end60, !prof !166

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end60:                                         ; preds = %if.then46
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %28 to i64
  %shr = lshr i64 %conv, %sh_prom
  %call62 = tail call ptr @ntfs_cluster_alloc(ptr noundef %1, i64 noundef 0, i64 noundef %shr, i64 noundef -1, i32 noundef 1, i1 noundef zeroext true) #11
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %if.end60.if.end74_crit_edge

if.end60.if.end74_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call62 to i32
  %30 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom68 = zext i8 %31 to i64
  %shr69 = lshr i64 %conv, %sh_prom68
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %shr69)
  %cmp70 = icmp ugt i64 %shr69, 1
  %cond = select i1 %cmp70, ptr @.str.24, ptr @.str.8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1578, ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, i32 noundef %29) #11
  br label %page_err_out

if.end74:                                         ; preds = %if.end60.if.end74_crit_edge, %do.end41.if.end74_crit_edge
  %page.0 = phi ptr [ %call.i, %if.end60.if.end74_crit_edge ], [ null, %do.end41.if.end74_crit_edge ]
  %rl.0 = phi ptr [ %call62, %if.end60.if.end74_crit_edge ], [ null, %do.end41.if.end74_crit_edge ]
  %call75 = tail call i32 @ntfs_get_size_for_mapping_pairs(ptr noundef %1, ptr noundef %rl.0, i64 noundef 0, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then84, label %if.end85, !prof !166

if.then84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1590, ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef nonnull @.str.25, i32 noundef %call75) #11
  br label %rl_err_out

if.end85:                                         ; preds = %if.end74
  %runlist = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11, i32 1
  tail call void @down_write(ptr noundef %lock) #11
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool87.not = icmp eq i32 %34, 0
  br i1 %tobool87.not, label %if.end85.if.end90_crit_edge, label %if.else89

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.else89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %35 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ext, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.end85.if.end90_crit_edge
  %base_ni.0 = phi ptr [ %36, %if.else89 ], [ %ni, %if.end85.if.end90_crit_edge ]
  %call91 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #11
  %cmp.i732 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i732, label %if.end475.thread, label %if.end95

if.end475.thread:                                 ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %call91 to i32
  br label %if.end478

if.end95:                                         ; preds = %if.end90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %38 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  %call.i733 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %38, i32 noundef 3136) #11
  %tobool.not.i734 = icmp eq ptr %call.i733, null
  br i1 %tobool.not.i734, label %if.end95.if.end475_crit_edge, label %if.end107

if.end95.if.end475_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end475

if.end107:                                        ; preds = %if.end95
  %attrs_offset.i.i = getelementptr inbounds %struct.MFT_RECORD, ptr %call91, i32 0, i32 6
  %39 = ptrtoint ptr %attrs_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %attrs_offset.i.i, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #11
  %conv.i.i = zext i16 %41 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call91, i32 %conv.i.i
  %42 = ptrtoint ptr %call.i733 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call91, ptr %call.i733, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i733, i32 4
  %43 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i733, i32 8
  %44 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.42.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i733, i32 12
  %45 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %base_ni.0, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i733, i32 16
  %46 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 16)
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type, align 4
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 8
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %51 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %name_len, align 4
  %call109 = tail call i32 @ntfs_attr_lookup(i32 noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i733)
  %53 = zext i32 %call109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call109, label %if.end107.if.then474_crit_edge [
    i32 0, label %if.end122
    i32 -2, label %if.then120
  ], !prof !194

if.end107.if.then474_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then474

if.then120:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then474

if.end122:                                        ; preds = %if.end107
  %54 = ptrtoint ptr %call.i733 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i733, align 8
  %56 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i, align 4
  %60 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool125.not = icmp eq i32 %60, 0
  br i1 %tobool125.not, label %do.body142, label %do.body133, !prof !169

do.body133:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1619, 0\0A.popsection", ""() #11, !srcloc !197
  unreachable

do.body142:                                       ; preds = %if.end122
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 2
  %61 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool143.not = icmp eq i8 %62, 0
  br i1 %tobool143.not, label %do.end159, label %do.body151, !prof !169

do.body151:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1620, 0\0A.popsection", ""() #11, !srcloc !198
  unreachable

do.end159:                                        ; preds = %do.body142
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i, align 4
  %65 = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool161.not = icmp eq i32 %65, 0
  br i1 %tobool161.not, label %lor.lhs.false, label %do.end159.if.end166_crit_edge

do.end159.if.end166_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

lor.lhs.false:                                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %state.i, align 4
  %68 = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool163.not = icmp eq i32 %68, 0
  %spec.select725 = select i1 %tobool163.not, i32 64, i32 72
  br label %if.end166

if.end166:                                        ; preds = %lor.lhs.false, %do.end159.if.end166_crit_edge
  %name_ofs.0 = phi i32 [ 72, %do.end159.if.end166_crit_edge ], [ %spec.select725, %lor.lhs.false ]
  %name_length = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 3
  %69 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %name_length, align 1
  %conv167 = zext i8 %70 to i32
  %mul = shl nuw nsw i32 %conv167, 1
  %add168 = or i32 %name_ofs.0, 7
  %add169 = add nuw nsw i32 %add168, %mul
  %and170 = and i32 %add169, 1016
  %add171 = add nuw i32 %call75, 7
  %add172 = add nuw i32 %add171, %and170
  %and173 = and i32 %add172, -8
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7
  %71 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %data, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %data_size)
  %cmp175.not = icmp eq i32 %73, %data_size
  br i1 %cmp175.not, label %do.end192, label %do.body184, !prof !169

do.body184:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1643, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end192:                                        ; preds = %if.end166
  %tobool193.not = icmp eq ptr %page.0, null
  br i1 %tobool193.not, label %do.end192.if.end208_crit_edge, label %land.lhs.true

do.end192.if.end208_crit_edge:                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

land.lhs.true:                                    ; preds = %do.end192
  %74 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i745 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i745, label %if.end.i.i, label %if.then.i.i, !prof !169

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %76, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %77, %if.end.i.i ]
  %78 = inttoptr i32 %retval.0.i.i to ptr
  %79 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %and.i.i.i.i746 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i746)
  %tobool.not.i.i.i747 = icmp eq i32 %and.i.i.i.i746, 0
  br i1 %tobool.not.i.i.i747, label %folio_flags.exit.i.i, label %if.then.i.i.i748, !prof !169

if.then.i.i.i748:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %78, ptr noundef nonnull @.str.71) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %78, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i, label %if.then196, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  br label %if.end208

if.then196:                                       ; preds = %folio_flags.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %85 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %85, 512
  %86 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %89, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %90 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %95, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %page.0, i32 noundef %or.i) #11
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %96 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %value_offset, align 1
  %98 = tail call i16 @llvm.bswap.i16(i16 %97)
  %conv199 = zext i16 %98 to i32
  %add.ptr = getelementptr i8, ptr %57, i32 %conv199
  %99 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr, i32 %data_size)
  %add.ptr200 = getelementptr i8, ptr %call.i.i, i32 %data_size
  %sub201 = sub i32 4096, %data_size
  %100 = call ptr @memset(ptr %add.ptr200, i32 0, i32 %sub201)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %101 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 213
  %105 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %106, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %107 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i749 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i749 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i750 = add i32 %110, -1
  store volatile i32 %sub.i.i750, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef nonnull %page.0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !206
  %111 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %74, align 4
  %and.i.i.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !169

if.then.i.i.i:                                    ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.71) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %page.0) #11
  br label %if.end208

if.end208:                                        ; preds = %SetPageUptodate.exit, %PageUptodate.exit, %do.end192.if.end208_crit_edge
  %flags210 = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 2
  %113 = ptrtoint ptr %flags210 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flags210, align 1
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1423, ptr noundef nonnull @__func__.ntfs_attr_record_resize, ptr noundef nonnull @.str.20, i32 noundef %and173) #11
  %length.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 1
  %115 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %length.i, align 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %and173, i32 %117)
  %cmp.not.i = icmp eq i32 %and173, %117
  br i1 %cmp.not.i, label %if.end208.if.end220_crit_edge, label %if.then2.i

if.end208.if.end220_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then2.i:                                       ; preds = %if.end208
  %bytes_in_use.i = getelementptr inbounds %struct.MFT_RECORD, ptr %55, i32 0, i32 8
  %118 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %bytes_in_use.i, align 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #11
  %sub.i = sub i32 %120, %117
  %add4.i = add i32 %sub.i, %and173
  %bytes_allocated.i = getelementptr inbounds %struct.MFT_RECORD, ptr %55, i32 0, i32 9
  %121 = ptrtoint ptr %bytes_allocated.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %bytes_allocated.i, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %123)
  %cmp5.i = icmp ugt i32 %add4.i, %123
  br i1 %cmp5.i, label %if.then2.i.if.then474_crit_edge, label %if.end7.i

if.then2.i.if.then474_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then474

if.end7.i:                                        ; preds = %if.then2.i
  %add.ptr.i = getelementptr i8, ptr %57, i32 %and173
  %add.ptr9.i = getelementptr i8, ptr %57, i32 %117
  %sub.ptr.lhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %55 to i32
  %124 = add i32 %117, %sub.ptr.lhs.cast.i
  %125 = sub i32 %sub.ptr.rhs.cast.i, %124
  %sub13.i = add i32 %125, %120
  %126 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr9.i, i32 %sub13.i)
  %127 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #11
  %128 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %127, ptr %bytes_in_use.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %cmp15.not.i = icmp eq i32 %and173, 0
  br i1 %cmp15.not.i, label %if.end7.i.if.end220_crit_edge, label %if.then16.i

if.end7.i.if.end220_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end220

if.then16.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %129 = tail call i32 @llvm.bswap.i32(i32 %and173) #11
  %130 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %129, ptr %length.i, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.then16.i, %if.end7.i.if.end220_crit_edge, %if.end208.if.end220_crit_edge
  %131 = ptrtoint ptr %non_resident to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %non_resident, align 1
  %132 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %name_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool223.not = icmp eq i8 %133, 0
  br i1 %tobool223.not, label %if.end220.if.end231_crit_edge, label %if.then224

if.end220.if.end231_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then224:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr225 = getelementptr i8, ptr %57, i32 %name_ofs.0
  %name_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 4
  %134 = ptrtoint ptr %name_offset to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %name_offset, align 1
  %136 = tail call i16 @llvm.bswap.i16(i16 %135)
  %conv226 = zext i16 %136 to i32
  %add.ptr227 = getelementptr i8, ptr %57, i32 %conv226
  %conv229 = zext i8 %133 to i32
  %mul230 = shl nuw nsw i32 %conv229, 1
  %137 = call ptr @memmove(ptr %add.ptr225, ptr %add.ptr227, i32 %mul230)
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.end220.if.end231_crit_edge
  %conv232 = trunc i32 %name_ofs.0 to i16
  %138 = shl nuw nsw i16 %conv232, 8
  %name_offset233 = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 4
  %139 = ptrtoint ptr %name_offset233 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %name_offset233, align 1
  %140 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %140, i32 8)
  store i64 0, ptr %data, align 1
  %sub235 = add nsw i64 %conv, -1
  %cluster_size_bits236 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  %141 = ptrtoint ptr %cluster_size_bits236 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %cluster_size_bits236, align 8
  %sh_prom238 = zext i8 %142 to i64
  %shr239 = ashr i64 %sub235, %sh_prom238
  %143 = tail call i64 @llvm.bswap.i64(i64 %shr239) #11
  %highest_vcn = getelementptr %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 1
  %144 = ptrtoint ptr %highest_vcn to i32
  call void @__asan_storeN_noabort(i32 %144, i32 8)
  store i64 %143, ptr %highest_vcn, align 1
  %conv242 = trunc i32 %and170 to i16
  %145 = tail call i16 @llvm.bswap.i16(i16 %conv242)
  %mapping_pairs_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 2
  %146 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_storeN_noabort(i32 %146, i32 2)
  store i16 %145, ptr %mapping_pairs_offset, align 1
  %reserved = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 4
  %147 = call ptr @memset(ptr %reserved, i32 0, i32 5)
  %148 = tail call i64 @llvm.bswap.i64(i64 %conv) #11
  %allocated_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 5
  %149 = ptrtoint ptr %allocated_size to i32
  call void @__asan_storeN_noabort(i32 %149, i32 8)
  store i64 %148, ptr %allocated_size, align 1
  %conv247 = zext i32 %data_size to i64
  %150 = tail call i64 @llvm.bswap.i64(i64 %conv247) #11
  %initialized_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 7
  %151 = ptrtoint ptr %initialized_size to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %150, ptr %initialized_size, align 1
  %data_size251 = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 6
  %152 = ptrtoint ptr %data_size251 to i32
  call void @__asan_storeN_noabort(i32 %152, i32 8)
  store i64 %150, ptr %data_size251, align 1
  %153 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %state.i, align 4
  %155 = and i32 %154, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool253.not = icmp eq i32 %155, 0
  br i1 %tobool253.not, label %lor.lhs.false254, label %if.end231.if.then257_crit_edge

if.end231.if.then257_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then257

lor.lhs.false254:                                 ; preds = %if.end231
  %156 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %state.i, align 4
  %158 = and i32 %157, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool256.not = icmp eq i32 %158, 0
  br i1 %tobool256.not, label %if.else272, label %lor.lhs.false254.if.then257_crit_edge

lor.lhs.false254.if.then257_crit_edge:            ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then257

if.then257:                                       ; preds = %lor.lhs.false254.if.then257_crit_edge, %if.end231.if.then257_crit_edge
  %compression_unit = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 3
  %159 = ptrtoint ptr %compression_unit to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %compression_unit, align 1
  %160 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %state.i, align 4
  %162 = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool260.not = icmp eq i32 %162, 0
  br i1 %tobool260.not, label %lor.lhs.false261, label %if.then257.if.then265_crit_edge

if.then257.if.then265_crit_edge:                  ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then265

lor.lhs.false261:                                 ; preds = %if.then257
  %major_ver = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 44
  %163 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %major_ver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %164)
  %cmp263 = icmp ult i8 %164, 3
  br i1 %cmp263, label %lor.lhs.false261.if.then265_crit_edge, label %lor.lhs.false261.if.end268_crit_edge

lor.lhs.false261.if.end268_crit_edge:             ; preds = %lor.lhs.false261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end268

lor.lhs.false261.if.then265_crit_edge:            ; preds = %lor.lhs.false261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then265

if.then265:                                       ; preds = %lor.lhs.false261.if.then265_crit_edge, %if.then257.if.then265_crit_edge
  %165 = ptrtoint ptr %compression_unit to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 4, ptr %compression_unit, align 1
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %lor.lhs.false261.if.end268_crit_edge
  %166 = ptrtoint ptr %allocated_size to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %allocated_size, align 1
  %compressed_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 8
  %168 = ptrtoint ptr %compressed_size to i32
  call void @__asan_storeN_noabort(i32 %168, i32 8)
  store i64 %167, ptr %compressed_size, align 1
  br label %if.end275

if.else272:                                       ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #13
  %compression_unit274 = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 3
  %169 = ptrtoint ptr %compression_unit274 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %compression_unit274, align 1
  br label %if.end275

if.end275:                                        ; preds = %if.else272, %if.end268
  %add.ptr276 = getelementptr i8, ptr %57, i32 %and170
  %sub277 = sub i32 %and173, %and170
  %call278 = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %1, ptr noundef %add.ptr276, i32 noundef %sub277, ptr noundef %rl.0, i64 noundef 0, i64 noundef -1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end287, label %if.then286, !prof !169

if.then286:                                       ; preds = %if.end275
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1694, ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef nonnull @.str.26, i32 noundef %call278) #11
  %170 = ptrtoint ptr %non_resident to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %non_resident, align 1
  %171 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %name_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool360.not = icmp eq i8 %172, 0
  br i1 %tobool360.not, label %if.then286.if.end369_crit_edge, label %if.then361

if.then286.if.end369_crit_edge:                   ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end369

if.end287:                                        ; preds = %if.end275
  %173 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %rl.0, ptr %runlist, align 8
  %call293 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #11
  %allocated_size296 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %174 = ptrtoint ptr %allocated_size296 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv, ptr %allocated_size296, align 8
  %175 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %state.i, align 4
  %177 = and i32 %176, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool298.not = icmp eq i32 %177, 0
  br i1 %tobool298.not, label %lor.lhs.false299, label %if.end287.if.then302_crit_edge

if.end287.if.then302_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then302

lor.lhs.false299:                                 ; preds = %if.end287
  %178 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %state.i, align 4
  %180 = and i32 %179, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool301.not = icmp eq i32 %180, 0
  br i1 %tobool301.not, label %lor.lhs.false299.do.body342_crit_edge, label %lor.lhs.false299.if.then302_crit_edge

lor.lhs.false299.if.then302_crit_edge:            ; preds = %lor.lhs.false299
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then302

lor.lhs.false299.do.body342_crit_edge:            ; preds = %lor.lhs.false299
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body342

if.then302:                                       ; preds = %lor.lhs.false299.if.then302_crit_edge, %if.end287.if.then302_crit_edge
  %itype = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18
  %181 = ptrtoint ptr %itype to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %conv, ptr %itype, align 8
  %compression_unit305 = getelementptr inbounds %struct.ATTR_RECORD, ptr %57, i32 0, i32 7, i32 0, i32 3
  %182 = ptrtoint ptr %compression_unit305 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %compression_unit305, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool306.not = icmp eq i8 %183, 0
  br i1 %tobool306.not, label %if.else326, label %if.then307

if.then307:                                       ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #13
  %conv310 = zext i8 %183 to i32
  %184 = ptrtoint ptr %cluster_size_bits236 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %cluster_size_bits236, align 8
  %conv312 = zext i8 %185 to i32
  %add313 = add nuw nsw i32 %conv312, %conv310
  %shl = shl nuw i32 1, %add313
  %block_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18, i32 0, i32 1
  %186 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %shl, ptr %block_size, align 8
  %conv318 = trunc i32 %add313 to i8
  %block_size_bits = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18, i32 0, i32 2
  %187 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv318, ptr %block_size_bits, align 4
  %188 = ptrtoint ptr %compression_unit305 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %compression_unit305, align 1
  %conv322 = zext i8 %189 to i32
  %shl323 = shl nuw i32 1, %conv322
  %conv324 = trunc i32 %shl323 to i8
  br label %if.end333

if.else326:                                       ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #13
  %block_size328 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18, i32 0, i32 1
  %190 = ptrtoint ptr %block_size328 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %block_size328, align 8
  %block_size_bits330 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18, i32 0, i32 2
  %191 = ptrtoint ptr %block_size_bits330 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %block_size_bits330, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.else326, %if.then307
  %conv324.sink = phi i8 [ 0, %if.else326 ], [ %conv324, %if.then307 ]
  %192 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18, i32 0, i32 3
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv324.sink, ptr %192, align 1
  br label %do.body342

do.body342:                                       ; preds = %if.end333, %lor.lhs.false299.do.body342_crit_edge
  %shr336834 = lshr i64 %conv, 9
  %i_blocks = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 22
  %194 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %shr336834, ptr %i_blocks, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call293) #11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #11
  %195 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %196, i32 0, i32 13
  %197 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %198) #11
  %199 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %200, i32 0, i32 3
  %call.i.i767 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i767)
  %tobool.not.i768 = icmp eq i32 %call.i.i767, 0
  br i1 %tobool.not.i768, label %if.then.i769, label %do.body342.mark_mft_record_dirty.exit_crit_edge

do.body342.mark_mft_record_dirty.exit_crit_edge:  ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #13
  br label %mark_mft_record_dirty.exit

if.then.i769:                                     ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mark_mft_record_dirty(ptr noundef %200) #11
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i769, %do.body342.mark_mft_record_dirty.exit_crit_edge
  %base_ntfs_ino.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i733, i32 0, i32 5
  %201 = ptrtoint ptr %base_ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base_ntfs_ino.i, align 4
  %tobool.not.i771 = icmp eq ptr %202, null
  br i1 %tobool.not.i771, label %mark_mft_record_dirty.exit.ntfs_attr_put_search_ctx.exit_crit_edge, label %land.lhs.true.i

mark_mft_record_dirty.exit.ntfs_attr_put_search_ctx.exit_crit_edge: ; preds = %mark_mft_record_dirty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit

land.lhs.true.i:                                  ; preds = %mark_mft_record_dirty.exit
  %203 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %cmp.not.i772 = icmp eq ptr %204, %202
  br i1 %cmp.not.i772, label %land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge, label %if.then.i773

land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit

if.then.i773:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %204) #11
  br label %ntfs_attr_put_search_ctx.exit

ntfs_attr_put_search_ctx.exit:                    ; preds = %if.then.i773, %land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge, %mark_mft_record_dirty.exit.ntfs_attr_put_search_ctx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %205 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %205, ptr noundef nonnull %call.i733) #11
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  tail call void @up_write(ptr noundef %lock) #11
  br i1 %tobool193.not, label %ntfs_attr_put_search_ctx.exit.if.end357_crit_edge, label %if.then355

ntfs_attr_put_search_ctx.exit.if.end357_crit_edge: ; preds = %ntfs_attr_put_search_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end357

if.then355:                                       ; preds = %ntfs_attr_put_search_ctx.exit
  %call356 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %page.0) #11
  tail call void @unlock_page(ptr noundef nonnull %page.0) #11
  %206 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %206, align 4
  %and.i.i775 = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i775)
  %tobool.not.i.i776 = icmp eq i32 %and.i.i775, 0
  br i1 %tobool.not.i.i776, label %if.end.i.i779, label %if.then.i.i778, !prof !169

if.then.i.i778:                                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i777 = add i32 %208, -1
  br label %_compound_head.exit.i781

if.end.i.i779:                                    ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i781

_compound_head.exit.i781:                         ; preds = %if.end.i.i779, %if.then.i.i778
  %retval.0.i.i780 = phi i32 [ %sub.i.i777, %if.then.i.i778 ], [ %209, %if.end.i.i779 ]
  %210 = inttoptr i32 %retval.0.i.i780 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %210, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %211 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp.i.i.i.i = icmp eq i32 %212, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !166

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i781
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %210, ptr noundef nonnull @.str.61) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i781
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %213 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %213, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_attr_make_non_resident, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !172

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %210, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end357_crit_edge

folio_put_testzero.exit.i.i.if.end357_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end357

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %210) #11
  br label %if.end357

if.end357:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end357_crit_edge, %ntfs_attr_put_search_ctx.exit.if.end357_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1739, ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.then361:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  %214 = ptrtoint ptr %name_offset233 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 2)
  %215 = load i16, ptr %name_offset233, align 1
  %216 = tail call i16 @llvm.bswap.i16(i16 %215)
  %conv364 = zext i16 %216 to i32
  %add.ptr365 = getelementptr i8, ptr %57, i32 %conv364
  %conv367 = zext i8 %172 to i32
  %mul368 = shl nuw nsw i32 %conv367, 1
  %217 = call ptr @memmove(ptr %highest_vcn, ptr %add.ptr365, i32 %mul368)
  br label %if.end369

if.end369:                                        ; preds = %if.then361, %if.then286.if.end369_crit_edge
  %218 = ptrtoint ptr %name_length to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %name_length, align 1
  %conv371 = zext i8 %219 to i32
  %mul372 = shl nuw nsw i32 %conv371, 1
  %add374 = add nuw nsw i32 %mul372, 31
  %and375 = and i32 %add374, 1016
  %220 = ptrtoint ptr %name_offset233 to i32
  call void @__asan_storeN_noabort(i32 %220, i32 2)
  store i16 6144, ptr %name_offset233, align 1
  %add378 = add i32 %and375, %data_size
  %add379 = add i32 %add378, 7
  %and380 = and i32 %add379, -8
  %call381 = tail call i32 @ntfs_attr_record_resize(ptr noundef %55, ptr noundef %57, i32 noundef %and380)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %tobool382.not = icmp eq i32 %call381, 0
  br i1 %tobool382.not, label %if.end369.if.end428_crit_edge, label %if.then389, !prof !169

if.end369.if.end428_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end428

if.then389:                                       ; preds = %if.end369
  %221 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %length.i, align 1
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  call void @__sanitizer_cov_trace_cmp4(i32 %add378, i32 %223)
  %cmp391 = icmp ugt i32 %add378, %223
  br i1 %cmp391, label %if.then393, label %if.then389.if.end428_crit_edge

if.then389.if.end428_crit_edge:                   ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end428

if.then393:                                       ; preds = %if.then389
  %sub394 = sub i32 %223, %and375
  %224 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %1, align 8
  %i_ino = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 11
  %226 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %i_ino, align 8
  %228 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %type, align 4
  %230 = tail call i32 @llvm.bswap.i32(i32 %229)
  %sub396 = sub i32 %data_size, %sub394
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %229)
  %cmp398 = icmp eq i32 %229, -2147483648
  br i1 %cmp398, label %land.rhs, label %if.then393.land.end_crit_edge

if.then393.land.end_crit_edge:                    ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #13
  %231 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool401.not = icmp eq i32 %232, 0
  %phi.sel = select i1 %tobool401.not, ptr @.str.28, ptr @.str.29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then393.land.end_crit_edge
  %233 = phi ptr [ @.str.29, %if.then393.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef %225, ptr noundef nonnull @.str.27, i32 noundef %227, i32 noundef %230, i32 noundef %data_size, i32 noundef %sub394, i32 noundef %sub396, ptr noundef nonnull %233) #11
  %call412 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #11
  %conv415 = zext i32 %sub394 to i64
  %initialized_size416 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 1
  %234 = ptrtoint ptr %initialized_size416 to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %conv415, ptr %initialized_size416, align 8
  tail call fastcc void @i_size_write(ptr noundef %vfs_inode.i, i64 noundef %conv415)
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call412) #11
  br label %if.end428

if.end428:                                        ; preds = %land.end, %if.then389.if.end428_crit_edge, %if.end369.if.end428_crit_edge
  %arec_size.0 = phi i32 [ %223, %land.end ], [ %223, %if.then389.if.end428_crit_edge ], [ %and380, %if.end369.if.end428_crit_edge ]
  %attr_size.0 = phi i32 [ %sub394, %land.end ], [ %data_size, %if.then389.if.end428_crit_edge ], [ %data_size, %if.end369.if.end428_crit_edge ]
  %235 = tail call i32 @llvm.bswap.i32(i32 %attr_size.0)
  %236 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %235, ptr %data, align 1
  %conv431 = trunc i32 %and375 to i16
  %237 = tail call i16 @llvm.bswap.i16(i16 %conv431)
  %value_offset433 = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %238 = ptrtoint ptr %value_offset433 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 2)
  store i16 %237, ptr %value_offset433, align 1
  %239 = ptrtoint ptr %flags210 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %114, ptr %flags210, align 1
  %reserved437 = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 3
  %240 = ptrtoint ptr %reserved437 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %reserved437, align 1
  br i1 %tobool193.not, label %if.end428.do.body449_crit_edge, label %if.then439

if.end428.do.body449_crit_edge:                   ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body449

if.then439:                                       ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #13
  %call440 = tail call fastcc ptr @kmap_atomic(ptr noundef nonnull %page.0)
  %add.ptr441 = getelementptr i8, ptr %57, i32 %and375
  %241 = call ptr @memcpy(ptr %add.ptr441, ptr %call440, i32 %attr_size.0)
  tail call fastcc void @__kunmap_atomic(ptr noundef %call440)
  br label %do.body449

do.body449:                                       ; preds = %if.then439, %if.end428.do.body449_crit_edge
  %call456 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #11
  %sub459 = sub i32 %arec_size.0, %and375
  %conv460 = sext i32 %sub459 to i64
  %allocated_size461 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %242 = ptrtoint ptr %allocated_size461 to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %conv460, ptr %allocated_size461, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call456) #11
  %243 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %page.i782 = getelementptr inbounds %struct._ntfs_inode, ptr %244, i32 0, i32 13
  %245 = ptrtoint ptr %page.i782 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %page.i782, align 8
  tail call void @flush_dcache_page(ptr noundef %246) #11
  %247 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  tail call fastcc void @mark_mft_record_dirty(ptr noundef %248)
  br label %if.then474

if.then474:                                       ; preds = %do.body449, %if.then2.i.if.then474_crit_edge, %if.then120, %if.end107.if.then474_crit_edge
  %err.0.ph = phi i32 [ -28, %if.then2.i.if.then474_crit_edge ], [ %call109, %if.end107.if.then474_crit_edge ], [ %call278, %do.body449 ], [ -5, %if.then120 ]
  %m.0.ph = phi ptr [ %55, %if.then2.i.if.then474_crit_edge ], [ %call91, %if.end107.if.then474_crit_edge ], [ %55, %do.body449 ], [ %call91, %if.then120 ]
  %base_ntfs_ino.i783 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i733, i32 0, i32 5
  %249 = ptrtoint ptr %base_ntfs_ino.i783 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %base_ntfs_ino.i783, align 4
  %tobool.not.i784 = icmp eq ptr %250, null
  br i1 %tobool.not.i784, label %if.then474.ntfs_attr_put_search_ctx.exit790_crit_edge, label %land.lhs.true.i787

if.then474.ntfs_attr_put_search_ctx.exit790_crit_edge: ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit790

land.lhs.true.i787:                               ; preds = %if.then474
  %251 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %cmp.not.i786 = icmp eq ptr %252, %250
  br i1 %cmp.not.i786, label %land.lhs.true.i787.ntfs_attr_put_search_ctx.exit790_crit_edge, label %if.then.i788

land.lhs.true.i787.ntfs_attr_put_search_ctx.exit790_crit_edge: ; preds = %land.lhs.true.i787
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit790

if.then.i788:                                     ; preds = %land.lhs.true.i787
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %252) #11
  br label %ntfs_attr_put_search_ctx.exit790

ntfs_attr_put_search_ctx.exit790:                 ; preds = %if.then.i788, %land.lhs.true.i787.ntfs_attr_put_search_ctx.exit790_crit_edge, %if.then474.ntfs_attr_put_search_ctx.exit790_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %253 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %253, ptr noundef nonnull %call.i733) #11
  br label %if.end475

if.end475:                                        ; preds = %ntfs_attr_put_search_ctx.exit790, %if.end95.if.end475_crit_edge
  %m.0828 = phi ptr [ %m.0.ph, %ntfs_attr_put_search_ctx.exit790 ], [ %call91, %if.end95.if.end475_crit_edge ]
  %err.0826 = phi i32 [ %err.0.ph, %ntfs_attr_put_search_ctx.exit790 ], [ -12, %if.end95.if.end475_crit_edge ]
  %tobool476.not = icmp eq ptr %m.0828, null
  br i1 %tobool476.not, label %if.end475.if.end478_crit_edge, label %if.then477

if.end475.if.end478_crit_edge:                    ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end478

if.then477:                                       ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  br label %if.end478

if.end478:                                        ; preds = %if.then477, %if.end475.if.end478_crit_edge, %if.end475.thread
  %err.0826832 = phi i32 [ %37, %if.end475.thread ], [ %err.0826, %if.then477 ], [ %err.0826, %if.end475.if.end478_crit_edge ]
  %254 = ptrtoint ptr %runlist to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %runlist, align 8
  tail call void @up_write(ptr noundef %lock) #11
  br label %rl_err_out

rl_err_out:                                       ; preds = %if.end478, %if.then84
  %err.1 = phi i32 [ %call75, %if.then84 ], [ %err.0826832, %if.end478 ]
  %tobool483.not = icmp eq ptr %rl.0, null
  br i1 %tobool483.not, label %rl_err_out.if.end491_crit_edge, label %if.then484

rl_err_out.if.end491_crit_edge:                   ; preds = %rl_err_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end491

if.then484:                                       ; preds = %rl_err_out
  %lcnbmp_lock.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock.i) #11
  %call.i791 = tail call i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef %1, ptr noundef nonnull %rl.0) #11
  tail call void @up_write(ptr noundef %lcnbmp_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i791)
  %cmp486 = icmp slt i32 %call.i791, 0
  br i1 %cmp486, label %if.then488, label %if.then484.if.end490_crit_edge

if.then484.if.end490_crit_edge:                   ; preds = %if.then484
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end490

if.then488:                                       ; preds = %if.then484
  call void @__sanitizer_cov_trace_pc() #13
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_make_non_resident, ptr noundef %256, ptr noundef nonnull @.str.30) #11
  %flags.i792 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i792) #11
  br label %if.end490

if.end490:                                        ; preds = %if.then488, %if.then484.if.end490_crit_edge
  tail call void @kvfree(ptr noundef nonnull %rl.0) #11
  br label %page_err_out

page_err_out:                                     ; preds = %if.end490, %if.then64
  %page.1 = phi ptr [ %call.i, %if.then64 ], [ %page.0, %if.end490 ]
  %err.2 = phi i32 [ %29, %if.then64 ], [ %err.1, %if.end490 ]
  tail call void @unlock_page(ptr noundef %page.1) #11
  %257 = getelementptr inbounds %struct.page, ptr %page.1, i32 0, i32 1
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load volatile i32, ptr %257, align 4
  %and.i.i793 = and i32 %259, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i793)
  %tobool.not.i.i794 = icmp eq i32 %and.i.i793, 0
  br i1 %tobool.not.i.i794, label %if.end.i.i797, label %if.then.i.i796, !prof !169

if.then.i.i796:                                   ; preds = %page_err_out
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i795 = add i32 %259, -1
  br label %_compound_head.exit.i802

if.end.i.i797:                                    ; preds = %page_err_out
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %page.1 to i32
  br label %_compound_head.exit.i802

_compound_head.exit.i802:                         ; preds = %if.end.i.i797, %if.then.i.i796
  %retval.0.i.i798 = phi i32 [ %sub.i.i795, %if.then.i.i796 ], [ %260, %if.end.i.i797 ]
  %261 = inttoptr i32 %retval.0.i.i798 to ptr
  %_refcount.i.i.i.i.i799 = getelementptr inbounds %struct.page, ptr %261, i32 0, i32 3
  %call.i.i.i.i.i.i.i800 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i799, i32 noundef 4) #11
  %262 = ptrtoint ptr %_refcount.i.i.i.i.i799 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile i32, ptr %_refcount.i.i.i.i.i799, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp.i.i.i.i801 = icmp eq i32 %263, 0
  br i1 %cmp.i.i.i.i801, label %if.then.i.i.i.i803, label %do.end5.i.i.i.i807, !prof !166

if.then.i.i.i.i803:                               ; preds = %_compound_head.exit.i802
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %261, ptr noundef nonnull @.str.61) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end5.i.i.i.i807:                               ; preds = %_compound_head.exit.i802
  %call.i.i.i10.i.i.i.i804 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i799, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i799, i32 1, i32 3, i32 1) #11
  %264 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i799, ptr %_refcount.i.i.i.i.i799, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i799) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i805 = extractvalue { i32, i32 } %264, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i805)
  %cmp.i.i.i.i.i.i.i806 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i805, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_attr_make_non_resident, %if.then.i.i.i.i.i809)) #11
          to label %folio_put_testzero.exit.i.i810 [label %if.then.i.i.i.i.i809], !srcloc !172

if.then.i.i.i.i.i809:                             ; preds = %do.end5.i.i.i.i807
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i808 = zext i1 %cmp.i.i.i.i.i.i.i806 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %261, i32 noundef -1, i32 noundef %conv.i.i.i.i.i808) #11
  br label %folio_put_testzero.exit.i.i810

folio_put_testzero.exit.i.i810:                   ; preds = %if.then.i.i.i.i.i809, %do.end5.i.i.i.i807
  br i1 %cmp.i.i.i.i.i.i.i806, label %if.then.i4.i811, label %folio_put_testzero.exit.i.i810.if.end491_crit_edge

folio_put_testzero.exit.i.i810.if.end491_crit_edge: ; preds = %folio_put_testzero.exit.i.i810
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end491

if.then.i4.i811:                                  ; preds = %folio_put_testzero.exit.i.i810
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %261) #11
  br label %if.end491

if.end491:                                        ; preds = %if.then.i4.i811, %folio_put_testzero.exit.i.i810.if.end491_crit_edge, %rl_err_out.if.end491_crit_edge
  %err.3 = phi i32 [ %err.1, %rl_err_out.if.end491_crit_edge ], [ %err.2, %folio_put_testzero.exit.i.i810.if.end491_crit_edge ], [ %err.2, %if.then.i4.i811 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %err.3)
  %cmp492 = icmp eq i32 %err.3, -22
  %spec.select = select i1 %cmp492, i32 -5, i32 %err.3
  br label %cleanup

cleanup:                                          ; preds = %if.end491, %if.end357, %if.then46.cleanup_crit_edge, %if.else, %if.then5
  %retval.0 = phi i32 [ %spec.select, %if.end491 ], [ 0, %if.end357 ], [ -2, %if.else ], [ -1, %if.then5 ], [ -12, %if.then46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_cluster_alloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_size_for_mapping_pairs(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %5 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #11
  ret ptr %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kunmap_local_indexed(ptr noundef %addr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %6 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_mapping_pairs_build(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_mft_record_dirty(ptr noundef %ni) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mark_mft_record_dirty(ptr noundef %ni) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %9 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  %18 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !211
  %37 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !169

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !212
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #11
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #11
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !213
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !214
  %48 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ntfs_attr_extend_allocation(ptr noundef %ni, i64 noundef %new_alloc_size, i64 noundef %new_data_size, i64 noundef %data_start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vol1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %call2 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #11
  %allocated_size3 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %2 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %allocated_size3, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call2) #11
  %i_ino = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %type = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1919, ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef nonnull @.str.31, i32 noundef %5, i32 noundef %8, i64 noundef %3, i64 noundef %new_alloc_size, i64 noundef %new_data_size, i64 noundef %data_start) #11
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %new_data_size)
  %cmp25 = icmp sgt i64 %new_data_size, -1
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 12
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 11
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %lock = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11, i32 1
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_data_size)
  %cmp147 = icmp slt i64 %new_data_size, 0
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %mft_record_size = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 14
  br label %retry_extend

retry_extend:                                     ; preds = %ntfs_attr_put_search_ctx.exit.retry_extend_crit_edge, %entry
  %attr_len.0 = phi i32 [ 0, %entry ], [ %69, %ntfs_attr_put_search_ctx.exit.retry_extend_crit_edge ]
  %start.0 = phi i64 [ %data_start, %entry ], [ %start.2, %ntfs_attr_put_search_ctx.exit.retry_extend_crit_edge ]
  %new_alloc_size.addr.0 = phi i64 [ %new_alloc_size, %entry ], [ %new_alloc_size.addr.2, %ntfs_attr_put_search_ctx.exit.retry_extend_crit_edge ]
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %retry_extend.do.body24_crit_edge, label %if.then

retry_extend.do.body24_crit_edge:                 ; preds = %retry_extend
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.then:                                          ; preds = %retry_extend
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start.0)
  %cmp14 = icmp sgt i64 %start.0, 0
  br i1 %cmp14, label %if.then16, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cluster_size_mask, align 4
  %conv17 = zext i32 %13 to i64
  %neg = xor i64 %conv17, -1
  %and = and i64 %start.0, %neg
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then.if.end_crit_edge
  %start.1 = phi i64 [ %and, %if.then16 ], [ %start.0, %if.then.if.end_crit_edge ]
  %14 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cluster_size, align 8
  %conv18 = zext i32 %15 to i64
  %add = add i64 %new_alloc_size.addr.0, -1
  %sub = add i64 %add, %conv18
  %16 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cluster_size_mask, align 4
  %conv20 = zext i32 %17 to i64
  %neg21 = xor i64 %conv20, -1
  %and22 = and i64 %sub, %neg21
  br label %do.body24

do.body24:                                        ; preds = %if.end, %retry_extend.do.body24_crit_edge
  %start.2 = phi i64 [ %start.1, %if.end ], [ %start.0, %retry_extend.do.body24_crit_edge ]
  %new_alloc_size.addr.1 = phi i64 [ %and22, %if.end ], [ %new_alloc_size.addr.0, %retry_extend.do.body24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %new_alloc_size.addr.1, i64 %new_data_size)
  %cmp27 = icmp slt i64 %new_alloc_size.addr.1, %new_data_size
  %spec.select = select i1 %cmp25, i1 %cmp27, i1 false
  br i1 %spec.select, label %do.body32, label %do.end40, !prof !166

do.body32:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1932, 0\0A.popsection", ""() #11, !srcloc !215
  unreachable

do.end40:                                         ; preds = %do.body24
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %call42 = tail call i32 @ntfs_attr_size_bounds_check(ptr noundef %1, i32 noundef %19, i64 noundef %new_alloc_size.addr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end92, label %do.body51, !prof !169

do.body51:                                        ; preds = %do.end40
  %call58 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #11
  %20 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %allocated_size3, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call58) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp71 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %21)
  %cmp73.not = icmp slt i64 %start.2, %21
  %or.cond = select i1 %cmp71, i1 %cmp73.not, i1 false
  br i1 %or.cond, label %do.body51.if.end85_crit_edge, label %if.then75

do.body51.if.end85_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then75:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call42)
  %cmp76 = icmp eq i32 %call42, -34
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %.str.32..str.33 = select i1 %cmp76, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %23, ptr noundef nonnull %.str.32..str.33, i32 noundef %25, i32 noundef %28) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then75, %do.body51.if.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call42)
  %cmp86 = icmp eq i32 %call42, -34
  %. = select i1 %cmp86, i32 -27, i32 -5
  %conv91 = sext i32 %. to i64
  br label %cleanup

if.end92:                                         ; preds = %do.end40
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool94.not = icmp eq i32 %31, 0
  br i1 %tobool94.not, label %if.end92.if.end97_crit_edge, label %if.else96

if.end92.if.end97_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.else96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ext, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.else96, %if.end92.if.end97_crit_edge
  %base_ni.0 = phi ptr [ %33, %if.else96 ], [ %ni, %if.end92.if.end97_crit_edge ]
  tail call void @down_write(ptr noundef %lock) #11
  %call98 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #11
  %cmp.i = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end947.thread, label %if.end102

if.end947.thread:                                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %call98 to i32
  br label %if.end950

if.end102:                                        ; preds = %if.end97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %35 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %35, i32 noundef 3136) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end102.if.end947_crit_edge, label %do.body115

if.end102.if.end947_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end947

do.body115:                                       ; preds = %if.end102
  %attrs_offset.i.i = getelementptr inbounds %struct.MFT_RECORD, ptr %call98, i32 0, i32 6
  %36 = ptrtoint ptr %attrs_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %attrs_offset.i.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #11
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call98, i32 %conv.i.i
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call98, ptr %call.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 4
  %40 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i.i, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 8
  %41 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.42.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 12
  %42 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %base_ni.0, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call.i, i32 16
  %43 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 16)
  %call122 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #11
  %44 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %allocated_size3, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call122) #11
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state.i, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool136.not = icmp eq i32 %48, 0
  br i1 %tobool136.not, label %do.body115.cond.end_crit_edge, label %cond.true

do.body115.cond.end_crit_edge:                    ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %50 to i64
  %shr = ashr i64 %45, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body115.cond.end_crit_edge
  %cond = phi i64 [ %shr, %cond.true ], [ 0, %do.body115.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %new_alloc_size.addr.1, i64 %45)
  %cmp138.not = icmp sgt i64 %new_alloc_size.addr.1, %45
  br i1 %cmp138.not, label %cond.end.if.end151_crit_edge, label %if.then146, !prof !169

cond.end.if.end151_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then146:                                       ; preds = %cond.end
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2006, ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef nonnull @.str.34) #11
  br i1 %cmp147, label %if.then146.done_crit_edge, label %if.then146.if.end151_crit_edge

if.then146.if.end151_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then146.done_crit_edge:                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end151:                                        ; preds = %if.then146.if.end151_crit_edge, %cond.end.if.end151_crit_edge
  %vcn.0 = phi i64 [ %cond, %cond.end.if.end151_crit_edge ], [ 0, %if.then146.if.end151_crit_edge ]
  %new_alloc_size.addr.2 = phi i64 [ %new_alloc_size.addr.1, %cond.end.if.end151_crit_edge ], [ %45, %if.then146.if.end151_crit_edge ]
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 4
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 8
  %55 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %name_len, align 4
  %call153 = tail call i32 @ntfs_attr_lookup(i32 noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef 0, i64 noundef %vcn.0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call.i)
  %57 = zext i32 %call153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call153, label %if.then946.loopexit [
    i32 0, label %if.end166
    i32 -2, label %if.end151.if.then946_crit_edge
  ], !prof !194

if.end151.if.then946_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then946

if.end166:                                        ; preds = %if.end151
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 8
  %60 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool167.not = icmp eq i8 %63, 0
  br i1 %tobool167.not, label %do.body170, label %do.body348

do.body170:                                       ; preds = %if.end166
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %state.i, align 4
  %66 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool172.not = icmp eq i32 %66, 0
  br i1 %tobool172.not, label %do.end188, label %do.body180, !prof !169

do.body180:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2028, 0\0A.popsection", ""() #11, !srcloc !216
  unreachable

do.end188:                                        ; preds = %do.body170
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 7
  %67 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %data, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %mft_record_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mft_record_size, align 4
  %conv189 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %new_alloc_size.addr.2, i64 %conv189)
  %cmp190 = icmp slt i64 %new_alloc_size.addr.2, %conv189
  br i1 %cmp190, label %land.lhs.true, label %do.end188.if.end251_crit_edge

do.end188.if.end251_crit_edge:                    ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

land.lhs.true:                                    ; preds = %do.end188
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %72 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %value_offset, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %conv193 = zext i16 %74 to i64
  %add194 = add i64 %new_alloc_size.addr.2, %conv193
  %conv195 = trunc i64 %add194 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1423, ptr noundef nonnull @__func__.ntfs_attr_record_resize, ptr noundef nonnull @.str.20, i32 noundef %conv195) #11
  %new_size.biased.i = add i32 %conv195, 7
  %new_size.addr.0.i = and i32 %new_size.biased.i, -8
  %length.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 1
  %75 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %length.i, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.addr.0.i, i32 %77)
  %cmp.not.i = icmp eq i32 %new_size.addr.0.i, %77
  br i1 %cmp.not.i, label %do.body199.loopexit, label %if.then2.i

if.then2.i:                                       ; preds = %land.lhs.true
  %bytes_in_use.i = getelementptr inbounds %struct.MFT_RECORD, ptr %59, i32 0, i32 8
  %78 = ptrtoint ptr %bytes_in_use.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %bytes_in_use.i, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #11
  %sub.i = sub i32 %80, %77
  %add4.i = add i32 %sub.i, %new_size.addr.0.i
  %bytes_allocated.i = getelementptr inbounds %struct.MFT_RECORD, ptr %59, i32 0, i32 9
  %81 = ptrtoint ptr %bytes_allocated.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %bytes_allocated.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %83)
  %cmp5.i = icmp ugt i32 %add4.i, %83
  br i1 %cmp5.i, label %if.then2.i.if.end251_crit_edge, label %if.end7.i

if.then2.i.if.end251_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

if.end7.i:                                        ; preds = %if.then2.i
  %length.i.le = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 1
  %bytes_in_use.i.le = getelementptr inbounds %struct.MFT_RECORD, ptr %59, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %61, i32 %new_size.addr.0.i
  %add.ptr9.i = getelementptr i8, ptr %61, i32 %77
  %sub.ptr.lhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %59 to i32
  %84 = add i32 %77, %sub.ptr.lhs.cast.i
  %85 = sub i32 %sub.ptr.rhs.cast.i, %84
  %sub13.i = add i32 %85, %80
  %86 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr9.i, i32 %sub13.i)
  %87 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #11
  %88 = ptrtoint ptr %bytes_in_use.i.le to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %bytes_in_use.i.le, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_size.addr.0.i)
  %cmp15.not.i = icmp eq i32 %new_size.addr.0.i, 0
  br i1 %cmp15.not.i, label %if.end7.i.do.body199_crit_edge, label %if.then16.i

if.end7.i.do.body199_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body199

if.then16.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = tail call i32 @llvm.bswap.i32(i32 %new_size.addr.0.i) #11
  %90 = ptrtoint ptr %length.i.le to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %length.i.le, align 1
  br label %do.body199

do.body199.loopexit:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %length.i.le2029 = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 1
  br label %do.body199

do.body199:                                       ; preds = %do.body199.loopexit, %if.then16.i, %if.end7.i.do.body199_crit_edge
  %length.i1853 = phi ptr [ %length.i.le2029, %do.body199.loopexit ], [ %length.i.le, %if.end7.i.do.body199_crit_edge ], [ %length.i.le, %if.then16.i ]
  %value_offset1856 = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %call206 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #11
  %91 = ptrtoint ptr %length.i1853 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %length.i1853, align 1
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %value_offset1856 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %value_offset1856, align 1
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %conv211 = zext i16 %96 to i32
  %sub212 = sub i32 %93, %conv211
  %conv213 = zext i32 %sub212 to i64
  %97 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv213, ptr %allocated_size3, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call206) #11
  br i1 %cmp25, label %do.body227, label %do.body199.flush_done_crit_edge

do.body199.flush_done_crit_edge:                  ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #13
  br label %flush_done

do.body227:                                       ; preds = %do.body199
  %conv228 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv228, i64 %new_data_size)
  %cmp229 = icmp ugt i64 %conv228, %new_data_size
  br i1 %cmp229, label %do.body238, label %do.end246, !prof !166

do.body238:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2046, 0\0A.popsection", ""() #11, !srcloc !217
  unreachable

do.end246:                                        ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #13
  %conv247 = trunc i64 %new_data_size to i32
  %98 = tail call i32 @llvm.bswap.i32(i32 %conv247)
  %99 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %data, align 1
  br label %flush_done

if.end251:                                        ; preds = %if.then2.i.if.end251_crit_edge, %do.end188.if.end251_crit_edge
  %base_ntfs_ino.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i, i32 0, i32 5
  %100 = ptrtoint ptr %base_ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base_ntfs_ino.i, align 4
  %tobool.not.i1352 = icmp eq ptr %101, null
  br i1 %tobool.not.i1352, label %if.end251.ntfs_attr_put_search_ctx.exit_crit_edge, label %land.lhs.true.i

if.end251.ntfs_attr_put_search_ctx.exit_crit_edge: ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit

land.lhs.true.i:                                  ; preds = %if.end251
  %102 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %cmp.not.i1353 = icmp eq ptr %103, %101
  br i1 %cmp.not.i1353, label %land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge, label %if.then.i1354

land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit

if.then.i1354:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %103) #11
  br label %ntfs_attr_put_search_ctx.exit

ntfs_attr_put_search_ctx.exit:                    ; preds = %if.then.i1354, %land.lhs.true.i.ntfs_attr_put_search_ctx.exit_crit_edge, %if.end251.ntfs_attr_put_search_ctx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %104 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %104, ptr noundef nonnull %call.i) #11
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  tail call void @up_write(ptr noundef %lock) #11
  %call254 = tail call i32 @ntfs_attr_make_non_resident(ptr noundef %ni, i32 noundef %69)
  %105 = zext i32 %call254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call254, label %do.body279.critedge [
    i32 0, label %ntfs_attr_put_search_ctx.exit.retry_extend_crit_edge
    i32 -1, label %ntfs_attr_put_search_ctx.exit.do.body314_crit_edge
    i32 -28, label %ntfs_attr_put_search_ctx.exit.do.body314_crit_edge2519
  ], !prof !218

ntfs_attr_put_search_ctx.exit.do.body314_crit_edge2519: ; preds = %ntfs_attr_put_search_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body314

ntfs_attr_put_search_ctx.exit.do.body314_crit_edge: ; preds = %ntfs_attr_put_search_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body314

ntfs_attr_put_search_ctx.exit.retry_extend_crit_edge: ; preds = %ntfs_attr_put_search_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_extend

do.body279.critedge:                              ; preds = %ntfs_attr_put_search_ctx.exit
  %call286 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #11
  %106 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %allocated_size3, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call286) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp299 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %107)
  %cmp302.not = icmp slt i64 %start.2, %107
  %or.cond1326 = select i1 %cmp299, i1 %cmp302.not, i1 false
  br i1 %or.cond1326, label %do.body279.critedge.if.end308_crit_edge, label %if.then304

do.body279.critedge.if.end308_crit_edge:          ; preds = %do.body279.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end308

if.then304:                                       ; preds = %do.body279.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  %110 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %i_ino, align 8
  %112 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %109, ptr noundef nonnull @.str.35, i32 noundef %111, i32 noundef %114, i32 noundef %call254) #11
  br label %if.end308

if.end308:                                        ; preds = %if.then304, %do.body279.critedge.if.end308_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call254)
  %cmp309.not = icmp eq i32 %call254, -12
  %spec.select1327 = select i1 %cmp309.not, i32 -12, i32 -5
  br label %conv_err_out

do.body314:                                       ; preds = %ntfs_attr_put_search_ctx.exit.do.body314_crit_edge, %ntfs_attr_put_search_ctx.exit.do.body314_crit_edge2519
  %call321 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #11
  %115 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %allocated_size3, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call321) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp334 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %116)
  %cmp337.not = icmp slt i64 %start.2, %116
  %or.cond1328 = select i1 %cmp334, i1 %cmp337.not, i1 false
  br i1 %or.cond1328, label %do.body314.conv_err_out_crit_edge, label %if.then339

do.body314.conv_err_out_crit_edge:                ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #13
  br label %conv_err_out

if.then339:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call254)
  %cmp340 = icmp eq i32 %call254, -28
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 8
  br i1 %cmp340, label %if.then342, label %if.else344

if.then342:                                       ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %118, ptr noundef nonnull @.str.36) #11
  br label %conv_err_out

if.else344:                                       ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %118, ptr noundef nonnull @.str.37) #11
  br label %conv_err_out

do.body348:                                       ; preds = %if.end166
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.le = getelementptr inbounds i8, ptr %call.i, i32 8
  %runlist.le = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 11
  %119 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %state.i, align 4
  %121 = and i32 %120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool350.not = icmp eq i32 %121, 0
  br i1 %tobool350.not, label %do.body360, label %do.end368, !prof !166

do.body360:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2137, 0\0A.popsection", ""() #11, !srcloc !219
  unreachable

do.end368:                                        ; preds = %do.body348
  call void @__sanitizer_cov_trace_cmp8(i64 %new_alloc_size.addr.2, i64 %45)
  %cmp369 = icmp eq i64 %new_alloc_size.addr.2, %45
  br i1 %cmp369, label %do.body372, label %if.end390

do.body372:                                       ; preds = %do.end368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vcn.0)
  %tobool373.not = icmp eq i64 %vcn.0, 0
  br i1 %tobool373.not, label %do.body372.alloc_done_crit_edge, label %do.body381, !prof !169

do.body372.alloc_done_crit_edge:                  ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_done

do.body381:                                       ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2139, 0\0A.popsection", ""() #11, !srcloc !220
  unreachable

if.end390:                                        ; preds = %do.end368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start.2)
  %cmp391 = icmp slt i64 %start.2, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp394.not = icmp sgt i64 %start.2, %45
  %or.cond1329 = select i1 %cmp391, i1 true, i1 %cmp394.not
  br i1 %or.cond1329, label %lor.lhs.false396, label %if.end390.skip_sparse_crit_edge

if.end390.skip_sparse_crit_edge:                  ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_sparse

lor.lhs.false396:                                 ; preds = %if.end390
  %122 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %123)
  %cmp398.not = icmp eq i32 %123, -2147483648
  br i1 %cmp398.not, label %lor.lhs.false400, label %lor.lhs.false396.skip_sparse_crit_edge

lor.lhs.false396.skip_sparse_crit_edge:           ; preds = %lor.lhs.false396
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_sparse

lor.lhs.false400:                                 ; preds = %lor.lhs.false396
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  %124 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %flags.i, align 4
  %126 = and i32 %125, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool402.not = icmp eq i32 %126, 0
  br i1 %tobool402.not, label %lor.lhs.false400.skip_sparse_crit_edge, label %lor.lhs.false403

lor.lhs.false400.skip_sparse_crit_edge:           ; preds = %lor.lhs.false400
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_sparse

lor.lhs.false403:                                 ; preds = %lor.lhs.false400
  %127 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %state.i, align 4
  %129 = and i32 %128, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool405.not = icmp eq i32 %129, 0
  br i1 %tobool405.not, label %if.end407, label %lor.lhs.false403.skip_sparse_crit_edge

lor.lhs.false403.skip_sparse_crit_edge:           ; preds = %lor.lhs.false403
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_sparse

if.end407:                                        ; preds = %lor.lhs.false403
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2156, ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef nonnull @.str.38) #11
  br label %skip_sparse

skip_sparse:                                      ; preds = %if.end407, %lor.lhs.false403.skip_sparse_crit_edge, %lor.lhs.false400.skip_sparse_crit_edge, %lor.lhs.false396.skip_sparse_crit_edge, %if.end390.skip_sparse_crit_edge
  %130 = ptrtoint ptr %runlist.le to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %runlist.le, align 8
  %tobool410.not = icmp eq ptr %131, null
  br i1 %tobool410.not, label %skip_sparse.land.lhs.true446.critedge_crit_edge, label %skip_sparse.while.cond_crit_edge, !prof !166

skip_sparse.while.cond_crit_edge:                 ; preds = %skip_sparse
  br label %while.cond

skip_sparse.land.lhs.true446.critedge_crit_edge:  ; preds = %skip_sparse
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true446.critedge

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %skip_sparse.while.cond_crit_edge
  %rl.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %131, %skip_sparse.while.cond_crit_edge ]
  %length418 = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 2
  %132 = ptrtoint ptr %length418 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %length418, align 8
  %tobool419.not = icmp eq i64 %133, 0
  %incdec.ptr = getelementptr %struct.runlist_element, ptr %rl.0, i32 1
  br i1 %tobool419.not, label %if.end420, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end420:                                        ; preds = %while.cond
  %tobool421.not = icmp eq ptr %rl.0, null
  br i1 %tobool421.not, label %if.end420.land.lhs.true446.critedge_crit_edge, label %lor.lhs.false422, !prof !166

if.end420.land.lhs.true446.critedge_crit_edge:    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true446.critedge

lor.lhs.false422:                                 ; preds = %if.end420
  %lcn = getelementptr inbounds %struct.runlist_element, ptr %rl.0, i32 0, i32 1
  %134 = ptrtoint ptr %lcn to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %lcn, align 8
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.87)
  switch i64 %135, label %lor.lhs.false422.if.end479_crit_edge [
    i64 -2, label %lor.lhs.false422.if.end449_crit_edge
    i64 -3, label %land.lhs.true428
  ], !prof !221

lor.lhs.false422.if.end449_crit_edge:             ; preds = %lor.lhs.false422
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

lor.lhs.false422.if.end479_crit_edge:             ; preds = %lor.lhs.false422
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end479

land.lhs.true428:                                 ; preds = %lor.lhs.false422
  %cmp431 = icmp ugt ptr %rl.0, %131
  br i1 %cmp431, label %land.rhs433, label %land.lhs.true428.if.end479_crit_edge

land.lhs.true428.if.end479_crit_edge:             ; preds = %land.lhs.true428
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end479

land.rhs433:                                      ; preds = %land.lhs.true428
  %lcn434 = getelementptr %struct.runlist_element, ptr %rl.0, i32 -1, i32 1
  %136 = ptrtoint ptr %lcn434 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %lcn434, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %137)
  %cmp435 = icmp eq i64 %137, -2
  br i1 %cmp435, label %land.rhs433.if.end449_crit_edge, label %land.rhs433.if.end479_crit_edge, !prof !166

land.rhs433.if.end479_crit_edge:                  ; preds = %land.rhs433
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end479

land.rhs433.if.end449_crit_edge:                  ; preds = %land.rhs433
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

land.lhs.true446.critedge:                        ; preds = %if.end420.land.lhs.true446.critedge_crit_edge, %skip_sparse.land.lhs.true446.critedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool447.not = icmp eq i64 %45, 0
  br i1 %tobool447.not, label %first_alloc.thread, label %land.lhs.true446.critedge.if.end449_crit_edge

land.lhs.true446.critedge.if.end449_crit_edge:    ; preds = %land.lhs.true446.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

first_alloc.thread:                               ; preds = %land.lhs.true446.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom4951452 = zext i8 %139 to i64
  %shr5011455 = ashr i64 %new_alloc_size.addr.2, %sh_prom4951452
  br label %cond.end512

if.end449:                                        ; preds = %land.lhs.true446.critedge.if.end449_crit_edge, %land.rhs433.if.end449_crit_edge, %lor.lhs.false422.if.end449_crit_edge
  %call452 = tail call ptr @ntfs_mapping_pairs_decompress(ptr noundef %1, ptr noundef %61, ptr noundef %131) #11
  %cmp.i1363 = icmp ugt ptr %call452, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1363, label %if.then454, label %if.end470

if.then454:                                       ; preds = %if.end449
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp456 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp459.not = icmp slt i64 %start.2, %45
  %or.cond1333 = select i1 %cmp456, i1 %cmp459.not, i1 false
  br i1 %or.cond1333, label %if.then454.if.end465_crit_edge, label %if.then461

if.then454.if.end465_crit_edge:                   ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end465

if.then461:                                       ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %call452 to i32
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  %143 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %i_ino, align 8
  %145 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %type, align 4
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %142, ptr noundef nonnull @.str.39, i32 noundef %144, i32 noundef %147, i32 noundef %140) #11
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %if.then454.if.end465_crit_edge
  %cmp466.not = icmp eq ptr %call452, inttoptr (i32 -12 to ptr)
  %spec.select1334 = select i1 %cmp466.not, i32 -12, i32 -5
  br label %if.then946

if.end470:                                        ; preds = %if.end449
  %148 = ptrtoint ptr %runlist.le to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call452, ptr %runlist.le, align 8
  br label %while.cond473

while.cond473:                                    ; preds = %while.cond473.while.cond473_crit_edge, %if.end470
  %rl.2 = phi ptr [ %call452, %if.end470 ], [ %incdec.ptr477, %while.cond473.while.cond473_crit_edge ]
  %length474 = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %149 = ptrtoint ptr %length474 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %length474, align 8
  %tobool475.not = icmp eq i64 %150, 0
  %incdec.ptr477 = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  br i1 %tobool475.not, label %while.cond473.if.end479_crit_edge, label %while.cond473.while.cond473_crit_edge

while.cond473.while.cond473_crit_edge:            ; preds = %while.cond473
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond473

while.cond473.if.end479_crit_edge:                ; preds = %while.cond473
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end479

if.end479:                                        ; preds = %while.cond473.if.end479_crit_edge, %land.rhs433.if.end479_crit_edge, %land.lhs.true428.if.end479_crit_edge, %lor.lhs.false422.if.end479_crit_edge
  %rl.3 = phi ptr [ %rl.0, %land.rhs433.if.end479_crit_edge ], [ %rl.0, %land.lhs.true428.if.end479_crit_edge ], [ %rl.0, %lor.lhs.false422.if.end479_crit_edge ], [ %rl.2, %while.cond473.if.end479_crit_edge ]
  %lcn4811713 = getelementptr inbounds %struct.runlist_element, ptr %rl.3, i32 0, i32 1
  %151 = ptrtoint ptr %lcn4811713 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %lcn4811713, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %cmp4821714 = icmp slt i64 %152, 0
  br i1 %cmp4821714, label %land.rhs484.lr.ph, label %if.end479.first_alloc_crit_edge

if.end479.first_alloc_crit_edge:                  ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #13
  br label %first_alloc

land.rhs484.lr.ph:                                ; preds = %if.end479
  %153 = ptrtoint ptr %runlist.le to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %runlist.le, align 8
  br label %land.rhs484

land.rhs484:                                      ; preds = %while.body490.land.rhs484_crit_edge, %land.rhs484.lr.ph
  %rl.41715 = phi ptr [ %rl.3, %land.rhs484.lr.ph ], [ %incdec.ptr491, %while.body490.land.rhs484_crit_edge ]
  %cmp487 = icmp ugt ptr %rl.41715, %154
  br i1 %cmp487, label %while.body490, label %land.rhs484.first_alloc_crit_edge

land.rhs484.first_alloc_crit_edge:                ; preds = %land.rhs484
  call void @__sanitizer_cov_trace_pc() #13
  br label %first_alloc

while.body490:                                    ; preds = %land.rhs484
  %incdec.ptr491 = getelementptr %struct.runlist_element, ptr %rl.41715, i32 -1
  %lcn481 = getelementptr %struct.runlist_element, ptr %rl.41715, i32 -1, i32 1
  %155 = ptrtoint ptr %lcn481 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %lcn481, align 8
  %cmp482 = icmp slt i64 %156, 0
  br i1 %cmp482, label %while.body490.land.rhs484_crit_edge, label %while.body490.first_alloc_crit_edge

while.body490.first_alloc_crit_edge:              ; preds = %while.body490
  call void @__sanitizer_cov_trace_pc() #13
  br label %first_alloc

while.body490.land.rhs484_crit_edge:              ; preds = %while.body490
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs484

first_alloc:                                      ; preds = %while.body490.first_alloc_crit_edge, %land.rhs484.first_alloc_crit_edge, %if.end479.first_alloc_crit_edge
  %rl.4.lcssa = phi ptr [ %rl.3, %if.end479.first_alloc_crit_edge ], [ %rl.41715, %land.rhs484.first_alloc_crit_edge ], [ %incdec.ptr491, %while.body490.first_alloc_crit_edge ]
  %157 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom495 = zext i8 %158 to i64
  %shr496 = ashr i64 %45, %sh_prom495
  %sub497 = sub i64 %new_alloc_size.addr.2, %45
  %shr501 = ashr i64 %sub497, %sh_prom495
  %tobool502.not = icmp eq ptr %rl.4.lcssa, null
  br i1 %tobool502.not, label %first_alloc.cond.end512_crit_edge, label %land.lhs.true503

first_alloc.cond.end512_crit_edge:                ; preds = %first_alloc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end512

land.lhs.true503:                                 ; preds = %first_alloc
  %lcn504 = getelementptr inbounds %struct.runlist_element, ptr %rl.4.lcssa, i32 0, i32 1
  %159 = ptrtoint ptr %lcn504 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %lcn504, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %160)
  %cmp505 = icmp sgt i64 %160, -1
  br i1 %cmp505, label %cond.true507, label %land.lhs.true503.cond.end512_crit_edge

land.lhs.true503.cond.end512_crit_edge:           ; preds = %land.lhs.true503
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end512

cond.true507:                                     ; preds = %land.lhs.true503
  call void @__sanitizer_cov_trace_pc() #13
  %length509 = getelementptr inbounds %struct.runlist_element, ptr %rl.4.lcssa, i32 0, i32 2
  %161 = ptrtoint ptr %length509 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %length509, align 8
  %add510 = add i64 %162, %160
  br label %cond.end512

cond.end512:                                      ; preds = %cond.true507, %land.lhs.true503.cond.end512_crit_edge, %first_alloc.cond.end512_crit_edge, %first_alloc.thread
  %shr5011461 = phi i64 [ %shr501, %cond.true507 ], [ %shr501, %land.lhs.true503.cond.end512_crit_edge ], [ %shr501, %first_alloc.cond.end512_crit_edge ], [ %shr5011455, %first_alloc.thread ]
  %sub4971459 = phi i64 [ %sub497, %cond.true507 ], [ %sub497, %land.lhs.true503.cond.end512_crit_edge ], [ %sub497, %first_alloc.cond.end512_crit_edge ], [ %new_alloc_size.addr.2, %first_alloc.thread ]
  %shr4961458 = phi i64 [ %shr496, %cond.true507 ], [ %shr496, %land.lhs.true503.cond.end512_crit_edge ], [ %shr496, %first_alloc.cond.end512_crit_edge ], [ 0, %first_alloc.thread ]
  %cond513 = phi i64 [ %add510, %cond.true507 ], [ -1, %land.lhs.true503.cond.end512_crit_edge ], [ -1, %first_alloc.cond.end512_crit_edge ], [ -1, %first_alloc.thread ]
  %call514 = tail call ptr @ntfs_cluster_alloc(ptr noundef %1, i64 noundef %shr4961458, i64 noundef %shr5011461, i64 noundef %cond513, i32 noundef 1, i1 noundef zeroext true) #11
  %cmp.i1364 = icmp ugt ptr %call514, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1364, label %if.then516, label %if.end535

if.then516:                                       ; preds = %cond.end512
  %163 = ptrtoint ptr %call514 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp518 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp521.not = icmp slt i64 %start.2, %45
  %or.cond1335 = select i1 %cmp518, i1 %cmp521.not, i1 false
  br i1 %or.cond1335, label %if.then516.if.end527_crit_edge, label %if.then523

if.then516.if.end527_crit_edge:                   ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end527

if.then523:                                       ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 8
  %166 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %i_ino, align 8
  %168 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %type, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %165, ptr noundef nonnull @.str.40, i32 noundef %167, i32 noundef %170, i32 noundef %163) #11
  br label %if.end527

if.end527:                                        ; preds = %if.then523, %if.then516.if.end527_crit_edge
  %171 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %163, label %if.then533 [
    i32 -12, label %if.end527.if.then946_crit_edge
    i32 -28, label %err_out.fold.split
  ]

if.end527.if.then946_crit_edge:                   ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then946

if.then533:                                       ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then946

if.end535:                                        ; preds = %cond.end512
  %172 = ptrtoint ptr %runlist.le to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %runlist.le, align 8
  %call538 = tail call ptr @ntfs_runlists_merge(ptr noundef %173, ptr noundef %call514) #11
  %cmp.i1365 = icmp ugt ptr %call538, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1365, label %if.then540, label %if.end561

if.then540:                                       ; preds = %if.end535
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp542 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp545.not = icmp slt i64 %start.2, %45
  %or.cond1336 = select i1 %cmp542, i1 %cmp545.not, i1 false
  br i1 %or.cond1336, label %if.then540.if.end551_crit_edge, label %if.then547

if.then540.if.end551_crit_edge:                   ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end551

if.then547:                                       ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #13
  %174 = ptrtoint ptr %call538 to i32
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 8
  %177 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %i_ino, align 8
  %179 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %type, align 4
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %176, ptr noundef nonnull @.str.41, i32 noundef %178, i32 noundef %181, i32 noundef %174) #11
  br label %if.end551

if.end551:                                        ; preds = %if.then547, %if.then540.if.end551_crit_edge
  %cmp552.not = icmp eq ptr %call538, inttoptr (i32 -12 to ptr)
  %spec.select1337 = select i1 %cmp552.not, i32 -12, i32 -5
  %lcnbmp_lock.i = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock.i) #11
  %call.i1366 = tail call i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef %1, ptr noundef %call514) #11
  tail call void @up_write(ptr noundef %lcnbmp_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1366)
  %tobool557.not = icmp eq i32 %call.i1366, 0
  br i1 %tobool557.not, label %if.end551.if.end560_crit_edge, label %if.then558

if.end551.if.end560_crit_edge:                    ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end560

if.then558:                                       ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #13
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %183, ptr noundef nonnull @.str.30) #11
  %flags.i1367 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1367) #11
  br label %if.end560

if.end560:                                        ; preds = %if.then558, %if.end551.if.end560_crit_edge
  tail call void @kvfree(ptr noundef %call514) #11
  br label %if.then946

if.end561:                                        ; preds = %if.end535
  %184 = ptrtoint ptr %runlist.le to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call538, ptr %runlist.le, align 8
  %185 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom567 = zext i8 %186 to i64
  %shr568 = ashr i64 %sub4971459, %sh_prom567
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2244, ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef nonnull @.str.42, i64 noundef %shr568) #11
  %data569 = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 7
  %187 = ptrtoint ptr %data569 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 8)
  %188 = load i64, ptr %data569, align 1
  %189 = tail call i64 @llvm.bswap.i64(i64 %188) #11
  %call571 = tail call ptr @ntfs_rl_find_vcn_nolock(ptr noundef %call538, i64 noundef %189) #11
  %tobool573.not = icmp eq ptr %call571, null
  br i1 %tobool573.not, label %do.body583, label %do.body592, !prof !166

do.body583:                                       ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2248, 0\0A.popsection", ""() #11, !srcloc !222
  unreachable

do.body592:                                       ; preds = %if.end561
  %length593 = getelementptr inbounds %struct.runlist_element, ptr %call571, i32 0, i32 2
  %190 = ptrtoint ptr %length593 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %length593, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %191)
  %tobool594.not = icmp eq i64 %191, 0
  br i1 %tobool594.not, label %do.body604, label %do.body613, !prof !166

do.body604:                                       ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2249, 0\0A.popsection", ""() #11, !srcloc !223
  unreachable

do.body613:                                       ; preds = %do.body592
  %lcn614 = getelementptr inbounds %struct.runlist_element, ptr %call571, i32 0, i32 1
  %192 = ptrtoint ptr %lcn614 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %lcn614, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %193)
  %cmp615 = icmp slt i64 %193, -1
  br i1 %cmp615, label %do.body624, label %do.end632, !prof !166

do.body624:                                       ; preds = %do.body613
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2250, 0\0A.popsection", ""() #11, !srcloc !224
  unreachable

do.end632:                                        ; preds = %do.body613
  %call633 = tail call i32 @ntfs_get_size_for_mapping_pairs(ptr noundef %1, ptr noundef nonnull %call571, i64 noundef %189, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call633)
  %cmp634 = icmp slt i32 %call633, 1
  br i1 %cmp634, label %if.then642, label %if.end653, !prof !166

if.then642:                                       ; preds = %do.end632
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp643 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp646.not = icmp slt i64 %start.2, %45
  %or.cond1338 = select i1 %cmp643, i1 %cmp646.not, i1 false
  br i1 %or.cond1338, label %if.then642.undo_alloc_crit_edge, label %if.then648

if.then642.undo_alloc_crit_edge:                  ; preds = %if.then642
  call void @__sanitizer_cov_trace_pc() #13
  br label %undo_alloc

if.then648:                                       ; preds = %if.then642
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 8
  %196 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %i_ino, align 8
  %198 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %type, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %195, ptr noundef nonnull @.str.43, i32 noundef %197, i32 noundef %200, i32 noundef %call633) #11
  br label %undo_alloc

if.end653:                                        ; preds = %do.end632
  %length654 = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 1
  %201 = ptrtoint ptr %length654 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %length654, align 1
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  %mapping_pairs_offset = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 7, i32 0, i32 2
  %204 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %mapping_pairs_offset, align 1
  %206 = tail call i16 @llvm.bswap.i16(i16 %205)
  %conv656 = zext i16 %206 to i32
  %add657 = add nuw i32 %call633, %conv656
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1423, ptr noundef nonnull @__func__.ntfs_attr_record_resize, ptr noundef nonnull @.str.20, i32 noundef %add657) #11
  %new_size.biased.i1368 = add nuw i32 %add657, 7
  %new_size.addr.0.i1369 = and i32 %new_size.biased.i1368, -8
  %207 = ptrtoint ptr %length654 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %length654, align 1
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %new_size.addr.0.i1369, i32 %209)
  %cmp.not.i1371 = icmp eq i32 %new_size.addr.0.i1369, %209
  br i1 %cmp.not.i1371, label %if.end653.if.end694_crit_edge, label %if.then2.i1377

if.end653.if.end694_crit_edge:                    ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end694

if.then2.i1377:                                   ; preds = %if.end653
  %bytes_in_use.i1372 = getelementptr inbounds %struct.MFT_RECORD, ptr %59, i32 0, i32 8
  %210 = ptrtoint ptr %bytes_in_use.i1372 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %bytes_in_use.i1372, align 1
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #11
  %sub.i1373 = sub i32 %212, %209
  %add4.i1374 = add i32 %sub.i1373, %new_size.addr.0.i1369
  %bytes_allocated.i1375 = getelementptr inbounds %struct.MFT_RECORD, ptr %59, i32 0, i32 9
  %213 = ptrtoint ptr %bytes_allocated.i1375 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %bytes_allocated.i1375, align 1
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i1374, i32 %215)
  %cmp5.i1376 = icmp ugt i32 %add4.i1374, %215
  br i1 %cmp5.i1376, label %do.end685, label %if.end7.i1384

if.end7.i1384:                                    ; preds = %if.then2.i1377
  %add.ptr.i1378 = getelementptr i8, ptr %61, i32 %new_size.addr.0.i1369
  %add.ptr9.i1379 = getelementptr i8, ptr %61, i32 %209
  %sub.ptr.lhs.cast.i1380 = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i1381 = ptrtoint ptr %59 to i32
  %216 = add i32 %209, %sub.ptr.lhs.cast.i1380
  %217 = sub i32 %sub.ptr.rhs.cast.i1381, %216
  %sub13.i1382 = add i32 %217, %212
  %218 = call ptr @memmove(ptr %add.ptr.i1378, ptr %add.ptr9.i1379, i32 %sub13.i1382)
  %219 = tail call i32 @llvm.bswap.i32(i32 %add4.i1374) #11
  %220 = ptrtoint ptr %bytes_in_use.i1372 to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 %219, ptr %bytes_in_use.i1372, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_size.addr.0.i1369)
  %cmp15.not.i1383 = icmp eq i32 %new_size.addr.0.i1369, 0
  br i1 %cmp15.not.i1383, label %if.end7.i1384.if.end694_crit_edge, label %if.then16.i1385

if.end7.i1384.if.end694_crit_edge:                ; preds = %if.end7.i1384
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end694

if.then16.i1385:                                  ; preds = %if.end7.i1384
  call void @__sanitizer_cov_trace_pc() #13
  %221 = tail call i32 @llvm.bswap.i32(i32 %new_size.addr.0.i1369) #11
  %222 = ptrtoint ptr %length654 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %221, ptr %length654, align 1
  br label %if.end694

do.end685:                                        ; preds = %if.then2.i1377
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp686 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp689.not = icmp slt i64 %start.2, %45
  %or.cond1339 = select i1 %cmp686, i1 %cmp689.not, i1 false
  br i1 %or.cond1339, label %do.end685.undo_alloc_crit_edge, label %if.then691

do.end685.undo_alloc_crit_edge:                   ; preds = %do.end685
  call void @__sanitizer_cov_trace_pc() #13
  br label %undo_alloc

if.then691:                                       ; preds = %do.end685
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %224, ptr noundef nonnull @.str.44) #11
  br label %undo_alloc

if.end694:                                        ; preds = %if.then16.i1385, %if.end7.i1384.if.end694_crit_edge, %if.end653.if.end694_crit_edge
  %225 = ptrtoint ptr %mapping_pairs_offset to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %226 = load i16, ptr %mapping_pairs_offset, align 1
  %227 = tail call i16 @llvm.bswap.i16(i16 %226)
  %conv697 = zext i16 %227 to i32
  %add.ptr698 = getelementptr i8, ptr %61, i32 %conv697
  %call699 = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %1, ptr noundef %add.ptr698, i32 noundef %call633, ptr noundef nonnull %call571, i64 noundef %189, i64 noundef -1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call699)
  %tobool700.not = icmp eq i32 %call699, 0
  br i1 %tobool700.not, label %if.end718, label %if.then707, !prof !169

if.then707:                                       ; preds = %if.end694
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp708 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp711.not = icmp slt i64 %start.2, %45
  %or.cond1340 = select i1 %cmp708, i1 %cmp711.not, i1 false
  br i1 %or.cond1340, label %if.then707.undo_alloc_crit_edge, label %if.then713

if.then707.undo_alloc_crit_edge:                  ; preds = %if.then707
  call void @__sanitizer_cov_trace_pc() #13
  br label %undo_alloc

if.then713:                                       ; preds = %if.then707
  call void @__sanitizer_cov_trace_pc() #13
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 8
  %230 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %i_ino, align 8
  %232 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %type, align 4
  %234 = tail call i32 @llvm.bswap.i32(i32 %233)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %229, ptr noundef nonnull @.str.45, i32 noundef %231, i32 noundef %234, i32 noundef %call699) #11
  br label %undo_alloc

if.end718:                                        ; preds = %if.end694
  %235 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom721 = zext i8 %236 to i64
  %shr722 = ashr i64 %new_alloc_size.addr.2, %sh_prom721
  %sub723 = add i64 %shr722, -1
  %237 = tail call i64 @llvm.bswap.i64(i64 %sub723) #11
  %highest_vcn = getelementptr inbounds %struct.ATTR_RECORD, ptr %61, i32 0, i32 7, i32 0, i32 1
  %238 = ptrtoint ptr %highest_vcn to i32
  call void @__asan_storeN_noabort(i32 %238, i32 8)
  store i64 %237, ptr %highest_vcn, align 1
  %239 = ptrtoint ptr %data569 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 8)
  %240 = load i64, ptr %data569, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %240)
  %tobool728.not = icmp eq i64 %240, 0
  br i1 %tobool728.not, label %if.end718.do.body746_crit_edge, label %if.then729

if.end718.do.body746_crit_edge:                   ; preds = %if.end718
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body746

if.then729:                                       ; preds = %if.end718
  %241 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %242, i32 0, i32 13
  %243 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %244) #11
  %245 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %246, i32 0, i32 3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i1388 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i1388, label %if.then.i1389, label %if.then729.mark_mft_record_dirty.exit_crit_edge

if.then729.mark_mft_record_dirty.exit_crit_edge:  ; preds = %if.then729
  call void @__sanitizer_cov_trace_pc() #13
  br label %mark_mft_record_dirty.exit

if.then.i1389:                                    ; preds = %if.then729
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mark_mft_record_dirty(ptr noundef %246) #11
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i1389, %if.then729.mark_mft_record_dirty.exit_crit_edge
  %base_ntfs_ino.i1390 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i, i32 0, i32 5
  %247 = ptrtoint ptr %base_ntfs_ino.i1390 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %base_ntfs_ino.i1390, align 4
  %tobool.not.i1391 = icmp eq ptr %248, null
  br i1 %tobool.not.i1391, label %if.then.i1393, label %if.end.i, !prof !169

if.then.i1393:                                    ; preds = %mark_mft_record_dirty.exit
  call void @__sanitizer_cov_trace_pc() #13
  %249 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.le to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.le, align 8
  %250 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %call.i, align 8
  %attrs_offset.i = getelementptr inbounds %struct.MFT_RECORD, ptr %251, i32 0, i32 6
  %252 = ptrtoint ptr %attrs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 2)
  %253 = load i16, ptr %attrs_offset.i, align 1
  %254 = tail call i16 @llvm.bswap.i16(i16 %253) #11
  %conv.i = zext i16 %254 to i32
  %add.ptr.i1392 = getelementptr i8, ptr %251, i32 %conv.i
  %255 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %add.ptr.i1392, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %256 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, align 8
  br label %ntfs_attr_reinit_search_ctx.exit

if.end.i:                                         ; preds = %mark_mft_record_dirty.exit
  %257 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %cmp.not.i1395 = icmp eq ptr %258, %248
  br i1 %cmp.not.i1395, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %258) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %259 = ptrtoint ptr %base_ntfs_ino.i1390 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %base_ntfs_ino.i1390, align 4
  %base_mrec.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i, i32 0, i32 6
  %261 = ptrtoint ptr %base_mrec.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %base_mrec.i, align 8
  %attrs_offset.i.i1396 = getelementptr inbounds %struct.MFT_RECORD, ptr %262, i32 0, i32 6
  %263 = ptrtoint ptr %attrs_offset.i.i1396 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 2)
  %264 = load i16, ptr %attrs_offset.i.i1396, align 1
  %265 = tail call i16 @llvm.bswap.i16(i16 %264) #11
  %conv.i.i1397 = zext i16 %265 to i32
  %add.ptr.i.i1398 = getelementptr i8, ptr %262, i32 %conv.i.i1397
  %266 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %262, ptr %call.i, align 8
  %267 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %add.ptr.i.i1398, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %268 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.le to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.le, align 8
  %269 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %260, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %270 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 16)
  br label %ntfs_attr_reinit_search_ctx.exit

ntfs_attr_reinit_search_ctx.exit:                 ; preds = %if.end9.i, %if.then.i1393
  %271 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %type, align 4
  %273 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %name, align 8
  %275 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %name_len, align 4
  %call734 = tail call i32 @ntfs_attr_lookup(i32 noundef %272, ptr noundef %274, i32 noundef %276, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call734)
  %tobool735.not = icmp eq i32 %call734, 0
  br i1 %tobool735.not, label %if.end743, label %restore_undo_alloc, !prof !169

if.end743:                                        ; preds = %ntfs_attr_reinit_search_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %277 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  br label %do.body746

do.body746:                                       ; preds = %if.end743, %if.end718.do.body746_crit_edge
  %a.0 = phi ptr [ %278, %if.end743 ], [ %61, %if.end718.do.body746_crit_edge ]
  %call753 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #11
  %279 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_store8_noabort(i32 %279)
  store i64 %new_alloc_size.addr.2, ptr %allocated_size3, align 8
  %280 = tail call i64 @llvm.bswap.i64(i64 %new_alloc_size.addr.2) #11
  %allocated_size759 = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0, i32 0, i32 7, i32 0, i32 5
  %281 = ptrtoint ptr %allocated_size759 to i32
  call void @__asan_storeN_noabort(i32 %281, i32 8)
  store i64 %280, ptr %allocated_size759, align 1
  %282 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile i32, ptr %state.i, align 4
  %284 = and i32 %283, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool761.not = icmp eq i32 %284, 0
  br i1 %tobool761.not, label %lor.lhs.false762, label %do.body746.if.then765_crit_edge

do.body746.if.then765_crit_edge:                  ; preds = %do.body746
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then765

lor.lhs.false762:                                 ; preds = %do.body746
  %285 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %state.i, align 4
  %287 = and i32 %286, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool764.not = icmp eq i32 %287, 0
  br i1 %tobool764.not, label %lor.lhs.false762.do.body779_crit_edge, label %lor.lhs.false762.if.then765_crit_edge

lor.lhs.false762.if.then765_crit_edge:            ; preds = %lor.lhs.false762
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then765

lor.lhs.false762.do.body779_crit_edge:            ; preds = %lor.lhs.false762
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body779

if.then765:                                       ; preds = %lor.lhs.false762.if.then765_crit_edge, %do.body746.if.then765_crit_edge
  %itype = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18
  %288 = ptrtoint ptr %itype to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %itype, align 8
  %add767 = add i64 %289, %sub4971459
  store i64 %add767, ptr %itype, align 8
  %290 = tail call i64 @llvm.bswap.i64(i64 %add767) #11
  %compressed_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.0, i32 0, i32 7, i32 0, i32 8
  %291 = ptrtoint ptr %compressed_size to i32
  call void @__asan_storeN_noabort(i32 %291, i32 8)
  store i64 %290, ptr %compressed_size, align 1
  %292 = ptrtoint ptr %itype to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %itype, align 8
  br label %do.body779

do.body779:                                       ; preds = %if.then765, %lor.lhs.false762.do.body779_crit_edge
  %.sink = phi i64 [ %293, %if.then765 ], [ %new_alloc_size.addr.2, %lor.lhs.false762.do.body779_crit_edge ]
  %shr774 = ashr i64 %.sink, 9
  %i_blocks = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 22
  %294 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 %shr774, ptr %i_blocks, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call753) #11
  br label %alloc_done

alloc_done:                                       ; preds = %do.body779, %do.body372.alloc_done_crit_edge
  %a.1 = phi ptr [ %61, %do.body372.alloc_done_crit_edge ], [ %a.0, %do.body779 ]
  br i1 %cmp25, label %do.body791, label %alloc_done.flush_done_crit_edge

alloc_done.flush_done_crit_edge:                  ; preds = %alloc_done
  call void @__sanitizer_cov_trace_pc() #13
  br label %flush_done

do.body791:                                       ; preds = %alloc_done
  %data_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.1, i32 0, i32 7, i32 0, i32 6
  %295 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %295, i32 8)
  %296 = load i64, ptr %data_size, align 1
  %297 = tail call i64 @llvm.bswap.i64(i64 %296) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %297, i64 %new_data_size)
  %cmp794 = icmp sgt i64 %297, %new_data_size
  br i1 %cmp794, label %do.body803, label %do.end811, !prof !166

do.body803:                                       ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2347, 0\0A.popsection", ""() #11, !srcloc !225
  unreachable

do.end811:                                        ; preds = %do.body791
  call void @__sanitizer_cov_trace_pc() #13
  %298 = tail call i64 @llvm.bswap.i64(i64 %new_data_size) #11
  %299 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %299, i32 8)
  store i64 %298, ptr %data_size, align 1
  br label %flush_done

flush_done:                                       ; preds = %do.end811, %alloc_done.flush_done_crit_edge, %do.end246, %do.body199.flush_done_crit_edge
  %300 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %page.i1408 = getelementptr inbounds %struct._ntfs_inode, ptr %301, i32 0, i32 13
  %302 = ptrtoint ptr %page.i1408 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %page.i1408, align 8
  tail call void @flush_dcache_page(ptr noundef %303) #11
  %304 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %state.i.i1409 = getelementptr inbounds %struct._ntfs_inode, ptr %305, i32 0, i32 3
  %call.i.i1410 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i1409) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1410)
  %tobool.not.i1411 = icmp eq i32 %call.i.i1410, 0
  br i1 %tobool.not.i1411, label %if.then.i1412, label %flush_done.done_crit_edge

flush_done.done_crit_edge:                        ; preds = %flush_done
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then.i1412:                                    ; preds = %flush_done
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mark_mft_record_dirty(ptr noundef %305) #11
  br label %done

done:                                             ; preds = %if.then.i1412, %flush_done.done_crit_edge, %if.then146.done_crit_edge
  %new_alloc_size.addr.3 = phi i64 [ %new_alloc_size.addr.2, %flush_done.done_crit_edge ], [ %new_alloc_size.addr.2, %if.then.i1412 ], [ %45, %if.then146.done_crit_edge ]
  %base_ntfs_ino.i1415 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i, i32 0, i32 5
  %306 = ptrtoint ptr %base_ntfs_ino.i1415 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %base_ntfs_ino.i1415, align 4
  %tobool.not.i1416 = icmp eq ptr %307, null
  br i1 %tobool.not.i1416, label %done.ntfs_attr_put_search_ctx.exit1422_crit_edge, label %land.lhs.true.i1419

done.ntfs_attr_put_search_ctx.exit1422_crit_edge: ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit1422

land.lhs.true.i1419:                              ; preds = %done
  %308 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %cmp.not.i1418 = icmp eq ptr %309, %307
  br i1 %cmp.not.i1418, label %land.lhs.true.i1419.ntfs_attr_put_search_ctx.exit1422_crit_edge, label %if.then.i1420

land.lhs.true.i1419.ntfs_attr_put_search_ctx.exit1422_crit_edge: ; preds = %land.lhs.true.i1419
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit1422

if.then.i1420:                                    ; preds = %land.lhs.true.i1419
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %309) #11
  br label %ntfs_attr_put_search_ctx.exit1422

ntfs_attr_put_search_ctx.exit1422:                ; preds = %if.then.i1420, %land.lhs.true.i1419.ntfs_attr_put_search_ctx.exit1422_crit_edge, %done.ntfs_attr_put_search_ctx.exit1422_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %310 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %310, ptr noundef %call.i) #11
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  tail call void @up_write(ptr noundef %lock) #11
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2359, ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef nonnull @.str.46, i64 noundef %new_alloc_size.addr.3) #11
  br label %cleanup

restore_undo_alloc:                               ; preds = %ntfs_attr_reinit_search_ctx.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %start.2)
  %cmp820 = icmp sgt i64 %start.2, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %start.2, i64 %45)
  %cmp823.not = icmp slt i64 %start.2, %45
  %or.cond1341 = select i1 %cmp820, i1 %cmp823.not, i1 false
  br i1 %or.cond1341, label %restore_undo_alloc.if.end829_crit_edge, label %if.then825

restore_undo_alloc.if.end829_crit_edge:           ; preds = %restore_undo_alloc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end829

if.then825:                                       ; preds = %restore_undo_alloc
  call void @__sanitizer_cov_trace_pc() #13
  %311 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %1, align 8
  %313 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %i_ino, align 8
  %315 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %type, align 4
  %317 = tail call i32 @llvm.bswap.i32(i32 %316)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %312, ptr noundef nonnull @.str.47, i32 noundef %314, i32 noundef %317, i32 noundef %call734) #11
  br label %if.end829

if.end829:                                        ; preds = %if.then825, %restore_undo_alloc.if.end829_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call734)
  %cmp830 = icmp eq i32 %call734, -2
  %spec.select1342 = select i1 %cmp830, i32 -5, i32 %call734
  tail call void @ntfs_attr_reinit_search_ctx(ptr noundef %call.i)
  %318 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %type, align 4
  %320 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %name, align 8
  %322 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %name_len, align 4
  %324 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom839 = zext i8 %325 to i64
  %shr840 = ashr i64 %45, %sh_prom839
  %call841 = tail call i32 @ntfs_attr_lookup(i32 noundef %319, ptr noundef %321, i32 noundef %323, i32 noundef 0, i64 noundef %shr840, ptr noundef null, i32 noundef 0, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call841)
  %tobool842.not = icmp eq i32 %call841, 0
  br i1 %tobool842.not, label %if.end886, label %if.then843

if.then843:                                       ; preds = %if.end829
  %326 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %327, ptr noundef nonnull @.str.48) #11
  %call852 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #11
  %328 = ptrtoint ptr %allocated_size3 to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %new_alloc_size.addr.2, ptr %allocated_size3, align 8
  %329 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load volatile i32, ptr %state.i, align 4
  %331 = and i32 %330, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool857.not = icmp eq i32 %331, 0
  br i1 %tobool857.not, label %lor.lhs.false858, label %if.then843.if.then861_crit_edge

if.then843.if.then861_crit_edge:                  ; preds = %if.then843
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then861

lor.lhs.false858:                                 ; preds = %if.then843
  %332 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load volatile i32, ptr %state.i, align 4
  %334 = and i32 %333, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool860.not = icmp eq i32 %334, 0
  br i1 %tobool860.not, label %lor.lhs.false858.do.body874_crit_edge, label %lor.lhs.false858.if.then861_crit_edge

lor.lhs.false858.if.then861_crit_edge:            ; preds = %lor.lhs.false858
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then861

lor.lhs.false858.do.body874_crit_edge:            ; preds = %lor.lhs.false858
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body874

if.then861:                                       ; preds = %lor.lhs.false858.if.then861_crit_edge, %if.then843.if.then861_crit_edge
  %itype863 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 18
  %335 = ptrtoint ptr %itype863 to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %itype863, align 8
  %add865 = add i64 %336, %sub4971459
  store i64 %add865, ptr %itype863, align 8
  br label %do.body874

do.body874:                                       ; preds = %if.then861, %lor.lhs.false858.do.body874_crit_edge
  %add865.sink = phi i64 [ %add865, %if.then861 ], [ %new_alloc_size.addr.2, %lor.lhs.false858.do.body874_crit_edge ]
  %shr868 = ashr i64 %add865.sink, 9
  %i_blocks869 = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 22
  %337 = ptrtoint ptr %i_blocks869 to i32
  call void @__asan_store8_noabort(i32 %337)
  store i64 %shr868, ptr %i_blocks869, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call852) #11
  tail call void @ntfs_attr_put_search_ctx(ptr noundef %call.i)
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  tail call void @up_write(ptr noundef %lock) #11
  %flags.i1429 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1429) #11
  %conv885 = sext i32 %spec.select1342 to i64
  br label %cleanup

if.end886:                                        ; preds = %if.end829
  call void @__sanitizer_cov_trace_pc() #13
  %338 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom889 = zext i8 %339 to i64
  %shr890 = ashr i64 %45, %sh_prom889
  %sub891 = add i64 %shr890, -1
  %340 = tail call i64 @llvm.bswap.i64(i64 %sub891) #11
  %341 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %highest_vcn895 = getelementptr inbounds %struct.ATTR_RECORD, ptr %342, i32 0, i32 7, i32 0, i32 1
  %343 = ptrtoint ptr %highest_vcn895 to i32
  call void @__asan_storeN_noabort(i32 %343, i32 8)
  store i64 %340, ptr %highest_vcn895, align 1
  br label %undo_alloc

undo_alloc:                                       ; preds = %if.end886, %if.then713, %if.then707.undo_alloc_crit_edge, %if.then691, %do.end685.undo_alloc_crit_edge, %if.then648, %if.then642.undo_alloc_crit_edge
  %attr_len.1 = phi i32 [ %203, %if.end886 ], [ %attr_len.0, %if.then642.undo_alloc_crit_edge ], [ %attr_len.0, %if.then648 ], [ %203, %do.end685.undo_alloc_crit_edge ], [ %203, %if.then691 ], [ %203, %if.then707.undo_alloc_crit_edge ], [ %203, %if.then713 ]
  %mp_rebuilt.0.off0 = phi i1 [ true, %if.end886 ], [ false, %if.then642.undo_alloc_crit_edge ], [ false, %if.then648 ], [ false, %do.end685.undo_alloc_crit_edge ], [ false, %if.then691 ], [ true, %if.then707.undo_alloc_crit_edge ], [ true, %if.then713 ]
  %err.3 = phi i32 [ %spec.select1342, %if.end886 ], [ -5, %if.then642.undo_alloc_crit_edge ], [ -5, %if.then648 ], [ -95, %do.end685.undo_alloc_crit_edge ], [ -95, %if.then691 ], [ -5, %if.then707.undo_alloc_crit_edge ], [ -5, %if.then713 ]
  %344 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom898 = zext i8 %345 to i64
  %shr899 = ashr i64 %45, %sh_prom898
  %call.i1430 = tail call i64 @__ntfs_cluster_free(ptr noundef %ni, i64 noundef %shr899, i64 noundef -1, ptr noundef %call.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1430)
  %cmp901 = icmp slt i64 %call.i1430, 0
  br i1 %cmp901, label %if.then903, label %undo_alloc.if.end905_crit_edge

undo_alloc.if.end905_crit_edge:                   ; preds = %undo_alloc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end905

if.then903:                                       ; preds = %undo_alloc
  call void @__sanitizer_cov_trace_pc() #13
  %346 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %347, ptr noundef nonnull @.str.30) #11
  %flags.i1431 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1431) #11
  br label %if.end905

if.end905:                                        ; preds = %if.then903, %undo_alloc.if.end905_crit_edge
  %348 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %call.i, align 8
  %350 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %call909 = tail call i32 @ntfs_rl_truncate_nolock(ptr noundef %1, ptr noundef %runlist.le, i64 noundef %shr899) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call909)
  %tobool910.not = icmp ne i32 %call909, 0
  %cmp.i1432 = icmp ugt ptr %349, inttoptr (i32 -4096 to ptr)
  %or.cond1484 = select i1 %tobool910.not, i1 true, i1 %cmp.i1432
  br i1 %or.cond1484, label %if.then914, label %if.else919

if.then914:                                       ; preds = %if.end905
  call void @__sanitizer_cov_trace_pc() #13
  %352 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %1, align 8
  %cond918 = select i1 %cmp.i1432, ptr @.str.50, ptr @.str.51
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %353, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond918) #11
  %flags.i1434 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1434) #11
  br label %if.then946

if.else919:                                       ; preds = %if.end905
  br i1 %mp_rebuilt.0.off0, label %if.then921, label %if.else919.if.then946_crit_edge

if.else919.if.then946_crit_edge:                  ; preds = %if.else919
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then946

if.then921:                                       ; preds = %if.else919
  %call922 = tail call i32 @ntfs_attr_record_resize(ptr noundef %349, ptr noundef %351, i32 noundef %attr_len.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call922)
  %tobool923.not = icmp eq i32 %call922, 0
  br i1 %tobool923.not, label %if.else926, label %if.then924

if.then924:                                       ; preds = %if.then921
  call void @__sanitizer_cov_trace_pc() #13
  %354 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %355, ptr noundef nonnull @.str.52) #11
  %flags.i1435 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1435) #11
  br label %if.then946

if.else926:                                       ; preds = %if.then921
  %mapping_pairs_offset928 = getelementptr inbounds %struct.ATTR_RECORD, ptr %351, i32 0, i32 7, i32 0, i32 2
  %356 = ptrtoint ptr %mapping_pairs_offset928 to i32
  call void @__asan_loadN_noabort(i32 %356, i32 2)
  %357 = load i16, ptr %mapping_pairs_offset928, align 1
  %358 = tail call i16 @llvm.bswap.i16(i16 %357)
  %conv929 = zext i16 %358 to i32
  %add.ptr930 = getelementptr i8, ptr %351, i32 %conv929
  %sub934 = sub i32 %attr_len.1, %conv929
  %call935 = tail call i32 @ntfs_mapping_pairs_build(ptr noundef %1, ptr noundef %add.ptr930, i32 noundef %sub934, ptr noundef nonnull %call571, i64 noundef %shr899, i64 noundef -1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call935)
  %tobool936.not = icmp eq i32 %call935, 0
  br i1 %tobool936.not, label %if.else926.if.end939_crit_edge, label %if.then937

if.else926.if.end939_crit_edge:                   ; preds = %if.else926
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end939

if.then937:                                       ; preds = %if.else926
  call void @__sanitizer_cov_trace_pc() #13
  %359 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef %360, ptr noundef nonnull @.str.53) #11
  %flags.i1436 = getelementptr inbounds %struct.ntfs_volume, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i1436) #11
  br label %if.end939

if.end939:                                        ; preds = %if.then937, %if.else926.if.end939_crit_edge
  %361 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %page.i1437 = getelementptr inbounds %struct._ntfs_inode, ptr %362, i32 0, i32 13
  %363 = ptrtoint ptr %page.i1437 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %page.i1437, align 8
  tail call void @flush_dcache_page(ptr noundef %364) #11
  %365 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  tail call fastcc void @mark_mft_record_dirty(ptr noundef %366)
  br label %if.then946

err_out.fold.split:                               ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then946

if.then946.loopexit:                              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then946

if.then946:                                       ; preds = %if.then946.loopexit, %err_out.fold.split, %if.end939, %if.then924, %if.else919.if.then946_crit_edge, %if.then914, %if.end560, %if.then533, %if.end527.if.then946_crit_edge, %if.end465, %if.end151.if.then946_crit_edge
  %m.01479 = phi ptr [ %59, %if.then533 ], [ %59, %if.end527.if.then946_crit_edge ], [ %59, %if.end560 ], [ %349, %if.then914 ], [ %349, %if.then924 ], [ %349, %if.end939 ], [ %349, %if.else919.if.then946_crit_edge ], [ %59, %if.end465 ], [ %59, %err_out.fold.split ], [ %call98, %if.then946.loopexit ], [ %call98, %if.end151.if.then946_crit_edge ]
  %err.41477 = phi i32 [ -5, %if.then533 ], [ %163, %if.end527.if.then946_crit_edge ], [ %spec.select1337, %if.end560 ], [ %err.3, %if.then914 ], [ %err.3, %if.then924 ], [ %err.3, %if.end939 ], [ %err.3, %if.else919.if.then946_crit_edge ], [ %spec.select1334, %if.end465 ], [ -28, %err_out.fold.split ], [ %call153, %if.then946.loopexit ], [ -5, %if.end151.if.then946_crit_edge ]
  %base_ntfs_ino.i1438 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call.i, i32 0, i32 5
  %367 = ptrtoint ptr %base_ntfs_ino.i1438 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %base_ntfs_ino.i1438, align 4
  %tobool.not.i1439 = icmp eq ptr %368, null
  br i1 %tobool.not.i1439, label %if.then946.ntfs_attr_put_search_ctx.exit1445_crit_edge, label %land.lhs.true.i1442

if.then946.ntfs_attr_put_search_ctx.exit1445_crit_edge: ; preds = %if.then946
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit1445

land.lhs.true.i1442:                              ; preds = %if.then946
  %369 = ptrtoint ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %.compoundliteral.sroa.42.0..sroa_idx.i.i, align 4
  %cmp.not.i1441 = icmp eq ptr %370, %368
  br i1 %cmp.not.i1441, label %land.lhs.true.i1442.ntfs_attr_put_search_ctx.exit1445_crit_edge, label %if.then.i1443

land.lhs.true.i1442.ntfs_attr_put_search_ctx.exit1445_crit_edge: ; preds = %land.lhs.true.i1442
  call void @__sanitizer_cov_trace_pc() #13
  br label %ntfs_attr_put_search_ctx.exit1445

if.then.i1443:                                    ; preds = %land.lhs.true.i1442
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %370) #11
  br label %ntfs_attr_put_search_ctx.exit1445

ntfs_attr_put_search_ctx.exit1445:                ; preds = %if.then.i1443, %land.lhs.true.i1442.ntfs_attr_put_search_ctx.exit1445_crit_edge, %if.then946.ntfs_attr_put_search_ctx.exit1445_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ntfs_attr_ctx_cache to i32))
  %371 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %371, ptr noundef nonnull %call.i) #11
  br label %if.end947

if.end947:                                        ; preds = %ntfs_attr_put_search_ctx.exit1445, %if.end102.if.end947_crit_edge
  %m.01469 = phi ptr [ %m.01479, %ntfs_attr_put_search_ctx.exit1445 ], [ %call98, %if.end102.if.end947_crit_edge ]
  %err.41467 = phi i32 [ %err.41477, %ntfs_attr_put_search_ctx.exit1445 ], [ -12, %if.end102.if.end947_crit_edge ]
  %tobool948.not = icmp eq ptr %m.01469, null
  br i1 %tobool948.not, label %if.end947.if.end950_crit_edge, label %if.then949

if.end947.if.end950_crit_edge:                    ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end950

if.then949:                                       ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #11
  br label %if.end950

if.end950:                                        ; preds = %if.then949, %if.end947.if.end950_crit_edge, %if.end947.thread
  %err.414671483 = phi i32 [ %34, %if.end947.thread ], [ %err.41467, %if.then949 ], [ %err.41467, %if.end947.if.end950_crit_edge ]
  tail call void @up_write(ptr noundef %lock) #11
  br label %conv_err_out

conv_err_out:                                     ; preds = %if.end950, %if.else344, %if.then342, %do.body314.conv_err_out_crit_edge, %if.end308
  %err.5 = phi i32 [ %err.414671483, %if.end950 ], [ %spec.select1327, %if.end308 ], [ -95, %do.body314.conv_err_out_crit_edge ], [ -95, %if.then342 ], [ -95, %if.else344 ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2455, ptr noundef nonnull @__func__.ntfs_attr_extend_allocation, ptr noundef nonnull @.str.54, i32 noundef %err.5) #11
  %conv953 = sext i32 %err.5 to i64
  br label %cleanup

cleanup:                                          ; preds = %conv_err_out, %do.body874, %ntfs_attr_put_search_ctx.exit1422, %if.end85
  %retval.0 = phi i64 [ %conv91, %if.end85 ], [ %conv953, %conv_err_out ], [ %new_alloc_size.addr.3, %ntfs_attr_put_search_ctx.exit1422 ], [ %conv885, %do.body874 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_runlists_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_rl_find_vcn_nolock(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_rl_truncate_nolock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_attr_set(ptr noundef %ni, i64 noundef %ofs, i64 noundef %cnt, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vol1 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 7
  %0 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vol1, align 8
  %conv = zext i8 %val to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2489, ptr noundef nonnull @__func__.ntfs_attr_set, ptr noundef nonnull @.str.55, i64 noundef %ofs, i64 noundef %cnt, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ofs)
  %cmp = icmp slt i64 %ofs, 0
  br i1 %cmp, label %do.body4, label %do.body10, !prof !166

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2490, 0\0A.popsection", ""() #11, !srcloc !226
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cnt)
  %cmp11 = icmp slt i64 %cnt, 0
  br i1 %cmp11, label %do.body20, label %do.end28, !prof !166

do.body20:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2491, 0\0A.popsection", ""() #11, !srcloc !227
  unreachable

do.end28:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cnt)
  %tobool29.not = icmp eq i64 %cnt, 0
  br i1 %tobool29.not, label %do.end28.done_crit_edge, label %do.body32

do.end28.done_crit_edge:                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body32:                                        ; preds = %do.end28
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool33.not = icmp eq i32 %4, 0
  br i1 %tobool33.not, label %do.body50, label %do.body41, !prof !169

do.body41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2498, 0\0A.popsection", ""() #11, !srcloc !228
  unreachable

do.body50:                                        ; preds = %do.body32
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool52.not = icmp eq i32 %7, 0
  br i1 %tobool52.not, label %do.end68, label %do.body60, !prof !169

do.body60:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2499, 0\0A.popsection", ""() #11, !srcloc !229
  unreachable

do.end68:                                         ; preds = %do.body50
  %i_mapping = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %10 = lshr i64 %ofs, 12
  %11 = trunc i64 %ofs to i32
  %add = add nuw i64 %cnt, %ofs
  %conv72 = trunc i64 %add to i32
  %and73 = and i32 %conv72, 4095
  %i_size_seqcount.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %do.end68
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !230
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %13 = tail call ptr @llvm.returnaddress(i32 0) #11
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %14) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call ptr @llvm.returnaddress(i32 0) #11
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !231
  %and.i.i.i.i282 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i282)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i282, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !166

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #11, !srcloc !232
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !234
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %21, 1
  %tobool.not.i283 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i283, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %21, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !235
  %22 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !236
  %24 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %25, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %conv70 = trunc i64 %10 to i32
  %conv71 = and i32 %11, 4095
  %conv74 = and i64 %add, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv74, i64 %23)
  %cmp77 = icmp sgt i64 %conv74, %23
  br i1 %cmp77, label %if.then85, label %if.end86, !prof !166

if.then85:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_set, ptr noundef %27, ptr noundef nonnull @.str.56) #11
  br label %cleanup

if.end86:                                         ; preds = %i_size_read.exit
  %shr87 = lshr i32 %conv72, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv71)
  %tobool88.not = icmp eq i32 %conv71, 0
  br i1 %tobool88.not, label %if.end86.if.end114_crit_edge, label %if.then89

if.end86.if.end114_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then89:                                        ; preds = %if.end86
  %call.i = tail call ptr @read_cache_page(ptr noundef %9, i32 noundef %conv70, ptr noundef null, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_set, ptr noundef %29, ptr noundef nonnull @.str.57, i32 noundef %conv70) #11
  %30 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end95:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_cmp4(i32 %shr87, i32 %conv70)
  %cmp96 = icmp eq i32 %shr87, %conv70
  %spec.select = select i1 %cmp96, i32 %and73, i32 4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %31 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %31, 512
  %32 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %36 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %41, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #11
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %conv71
  %sub = sub nsw i32 %spec.select, %conv71
  %42 = zext i8 %val to i32
  %43 = call ptr @memset(ptr %add.ptr, i32 %42, i32 %sub)
  tail call void @flush_dcache_page(ptr noundef %call.i) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %44 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %49, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %50 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i284 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i284 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call108 = tail call zeroext i1 @set_page_dirty(ptr noundef %call.i) #11
  %54 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i285 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i285, label %if.end.i.i, label %if.then.i.i287, !prof !169

if.then.i.i287:                                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i286 = add i32 %56, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i287
  %retval.0.i.i = phi i32 [ %sub.i.i286, %if.then.i.i287 ], [ %57, %if.end.i.i ]
  %58 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %59 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !166

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.61) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_attr_set, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !172

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %58, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %58) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  tail call void @balance_dirty_pages_ratelimited(ptr noundef %9) #11
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2535, i32 noundef 0) #11
  %call.i288 = tail call i32 @__cond_resched() #11
  br i1 %cmp96, label %put_page.exit.done_crit_edge, label %if.end113

put_page.exit.done_crit_edge:                     ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end113:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %conv70, 1
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end86.if.end114_crit_edge
  %idx.0 = phi i32 [ %inc, %if.end113 ], [ %conv70, %if.end86.if.end114_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0, i32 %shr87)
  %cmp115379 = icmp ult i32 %idx.0, %shr87
  br i1 %cmp115379, label %for.body.lr.ph, label %if.end114.for.end_crit_edge

if.end114.for.end_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end114
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %put_page.exit325.for.body_crit_edge, %for.body.lr.ph
  %idx.1380 = phi i32 [ %idx.0, %for.body.lr.ph ], [ %inc172, %put_page.exit325.for.body_crit_edge ]
  %62 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i289 = tail call ptr @pagecache_get_page(ptr noundef %9, i32 noundef %idx.1380, i32 noundef 7, i32 noundef %63) #11
  %tobool118.not = icmp eq ptr %call.i.i289, null
  br i1 %tobool118.not, label %if.then127, label %if.end129, !prof !166

if.then127:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_set, ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef %idx.1380) #11
  br label %cleanup

if.end129:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %66 = load i32, ptr @pgprot_kernel, align 4
  %or.i290 = or i32 %66, 512
  %67 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i.i291 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i291 to ptr
  %preempt_count.i.i.i.i292 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i292, align 4
  %add.i.i.i293 = add i32 %70, 1
  store volatile i32 %add.i.i.i293, ptr %preempt_count.i.i.i.i292, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %71 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i.i294 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i.i294 to ptr
  %task.i.i.i.i295 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i.i295, align 8
  %pagefault_disabled.i.i.i.i296 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i.i296 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i.i296, align 8
  %inc.i.i.i.i297 = add i32 %76, 1
  store i32 %inc.i.i.i.i297, ptr %pagefault_disabled.i.i.i.i296, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call.i.i298 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i.i289, i32 noundef %or.i290) #11
  %77 = zext i8 %val to i32
  %78 = call ptr @memset(ptr %call.i.i298, i32 %77, i32 4096)
  tail call void @flush_dcache_page(ptr noundef nonnull %call.i.i289) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i298) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %79 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i299 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i299 to ptr
  %task.i.i.i300 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i.i.i300, align 8
  %pagefault_disabled.i.i.i301 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 213
  %83 = ptrtoint ptr %pagefault_disabled.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pagefault_disabled.i.i.i301, align 8
  %dec.i.i.i302 = add i32 %84, -1
  store i32 %dec.i.i.i302, ptr %pagefault_disabled.i.i.i301, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %85 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i303 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i303 to ptr
  %preempt_count.i.i.i304 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i304, align 4
  %sub.i.i305 = add i32 %88, -1
  store volatile i32 %sub.i.i305, ptr %preempt_count.i.i.i304, align 4
  %89 = ptrtoint ptr %call.i.i289 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %call.i.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp.i.not.i = icmp eq i32 %90, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !166

if.then.i:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %call.i.i289, ptr noundef nonnull @.str.74) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !237
  unreachable

PagePrivate.exit:                                 ; preds = %if.end129
  %91 = ptrtoint ptr %call.i.i289 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %call.i.i289, align 4
  %93 = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool139.not = icmp eq i32 %93, 0
  br i1 %tobool139.not, label %PagePrivate.exit.if.end168_crit_edge, label %if.then140

PagePrivate.exit.if.end168_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then140:                                       ; preds = %PagePrivate.exit
  %94 = ptrtoint ptr %call.i.i289 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %call.i.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp.i.not.i269 = icmp eq i32 %95, -1
  br i1 %cmp.i.not.i269, label %if.then.i270, label %PagePrivate.exit273, !prof !166

if.then.i270:                                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %call.i.i289, ptr noundef nonnull @.str.74) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !237
  unreachable

PagePrivate.exit273:                              ; preds = %if.then140
  %96 = ptrtoint ptr %call.i.i289 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %call.i.i289, align 4
  %98 = and i32 %97, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool143.not = icmp eq i32 %98, 0
  br i1 %tobool143.not, label %do.body153, label %do.end161, !prof !166

do.body153:                                       ; preds = %PagePrivate.exit273
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/attrib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2560, 0\0A.popsection", ""() #11, !srcloc !238
  unreachable

do.end161:                                        ; preds = %PagePrivate.exit273
  %private = getelementptr inbounds %struct.page, ptr %call.i.i289, i32 0, i32 1, i32 0, i32 3
  %99 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %private, align 4
  %101 = inttoptr i32 %100 to ptr
  br label %do.body163

do.body163:                                       ; preds = %set_buffer_uptodate.exit.do.body163_crit_edge, %do.end161
  %bh.0 = phi ptr [ %101, %do.end161 ], [ %105, %set_buffer_uptodate.exit.do.body163_crit_edge ]
  %102 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i274 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i274)
  %tobool.not.i = icmp eq i32 %and1.i.i274, 0
  br i1 %tobool.not.i, label %if.then.i275, label %do.body163.set_buffer_uptodate.exit_crit_edge

do.body163.set_buffer_uptodate.exit_crit_edge:    ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i275:                                     ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i275, %do.body163.set_buffer_uptodate.exit_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %104 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %b_this_page, align 4
  %cmp165.not = icmp eq ptr %105, %101
  br i1 %cmp165.not, label %set_buffer_uptodate.exit.if.end168_crit_edge, label %set_buffer_uptodate.exit.do.body163_crit_edge

set_buffer_uptodate.exit.do.body163_crit_edge:    ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body163

set_buffer_uptodate.exit.if.end168_crit_edge:     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.end168:                                        ; preds = %set_buffer_uptodate.exit.if.end168_crit_edge, %PagePrivate.exit.if.end168_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !206
  %106 = getelementptr inbounds %struct.page, ptr %call.i.i289, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  %and.i.i.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !169

if.then.i.i.i:                                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %call.i.i289, ptr noundef nonnull @.str.71) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end168
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i.i289) #11
  %call169 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %call.i.i289) #11
  tail call void @unlock_page(ptr noundef nonnull %call.i.i289) #11
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %106, align 4
  %and.i.i306 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i306)
  %tobool.not.i.i307 = icmp eq i32 %and.i.i306, 0
  br i1 %tobool.not.i.i307, label %if.end.i.i310, label %if.then.i.i309, !prof !169

if.then.i.i309:                                   ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i308 = add i32 %110, -1
  br label %_compound_head.exit.i315

if.end.i.i310:                                    ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %call.i.i289 to i32
  br label %_compound_head.exit.i315

_compound_head.exit.i315:                         ; preds = %if.end.i.i310, %if.then.i.i309
  %retval.0.i.i311 = phi i32 [ %sub.i.i308, %if.then.i.i309 ], [ %111, %if.end.i.i310 ]
  %112 = inttoptr i32 %retval.0.i.i311 to ptr
  %_refcount.i.i.i.i.i312 = getelementptr inbounds %struct.page, ptr %112, i32 0, i32 3
  %call.i.i.i.i.i.i.i313 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i312, i32 noundef 4) #11
  %113 = ptrtoint ptr %_refcount.i.i.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %_refcount.i.i.i.i.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i.i.i.i314 = icmp eq i32 %114, 0
  br i1 %cmp.i.i.i.i314, label %if.then.i.i.i.i316, label %do.end5.i.i.i.i320, !prof !166

if.then.i.i.i.i316:                               ; preds = %_compound_head.exit.i315
  call void @__sanitizer_cov_trace_pc() #13
  %115 = inttoptr i32 %retval.0.i.i311 to ptr
  tail call void @dump_page(ptr noundef %115, ptr noundef nonnull @.str.61) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end5.i.i.i.i320:                               ; preds = %_compound_head.exit.i315
  %call.i.i.i10.i.i.i.i317 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i312, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i312, i32 1, i32 3, i32 1) #11
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i312, ptr %_refcount.i.i.i.i.i312, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i312) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i318 = extractvalue { i32, i32 } %116, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i318)
  %cmp.i.i.i.i.i.i.i319 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i318, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_attr_set, %if.then.i.i.i.i.i322)) #11
          to label %folio_put_testzero.exit.i.i323 [label %if.then.i.i.i.i.i322], !srcloc !172

if.then.i.i.i.i.i322:                             ; preds = %do.end5.i.i.i.i320
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i321 = zext i1 %cmp.i.i.i.i.i.i.i319 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %112, i32 noundef -1, i32 noundef %conv.i.i.i.i.i321) #11
  br label %folio_put_testzero.exit.i.i323

folio_put_testzero.exit.i.i323:                   ; preds = %if.then.i.i.i.i.i322, %do.end5.i.i.i.i320
  br i1 %cmp.i.i.i.i.i.i.i319, label %if.then.i4.i324, label %folio_put_testzero.exit.i.i323.put_page.exit325_crit_edge

folio_put_testzero.exit.i.i323.put_page.exit325_crit_edge: ; preds = %folio_put_testzero.exit.i.i323
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit325

if.then.i4.i324:                                  ; preds = %folio_put_testzero.exit.i.i323
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %112) #11
  br label %put_page.exit325

put_page.exit325:                                 ; preds = %if.then.i4.i324, %folio_put_testzero.exit.i.i323.put_page.exit325_crit_edge
  tail call void @balance_dirty_pages_ratelimited(ptr noundef %9) #11
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2576, i32 noundef 0) #11
  %call.i326 = tail call i32 @__cond_resched() #11
  %inc172 = add nuw nsw i32 %idx.1380, 1
  %exitcond.not = icmp eq i32 %inc172, %shr87
  br i1 %exitcond.not, label %put_page.exit325.for.end_crit_edge, label %put_page.exit325.for.body_crit_edge

put_page.exit325.for.body_crit_edge:              ; preds = %put_page.exit325
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

put_page.exit325.for.end_crit_edge:               ; preds = %put_page.exit325
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %put_page.exit325.for.end_crit_edge, %if.end114.for.end_crit_edge
  %idx.1.lcssa = phi i32 [ %idx.0, %if.end114.for.end_crit_edge ], [ %shr87, %put_page.exit325.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool173.not = icmp eq i32 %and73, 0
  br i1 %tobool173.not, label %for.end.done_crit_edge, label %if.then174

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then174:                                       ; preds = %for.end
  %call.i327 = tail call ptr @read_cache_page(ptr noundef %9, i32 noundef %idx.1.lcssa, ptr noundef null, ptr noundef null) #11
  %cmp.i328 = icmp ugt ptr %call.i327, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then177, label %if.end180

if.then177:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_attr_set, ptr noundef %118, ptr noundef nonnull @.str.59, i32 noundef %idx.1.lcssa) #11
  %119 = ptrtoint ptr %call.i327 to i32
  br label %cleanup

if.end180:                                        ; preds = %if.then174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %120 = load i32, ptr @pgprot_kernel, align 4
  %or.i329 = or i32 %120, 512
  %121 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i.i330 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i330 to ptr
  %preempt_count.i.i.i.i331 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i331, align 4
  %add.i.i.i332 = add i32 %124, 1
  store volatile i32 %add.i.i.i332, ptr %preempt_count.i.i.i.i331, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %125 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i.i333 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i1.i.i333 to ptr
  %task.i.i.i.i334 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i.i.i.i334, align 8
  %pagefault_disabled.i.i.i.i335 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 213
  %129 = ptrtoint ptr %pagefault_disabled.i.i.i.i335 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pagefault_disabled.i.i.i.i335, align 8
  %inc.i.i.i.i336 = add i32 %130, 1
  store i32 %inc.i.i.i.i336, ptr %pagefault_disabled.i.i.i.i335, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call.i.i337 = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i327, i32 noundef %or.i329) #11
  %131 = zext i8 %val to i32
  %132 = call ptr @memset(ptr %call.i.i337, i32 %131, i32 %and73)
  tail call void @flush_dcache_page(ptr noundef %call.i327) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i337) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %133 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i1.i338 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i1.i338 to ptr
  %task.i.i.i339 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task.i.i.i339 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task.i.i.i339, align 8
  %pagefault_disabled.i.i.i340 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 213
  %137 = ptrtoint ptr %pagefault_disabled.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pagefault_disabled.i.i.i340, align 8
  %dec.i.i.i341 = add i32 %138, -1
  store i32 %dec.i.i.i341, ptr %pagefault_disabled.i.i.i340, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %139 = tail call i32 @llvm.read_register.i32(metadata !156) #11
  %and.i.i.i.i342 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i342 to ptr
  %preempt_count.i.i.i343 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i343, align 4
  %sub.i.i344 = add i32 %142, -1
  store volatile i32 %sub.i.i344, ptr %preempt_count.i.i.i343, align 4
  %call189 = tail call zeroext i1 @set_page_dirty(ptr noundef %call.i327) #11
  %143 = getelementptr inbounds %struct.page, ptr %call.i327, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 4
  %and.i.i345 = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i345)
  %tobool.not.i.i346 = icmp eq i32 %and.i.i345, 0
  br i1 %tobool.not.i.i346, label %if.end.i.i349, label %if.then.i.i348, !prof !169

if.then.i.i348:                                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i347 = add i32 %145, -1
  br label %_compound_head.exit.i354

if.end.i.i349:                                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %call.i327 to i32
  br label %_compound_head.exit.i354

_compound_head.exit.i354:                         ; preds = %if.end.i.i349, %if.then.i.i348
  %retval.0.i.i350 = phi i32 [ %sub.i.i347, %if.then.i.i348 ], [ %146, %if.end.i.i349 ]
  %147 = inttoptr i32 %retval.0.i.i350 to ptr
  %_refcount.i.i.i.i.i351 = getelementptr inbounds %struct.page, ptr %147, i32 0, i32 3
  %call.i.i.i.i.i.i.i352 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i351, i32 noundef 4) #11
  %148 = ptrtoint ptr %_refcount.i.i.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %_refcount.i.i.i.i.i351, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.i.i.i.i353 = icmp eq i32 %149, 0
  br i1 %cmp.i.i.i.i353, label %if.then.i.i.i.i355, label %do.end5.i.i.i.i359, !prof !166

if.then.i.i.i.i355:                               ; preds = %_compound_head.exit.i354
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %147, ptr noundef nonnull @.str.61) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end5.i.i.i.i359:                               ; preds = %_compound_head.exit.i354
  %call.i.i.i10.i.i.i.i356 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i351, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i351, i32 1, i32 3, i32 1) #11
  %150 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i351, ptr %_refcount.i.i.i.i.i351, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i351) #11, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i.i.i357 = extractvalue { i32, i32 } %150, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i357)
  %cmp.i.i.i.i.i.i.i358 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i357, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_attr_set, %if.then.i.i.i.i.i361)) #11
          to label %folio_put_testzero.exit.i.i362 [label %if.then.i.i.i.i.i361], !srcloc !172

if.then.i.i.i.i.i361:                             ; preds = %do.end5.i.i.i.i359
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i360 = zext i1 %cmp.i.i.i.i.i.i.i358 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %147, i32 noundef -1, i32 noundef %conv.i.i.i.i.i360) #11
  br label %folio_put_testzero.exit.i.i362

folio_put_testzero.exit.i.i362:                   ; preds = %if.then.i.i.i.i.i361, %do.end5.i.i.i.i359
  br i1 %cmp.i.i.i.i.i.i.i358, label %if.then.i4.i363, label %folio_put_testzero.exit.i.i362.put_page.exit364_crit_edge

folio_put_testzero.exit.i.i362.put_page.exit364_crit_edge: ; preds = %folio_put_testzero.exit.i.i362
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit364

if.then.i4.i363:                                  ; preds = %folio_put_testzero.exit.i.i362
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %147) #11
  br label %put_page.exit364

put_page.exit364:                                 ; preds = %if.then.i4.i363, %folio_put_testzero.exit.i.i362.put_page.exit364_crit_edge
  tail call void @balance_dirty_pages_ratelimited(ptr noundef %9) #11
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2593, i32 noundef 0) #11
  %call.i365 = tail call i32 @__cond_resched() #11
  br label %done

done:                                             ; preds = %put_page.exit364, %for.end.done_crit_edge, %put_page.exit.done_crit_edge, %do.end28.done_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 2596, ptr noundef nonnull @__func__.ntfs_attr_set, ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then177, %if.then127, %if.then92, %if.then85
  %retval.0 = phi i32 [ -29, %if.then85 ], [ %30, %if.then92 ], [ 0, %done ], [ -12, %if.then127 ], [ %119, %if.then177 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_are_names_equal(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_collate_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_extent_mft_record(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_mft_record_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ntfs_cluster_free(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !13, !15, !16, !17, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !47, !49, !51, !52, !54, !56, !58, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !134, !136, !138, !140, !142, !144, !146, !147, !149, !151, !153, !154}
!llvm.named.register.sp = !{!156}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/attrib.c", i32 83, i32 2}
!2 = !{ptr @__func__.ntfs_map_runlist_nolock, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.ntfs_attr_vcn_to_lcn_nolock, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/attrib.c", i32 335, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ntfs/attrib.c", i32 352, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ntfs/attrib.c", i32 388, i32 3}
!13 = !{ptr @__func__.ntfs_attr_find_vcn_nolock, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ntfs/attrib.c", i32 459, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/attrib.c", i32 477, i32 6}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/attrib.c", i32 514, i32 3}
!22 = !{ptr @__func__.load_attribute_list, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/attrib.c", i32 710, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ntfs/attrib.c", i32 724, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ntfs/attrib.c", i32 731, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs/attrib.c", i32 736, i32 4}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs/attrib.c", i32 744, i32 3}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ntfs/attrib.c", i32 746, i32 4}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ntfs/attrib.c", i32 749, i32 5}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/attrib.c", i32 786, i32 2}
!39 = !{ptr @__func__.ntfs_attr_lookup, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ntfs/attrib.c", i32 1180, i32 2}
!41 = !{ptr @__func__.ntfs_attr_record_resize, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ntfs/attrib.c", i32 1423, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.ntfs_attr_make_non_resident, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ntfs/attrib.c", i32 1542, i32 4}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ntfs/attrib.c", i32 1545, i32 4}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ntfs/attrib.c", i32 1575, i32 4}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ntfs/attrib.c", i32 1589, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ntfs/attrib.c", i32 1693, i32 3}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ntfs/attrib.c", i32 1768, i32 4}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ntfs/attrib.c", i32 1815, i32 4}
!62 = !{ptr @__func__.ntfs_attr_extend_allocation, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ntfs/attrib.c", i32 1911, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ntfs/attrib.c", i32 1942, i32 5}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ntfs/attrib.c", i32 1951, i32 5}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/attrib.c", i32 2006, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ntfs/attrib.c", i32 2081, i32 4}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ntfs/attrib.c", i32 2097, i32 4}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ntfs/attrib.c", i32 2102, i32 4}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ntfs/attrib.c", i32 2155, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ntfs/attrib.c", i32 2174, i32 5}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ntfs/attrib.c", i32 2212, i32 4}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ntfs/attrib.c", i32 2225, i32 4}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ntfs/attrib.c", i32 2243, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ntfs/attrib.c", i32 2257, i32 4}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ntfs/attrib.c", i32 2279, i32 4}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ntfs/attrib.c", i32 2293, i32 4}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ntfs/attrib.c", i32 2358, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ntfs/attrib.c", i32 2363, i32 3}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ntfs/attrib.c", i32 2374, i32 3}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ntfs/attrib.c", i32 2420, i32 3}
!101 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ntfs/attrib.c", i32 2427, i32 4}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ntfs/attrib.c", i32 2438, i32 5}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ntfs/attrib.c", i32 2455, i32 2}
!109 = !{ptr @__func__.ntfs_attr_set, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ntfs/attrib.c", i32 2488, i32 2}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ntfs/attrib.c", i32 2509, i32 3}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ntfs/attrib.c", i32 2517, i32 4}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ntfs/attrib.c", i32 2545, i32 4}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ntfs/attrib.c", i32 2582, i32 4}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/mm.h", i32 717, i32 2}
!124 = !{ptr @__func__.ntfs_attr_find, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ntfs/attrib.c", i32 675, i32 2}
!126 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ntfs/attrib.c", i32 856, i32 26}
!129 = distinct !{null, !130, !"es", i1 false, i1 false}
!130 = !{!"../fs/ntfs/attrib.c", i32 856, i32 21}
!131 = !{ptr @__func__.ntfs_external_attr_find, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ntfs/attrib.c", i32 860, i32 2}
!133 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ntfs/attrib.c", i32 969, i32 5}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ntfs/attrib.c", i32 991, i32 6}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ntfs/attrib.c", i32 1062, i32 4}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ntfs/attrib.c", i32 1071, i32 3}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ntfs/attrib.c", i32 1130, i32 2}
!144 = !{ptr @__func__.ntfs_attr_find_in_attrdef, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ntfs/attrib.c", i32 1311, i32 2}
!146 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!153 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!156 = !{!"sp"}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2155122995, i64 2155123476, i64 2155123032, i64 2155123088, i64 2155123122, i64 2155123146, i64 2155123187, i64 2155123208, i64 2155123236, i64 2155123270}
!168 = !{i64 2155124574, i64 2155125055, i64 2155124611, i64 2155124667, i64 2155124701, i64 2155124725, i64 2155124766, i64 2155124787, i64 2155124815, i64 2155124849}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2153276940, i64 2153277424, i64 2153276977, i64 2153277033, i64 2153277067, i64 2153277091, i64 2153277132, i64 2153277153, i64 2153277181, i64 2153277215}
!171 = !{i64 2148755151, i64 2148755177, i64 2148755206, i64 2148755240, i64 2148755271, i64 2148755294}
!172 = !{i64 2148579749, i64 2148579754, i64 2148579767, i64 2148579811, i64 2148579845, i64 2148579866}
!173 = !{i64 2155126843, i64 2155127324, i64 2155126880, i64 2155126936, i64 2155126970, i64 2155126994, i64 2155127035, i64 2155127056, i64 2155127084, i64 2155127118}
!174 = !{i64 2155128492, i64 2155128973, i64 2155128529, i64 2155128585, i64 2155128619, i64 2155128643, i64 2155128684, i64 2155128705, i64 2155128733, i64 2155128767}
!175 = !{i64 2153252967, i64 2153253450, i64 2153253004, i64 2153253060, i64 2153253094, i64 2153253118, i64 2153253159, i64 2153253180, i64 2153253208, i64 2153253242}
!176 = !{i64 2148843627}
!177 = !{i64 2148758336, i64 2148758368, i64 2148758397, i64 2148758431, i64 2148758462, i64 2148758485}
!178 = !{i64 2148843856}
!179 = !{i64 2155152091, i64 2155152573, i64 2155152128, i64 2155152184, i64 2155152218, i64 2155152242, i64 2155152283, i64 2155152304, i64 2155152332, i64 2155152366}
!180 = !{i64 2155153657, i64 2155154139, i64 2155153694, i64 2155153750, i64 2155153784, i64 2155153808, i64 2155153849, i64 2155153870, i64 2155153898, i64 2155153932}
!181 = !{i8 0, i8 2}
!182 = !{i64 2155130151, i64 2155130632, i64 2155130188, i64 2155130244, i64 2155130278, i64 2155130302, i64 2155130343, i64 2155130364, i64 2155130392, i64 2155130426}
!183 = !{i64 2155131935, i64 2155132416, i64 2155131972, i64 2155132028, i64 2155132062, i64 2155132086, i64 2155132127, i64 2155132148, i64 2155132176, i64 2155132210}
!184 = !{i64 2155133496, i64 2155133977, i64 2155133533, i64 2155133589, i64 2155133623, i64 2155133647, i64 2155133688, i64 2155133709, i64 2155133737, i64 2155133771}
!185 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!186 = !{i64 2155136162, i64 2155136643, i64 2155136199, i64 2155136255, i64 2155136289, i64 2155136313, i64 2155136354, i64 2155136375, i64 2155136403, i64 2155136437}
!187 = !{i64 2155137929, i64 2155138410, i64 2155137966, i64 2155138022, i64 2155138056, i64 2155138080, i64 2155138121, i64 2155138142, i64 2155138170, i64 2155138204}
!188 = !{i64 2155139490, i64 2155139971, i64 2155139527, i64 2155139583, i64 2155139617, i64 2155139641, i64 2155139682, i64 2155139703, i64 2155139731, i64 2155139765}
!189 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!190 = !{!"branch_weights", i32 4000000, i32 4001}
!191 = !{i64 2155159788, i64 2155160270, i64 2155159825, i64 2155159881, i64 2155159915, i64 2155159939, i64 2155159980, i64 2155160001, i64 2155160029, i64 2155160063}
!192 = !{i64 2155155914, i64 2155156396, i64 2155155951, i64 2155156007, i64 2155156041, i64 2155156065, i64 2155156106, i64 2155156127, i64 2155156155, i64 2155156189}
!193 = !{i64 2155157474, i64 2155157956, i64 2155157511, i64 2155157567, i64 2155157601, i64 2155157625, i64 2155157666, i64 2155157687, i64 2155157715, i64 2155157749}
!194 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!195 = !{i64 2155167911, i64 2155168393, i64 2155167948, i64 2155168004, i64 2155168038, i64 2155168062, i64 2155168103, i64 2155168124, i64 2155168152, i64 2155168186}
!196 = !{i64 2155169495, i64 2155169977, i64 2155169532, i64 2155169588, i64 2155169622, i64 2155169646, i64 2155169687, i64 2155169708, i64 2155169736, i64 2155169770}
!197 = !{i64 2155171628, i64 2155172110, i64 2155171665, i64 2155171721, i64 2155171755, i64 2155171779, i64 2155171820, i64 2155171841, i64 2155171869, i64 2155171903}
!198 = !{i64 2155173208, i64 2155173690, i64 2155173245, i64 2155173301, i64 2155173335, i64 2155173359, i64 2155173400, i64 2155173421, i64 2155173449, i64 2155173483}
!199 = !{i64 2155175267, i64 2155175749, i64 2155175304, i64 2155175360, i64 2155175394, i64 2155175418, i64 2155175459, i64 2155175480, i64 2155175508, i64 2155175542}
!200 = !{i64 2150663896, i64 2150664387, i64 2150663933, i64 2150663989, i64 2150664023, i64 2150664047, i64 2150664088, i64 2150664109, i64 2150664137, i64 2150664171}
!201 = !{i64 2151413788}
!202 = !{i64 2153776903}
!203 = !{i64 2152270447}
!204 = !{i64 2152270654}
!205 = !{i64 2153779674}
!206 = !{i64 2151414859}
!207 = !{i64 2152599913}
!208 = !{i64 2150076218}
!209 = !{i64 2150081152}
!210 = !{i64 2150102870}
!211 = !{i64 2150107764}
!212 = !{i64 2150184291}
!213 = !{i64 2150184616}
!214 = !{i64 2152611775}
!215 = !{i64 2155185313, i64 2155185795, i64 2155185350, i64 2155185406, i64 2155185440, i64 2155185464, i64 2155185505, i64 2155185526, i64 2155185554, i64 2155185588}
!216 = !{i64 2155189075, i64 2155189557, i64 2155189112, i64 2155189168, i64 2155189202, i64 2155189226, i64 2155189267, i64 2155189288, i64 2155189316, i64 2155189350}
!217 = !{i64 2155191815, i64 2155192297, i64 2155191852, i64 2155191908, i64 2155191942, i64 2155191966, i64 2155192007, i64 2155192028, i64 2155192056, i64 2155192090}
!218 = !{!"branch_weights", i32 1, i32 4000, i32 1, i32 1}
!219 = !{i64 2155195336, i64 2155195818, i64 2155195373, i64 2155195429, i64 2155195463, i64 2155195487, i64 2155195528, i64 2155195549, i64 2155195577, i64 2155195611}
!220 = !{i64 2155196892, i64 2155197374, i64 2155196929, i64 2155196985, i64 2155197019, i64 2155197043, i64 2155197084, i64 2155197105, i64 2155197133, i64 2155197167}
!221 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!222 = !{i64 2155200337, i64 2155200819, i64 2155200374, i64 2155200430, i64 2155200464, i64 2155200488, i64 2155200529, i64 2155200550, i64 2155200578, i64 2155200612}
!223 = !{i64 2155201911, i64 2155202393, i64 2155201948, i64 2155202004, i64 2155202038, i64 2155202062, i64 2155202103, i64 2155202124, i64 2155202152, i64 2155202186}
!224 = !{i64 2155203499, i64 2155203981, i64 2155203536, i64 2155203592, i64 2155203626, i64 2155203650, i64 2155203691, i64 2155203712, i64 2155203740, i64 2155203774}
!225 = !{i64 2155208887, i64 2155209369, i64 2155208924, i64 2155208980, i64 2155209014, i64 2155209038, i64 2155209079, i64 2155209100, i64 2155209128, i64 2155209162}
!226 = !{i64 2155213006, i64 2155213488, i64 2155213043, i64 2155213099, i64 2155213133, i64 2155213157, i64 2155213198, i64 2155213219, i64 2155213247, i64 2155213281}
!227 = !{i64 2155218631, i64 2155219113, i64 2155218668, i64 2155218724, i64 2155218758, i64 2155218782, i64 2155218823, i64 2155218844, i64 2155218872, i64 2155218906}
!228 = !{i64 2155220217, i64 2155220699, i64 2155220254, i64 2155220310, i64 2155220344, i64 2155220368, i64 2155220409, i64 2155220430, i64 2155220458, i64 2155220492}
!229 = !{i64 2155221801, i64 2155222283, i64 2155221838, i64 2155221894, i64 2155221928, i64 2155221952, i64 2155221993, i64 2155222014, i64 2155222042, i64 2155222076}
!230 = !{i64 1159831, i64 1159892}
!231 = !{i64 1162563}
!232 = !{i64 1162848}
!233 = !{i64 2152597982}
!234 = !{i64 2152597824}
!235 = !{i64 2152598152}
!236 = !{i64 2150183966}
!237 = !{i64 2151122602, i64 2151123093, i64 2151122639, i64 2151122695, i64 2151122729, i64 2151122753, i64 2151122794, i64 2151122815, i64 2151122843, i64 2151122877}
!238 = !{i64 2155227638, i64 2155228120, i64 2155227675, i64 2155227731, i64 2155227765, i64 2155227789, i64 2155227830, i64 2155227851, i64 2155227879, i64 2155227913}
