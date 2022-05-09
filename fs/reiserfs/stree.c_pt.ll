; ModuleID = '/llk/IR_all_yes/fs/reiserfs/stree.c_pt.bc'
source_filename = "../fs/reiserfs/stree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.offset_v1 = type { i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.reiserfs_key = type { i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.79, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.79 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
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
%union.anon.43 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.78, i16, i16, i16 }
%union.anon.78 = type { i16 }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }
%struct.reiserfs_dir_entry = type { ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.cpu_key }
%struct.tree_balance = type { i32, i32, ptr, ptr, ptr, [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, [2 x ptr], [2 x i32], [2 x i32], i32, i32, [7 x ptr], ptr, i32, ptr, i32, %struct.in_core_key }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.74 = type { ptr }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.reiserfs_super_block = type { %struct.reiserfs_super_block_v1, i32, i32, [16 x i8], [16 x i8], i16, i16, i32, i32, [76 x i8] }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.B_IS_IN_TREE = private unnamed_addr constant [13 x i8] c"B_IS_IN_TREE\00", align 1
@.str.1 = internal constant { [192 x i8], [32 x i8] } { [192 x i8] c"(!((((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((bh)->b_data)))->blk_level))))) > 5)) at fs/reiserfs/stree.c:%i:%s: PAP-1010: block (%b) has too big level (%z)\0A\00", [32 x i8] zeroinitializer }, align 32
@MIN_KEY = dso_local constant { { i32, i32, { %struct.offset_v1 } }, [16 x i8] } zeroinitializer, align 32
@__func__.get_rkey = private unnamed_addr constant [9 x i8] c"get_rkey\00", align 1
@.str.2 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"(!(path_offset < 2)) at fs/reiserfs/stree.c:%i:%s: PAP-5030: invalid offset in the path\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"(!(!buffer_uptodate ((((chk_path)->path_elements + (path_offset))->pe_buffer)))) at fs/reiserfs/stree.c:%i:%s: PAP-5040: parent is not uptodate\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.reiserfs_check_path = private unnamed_addr constant [20 x i8] c"reiserfs_check_path\00", align 1
@.str.4 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"(!(p->path_length != 1)) at fs/reiserfs/stree.c:%i:%s: path not properly relsed\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.pathrelse_and_restore = private unnamed_addr constant [22 x i8] c"pathrelse_and_restore\00", align 1
@.str.5 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"(!(path_offset < 1)) at fs/reiserfs/stree.c:%i:%s: clm-4000: invalid path offset\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.pathrelse = private unnamed_addr constant [10 x i8] c"pathrelse\00", align 1
@.str.6 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"(!(path_offset < 1)) at fs/reiserfs/stree.c:%i:%s: PAP-5090: invalid path offset\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5100\00", [23 x i8] zeroinitializer }, align 32
@__func__.search_by_key = private unnamed_addr constant [14 x i8] c"search_by_key\00", align 1
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: there were %d iterations of while loop looking for key %K\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"(!(comp_keys(&MAX_KEY, key) && !key_in_buffer(search_path, key, sb))) at fs/reiserfs/stree.c:%i:%s: PAP-5130: key is not in the buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5140\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5140\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"schedule occurred in do_balance!\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5150\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid format found in block %ld. Fsck?\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"(!(node_level < stop_level)) at fs/reiserfs/stree.c:%i:%s: vs-5152: tree level (%d) is less than stop level (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.search_for_position_by_key = private unnamed_addr constant [27 x i8] c"search_for_position_by_key\00", align 1
@.str.16 = internal constant { [312 x i8], [72 x i8] } { [312 x i8] c"(!(!(__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((item_head ((((((search_path))->path_elements + ((search_path)->path_length))->pe_buffer)), (((((search_path))->path_elements + ((search_path)->path_length))->pe_position))))->ih_item_len))))) at fs/reiserfs/stree.c:%i:%s: PAP-5165: item length equals zero\0A\00", [72 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [149 x i8], [43 x i8] } { [149 x i8] c"(!(!(((((search_path))->path_elements + ((search_path)->path_length))->pe_position)))) at fs/reiserfs/stree.c:%i:%s: PAP-5170: position equals zero\0A\00", [43 x i8] zeroinitializer }, align 32
@item_ops = external dso_local local_unnamed_addr global [16 x ptr], align 4
@__func__.reiserfs_delete_item = private unnamed_addr constant [21 x i8] c"reiserfs_delete_item\00", align 1
@.str.18 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"(!(mode != 'd')) at fs/reiserfs/stree.c:%i:%s: PAP-5320: mode must be M_DELETE\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5340\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no items of the file %K found\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5350\00", [24 x i8] zeroinitializer }, align 32
@__func__.reiserfs_delete_solid_item = private unnamed_addr constant [27 x i8] c"reiserfs_delete_solid_item\00", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"i/o failure occurred trying to delete %K\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5355\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%k not found\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5360\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"could not delete %K due to fix_nodes failure\00", [51 x i8] zeroinitializer }, align 32
@__func__.reiserfs_cut_from_item = private unnamed_addr constant [23 x i8] c"reiserfs_cut_from_item\00", align 1
@.str.27 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"(!(ret_value != 0)) at fs/reiserfs/stree.c:%i:%s: PAP-5570: can not convert twice\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5580\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"item to convert does not exist (%K)\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5610\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"item %K not found\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5092\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NO_DISK_SPACE\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"(!(mode == 'p' || mode == 'i')) at fs/reiserfs/stree.c:%i:%s: invalid mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5652\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"item must be indirect %h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5653\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"completing indirect2direct conversion indirect item %h being deleted must be of 4 byte long\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5654\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"can not complete indirect2direct conversion of %h (CUT, insert_size==%d)\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5657\00", [24 x i8] zeroinitializer }, align 32
@__func__.reiserfs_do_truncate = private unnamed_addr constant [21 x i8] c"reiserfs_do_truncate\00", align 1
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"i/o failure occurred trying to truncate %K\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5660\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wrong result %d of search for %K\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5665\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reiserfs_cut_from_item failed\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"(!(deleted > file_size)) at fs/reiserfs/stree.c:%i:%s: PAP-5670: reiserfs_cut_from_item: too many bytes deleted: deleted %d, file_size %lu, item_key %K\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"(!(file_size > (((new_file_size)+(8LL)-1u) & ~((8LL)-1u)))) at fs/reiserfs/stree.c:%i:%s: PAP-5680: truncate did not finish: new_file_size %lld, current %lld, oid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5710\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_paste_into_item = private unnamed_addr constant [25 x i8] c"reiserfs_paste_into_item\00", align 1
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"entry or pasted byte (%K) exists\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5760\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_insert_item = private unnamed_addr constant [21 x i8] c"reiserfs_insert_item\00", align 1
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"key %K already exists in the tree\00", [62 x i8] zeroinitializer }, align 32
@MAX_KEY = internal constant { { i32, i32, { %struct.offset_v1 } }, [16 x i8] } { { i32, i32, { %struct.offset_v1 } } { i32 -1, i32 -1, { %struct.offset_v1 } { %struct.offset_v1 { i32 -1, i32 -1 } } }, [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.key_in_buffer = private unnamed_addr constant [14 x i8] c"key_in_buffer\00", align 1
@.str.55 = internal constant { [167 x i8], [57 x i8] } { [167 x i8] c"(!(!key || chk_path->path_length < 2 || chk_path->path_length > 5)) at fs/reiserfs/stree.c:%i:%s: PAP-5050: pointer to the key(%p) is NULL or invalid path length(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"(!(!(((((chk_path))->path_elements + ((chk_path)->path_length))->pe_buffer))->b_bdev)) at fs/reiserfs/stree.c:%i:%s: PAP-5060: device must not be NODEV\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.get_lkey = private unnamed_addr constant [9 x i8] c"get_lkey\00", align 1
@.str.58 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"(!(!buffer_uptodate ((((chk_path)->path_elements + (path_offset))->pe_buffer)))) at fs/reiserfs/stree.c:%i:%s: PAP-5020: parent is not uptodate\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5090\00", [18 x i8] zeroinitializer }, align 32
@__func__.is_tree_node = private unnamed_addr constant [13 x i8] c"is_tree_node\00", align 1
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"node level %d does not match to the expected one %d\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5080\00", [18 x i8] zeroinitializer }, align 32
@__func__.is_leaf = private unnamed_addr constant [8 x i8] c"is_leaf\00", align 1
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"this should be caught earlier\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5081\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nr_item seems wrong: %z\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5082\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"free space seems wrong: %z\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5083\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wrong item type for item %h\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5084\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"item location seems wrong: %h\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5085\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"item length seems wrong: %h\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5086\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"item location seems wrong (second one): %h\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5093\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"item entry count seems wrong %h\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5094\00", [18 x i8] zeroinitializer }, align 32
@__func__.has_valid_deh_location = private unnamed_addr constant [23 x i8] c"has_valid_deh_location\00", align 1
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"directory entry location seems wrong %h\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5087\00", [18 x i8] zeroinitializer }, align 32
@__func__.is_internal = private unnamed_addr constant [12 x i8] c"is_internal\00", align 1
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5088\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"number of key seems wrong: %z\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5089\00", [18 x i8] zeroinitializer }, align 32
@__func__.prepare_for_delete_or_cut = private unnamed_addr constant [26 x i8] c"prepare_for_delete_or_cut\00", align 1
@.str.83 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"(!(new_file_length != max_reiserfs_offset(inode))) at fs/reiserfs/stree.c:%i:%s: PAP-5210: mode must be M_DELETE\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.prepare_for_direntry_item = private unnamed_addr constant [26 x i8] c"prepare_for_direntry_item\00", align 1
@.str.84 = internal constant { [166 x i8], [58 x i8] } { [166 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((le_ih)->u.ih_entry_count))) != 2)) at fs/reiserfs/stree.c:%i:%s: PAP-5220: incorrect empty directory item (%h)\0A\00", [58 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5615\00", [24 x i8] zeroinitializer }, align 32
@__func__.indirect_to_direct_roll_back = private unnamed_addr constant [29 x i8] c"indirect_to_direct_roll_back\00", align 1
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"found invalid item\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [178 x i8], [46 x i8] } { [178 x i8] c"(!(path->pos_in_item != (__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((tp_item_head(path))->ih_item_len))) - 1)) at fs/reiserfs/stree.c:%i:%s: vs-5616: appended bytes found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"(!(removed <= 0 || removed > tail_len)) at fs/reiserfs/stree.c:%i:%s: vs-5617: there was tail %d bytes, removed item length %d bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-5091\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"indirect_to_direct conversion has been rolled back due to lack of disk space\00", [51 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-5655\00", [24 x i8] zeroinitializer }, align 32
@__func__.truncate_directory = private unnamed_addr constant [19 x i8] c"truncate_directory\00", align 1
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link count != 0\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5720\00", [23 x i8] zeroinitializer }, align 32
@__func__.check_research_for_paste = private unnamed_addr constant [25 x i8] c"check_research_for_paste\00", align 1
@.str.95 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"found direct item %h or position (%d) does not match to key %K\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAP-5730\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"found indirect item (%h) or position (%d) does not match to key (%K)\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 8, i64 100, i64 105, i64 112]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 99, i64 100]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 500, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967294]
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 23, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [8 x i8] c"MIN_KEY\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 197, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 268, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 273, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 349, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 364, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 381, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 654, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 738, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 743, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 744, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 754, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 766, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 879, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 889, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1285, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1302, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1423, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1443, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1484, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1690, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1729, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1753, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1769, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1777, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1815, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1819, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1826, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1923, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1930, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1976, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1982, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 2026, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 2143, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 2251, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [8 x i8] c"MAX_KEY\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 200, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 354, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 330, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 334, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 227, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 533, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 419, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 427, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 436, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 450, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 457, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 464, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 470, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 477, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 398, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 502, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 510, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 517, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1058, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 998, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1614, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1616, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1624, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1632, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 452, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1865, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 2058, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.412 = private constant [23 x i8] c"../fs/reiserfs/stree.c\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 2070, i32 4 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @.str, ptr @.str.1, ptr @MIN_KEY, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @MAX_KEY, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MIN_KEY to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MAX_KEY to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 167, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 178, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @B_IS_IN_TREE(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %4)
  %cmp = icmp ugt i16 %4, 5
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef %bh, ptr noundef %bh) #17
  unreachable

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp5 = icmp ne i16 %3, 0
  %conv6 = zext i1 %cmp5 to i32
  ret i32 %conv6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @copy_item_head(ptr nocapture noundef writeonly %to, ptr nocapture noundef readonly %from) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memcpy(ptr %to, ptr %from, i32 24)
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @comp_short_keys(ptr nocapture noundef readonly %le_key, ptr nocapture noundef readonly %cpu_key) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %le_key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %le_key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %cpu_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp4 = icmp ugt i32 %2, %4
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %le_key, i32 0, i32 1
  %5 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %k_objectid, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %k_objectid8 = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 1
  %8 = ptrtoint ptr %k_objectid8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %k_objectid8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9 = icmp ult i32 %7, %9
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14 = icmp ugt i32 %7, %9
  %. = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @comp_short_le_keys(ptr nocapture noundef readonly %key1, ptr nocapture noundef readonly %key2) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp = icmp ult i32 %2, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp1 = icmp ugt i32 %2, %5
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i32, ptr %key1, i32 1
  %incdec.ptr4 = getelementptr i32, ptr %key2, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr4, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp.1 = icmp ult i32 %8, %11
  br i1 %cmp.1, label %for.inc.cleanup_crit_edge, label %if.end.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp1.1 = icmp ugt i32 %8, %11
  %spec.select = zext i1 %cmp1.1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end.1, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ], [ %spec.select, %if.end.1 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @le_key2cpu_key(ptr nocapture noundef writeonly %to, ptr nocapture noundef readonly %from) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %from to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %from, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %to, align 8
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %from, i32 0, i32 1
  %4 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %k_objectid, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %k_objectid3 = getelementptr inbounds %struct.in_core_key, ptr %to, i32 0, i32 1
  %7 = ptrtoint ptr %k_objectid3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %k_objectid3, align 4
  %u.i = getelementptr inbounds %struct.reiserfs_key, ptr %from, i32 0, i32 2
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %u.i, align 1
  %10 = trunc i64 %9 to i32
  %11 = lshr i32 %10, 4
  %conv1.i.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %phi.cast.i.op.i = add nsw i16 %phi.cast.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %phi.cast.i.op.i)
  %switch9.i = icmp ult i16 %phi.cast.i.op.i, 3
  %switch.i = select i1 %cmp.i.i, i1 %switch9.i, i1 false
  %spec.select.i = zext i1 %switch.i to i32
  %version4 = getelementptr inbounds %struct.cpu_key, ptr %to, i32 0, i32 1
  %12 = ptrtoint ptr %version4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %version4, align 8
  br i1 %switch.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %u.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %conv.i = zext i32 %15 to i64
  %k_offset25 = getelementptr inbounds %struct.in_core_key, ptr %to, i32 0, i32 2
  %16 = ptrtoint ptr %k_offset25 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %k_offset25, align 8
  %k_uniqueness.i = getelementptr inbounds %struct.offset_v1, ptr %u.i, i32 0, i32 1
  %17 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %k_uniqueness.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %sw.default.i.i [
    i32 0, label %if.then.i.le_key_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i
    i32 -1, label %sw.bb2.i.i
    i32 500, label %sw.bb3.i.i
  ]

if.then.i.le_key_k_type.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %u.i, align 1
  %23 = and i64 %22, -241
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #14
  %k_offset = getelementptr inbounds %struct.in_core_key, ptr %to, i32 0, i32 2
  %25 = ptrtoint ptr %k_offset to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %k_offset, align 8
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %u.i, align 1
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 4
  %conv1.i.i22 = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i22)
  %cmp.i.i23 = icmp ult i32 %conv1.i.i22, 4
  %30 = trunc i32 %conv1.i.i22 to i8
  %phi.cast = select i1 %cmp.i.i23, i8 %30, i8 15
  br label %le_key_k_type.exit

le_key_k_type.exit:                               ; preds = %if.else.i, %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.le_key_k_type.exit_crit_edge
  %retval.0.in.i = phi i8 [ %phi.cast, %if.else.i ], [ 15, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %if.then.i.le_key_k_type.exit_crit_edge ]
  %k_type = getelementptr inbounds %struct.in_core_key, ptr %to, i32 0, i32 3
  %31 = ptrtoint ptr %k_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.in.i, ptr %k_type, align 8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @comp_le_keys(ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(16) %k1, ptr noundef dereferenceable(16) %k2, i32 noundef 16) #18
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_rkey(ptr nocapture noundef readonly %chk_path, ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %chk_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chk_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %path_elements = getelementptr inbounds %struct.treepath, ptr %chk_path, i32 0, i32 2
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_rkey, ptr noundef nonnull @.str.2, i32 noundef 269, ptr noundef nonnull @__func__.get_rkey) #17
  unreachable

while.cond:                                       ; preds = %if.end38.while.cond_crit_edge, %while.cond.preheader
  %path_offset.0 = phi i32 [ %dec, %if.end38.while.cond_crit_edge ], [ %1, %while.cond.preheader ]
  %dec = add nsw i32 %path_offset.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %path_offset.0)
  %cmp1 = icmp sgt i32 %path_offset.0, 2
  br i1 %cmp1, label %do.body2, label %while.end

do.body2:                                         ; preds = %while.cond
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %dec
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then3, label %do.end6

if.then3:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_rkey, ptr noundef nonnull @.str.3, i32 noundef 275, ptr noundef nonnull @__func__.get_rkey) #17
  unreachable

do.end6:                                          ; preds = %do.body2
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %10)
  %cmp.i = icmp ugt i16 %10, 5
  br i1 %cmp.i, label %if.then.i, label %B_IS_IN_TREE.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef %3, ptr noundef %3) #17
  unreachable

B_IS_IN_TREE.exit:                                ; preds = %do.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp5.i.not = icmp eq i16 %9, 0
  br i1 %cmp5.i.not, label %B_IS_IN_TREE.exit.cleanup_crit_edge, label %if.end14

B_IS_IN_TREE.exit.cleanup_crit_edge:              ; preds = %B_IS_IN_TREE.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %B_IS_IN_TREE.exit
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %dec, i32 1
  %11 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pe_position, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %blk_nr_item, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp18 = icmp sgt i32 %12, %conv
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %add.ptr23 = getelementptr i8, ptr %7, i32 24
  %mul = shl nuw nsw i32 %conv, 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr23, i32 %mul
  %mul28 = shl i32 %12, 3
  %add.ptr29 = getelementptr i8, ptr %add.ptr27, i32 %mul28
  %16 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr29, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %conv30 = zext i32 %18 to i64
  %add.ptr33 = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.0
  %19 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr33, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv30)
  %cmp35.not = icmp eq i64 %22, %conv30
  br i1 %cmp35.not, label %if.end38, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end21
  %cmp42.not = icmp eq i32 %12, %conv
  br i1 %cmp42.not, label %if.end38.while.cond_crit_edge, label %if.then44

if.end38.while.cond_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.reiserfs_key, ptr %add.ptr23, i32 %12
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr49 = getelementptr %struct.treepath, ptr %chk_path, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr49, align 4
  %b_blocknr51 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %b_blocknr51 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %b_blocknr51, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_rs, align 4
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %s_root_block to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %s_root_block, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %conv53 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv53)
  %cmp54 = icmp eq i64 %26, %conv53
  %MAX_KEY.MIN_KEY = select i1 %cmp54, ptr @MAX_KEY, ptr @MIN_KEY
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then44, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %B_IS_IN_TREE.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.i, %if.then44 ], [ %MAX_KEY.MIN_KEY, %while.end ], [ @MIN_KEY, %B_IS_IN_TREE.exit.cleanup_crit_edge ], [ @MIN_KEY, %if.end14.cleanup_crit_edge ], [ @MIN_KEY, %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_check_path(ptr nocapture noundef readonly %p) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_check_path, ptr noundef nonnull @.str.4, i32 noundef 350, ptr noundef nonnull @__func__.reiserfs_check_path) #17
  unreachable

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pathrelse_and_restore(ptr noundef %sb, ptr nocapture noundef %search_path) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp18.not = icmp eq i32 %1, 1
  br i1 %cmp18.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %path_elements = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse_and_restore, ptr noundef nonnull @.str.5, i32 noundef 365, ptr noundef nonnull @__func__.pathrelse_and_restore) #17
  unreachable

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %path_offset.09 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %brelse.exit.while.body_crit_edge ]
  %dec = add nsw i32 %path_offset.09, -1
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.09
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %sb, ptr noundef %3) #14
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %while.body.brelse.exit_crit_edge, label %if.then.i

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %3) #14
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.body.brelse.exit_crit_edge
  %cmp1 = icmp ugt i32 %path_offset.09, 2
  br i1 %cmp1, label %brelse.exit.while.body_crit_edge, label %brelse.exit.while.end_crit_edge

brelse.exit.while.end_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %brelse.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %4 = ptrtoint ptr %search_path to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %search_path, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_restore_prepared_buffer(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pathrelse(ptr nocapture noundef %search_path) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp17.not = icmp eq i32 %1, 1
  br i1 %cmp17.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %path_elements = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %path_offset.08 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %brelse.exit.while.body_crit_edge ]
  %dec = add nsw i32 %path_offset.08, -1
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.08
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %while.body.brelse.exit_crit_edge, label %if.then.i

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %3) #14
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.body.brelse.exit_crit_edge
  %cmp1 = icmp ugt i32 %path_offset.08, 2
  br i1 %cmp1, label %brelse.exit.while.body_crit_edge, label %brelse.exit.while.end_crit_edge

brelse.exit.while.end_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %brelse.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %4 = ptrtoint ptr %search_path to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %search_path, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @search_by_key(ptr noundef %sb, ptr noundef %key, ptr nocapture noundef %search_path, i32 noundef %stop_level) local_unnamed_addr #9 align 64 {
entry:
  %bh = alloca ptr, align 4
  %reada_bh = alloca [16 x ptr], align 4
  %reada_blocks = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #14
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !197
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %reada_bh) #14
  %1 = call ptr @memset(ptr %reada_bh, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %reada_blocks) #14
  %2 = call ptr @memset(ptr %reada_blocks, i32 255, i32 64)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %search_by_key = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 27, i32 5
  %5 = ptrtoint ptr %search_by_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %search_by_key, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %search_by_key, align 4
  %7 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp17.not.i = icmp eq i32 %8, 1
  br i1 %cmp17.not.i, label %while.cond.preheader.i.pathrelse.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.pathrelse.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  br label %while.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %path_offset.08.i = phi i32 [ %8, %while.body.lr.ph.i ], [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.08.i, -1
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %path_offset.08.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %10) #14
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %cmp1.i = icmp ugt i32 %path_offset.08.i, 2
  br i1 %cmp1.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.pathrelse.exit_crit_edge

brelse.exit.i.pathrelse.exit_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

pathrelse.exit:                                   ; preds = %brelse.exit.i.pathrelse.exit_crit_edge, %while.cond.preheader.i.pathrelse.exit_crit_edge
  %11 = ptrtoint ptr %search_path to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %search_path, align 4
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_rs, align 4
  %s_root_block = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %s_root_block to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %s_root_block, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %path_elements = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %reada = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 1
  %k_objectid189 = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %pathrelse.exit
  %block_number.0 = phi i32 [ %18, %pathrelse.exit ], [ %block_number.0.be, %while.cond.backedge ]
  %expected_level.0 = phi i32 [ -1, %pathrelse.exit ], [ %expected_level.0.be, %while.cond.backedge ]
  %reada_count.0 = phi i32 [ 0, %pathrelse.exit ], [ %reada_count.0.be, %while.cond.backedge ]
  %repeat_counter.0 = phi i32 [ 0, %pathrelse.exit ], [ %inc3, %while.cond.backedge ]
  %inc3 = add i32 %repeat_counter.0, 1
  %rem = srem i32 %inc3, 50000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then, label %while.cond.if.end_crit_edge

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %19 = call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.search_by_key, ptr noundef nonnull @.str.8, ptr noundef %comm, i32 noundef %inc3, ptr noundef %key) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end_crit_edge
  %23 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %search_path, align 4
  %inc6 = add i32 %24, 1
  store i32 %inc6, ptr %search_path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %inc6
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %26, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #14
  %27 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %s_generation_counter, align 4
  %conv = zext i32 %block_number.0 to i64
  %29 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bdev.i, align 4
  %31 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %30, i64 noundef %conv, i32 noundef %32, i32 noundef 8) #14
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %add.ptr, align 4
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %bh, align 4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end.io_error_crit_edge, label %if.then11

if.end.io_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_error

if.then11:                                        ; preds = %if.end
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reada_count.0)
  %cmp = icmp ugt i32 %reada_count.0, 1
  %or.cond = select i1 %tobool13.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then11.for.body.i_crit_edge, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %reada_blocks, i32 %i.031.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %38 to i64
  %39 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_bdev.i, align 4
  %41 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i, align 16
  %call.i.i280 = call ptr @__getblk_gfp(ptr noundef %40, i64 noundef %conv.i, i32 noundef %42, i32 noundef 8) #14
  %arrayidx1.i = getelementptr ptr, ptr %reada_bh, i32 %i.031.i
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i280, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %reada_count.0
  br i1 %exitcond.not.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %brelse.exit.i284.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %depth.034.i = phi i32 [ %depth.2.i, %brelse.exit.i284.for.body5.i_crit_edge ], [ -1, %for.body.i.for.body5.i_crit_edge ]
  %j.033.i = phi i32 [ %inc15.i, %brelse.exit.i284.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr ptr, ptr %reada_bh, i32 %j.033.i
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx6.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and1.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i281, label %for.body5.i.if.end12.i_crit_edge

for.body5.i.if.end12.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then.i281:                                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %depth.034.i)
  %cmp8.i = icmp eq i32 %depth.034.i, -1
  br i1 %cmp8.i, label %if.then10.i, label %if.then.i281.if.end.i_crit_edge

if.then.i281.if.end.i_crit_edge:                  ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then.i281.if.end.i_crit_edge
  %depth.1.i = phi i32 [ %call11.i, %if.then10.i ], [ %depth.034.i, %if.then.i281.if.end.i_crit_edge ]
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef 1, ptr noundef %arrayidx6.i) #14
  %48 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr.i = load ptr, ptr %arrayidx6.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i, %for.body5.i.if.end12.i_crit_edge
  %49 = phi ptr [ %.pr.i, %if.end.i ], [ %45, %for.body5.i.if.end12.i_crit_edge ]
  %depth.2.i = phi i32 [ %depth.1.i, %if.end.i ], [ %depth.034.i, %for.body5.i.if.end12.i_crit_edge ]
  %tobool.not.i.i282 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i282, label %if.end12.i.brelse.exit.i284_crit_edge, label %if.then.i.i283

if.end12.i.brelse.exit.i284_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i284

if.then.i.i283:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %49) #14
  br label %brelse.exit.i284

brelse.exit.i284:                                 ; preds = %if.then.i.i283, %if.end12.i.brelse.exit.i284_crit_edge
  %inc15.i = add nuw nsw i32 %j.033.i, 1
  %exitcond36.not.i = icmp eq i32 %inc15.i, %reada_count.0
  br i1 %exitcond36.not.i, label %brelse.exit.i284.if.end19_crit_edge, label %brelse.exit.i284.for.body5.i_crit_edge

brelse.exit.i284.for.body5.i_crit_edge:           ; preds = %brelse.exit.i284
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

brelse.exit.i284.if.end19_crit_edge:              ; preds = %brelse.exit.i284
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end19:                                         ; preds = %brelse.exit.i284.if.end19_crit_edge, %if.then11.if.end19_crit_edge
  %depth.0 = phi i32 [ -1, %if.then11.if.end19_crit_edge ], [ %depth.2.i, %brelse.exit.i284.if.end19_crit_edge ]
  %50 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and1.i.i275 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i275)
  %tobool21.not = icmp eq i32 %and1.i.i275, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %depth.0)
  %cmp23 = icmp eq i32 %depth.0, -1
  %or.cond272 = select i1 %tobool21.not, i1 %cmp23, i1 false
  br i1 %or.cond272, label %if.then25, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end19.if.end27_crit_edge
  %depth.1 = phi i32 [ %depth.0, %if.end19.if.end27_crit_edge ], [ %call26, %if.then25 ]
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bh) #14
  %54 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.54, i32 noundef 354) #14
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i285 = icmp eq i32 %58, 0
  br i1 %tobool.not.i285, label %if.end27.wait_on_buffer.exit_crit_edge, label %if.then.i286

if.end27.wait_on_buffer.exit_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %wait_on_buffer.exit

if.then.i286:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @__wait_on_buffer(ptr noundef %55) #14
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i286, %if.end27.wait_on_buffer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %depth.1)
  %cmp28.not = icmp eq i32 %depth.1, -1
  br i1 %cmp28.not, label %wait_on_buffer.exit.if.end31_crit_edge, label %if.then30

wait_on_buffer.exit.if.end31_crit_edge:           ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %depth.1) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %wait_on_buffer.exit.if.end31_crit_edge
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bh, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and1.i.i276 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i276)
  %tobool33.not = icmp eq i32 %and1.i.i276, 0
  br i1 %tobool33.not, label %if.end31.io_error_crit_edge, label %if.end37

if.end31.io_error_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %io_error

io_error:                                         ; preds = %if.end31.io_error_crit_edge, %if.end.io_error_crit_edge
  %63 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %search_path, align 4
  %dec = add i32 %64, -1
  store i32 %dec, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp.i288 = icmp slt i32 %dec, 1
  br i1 %cmp.i288, label %if.then.i293, label %while.cond.preheader.i290

while.cond.preheader.i290:                        ; preds = %io_error
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp17.not.i289 = icmp eq i32 %dec, 1
  br i1 %cmp17.not.i289, label %while.cond.preheader.i290.cleanup195.sink.split_crit_edge, label %while.cond.preheader.i290.while.body.i298_crit_edge

while.cond.preheader.i290.while.body.i298_crit_edge: ; preds = %while.cond.preheader.i290
  br label %while.body.i298

while.cond.preheader.i290.cleanup195.sink.split_crit_edge: ; preds = %while.cond.preheader.i290
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195.sink.split

if.then.i293:                                     ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i298:                                  ; preds = %brelse.exit.i301.while.body.i298_crit_edge, %while.cond.preheader.i290.while.body.i298_crit_edge
  %path_offset.08.i294 = phi i32 [ %dec.i295, %brelse.exit.i301.while.body.i298_crit_edge ], [ %dec, %while.cond.preheader.i290.while.body.i298_crit_edge ]
  %dec.i295 = add nsw i32 %path_offset.08.i294, -1
  %add.ptr.i296 = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.08.i294
  %65 = ptrtoint ptr %add.ptr.i296 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i296, align 4
  %tobool.not.i.i297 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i297, label %while.body.i298.brelse.exit.i301_crit_edge, label %if.then.i.i299

while.body.i298.brelse.exit.i301_crit_edge:       ; preds = %while.body.i298
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i301

if.then.i.i299:                                   ; preds = %while.body.i298
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %66) #14
  br label %brelse.exit.i301

brelse.exit.i301:                                 ; preds = %if.then.i.i299, %while.body.i298.brelse.exit.i301_crit_edge
  %cmp1.i300 = icmp ugt i32 %path_offset.08.i294, 2
  br i1 %cmp1.i300, label %brelse.exit.i301.while.body.i298_crit_edge, label %brelse.exit.i301.cleanup195.sink.split_crit_edge

brelse.exit.i301.cleanup195.sink.split_crit_edge: ; preds = %brelse.exit.i301
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195.sink.split

brelse.exit.i301.while.body.i298_crit_edge:       ; preds = %brelse.exit.i301
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i298

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %expected_level.0)
  %cmp38 = icmp eq i32 %expected_level.0, -1
  br i1 %cmp38, label %if.then40, label %if.end37.if.end45_crit_edge

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs42 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %s_rs42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_rs42, align 4
  %s_tree_height = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %s_tree_height to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %s_tree_height, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %conv44 = zext i16 %73 to i32
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.end37.if.end45_crit_edge
  %expected_level.1 = phi i32 [ %conv44, %if.then40 ], [ %expected_level.0, %if.end37.if.end45_crit_edge ]
  %dec46 = add i32 %expected_level.1, -1
  %74 = call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 16384
  %78 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not.i = icmp eq i32 %78, 0
  br i1 %tobool.i.not.i, label %if.end45.reiserfs_cond_resched.exit_crit_edge, label %if.then.i304

if.end45.reiserfs_cond_resched.exit_crit_edge:    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit

if.then.i304:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #14
  call void @schedule() #14
  call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call1.i) #14
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i304, %if.end45.reiserfs_cond_resched.exit_crit_edge
  %79 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter48 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %80, i32 0, i32 14
  %call.i.i277 = call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter48, i32 noundef 4) #14
  %81 = ptrtoint ptr %s_generation_counter48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %s_generation_counter48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %82)
  %cmp50.not = icmp eq i32 %28, %82
  br i1 %cmp50.not, label %reiserfs_cond_resched.exit.do.body_crit_edge, label %land.lhs.true53

reiserfs_cond_resched.exit.do.body_crit_edge:     ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true53:                                  ; preds = %reiserfs_cond_resched.exit
  %83 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %86, align 2
  %89 = call i16 @llvm.bswap.i16(i16 %88) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %89)
  %cmp.i307 = icmp ugt i16 %89, 5
  br i1 %cmp.i307, label %if.then.i308, label %B_IS_IN_TREE.exit

if.then.i308:                                     ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef %84, ptr noundef %84) #17
  unreachable

B_IS_IN_TREE.exit:                                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp5.i.not = icmp ne i16 %88, 0
  %conv56 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec46, i32 %conv56)
  %cmp57.not = icmp eq i32 %dec46, %conv56
  %or.cond597 = select i1 %cmp5.i.not, i1 %cmp57.not, i1 false
  br i1 %or.cond597, label %lor.lhs.false59, label %B_IS_IN_TREE.exit.if.then62_crit_edge

B_IS_IN_TREE.exit.if.then62_crit_edge:            ; preds = %B_IS_IN_TREE.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

lor.lhs.false59:                                  ; preds = %B_IS_IN_TREE.exit
  %call60 = call fastcc i32 @key_in_buffer(ptr noundef %search_path, ptr noundef %key, ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false59.if.then62_crit_edge, label %lor.lhs.false59.do.body_crit_edge

lor.lhs.false59.do.body_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %B_IS_IN_TREE.exit.if.then62_crit_edge
  %90 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i, align 16
  %search_by_key_fs_changed = getelementptr inbounds %struct.reiserfs_sb_info, ptr %91, i32 0, i32 27, i32 6
  %92 = ptrtoint ptr %search_by_key_fs_changed to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %search_by_key_fs_changed, align 4
  %inc65 = add i32 %93, 1
  store i32 %inc65, ptr %search_by_key_fs_changed, align 4
  %94 = load ptr, ptr %s_fs_info.i, align 16
  %search_by_key_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %94, i32 0, i32 27, i32 7
  %95 = ptrtoint ptr %search_by_key_restarted to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %search_by_key_restarted, align 4
  %inc68 = add i32 %96, 1
  store i32 %inc68, ptr %search_by_key_restarted, align 4
  %97 = load ptr, ptr %s_fs_info.i, align 16
  %sub = add i32 %expected_level.1, -2
  %arrayidx = getelementptr %struct.reiserfs_sb_info, ptr %97, i32 0, i32 27, i32 18, i32 %sub
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx, align 4
  %inc71 = add i32 %99, 1
  store i32 %inc71, ptr %arrayidx, align 4
  %100 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i312 = icmp slt i32 %101, 1
  br i1 %cmp.i312, label %if.then.i317, label %while.cond.preheader.i314

while.cond.preheader.i314:                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp17.not.i313 = icmp eq i32 %101, 1
  br i1 %cmp17.not.i313, label %while.cond.preheader.i314.pathrelse.exit326_crit_edge, label %while.cond.preheader.i314.while.body.i322_crit_edge

while.cond.preheader.i314.while.body.i322_crit_edge: ; preds = %while.cond.preheader.i314
  br label %while.body.i322

while.cond.preheader.i314.pathrelse.exit326_crit_edge: ; preds = %while.cond.preheader.i314
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit326

if.then.i317:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i322:                                  ; preds = %brelse.exit.i325.while.body.i322_crit_edge, %while.cond.preheader.i314.while.body.i322_crit_edge
  %path_offset.08.i318 = phi i32 [ %dec.i319, %brelse.exit.i325.while.body.i322_crit_edge ], [ %101, %while.cond.preheader.i314.while.body.i322_crit_edge ]
  %dec.i319 = add nsw i32 %path_offset.08.i318, -1
  %add.ptr.i320 = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.08.i318
  %102 = ptrtoint ptr %add.ptr.i320 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i320, align 4
  %tobool.not.i.i321 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i321, label %while.body.i322.brelse.exit.i325_crit_edge, label %if.then.i.i323

while.body.i322.brelse.exit.i325_crit_edge:       ; preds = %while.body.i322
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i325

if.then.i.i323:                                   ; preds = %while.body.i322
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %103) #14
  br label %brelse.exit.i325

brelse.exit.i325:                                 ; preds = %if.then.i.i323, %while.body.i322.brelse.exit.i325_crit_edge
  %cmp1.i324 = icmp ugt i32 %path_offset.08.i318, 2
  br i1 %cmp1.i324, label %brelse.exit.i325.while.body.i322_crit_edge, label %brelse.exit.i325.pathrelse.exit326_crit_edge

brelse.exit.i325.pathrelse.exit326_crit_edge:     ; preds = %brelse.exit.i325
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit326

brelse.exit.i325.while.body.i322_crit_edge:       ; preds = %brelse.exit.i325
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i322

pathrelse.exit326:                                ; preds = %brelse.exit.i325.pathrelse.exit326_crit_edge, %while.cond.preheader.i314.pathrelse.exit326_crit_edge
  %104 = ptrtoint ptr %search_path to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %search_path, align 4
  %105 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs73 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %s_rs73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_rs73, align 4
  %s_root_block75 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %s_root_block75 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %s_root_block75, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  br label %while.cond.backedge

do.body:                                          ; preds = %lor.lhs.false59.do.body_crit_edge, %reiserfs_cond_resched.exit.do.body_crit_edge
  %call77 = call fastcc i32 @comp_keys(ptr noundef nonnull @MAX_KEY, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.body.do.end_crit_edge, label %land.lhs.true79

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true79:                                  ; preds = %do.body
  %call80 = call fastcc i32 @key_in_buffer(ptr noundef %search_path, ptr noundef %key, ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true79.do.end_crit_edge

land.lhs.true79.do.end_crit_edge:                 ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.search_by_key, ptr noundef nonnull @.str.9, i32 noundef 740, ptr noundef nonnull @__func__.search_by_key) #17
  unreachable

do.end:                                           ; preds = %land.lhs.true79.do.end_crit_edge, %do.body.do.end_crit_edge
  %112 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i, align 16
  %cur_tb = getelementptr inbounds %struct.reiserfs_sb_info, ptr %113, i32 0, i32 40
  %114 = ptrtoint ptr %cur_tb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cur_tb, align 4
  %tobool85.not = icmp eq ptr %115, null
  br i1 %tobool85.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @print_cur_tb(ptr noundef nonnull @.str.10) #14
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.search_by_key, ptr noundef nonnull @.str.12) #17
  unreachable

if.end87:                                         ; preds = %do.end
  %116 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bh, align 4
  %b_data.i329 = getelementptr inbounds %struct.buffer_head, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %b_data.i329 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %b_data.i329, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %119, align 2
  %122 = call i16 @llvm.bswap.i16(i16 %121) #14
  %conv.i330 = zext i16 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec46, i32 %conv.i330)
  %cmp.not.i = icmp eq i32 %dec46, %conv.i330
  br i1 %cmp.not.i, label %if.end.i333, label %if.then.i331

if.then.i331:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.is_tree_node, ptr noundef nonnull @.str.60, i32 noundef %conv.i330, i32 noundef %dec46) #14
  br label %if.then90

if.end.i333:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec46)
  %cmp5.i332 = icmp eq i32 %dec46, 1
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %117, i32 0, i32 4
  %123 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %b_size.i, align 8
  br i1 %cmp5.i332, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %121)
  %cmp.not.i.i = icmp eq i16 %121, 256
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i334

if.then.i.i334:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.62) #14
  br label %if.then90

if.end.i.i:                                       ; preds = %if.then7.i
  %blk_nr_item.i.i = getelementptr inbounds %struct.block_head, ptr %119, i32 0, i32 1
  %125 = ptrtoint ptr %blk_nr_item.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %blk_nr_item.i.i, align 2
  %127 = call i16 @llvm.bswap.i16(i16 %126) #14
  %conv2.i.i = zext i16 %127 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %cmp3.i.i = icmp eq i16 %126, 0
  br i1 %cmp3.i.i, label %if.end.i.i.if.then7.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %sub.i.i = add i32 %124, -24
  %div.i.i = udiv i32 %sub.i.i, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %conv2.i.i)
  %cmp5.i.i = icmp ult i32 %div.i.i, %conv2.i.i
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge, label %if.end8.i.i

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.64, ptr noundef %117) #14
  br label %if.then90

if.end8.i.i:                                      ; preds = %lor.lhs.false.i.i
  %mul.i.i = mul nuw nsw i32 %conv2.i.i, 24
  %ih_item_location.i.i = getelementptr %struct.item_head, ptr %119, i32 %conv2.i.i, i32 3
  %128 = ptrtoint ptr %ih_item_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %ih_item_location.i.i, align 1
  %130 = call i16 @llvm.bswap.i16(i16 %129) #14
  %conv11.i.i = zext i16 %130 to i32
  %sub12.i.i = add i32 %124, 24
  %add.i.i = add i32 %sub12.i.i, %mul.i.i
  %add13.i.i = sub i32 %add.i.i, %conv11.i.i
  %blk_free_space.i.i = getelementptr inbounds %struct.block_head, ptr %119, i32 0, i32 2
  %131 = ptrtoint ptr %blk_free_space.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %blk_free_space.i.i, align 2
  %133 = call i16 @llvm.bswap.i16(i16 %132) #14
  %conv14.i.i = zext i16 %133 to i32
  %sub15.i.i = sub i32 %124, %conv14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i.i, i32 %sub15.i.i)
  %cmp16.not.i.i = icmp eq i32 %add13.i.i, %sub15.i.i
  br i1 %cmp16.not.i.i, label %for.body.lr.ph.i.i, label %if.then18.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end8.i.i
  %add.ptr.i.i = getelementptr i8, ptr %119, i32 24
  %sub46.i.i = add i32 %124, -48
  %umax.i.i = call i32 @llvm.umax.i32(i32 %conv2.i.i, i32 1) #14
  br label %for.body.i.i

if.then18.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.66, ptr noundef %117) #14
  br label %if.then90

for.body.i.i:                                     ; preds = %if.end71.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0135.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end71.i.i.for.body.i.i_crit_edge ]
  %prev_location.0134.i.i = phi i32 [ %124, %for.body.lr.ph.i.i ], [ %conv28.i.i, %if.end71.i.i.for.body.i.i_crit_edge ]
  %ih.0133.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end71.i.i.for.body.i.i_crit_edge ]
  %ih_version.i.i.i = getelementptr inbounds %struct.item_head, ptr %ih.0133.i.i, i32 0, i32 4
  %134 = ptrtoint ptr %ih_version.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %ih_version.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %cmp.i.i.i.i = icmp eq i16 %135, 0
  %u.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih.0133.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %le_ih_k_type.exit.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  %k_uniqueness.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  %138 = call i32 @llvm.bswap.i32(i32 %137) #14
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %138, label %if.then.i.i.i.i.if.then25.i.i_crit_edge [
    i32 0, label %if.then.i.i.i.i.if.end26.i.i_crit_edge
    i32 -2, label %if.then.i.i.i.i.if.end26.i.i_crit_edge803
    i32 -1, label %if.then.i.i.i.i.if.end26.i.i_crit_edge804
    i32 500, label %if.then.i.i.i.i.if.end26.i.i_crit_edge805
  ]

if.then.i.i.i.i.if.end26.i.i_crit_edge805:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then.i.i.i.i.if.end26.i.i_crit_edge804:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then.i.i.i.i.if.end26.i.i_crit_edge803:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then.i.i.i.i.if.end26.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then.i.i.i.i.if.then25.i.i_crit_edge:          ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i.i

le_ih_k_type.exit.i.i:                            ; preds = %for.body.i.i
  %140 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %141 = load i64, ptr %u.i.i.i.i, align 1
  %142 = and i64 %141, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %142)
  %cmp.i.i.i.not.i.i = icmp eq i64 %142, 0
  br i1 %cmp.i.i.i.not.i.i, label %le_ih_k_type.exit.i.i.if.end26.i.i_crit_edge, label %le_ih_k_type.exit.i.i.if.then25.i.i_crit_edge

le_ih_k_type.exit.i.i.if.then25.i.i_crit_edge:    ; preds = %le_ih_k_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i.i

le_ih_k_type.exit.i.i.if.end26.i.i_crit_edge:     ; preds = %le_ih_k_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %le_ih_k_type.exit.i.i.if.then25.i.i_crit_edge, %if.then.i.i.i.i.if.then25.i.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.68, ptr noundef %ih.0133.i.i) #14
  br label %if.then90

if.end26.i.i:                                     ; preds = %le_ih_k_type.exit.i.i.if.end26.i.i_crit_edge, %if.then.i.i.i.i.if.end26.i.i_crit_edge, %if.then.i.i.i.i.if.end26.i.i_crit_edge803, %if.then.i.i.i.i.if.end26.i.i_crit_edge804, %if.then.i.i.i.i.if.end26.i.i_crit_edge805
  %ih_item_location27.i.i = getelementptr inbounds %struct.item_head, ptr %ih.0133.i.i, i32 0, i32 3
  %143 = ptrtoint ptr %ih_item_location27.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %ih_item_location27.i.i, align 1
  %145 = call i16 @llvm.bswap.i16(i16 %144) #14
  %conv28.i.i = zext i16 %145 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv28.i.i)
  %cmp29.not.i.i = icmp sle i32 %124, %conv28.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv28.i.i)
  %cmp35.i.i = icmp ugt i32 %mul.i.i, %conv28.i.i
  %or.cond.i.i = select i1 %cmp29.not.i.i, i1 true, i1 %cmp35.i.i
  br i1 %or.cond.i.i, label %if.then37.i.i, label %if.end38.i.i

if.then37.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.70, ptr noundef %ih.0133.i.i) #14
  br label %if.then90

if.end38.i.i:                                     ; preds = %if.end26.i.i
  %ih_item_len.i.i = getelementptr inbounds %struct.item_head, ptr %ih.0133.i.i, i32 0, i32 2
  %146 = ptrtoint ptr %ih_item_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %ih_item_len.i.i, align 1
  %148 = call i16 @llvm.bswap.i16(i16 %147) #14
  %conv39.i.i = zext i16 %148 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %cmp40.i.i = icmp eq i16 %147, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub46.i.i, i32 %conv39.i.i)
  %cmp47.i.i = icmp ult i32 %sub46.i.i, %conv39.i.i
  %or.cond114.i.i = select i1 %cmp40.i.i, i1 true, i1 %cmp47.i.i
  br i1 %or.cond114.i.i, label %if.then49.i.i, label %if.end50.i.i

if.then49.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.72, ptr noundef %ih.0133.i.i) #14
  br label %if.then90

if.end50.i.i:                                     ; preds = %if.end38.i.i
  %sub53.i.i = sub i32 %prev_location.0134.i.i, %conv28.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub53.i.i, i32 %conv39.i.i)
  %cmp56.not.i.i = icmp eq i32 %sub53.i.i, %conv39.i.i
  br i1 %cmp56.not.i.i, label %if.end59.i.i, label %if.then58.i.i

if.then58.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.74, ptr noundef %ih.0133.i.i) #14
  br label %if.then90

if.end59.i.i:                                     ; preds = %if.end50.i.i
  br i1 %cmp.i.i.i.i, label %is_direntry_le_ih.exit.i.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end59.i.i
  %149 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %u.i.i.i.i, align 1
  %151 = and i64 %150, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %151)
  %phi.cmp1.i.i.i.i = icmp eq i64 %151, 48
  br i1 %phi.cmp1.i.i.i.i, label %if.else.i.i.i.i.i.if.then61.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end71.i.i_crit_edge

if.else.i.i.i.i.i.if.end71.i.i_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i.i

if.else.i.i.i.i.i.if.then61.i.i_crit_edge:        ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then61.i.i

is_direntry_le_ih.exit.i.i:                       ; preds = %if.end59.i.i
  %k_uniqueness.i.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %k_uniqueness.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %k_uniqueness.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %153)
  %cond.i.i.i.i = icmp eq i32 %153, -201261056
  br i1 %cond.i.i.i.i, label %is_direntry_le_ih.exit.i.i.if.then61.i.i_crit_edge, label %is_direntry_le_ih.exit.i.i.if.end71.i.i_crit_edge

is_direntry_le_ih.exit.i.i.if.end71.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i.i

is_direntry_le_ih.exit.i.i.if.then61.i.i_crit_edge: ; preds = %is_direntry_le_ih.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then61.i.i

if.then61.i.i:                                    ; preds = %is_direntry_le_ih.exit.i.i.if.then61.i.i_crit_edge, %if.else.i.i.i.i.i.if.then61.i.i_crit_edge
  %u.i.i = getelementptr inbounds %struct.item_head, ptr %ih.0133.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %u.i.i, align 1
  %156 = call i16 @llvm.bswap.i16(i16 %155) #14
  %conv64.i.i = zext i16 %156 to i32
  %mul65.i.i = mul nuw nsw i32 %conv64.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %mul65.i.i, i32 %conv39.i.i)
  %cmp66.i.i = icmp ugt i32 %mul65.i.i, %conv39.i.i
  br i1 %cmp66.i.i, label %if.then68.i.i, label %if.end69.i.i

if.then68.i.i:                                    ; preds = %if.then61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.is_leaf, ptr noundef nonnull @.str.76, ptr noundef %ih.0133.i.i) #14
  br label %if.then90

if.end69.i.i:                                     ; preds = %if.then61.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %119, i32 %conv28.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %cmp15.not.i29.i = icmp eq i16 %155, 0
  br i1 %cmp15.not.i29.i, label %if.end69.i.i.if.end91_crit_edge, label %for.body.lr.ph.i32.i

if.end69.i.i.if.end91_crit_edge:                  ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

for.body.lr.ph.i32.i:                             ; preds = %if.end69.i.i
  %157 = call i16 @llvm.umax.i16(i16 %156, i16 1) #14
  %umax.i31.i = zext i16 %157 to i32
  br label %for.body.i33.i

for.body.i33.i:                                   ; preds = %for.inc.i.i.for.body.i33.i_crit_edge, %for.body.lr.ph.i32.i
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i32.i ], [ %inc.i35.i, %for.inc.i.i.for.body.i33.i_crit_edge ]
  %deh_location.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i, i32 %i.016.i.i, i32 3
  %158 = ptrtoint ptr %deh_location.i.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %deh_location.i.i, align 1
  %160 = call i16 @llvm.bswap.i16(i16 %159) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %160, i16 %148)
  %cmp4.i.i = icmp ugt i16 %160, %148
  br i1 %cmp4.i.i, label %if.then.i34.i, label %for.inc.i.i

if.then.i34.i:                                    ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i, i32 %i.016.i.i
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.has_valid_deh_location, ptr noundef nonnull @.str.78, ptr noundef %arrayidx.i.i) #14
  br label %if.then90

for.inc.i.i:                                      ; preds = %for.body.i33.i
  %inc.i35.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i36.i = icmp eq i32 %inc.i35.i, %umax.i31.i
  br i1 %exitcond.not.i36.i, label %for.inc.i.i.if.end91_crit_edge, label %for.inc.i.i.for.body.i33.i_crit_edge

for.inc.i.i.for.body.i33.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i33.i

for.inc.i.i.if.end91_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.end71.i.i:                                     ; preds = %is_direntry_le_ih.exit.i.i.if.end71.i.i_crit_edge, %if.else.i.i.i.i.i.if.end71.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0135.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.item_head, ptr %ih.0133.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end71.i.i.if.end91_crit_edge, label %if.end71.i.i.for.body.i.i_crit_edge

if.end71.i.i.for.body.i.i_crit_edge:              ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end71.i.i.if.end91_crit_edge:                  ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.end9.i:                                        ; preds = %if.end.i333
  %161 = add i16 %122, -6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %161)
  %162 = icmp ult i16 %161, -4
  br i1 %162, label %if.then.i22.i, label %if.end.i25.i

if.then.i22.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.is_internal, ptr noundef nonnull @.str.62) #14
  br label %if.then90

if.end.i25.i:                                     ; preds = %if.end9.i
  %blk_nr_item.i23.i = getelementptr inbounds %struct.block_head, ptr %119, i32 0, i32 1
  %163 = ptrtoint ptr %blk_nr_item.i23.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %blk_nr_item.i23.i, align 2
  %165 = call i16 @llvm.bswap.i16(i16 %164) #14
  %conv4.i.i = zext i16 %165 to i32
  %sub5.i.i = add i32 %124, -32
  %div.i24.i = udiv i32 %sub5.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i24.i, i32 %conv4.i.i)
  %cmp6.i.i = icmp ult i32 %div.i24.i, %conv4.i.i
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.is_internal, ptr noundef nonnull @.str.81, ptr noundef %117) #14
  br label %if.then90

if.end9.i.i:                                      ; preds = %if.end.i25.i
  %mul11.i.i = mul nuw nsw i32 %conv4.i.i, 24
  %add12.i.i = add nuw nsw i32 %mul11.i.i, 32
  %blk_free_space.i26.i = getelementptr inbounds %struct.block_head, ptr %119, i32 0, i32 2
  %166 = ptrtoint ptr %blk_free_space.i26.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %blk_free_space.i26.i, align 2
  %168 = call i16 @llvm.bswap.i16(i16 %167) #14
  %conv13.i.i = zext i16 %168 to i32
  %sub14.i.i = sub i32 %124, %conv13.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %sub14.i.i)
  %cmp15.not.i.i = icmp eq i32 %add12.i.i, %sub14.i.i
  br i1 %cmp15.not.i.i, label %if.end9.i.i.if.end91_crit_edge, label %if.then17.i.i

if.end9.i.i.if.end91_crit_edge:                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then17.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.is_internal, ptr noundef nonnull @.str.66, ptr noundef %117) #14
  br label %if.then90

if.then90:                                        ; preds = %if.then17.i.i, %if.then8.i.i, %if.then.i22.i, %if.then.i34.i, %if.then68.i.i, %if.then58.i.i, %if.then49.i.i, %if.then37.i.i, %if.then25.i.i, %if.then18.i.i, %if.then7.i.i, %if.then.i.i334, %if.then.i331
  %169 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bh, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %sb, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.search_by_key, ptr noundef nonnull @.str.14, i64 noundef %172) #14
  %173 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.i335 = icmp slt i32 %174, 1
  br i1 %cmp.i335, label %if.then.i340, label %while.cond.preheader.i337

while.cond.preheader.i337:                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp17.not.i336 = icmp eq i32 %174, 1
  br i1 %cmp17.not.i336, label %while.cond.preheader.i337.cleanup195.sink.split_crit_edge, label %while.cond.preheader.i337.while.body.i345_crit_edge

while.cond.preheader.i337.while.body.i345_crit_edge: ; preds = %while.cond.preheader.i337
  br label %while.body.i345

while.cond.preheader.i337.cleanup195.sink.split_crit_edge: ; preds = %while.cond.preheader.i337
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195.sink.split

if.then.i340:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i345:                                  ; preds = %brelse.exit.i348.while.body.i345_crit_edge, %while.cond.preheader.i337.while.body.i345_crit_edge
  %path_offset.08.i341 = phi i32 [ %dec.i342, %brelse.exit.i348.while.body.i345_crit_edge ], [ %174, %while.cond.preheader.i337.while.body.i345_crit_edge ]
  %dec.i342 = add nsw i32 %path_offset.08.i341, -1
  %add.ptr.i343 = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.08.i341
  %175 = ptrtoint ptr %add.ptr.i343 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add.ptr.i343, align 4
  %tobool.not.i.i344 = icmp eq ptr %176, null
  br i1 %tobool.not.i.i344, label %while.body.i345.brelse.exit.i348_crit_edge, label %if.then.i.i346

while.body.i345.brelse.exit.i348_crit_edge:       ; preds = %while.body.i345
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i348

if.then.i.i346:                                   ; preds = %while.body.i345
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %176) #14
  br label %brelse.exit.i348

brelse.exit.i348:                                 ; preds = %if.then.i.i346, %while.body.i345.brelse.exit.i348_crit_edge
  %cmp1.i347 = icmp ugt i32 %path_offset.08.i341, 2
  br i1 %cmp1.i347, label %brelse.exit.i348.while.body.i345_crit_edge, label %brelse.exit.i348.cleanup195.sink.split_crit_edge

brelse.exit.i348.cleanup195.sink.split_crit_edge: ; preds = %brelse.exit.i348
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195.sink.split

brelse.exit.i348.while.body.i345_crit_edge:       ; preds = %brelse.exit.i348
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i345

if.end91:                                         ; preds = %if.end9.i.i.if.end91_crit_edge, %if.end71.i.i.if.end91_crit_edge, %for.inc.i.i.if.end91_crit_edge, %if.end69.i.i.if.end91_crit_edge
  %177 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bh, align 4
  %b_data92 = getelementptr inbounds %struct.buffer_head, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %b_data92 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %b_data92, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %180, align 2
  %183 = call i16 @llvm.bswap.i16(i16 %182)
  %conv94 = zext i16 %183 to i32
  %184 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_fs_info.i, align 16
  %sub97 = add nsw i32 %conv94, -1
  %arrayidx98 = getelementptr %struct.reiserfs_sb_info, ptr %185, i32 0, i32 27, i32 16, i32 %sub97
  %186 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx98, align 4
  %inc99 = add i32 %187, 1
  store i32 %inc99, ptr %arrayidx98, align 4
  %188 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bh, align 4
  %b_data100 = getelementptr inbounds %struct.buffer_head, ptr %189, i32 0, i32 5
  %190 = ptrtoint ptr %b_data100 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %b_data100, align 4
  %blk_free_space = getelementptr inbounds %struct.block_head, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %blk_free_space to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %blk_free_space, align 2
  %194 = call i16 @llvm.bswap.i16(i16 %193)
  %conv101 = zext i16 %194 to i32
  %195 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx105 = getelementptr %struct.reiserfs_sb_info, ptr %196, i32 0, i32 27, i32 20, i32 %sub97
  %197 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx105, align 4
  %add = add i32 %198, %conv101
  store i32 %add, ptr %arrayidx105, align 4
  %199 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bh, align 4
  %b_data106 = getelementptr inbounds %struct.buffer_head, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %b_data106 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %b_data106, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %blk_nr_item, align 2
  %205 = call i16 @llvm.bswap.i16(i16 %204)
  %conv107 = zext i16 %205 to i32
  %206 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %s_fs_info.i, align 16
  %arrayidx111 = getelementptr %struct.reiserfs_sb_info, ptr %207, i32 0, i32 27, i32 19, i32 %sub97
  %208 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %209, %conv107
  store i32 %add112, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv94, i32 %stop_level)
  %cmp114 = icmp slt i32 %conv94, %stop_level
  br i1 %cmp114, label %if.then116, label %do.end119

if.then116:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.search_by_key, ptr noundef nonnull @.str.15, i32 noundef 768, ptr noundef nonnull @__func__.search_by_key, i32 noundef %conv94, i32 noundef %stop_level) #17
  unreachable

do.end119:                                        ; preds = %if.end91
  %210 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bh, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i353 = getelementptr i8, ptr %213, i32 24
  %blk_nr_item122 = getelementptr inbounds %struct.block_head, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %blk_nr_item122 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %blk_nr_item122, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %182)
  %cmp124 = icmp eq i16 %182, 256
  %cond = select i1 %cmp124, i32 24, i32 16
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %inc6, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %cmp.not17.i = icmp eq i16 %215, 0
  br i1 %cmp.not17.i, label %do.end119.bin_search.exit_crit_edge, label %for.body.i356.preheader

do.end119.bin_search.exit_crit_edge:              ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %bin_search.exit

for.body.i356.preheader:                          ; preds = %do.end119
  %216 = call i16 @llvm.bswap.i16(i16 %215)
  %conv123 = zext i16 %216 to i32
  %sub.i = add nsw i32 %conv123, -1
  br label %for.body.i356

for.body.i356:                                    ; preds = %for.inc.i.for.body.i356_crit_edge, %for.body.i356.preheader
  %j.020.in.i = phi i32 [ %add5.i, %for.inc.i.for.body.i356_crit_edge ], [ %sub.i, %for.body.i356.preheader ]
  %lbound.019.i = phi i32 [ %lbound.1.i, %for.inc.i.for.body.i356_crit_edge ], [ 0, %for.body.i356.preheader ]
  %rbound.018.i = phi i32 [ %rbound.1.i, %for.inc.i.for.body.i356_crit_edge ], [ %sub.i, %for.body.i356.preheader ]
  %j.020.i = sdiv i32 %j.020.in.i, 2
  %mul.i = mul i32 %j.020.i, %cond
  %add.ptr.i354 = getelementptr i8, ptr %add.ptr.i.i353, i32 %mul.i
  %call.i355 = call fastcc i32 @comp_keys(ptr noundef %add.ptr.i354, ptr noundef %key) #14
  %217 = zext i32 %call.i355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call.i355, label %for.body.i356.for.inc.i_crit_edge [
    i32 -1, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 0, label %bin_search.exit.thread
  ]

for.body.i356.for.inc.i_crit_edge:                ; preds = %for.body.i356
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i356
  call void @__sanitizer_cov_trace_pc() #16
  %add1.i = add nsw i32 %j.020.i, 1
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %for.body.i356
  call void @__sanitizer_cov_trace_pc() #16
  %sub3.i = add nsw i32 %j.020.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb2.i, %sw.bb.i, %for.body.i356.for.inc.i_crit_edge
  %rbound.1.i = phi i32 [ %rbound.018.i, %for.body.i356.for.inc.i_crit_edge ], [ %sub3.i, %sw.bb2.i ], [ %rbound.018.i, %sw.bb.i ]
  %lbound.1.i = phi i32 [ %lbound.019.i, %for.body.i356.for.inc.i_crit_edge ], [ %lbound.019.i, %sw.bb2.i ], [ %add1.i, %sw.bb.i ]
  %add5.i = add i32 %lbound.1.i, %rbound.1.i
  %cmp.not.i357 = icmp sgt i32 %lbound.1.i, %rbound.1.i
  br i1 %cmp.not.i357, label %for.inc.i.bin_search.exit_crit_edge, label %for.inc.i.for.body.i356_crit_edge

for.inc.i.for.body.i356_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i356

for.inc.i.bin_search.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bin_search.exit

bin_search.exit:                                  ; preds = %for.inc.i.bin_search.exit_crit_edge, %do.end119.bin_search.exit_crit_edge
  %storemerge.i = phi i32 [ 0, %do.end119.bin_search.exit_crit_edge ], [ %lbound.1.i, %for.inc.i.bin_search.exit_crit_edge ]
  %218 = ptrtoint ptr %pe_position to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %storemerge.i, ptr %pe_position, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv94, i32 %stop_level)
  %cmp127 = icmp eq i32 %conv94, %stop_level
  br i1 %cmp127, label %bin_search.exit.cleanup195_crit_edge, label %bin_search.exit.if.end136_crit_edge

bin_search.exit.if.end136_crit_edge:              ; preds = %bin_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

bin_search.exit.cleanup195_crit_edge:             ; preds = %bin_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195

bin_search.exit.thread:                           ; preds = %for.body.i356
  %219 = ptrtoint ptr %pe_position to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %j.020.i, ptr %pe_position, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv94, i32 %stop_level)
  %cmp127366 = icmp eq i32 %conv94, %stop_level
  br i1 %cmp127366, label %bin_search.exit.thread.cleanup195_crit_edge, label %if.then133

bin_search.exit.thread.cleanup195_crit_edge:      ; preds = %bin_search.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup195

if.then133:                                       ; preds = %bin_search.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %inc135 = add nsw i32 %j.020.i, 1
  %220 = ptrtoint ptr %pe_position to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %inc135, ptr %pe_position, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %bin_search.exit.if.end136_crit_edge
  %221 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr138 = getelementptr i8, ptr %222, i32 24
  %blk_nr_item140 = getelementptr inbounds %struct.block_head, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %blk_nr_item140 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %blk_nr_item140, align 2
  %225 = call i16 @llvm.bswap.i16(i16 %224)
  %conv141 = zext i16 %225 to i32
  %mul = shl nuw nsw i32 %conv141, 4
  %add.ptr142 = getelementptr i8, ptr %add.ptr138, i32 %mul
  %226 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pe_position, align 4
  %mul144 = shl i32 %227, 3
  %add.ptr145 = getelementptr i8, ptr %add.ptr142, i32 %mul144
  %228 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %add.ptr145, align 4
  %230 = call i32 @llvm.bswap.i32(i32 %229)
  %231 = ptrtoint ptr %reada to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %reada, align 4
  %and = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool146.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %182)
  %cmp148 = icmp eq i16 %182, 512
  %or.cond273 = select i1 %tobool146.not, i1 %cmp148, i1 false
  br i1 %or.cond273, label %if.then150, label %if.end136.while.cond.backedge_crit_edge

if.end136.while.cond.backedge_crit_edge:          ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end167.while.cond.backedge_crit_edge, %while.cond160.while.cond.backedge_crit_edge, %if.end136.while.cond.backedge_crit_edge, %pathrelse.exit326
  %block_number.0.be = phi i32 [ %111, %pathrelse.exit326 ], [ %230, %if.end136.while.cond.backedge_crit_edge ], [ %230, %if.end167.while.cond.backedge_crit_edge ], [ %230, %while.cond160.while.cond.backedge_crit_edge ]
  %expected_level.0.be = phi i32 [ -1, %pathrelse.exit326 ], [ %dec46, %if.end136.while.cond.backedge_crit_edge ], [ %dec46, %if.end167.while.cond.backedge_crit_edge ], [ %dec46, %while.cond160.while.cond.backedge_crit_edge ]
  %reada_count.0.be = phi i32 [ 0, %pathrelse.exit326 ], [ 0, %if.end136.while.cond.backedge_crit_edge ], [ %inc178, %if.end167.while.cond.backedge_crit_edge ], [ %reada_count.1, %while.cond160.while.cond.backedge_crit_edge ]
  br label %while.cond

if.then150:                                       ; preds = %if.end136
  %and156 = and i32 %232, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %spec.select = select i1 %tobool157.not, i32 %conv141, i32 0
  %pos.1.v = select i1 %tobool157.not, i32 1, i32 -1
  br label %while.cond160

while.cond160:                                    ; preds = %if.end167.while.cond160_crit_edge, %if.then150
  %reada_count.1 = phi i32 [ 0, %if.then150 ], [ %inc178, %if.end167.while.cond160_crit_edge ]
  %pos.0 = phi i32 [ %227, %if.then150 ], [ %pos.1, %if.end167.while.cond160_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reada_count.1)
  %cmp161 = icmp ugt i32 %reada_count.1, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %spec.select)
  %cmp164 = icmp eq i32 %pos.0, %spec.select
  %or.cond274 = select i1 %cmp161, i1 true, i1 %cmp164
  br i1 %or.cond274, label %while.cond160.while.cond.backedge_crit_edge, label %if.end167

while.cond160.while.cond.backedge_crit_edge:      ; preds = %while.cond160
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end167:                                        ; preds = %while.cond160
  %mul175 = shl i32 %pos.0, 3
  %add.ptr176 = getelementptr i8, ptr %add.ptr142, i32 %mul175
  %233 = ptrtoint ptr %add.ptr176 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %add.ptr176, align 4
  %235 = call i32 @llvm.bswap.i32(i32 %234)
  %inc178 = add nuw nsw i32 %reada_count.1, 1
  %arrayidx179 = getelementptr [16 x i32], ptr %reada_blocks, i32 0, i32 %reada_count.1
  %236 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %arrayidx179, align 4
  %pos.1 = add i32 %pos.0, %pos.1.v
  %arrayidx.i361 = getelementptr %struct.reiserfs_key, ptr %add.ptr138, i32 %pos.1
  %k_objectid = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i361, i32 0, i32 1
  %237 = ptrtoint ptr %k_objectid to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %k_objectid, align 1
  %239 = call i32 @llvm.bswap.i32(i32 %238)
  %240 = ptrtoint ptr %k_objectid189 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %k_objectid189, align 4
  %cmp190.not = icmp eq i32 %239, %241
  br i1 %cmp190.not, label %if.end167.while.cond160_crit_edge, label %if.end167.while.cond.backedge_crit_edge

if.end167.while.cond.backedge_crit_edge:          ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end167.while.cond160_crit_edge:                ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond160

cleanup195.sink.split:                            ; preds = %brelse.exit.i348.cleanup195.sink.split_crit_edge, %while.cond.preheader.i337.cleanup195.sink.split_crit_edge, %brelse.exit.i301.cleanup195.sink.split_crit_edge, %while.cond.preheader.i290.cleanup195.sink.split_crit_edge
  %242 = ptrtoint ptr %search_path to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1, ptr %search_path, align 4
  br label %cleanup195

cleanup195:                                       ; preds = %cleanup195.sink.split, %bin_search.exit.thread.cleanup195_crit_edge, %bin_search.exit.cleanup195_crit_edge
  %retval.0 = phi i32 [ -2, %cleanup195.sink.split ], [ 1, %bin_search.exit.thread.cleanup195_crit_edge ], [ 0, %bin_search.exit.cleanup195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %reada_blocks) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %reada_bh) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @key_in_buffer(ptr nocapture noundef readonly %chk_path, ptr noundef %key, ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %chk_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chk_path, align 4
  %2 = add i32 %1, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  br i1 %3, label %lor.lhs.false.if.then_crit_edge, label %do.body5

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %chk_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chk_path, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.key_in_buffer, ptr noundef nonnull @.str.55, i32 noundef 333, ptr noundef nonnull @__func__.key_in_buffer, ptr noundef %key, i32 noundef %5) #17
  unreachable

do.body5:                                         ; preds = %lor.lhs.false
  %path_elements = getelementptr inbounds %struct.treepath, ptr %chk_path, i32 0, i32 2
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_bdev, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then8, label %do.body5.while.cond.i_crit_edge

do.body5.while.cond.i_crit_edge:                  ; preds = %do.body5
  br label %while.cond.i

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.key_in_buffer, ptr noundef nonnull @.str.56, i32 noundef 335, ptr noundef nonnull @__func__.key_in_buffer) #17
  unreachable

while.cond.i:                                     ; preds = %if.end38.i.while.cond.i_crit_edge, %do.body5.while.cond.i_crit_edge
  %path_offset.0.i = phi i32 [ %dec.i, %if.end38.i.while.cond.i_crit_edge ], [ %1, %do.body5.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %path_offset.0.i)
  %cmp1.i = icmp sgt i32 %path_offset.0.i, 2
  br i1 %cmp1.i, label %do.body2.i, label %while.end.i

do.body2.i:                                       ; preds = %while.cond.i
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements, i32 %dec.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and1.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %do.end6.i

if.then3.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_lkey, ptr noundef nonnull @.str.58, i32 noundef 229, ptr noundef nonnull @__func__.get_lkey) #17
  unreachable

do.end6.i:                                        ; preds = %do.body2.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %18)
  %cmp.i.i = icmp ugt i16 %18, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %B_IS_IN_TREE.exit.i

if.then.i.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef %11, ptr noundef %11) #17
  unreachable

B_IS_IN_TREE.exit.i:                              ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp5.i.not.i = icmp eq i16 %17, 0
  br i1 %cmp5.i.not.i, label %B_IS_IN_TREE.exit.i.get_lkey.exit_crit_edge, label %if.end14.i

B_IS_IN_TREE.exit.i.get_lkey.exit_crit_edge:      ; preds = %B_IS_IN_TREE.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_lkey.exit

if.end14.i:                                       ; preds = %B_IS_IN_TREE.exit.i
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements, i32 %dec.i, i32 1
  %19 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pe_position.i, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %blk_nr_item.i, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #14
  %conv.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i)
  %cmp18.i = icmp sgt i32 %20, %conv.i
  br i1 %cmp18.i, label %if.end14.i.get_lkey.exit_crit_edge, label %if.end21.i

if.end14.i.get_lkey.exit_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_lkey.exit

if.end21.i:                                       ; preds = %if.end14.i
  %add.ptr23.i = getelementptr i8, ptr %15, i32 24
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.ptr27.i = getelementptr i8, ptr %add.ptr23.i, i32 %mul.i
  %mul28.i = shl i32 %20, 3
  %add.ptr29.i = getelementptr i8, ptr %add.ptr27.i, i32 %mul28.i
  %24 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr29.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %conv30.i = zext i32 %26 to i64
  %add.ptr33.i = getelementptr %struct.path_element, ptr %path_elements, i32 %path_offset.0.i
  %27 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr33.i, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv30.i)
  %cmp35.not.i = icmp eq i64 %30, %conv30.i
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end21.i.get_lkey.exit_crit_edge

if.end21.i.get_lkey.exit_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_lkey.exit

if.end38.i:                                       ; preds = %if.end21.i
  %tobool39.not.i = icmp eq i32 %20, 0
  br i1 %tobool39.not.i, label %if.end38.i.while.cond.i_crit_edge, label %if.then40.i

if.end38.i.while.cond.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %20, -1
  %arrayidx.i.i = getelementptr %struct.reiserfs_key, ptr %add.ptr23.i, i32 %sub.i
  br label %get_lkey.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr45.i = getelementptr %struct.treepath, ptr %chk_path, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr45.i, align 4
  %b_blocknr47.i = getelementptr inbounds %struct.buffer_head, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr47.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %b_blocknr47.i, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_rs.i, align 4
  %s_root_block.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_root_block.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %s_root_block.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  %conv49.i = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %conv49.i)
  %cmp50.i = icmp eq i64 %34, %conv49.i
  %MIN_KEY.MAX_KEY.i = select i1 %cmp50.i, ptr @MIN_KEY, ptr @MAX_KEY
  br label %get_lkey.exit

get_lkey.exit:                                    ; preds = %while.end.i, %if.then40.i, %if.end21.i.get_lkey.exit_crit_edge, %if.end14.i.get_lkey.exit_crit_edge, %B_IS_IN_TREE.exit.i.get_lkey.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %if.then40.i ], [ %MIN_KEY.MAX_KEY.i, %while.end.i ], [ @MAX_KEY, %if.end21.i.get_lkey.exit_crit_edge ], [ @MAX_KEY, %if.end14.i.get_lkey.exit_crit_edge ], [ @MAX_KEY, %B_IS_IN_TREE.exit.i.get_lkey.exit_crit_edge ]
  %call11 = tail call fastcc i32 @comp_keys(ptr noundef %retval.0.i, ptr noundef nonnull %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %get_lkey.exit.return_crit_edge, label %if.end14

get_lkey.exit.return_crit_edge:                   ; preds = %get_lkey.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end14:                                         ; preds = %get_lkey.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call ptr @get_rkey(ptr noundef %chk_path, ptr noundef %sb)
  %call16 = tail call fastcc i32 @comp_keys(ptr noundef %call15, ptr noundef nonnull %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 1
  %. = zext i1 %cmp17.not to i32
  br label %return

return:                                           ; preds = %if.end14, %get_lkey.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %get_lkey.exit.return_crit_edge ], [ %., %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @comp_keys(ptr nocapture noundef readonly %le_key, ptr nocapture noundef readonly %cpu_key) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %le_key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %le_key, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #14
  %3 = ptrtoint ptr %cpu_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.i = icmp ult i32 %2, %4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp4.i = icmp ugt i32 %2, %4
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %k_objectid.i = getelementptr inbounds %struct.reiserfs_key, ptr %le_key, i32 0, i32 1
  %5 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %k_objectid.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  %k_objectid8.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 1
  %8 = ptrtoint ptr %k_objectid8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %k_objectid8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9.i = icmp ult i32 %7, %9
  br i1 %cmp9.i, label %if.end6.i.cleanup_crit_edge, label %comp_short_keys.exit

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

comp_short_keys.exit:                             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14.i.not = icmp ugt i32 %7, %9
  br i1 %cmp14.i.not, label %comp_short_keys.exit.cleanup_crit_edge, label %if.end

comp_short_keys.exit.cleanup_crit_edge:           ; preds = %comp_short_keys.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %comp_short_keys.exit
  %u.i = getelementptr inbounds %struct.reiserfs_key, ptr %le_key, i32 0, i32 2
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %u.i, align 1
  %12 = trunc i64 %11 to i32
  %13 = lshr i32 %12, 4
  %conv1.i.i = and i32 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i)
  %cmp.i.i = icmp ult i32 %conv1.i.i, 4
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %14 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %14)
  %switch9.i = icmp ult i16 %14, -3
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %switch.i = select i1 %not.cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %le_key_k_offset.exit, label %le_key_k_offset.exit.thread

le_key_k_offset.exit:                             ; preds = %if.end
  %15 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %u.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %conv.i = zext i32 %17 to i64
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 2
  %18 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %k_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv.i)
  %cmp = icmp sgt i64 %19, %conv.i
  br i1 %cmp, label %le_key_k_offset.exit.cleanup_crit_edge, label %cond.true.i55

le_key_k_offset.exit.cleanup_crit_edge:           ; preds = %le_key_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

le_key_k_offset.exit.thread:                      ; preds = %if.end
  %20 = and i64 %11, -241
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #14
  %k_offset.i102 = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 2
  %22 = ptrtoint ptr %k_offset.i102 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %k_offset.i102, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp103 = icmp slt i64 %21, %23
  br i1 %cmp103, label %le_key_k_offset.exit.thread.cleanup_crit_edge, label %le_key_k_offset.exit.thread.le_key_k_offset.exit58_crit_edge

le_key_k_offset.exit.thread.le_key_k_offset.exit58_crit_edge: ; preds = %le_key_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_offset.exit58

le_key_k_offset.exit.thread.cleanup_crit_edge:    ; preds = %le_key_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.true.i55:                                    ; preds = %le_key_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %u.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %conv.i54 = zext i32 %26 to i64
  br label %le_key_k_offset.exit58

le_key_k_offset.exit58:                           ; preds = %cond.true.i55, %le_key_k_offset.exit.thread.le_key_k_offset.exit58_crit_edge
  %27 = phi i64 [ %19, %cond.true.i55 ], [ %23, %le_key_k_offset.exit.thread.le_key_k_offset.exit58_crit_edge ]
  %cond.i57 = phi i64 [ %conv.i54, %cond.true.i55 ], [ %21, %le_key_k_offset.exit.thread.le_key_k_offset.exit58_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cond.i57, i64 %27)
  %cmp10 = icmp sgt i64 %cond.i57, %27
  br i1 %cmp10, label %le_key_k_offset.exit58.cleanup_crit_edge, label %if.end12

le_key_k_offset.exit58.cleanup_crit_edge:         ; preds = %le_key_k_offset.exit58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %le_key_k_offset.exit58
  %key_length = getelementptr inbounds %struct.cpu_key, ptr %cpu_key, i32 0, i32 2
  %28 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp13 = icmp eq i32 %29, 3
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  br i1 %switch.i, label %if.then.i, label %le_key_k_type.exit.thread

if.then.i:                                        ; preds = %if.end15
  %k_uniqueness.i = getelementptr inbounds %struct.offset_v1, ptr %u.i, i32 0, i32 1
  %30 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %k_uniqueness.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %32, label %sw.default.i.i [
    i32 0, label %if.then.i.le_key_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i
    i32 -1, label %sw.bb2.i.i
    i32 500, label %sw.bb3.i.i
  ]

if.then.i.le_key_k_type.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.bb2.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.bb3.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit

le_key_k_type.exit:                               ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i.le_key_k_type.exit_crit_edge
  %retval.0.in.i = phi i32 [ 15, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ %32, %if.then.i.le_key_k_type.exit_crit_edge ]
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 3
  %34 = ptrtoint ptr %k_type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %k_type.i, align 8
  %36 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.in.i, i32 %36)
  %cmp19 = icmp ult i32 %retval.0.in.i, %36
  br i1 %cmp19, label %le_key_k_type.exit.cleanup_crit_edge, label %if.then.i85

le_key_k_type.exit.cleanup_crit_edge:             ; preds = %le_key_k_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

le_key_k_type.exit.thread:                        ; preds = %if.end15
  %narrow.i = select i1 %cmp.i.i, i32 %conv1.i.i, i32 15
  %k_type.i106 = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 3
  %37 = ptrtoint ptr %k_type.i106 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %k_type.i106, align 8
  %39 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %narrow.i, i32 %39)
  %cmp19108 = icmp ult i32 %narrow.i, %39
  br i1 %cmp19108, label %le_key_k_type.exit.thread.cleanup_crit_edge, label %le_key_k_type.exit.thread.le_key_k_type.exit96_crit_edge

le_key_k_type.exit.thread.le_key_k_type.exit96_crit_edge: ; preds = %le_key_k_type.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit96

le_key_k_type.exit.thread.cleanup_crit_edge:      ; preds = %le_key_k_type.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i85:                                      ; preds = %le_key_k_type.exit
  %40 = ptrtoint ptr %k_uniqueness.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %k_uniqueness.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #14
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %42, label %sw.default.i.i89 [
    i32 0, label %if.then.i85.le_key_k_type.exit96_crit_edge
    i32 -2, label %sw.bb1.i.i86
    i32 -1, label %sw.bb2.i.i87
    i32 500, label %sw.bb3.i.i88
  ]

if.then.i85.le_key_k_type.exit96_crit_edge:       ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit96

sw.bb1.i.i86:                                     ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit96

sw.bb2.i.i87:                                     ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit96

sw.bb3.i.i88:                                     ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit96

sw.default.i.i89:                                 ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key_k_type.exit96

le_key_k_type.exit96:                             ; preds = %sw.default.i.i89, %sw.bb3.i.i88, %sw.bb2.i.i87, %sw.bb1.i.i86, %if.then.i85.le_key_k_type.exit96_crit_edge, %le_key_k_type.exit.thread.le_key_k_type.exit96_crit_edge
  %conv.i73109111.in = phi i8 [ %35, %sw.default.i.i89 ], [ %35, %sw.bb3.i.i88 ], [ %35, %sw.bb2.i.i87 ], [ %35, %sw.bb1.i.i86 ], [ %35, %if.then.i85.le_key_k_type.exit96_crit_edge ], [ %38, %le_key_k_type.exit.thread.le_key_k_type.exit96_crit_edge ]
  %retval.0.in.i94 = phi i32 [ 15, %sw.default.i.i89 ], [ 3, %sw.bb3.i.i88 ], [ 2, %sw.bb2.i.i87 ], [ 1, %sw.bb1.i.i86 ], [ %42, %if.then.i85.le_key_k_type.exit96_crit_edge ], [ %narrow.i, %le_key_k_type.exit.thread.le_key_k_type.exit96_crit_edge ]
  %44 = zext i8 %conv.i73109111.in to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.in.i94, i32 %44)
  %cmp25 = icmp ugt i32 %retval.0.in.i94, %44
  %. = zext i1 %cmp25 to i32
  br label %cleanup

cleanup:                                          ; preds = %le_key_k_type.exit96, %le_key_k_type.exit.thread.cleanup_crit_edge, %le_key_k_type.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %le_key_k_offset.exit58.cleanup_crit_edge, %le_key_k_offset.exit.thread.cleanup_crit_edge, %le_key_k_offset.exit.cleanup_crit_edge, %comp_short_keys.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %comp_short_keys.exit.cleanup_crit_edge ], [ -1, %le_key_k_offset.exit.cleanup_crit_edge ], [ 1, %le_key_k_offset.exit58.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ -1, %le_key_k_type.exit.cleanup_crit_edge ], [ %., %le_key_k_type.exit96 ], [ -1, %le_key_k_offset.exit.thread.cleanup_crit_edge ], [ -1, %le_key_k_type.exit.thread.cleanup_crit_edge ], [ -1, %if.end6.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cur_tb(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @search_for_position_by_key(ptr noundef %sb, ptr noundef %p_cpu_key, ptr noundef %search_path) local_unnamed_addr #9 align 64 {
entry:
  %de = alloca %struct.reiserfs_dir_entry, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #14
  %0 = call ptr @memset(ptr %de, i32 255, i32 80)
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %p_cpu_key, i32 0, i32 3
  %1 = ptrtoint ptr %k_type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %k_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp eq i8 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 @search_by_entry_key(ptr noundef %sb, ptr noundef %p_cpu_key, ptr noundef %search_path, ptr noundef nonnull %de) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @search_by_key(ptr noundef %sb, ptr noundef %p_cpu_key, ptr noundef %search_path, i32 noundef 1)
  %3 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call3, label %do.body17 [
    i32 -2, label %if.end.cleanup_crit_edge
    i32 1, label %do.body
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  %path_elements = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  %4 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %search_path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %5, i32 1
  %8 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pe_position, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 24
  %arrayidx.i = getelementptr %struct.item_head, ptr %add.ptr.i.i, i32 %9
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i, i32 0, i32 2
  %12 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ih_item_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.then14, label %do.end

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.search_for_position_by_key, ptr noundef nonnull @.str.16, i32 noundef 883, ptr noundef nonnull @__func__.search_for_position_by_key) #17
  unreachable

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %14 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pos_in_item, align 4
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %path_elements18 = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  %15 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %search_path, align 4
  %pe_position22 = getelementptr %struct.path_element, ptr %path_elements18, i32 %16, i32 1
  %17 = ptrtoint ptr %pe_position22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pe_position22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %if.then24, label %do.end27

if.then24:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.search_for_position_by_key, ptr noundef nonnull @.str.17, i32 noundef 890, ptr noundef nonnull @__func__.search_for_position_by_key) #17
  unreachable

do.end27:                                         ; preds = %do.body17
  %add.ptr21 = getelementptr %struct.path_element, ptr %path_elements18, i32 %16
  %19 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr21, align 4
  %dec = add i32 %18, -1
  %21 = ptrtoint ptr %pe_position22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec, ptr %pe_position22, align 4
  %b_data.i.i111 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i.i111 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i.i111, align 4
  %add.ptr.i.i112 = getelementptr i8, ptr %23, i32 24
  %arrayidx.i113 = getelementptr %struct.item_head, ptr %add.ptr.i.i112, i32 %dec
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  %26 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx.i113, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  %29 = ptrtoint ptr %p_cpu_key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p_cpu_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %.not = icmp eq i32 %28, %30
  br i1 %.not, label %if.end6.i, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.i:                                        ; preds = %do.end27
  %k_objectid.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i113, i32 0, i32 1
  %31 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %k_objectid.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %k_objectid8.i = getelementptr inbounds %struct.in_core_key, ptr %p_cpu_key, i32 0, i32 1
  %34 = ptrtoint ptr %k_objectid8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %k_objectid8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %.not140 = icmp eq i32 %33, %35
  br i1 %.not140, label %if.end42, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %if.end6.i
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i113, i32 0, i32 4
  %36 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.i.i = icmp eq i16 %37, 0
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i113, i32 0, i32 2
  br i1 %cmp.i.i, label %le_ih_k_offset.exit, label %le_ih_k_offset.exit.thread

le_ih_k_offset.exit:                              ; preds = %if.end42
  %38 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %u.i.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  %conv.i.i = zext i32 %40 to i64
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %p_cpu_key, i32 0, i32 2
  %41 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %k_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %conv.i.i)
  %cmp45.not = icmp slt i64 %42, %conv.i.i
  br i1 %cmp45.not, label %le_ih_k_offset.exit.if.end58_crit_edge, label %if.then.i.i

le_ih_k_offset.exit.if.end58_crit_edge:           ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

le_ih_k_offset.exit.thread:                       ; preds = %if.end42
  %43 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %u.i.i, align 1
  %45 = and i64 %44, -241
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #14
  %k_offset.i134 = getelementptr inbounds %struct.in_core_key, ptr %p_cpu_key, i32 0, i32 2
  %47 = ptrtoint ptr %k_offset.i134 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %k_offset.i134, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %46)
  %cmp45.not135 = icmp slt i64 %48, %46
  br i1 %cmp45.not135, label %le_ih_k_offset.exit.thread.if.end58_crit_edge, label %if.else.i.i

le_ih_k_offset.exit.thread.if.end58_crit_edge:    ; preds = %le_ih_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then.i.i:                                      ; preds = %le_ih_k_offset.exit
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %k_uniqueness.i.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %51, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_ih_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_ih_k_type.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

if.else.i.i:                                      ; preds = %le_ih_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %u.i.i, align 1
  %55 = trunc i64 %54 to i32
  %56 = lshr i32 %55, 4
  %conv1.i.i.i = and i32 %56, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i = icmp ult i32 %conv1.i.i.i, 4
  %narrow.i.i = select i1 %cmp.i.i.i, i32 %conv1.i.i.i, i32 15
  br label %le_ih_k_type.exit

le_ih_k_type.exit:                                ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge
  %cond.i.i136138 = phi i64 [ %46, %if.else.i.i ], [ %conv.i.i, %sw.default.i.i.i ], [ %conv.i.i, %sw.bb3.i.i.i ], [ %conv.i.i, %sw.bb2.i.i.i ], [ %conv.i.i, %sw.bb1.i.i.i ], [ %conv.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %57 = phi i64 [ %48, %if.else.i.i ], [ %42, %sw.default.i.i.i ], [ %42, %sw.bb3.i.i.i ], [ %42, %sw.bb2.i.i.i ], [ %42, %sw.bb1.i.i.i ], [ %42, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %retval.0.in.i.i = phi i32 [ %narrow.i.i, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %51, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call47 = tail call i32 %61(ptr noundef %arrayidx.i113, i32 noundef %25) #14
  %conv = sext i32 %call47 to i64
  %add = add i64 %cond.i.i136138, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %57)
  %cmp48 = icmp sgt i64 %add, %57
  br i1 %cmp48, label %if.then50, label %le_ih_k_type.exit.if.end58_crit_edge

le_ih_k_type.exit.if.end58_crit_edge:             ; preds = %le_ih_k_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then50:                                        ; preds = %le_ih_k_type.exit
  %sub = sub i64 %57, %cond.i.i136138
  %conv51 = trunc i64 %sub to i32
  %pos_in_item52 = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %62 = ptrtoint ptr %pos_in_item52 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv51, ptr %pos_in_item52, align 4
  %63 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp.i.i.i118 = icmp eq i16 %64, 0
  br i1 %cmp.i.i.i118, label %is_indirect_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.then50
  %65 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %u.i.i, align 1
  %67 = and i64 %66, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %67)
  %phi.cmp1.i.i = icmp eq i64 %67, 16
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then55_crit_edge, label %if.else.i.i.i.cleanup_crit_edge

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.i.i.i.if.then55_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

is_indirect_le_ih.exit:                           ; preds = %if.then50
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %69)
  %cond.i.i119 = icmp eq i32 %69, -16777217
  br i1 %cond.i.i119, label %is_indirect_le_ih.exit.if.then55_crit_edge, label %is_indirect_le_ih.exit.cleanup_crit_edge

is_indirect_le_ih.exit.cleanup_crit_edge:         ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_indirect_le_ih.exit.if.then55_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

if.then55:                                        ; preds = %is_indirect_le_ih.exit.if.then55_crit_edge, %if.else.i.i.i.if.then55_crit_edge
  %div = sdiv i32 %conv51, %25
  %70 = ptrtoint ptr %pos_in_item52 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div, ptr %pos_in_item52, align 4
  br label %cleanup

if.end58:                                         ; preds = %le_ih_k_type.exit.if.end58_crit_edge, %le_ih_k_offset.exit.thread.if.end58_crit_edge, %le_ih_k_offset.exit.if.end58_crit_edge
  %71 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp.i.i.i121 = icmp eq i16 %72, 0
  br i1 %cmp.i.i.i121, label %is_indirect_le_ih.exit130, label %if.else.i.i.i127

if.else.i.i.i127:                                 ; preds = %if.end58
  %73 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %u.i.i, align 1
  %75 = and i64 %74, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %75)
  %phi.cmp1.i.i126 = icmp eq i64 %75, 16
  br i1 %phi.cmp1.i.i126, label %if.else.i.i.i127.if.then61_crit_edge, label %if.else.i.i.i127.if.else_crit_edge

if.else.i.i.i127.if.else_crit_edge:               ; preds = %if.else.i.i.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else.i.i.i127.if.then61_crit_edge:             ; preds = %if.else.i.i.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then61

is_indirect_le_ih.exit130:                        ; preds = %if.end58
  %k_uniqueness.i.i.i123 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %k_uniqueness.i.i.i123 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %k_uniqueness.i.i.i123, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %77)
  %cond.i.i124 = icmp eq i32 %77, -16777217
  br i1 %cond.i.i124, label %is_indirect_le_ih.exit130.if.then61_crit_edge, label %is_indirect_le_ih.exit130.if.else_crit_edge

is_indirect_le_ih.exit130.if.else_crit_edge:      ; preds = %is_indirect_le_ih.exit130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_indirect_le_ih.exit130.if.then61_crit_edge:    ; preds = %is_indirect_le_ih.exit130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then61

if.then61:                                        ; preds = %is_indirect_le_ih.exit130.if.then61_crit_edge, %if.else.i.i.i127.if.then61_crit_edge
  %ih_item_len62 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i113, i32 0, i32 2
  %78 = ptrtoint ptr %ih_item_len62 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %ih_item_len62, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79)
  %81 = lshr i16 %80, 2
  %div64 = zext i16 %81 to i32
  %pos_in_item65 = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %82 = ptrtoint ptr %pos_in_item65 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div64, ptr %pos_in_item65, align 4
  br label %cleanup

if.else:                                          ; preds = %is_indirect_le_ih.exit130.if.else_crit_edge, %if.else.i.i.i127.if.else_crit_edge
  %ih_item_len66 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i113, i32 0, i32 2
  %83 = ptrtoint ptr %ih_item_len66 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %ih_item_len66, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %conv67 = zext i16 %85 to i32
  %pos_in_item68 = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %86 = ptrtoint ptr %pos_in_item68 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv67, ptr %pos_in_item68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then61, %if.then55, %is_indirect_le_ih.exit.cleanup_crit_edge, %if.else.i.i.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 1, %do.end ], [ %call3, %if.end.cleanup_crit_edge ], [ 1, %if.then55 ], [ 1, %is_indirect_le_ih.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then61 ], [ -1, %do.end27.cleanup_crit_edge ], [ -1, %if.end6.i.cleanup_crit_edge ], [ 1, %if.else.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_entry_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @comp_items(ptr nocapture noundef readonly %stored_ih, ptr nocapture noundef readonly %path) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %path_elements = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements, i32 %1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %8)
  %cmp.i = icmp ugt i16 %8, 5
  br i1 %cmp.i, label %if.then.i, label %B_IS_IN_TREE.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef %3, ptr noundef %3) #17
  unreachable

B_IS_IN_TREE.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp5.i.not = icmp eq i16 %7, 0
  br i1 %cmp5.i.not, label %B_IS_IN_TREE.exit.cleanup_crit_edge, label %if.end

B_IS_IN_TREE.exit.cleanup_crit_edge:              ; preds = %B_IS_IN_TREE.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %B_IS_IN_TREE.exit
  %pe_position = getelementptr %struct.path_element, ptr %path_elements, i32 %1, i32 1
  %9 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pe_position, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %blk_nr_item, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp.not = icmp slt i32 %10, %conv
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %10
  %call9 = tail call i32 @memcmp(ptr noundef dereferenceable(24) %stored_ih, ptr noundef dereferenceable(24) %arrayidx.i.i, i32 noundef 24) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %B_IS_IN_TREE.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ 1, %B_IS_IN_TREE.exit.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @padd_item(ptr nocapture noundef writeonly %item, i32 noundef %total_length, i32 noundef %length) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %total_length, i32 %length)
  %cmp2 = icmp sgt i32 %total_length, %length
  br i1 %cmp2, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %uglygep = getelementptr i8, ptr %item, i32 %length
  %0 = sub i32 %total_length, %length
  %1 = call ptr @memset(ptr %uglygep, i32 0, i32 %0)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_delete_item(ptr noundef %th, ptr noundef %path, ptr noundef %item_key, ptr noundef %inode, ptr noundef readonly %un_bh) local_unnamed_addr #9 align 64 {
entry:
  %s_del_balance = alloca %struct.tree_balance, align 8
  %del_size = alloca i32, align 4
  %removed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %s_del_balance) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %del_size) #14
  %2 = ptrtoint ptr %del_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %del_size, align 4, !annotation !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %removed) #14
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %3 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body4, label %init_tb_struct.exit, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1268, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

init_tb_struct.exit:                              ; preds = %entry
  %5 = call ptr @memset(ptr %s_del_balance, i32 0, i32 456)
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %s_del_balance, i32 0, i32 3
  %6 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %th, ptr %transaction_handle.i, align 4
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %s_del_balance, i32 0, i32 2
  %7 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %tb_sb.i, align 8
  %tb_path.i = getelementptr inbounds %struct.tree_balance, ptr %s_del_balance, i32 0, i32 4
  %8 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %path, ptr %tb_path.i, align 8
  %add.ptr.i = getelementptr %struct.treepath, ptr %path, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.treepath, ptr %path, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pe_position.i, align 4
  %insert_size.i = getelementptr inbounds %struct.tree_balance, ptr %s_del_balance, i32 0, i32 18
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  br label %while.cond

while.cond:                                       ; preds = %if.end22.while.cond_crit_edge, %init_tb_struct.exit
  %11 = ptrtoint ptr %removed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %removed, align 4
  %12 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp.i, i64 4294967295, i64 1152921504606846975
  %call10 = call fastcc zeroext i8 @prepare_for_delete_or_cut(ptr noundef %th, ptr noundef %inode, ptr noundef %path, ptr noundef %item_key, ptr noundef nonnull %removed, ptr noundef nonnull %del_size, i64 noundef %..i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %call10)
  %cmp.not = icmp eq i8 %call10, 100
  br i1 %cmp.not, label %do.end16, label %if.then13

if.then13:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_delete_item, ptr noundef nonnull @.str.18, i32 noundef 1285, ptr noundef nonnull @__func__.reiserfs_delete_item) #17
  unreachable

do.end16:                                         ; preds = %while.cond
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %path, align 4
  %add.ptr.i116 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %15
  %16 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i116, align 4
  %pe_position.i117 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %15, i32 1
  %18 = ptrtoint ptr %pe_position.i117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pe_position.i117, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %19
  %s_ih.sroa.5.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %22 = ptrtoint ptr %s_ih.sroa.5.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %s_ih.sroa.5.0.copyload = load i64, ptr %s_ih.sroa.5.0.arrayidx.i.i.sroa_idx, align 1
  %s_ih.sroa.10.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 20
  %23 = ptrtoint ptr %s_ih.sroa.10.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %s_ih.sroa.10.0.copyload = load i16, ptr %s_ih.sroa.10.0.arrayidx.i.i.sroa_idx, align 1
  %s_ih.sroa.12.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 22
  %24 = ptrtoint ptr %s_ih.sroa.12.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %s_ih.sroa.12.0.copyload = load i16, ptr %s_ih.sroa.12.0.arrayidx.i.i.sroa_idx, align 1
  %25 = ptrtoint ptr %del_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %del_size, align 4
  %27 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %insert_size.i, align 4
  %call18 = call i32 @fix_nodes(i32 noundef 100, ptr noundef nonnull %s_del_balance, ptr noundef null, ptr noundef null) #14
  %28 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call18, label %do.end16.if.then36_crit_edge [
    i32 -1, label %if.end22
    i32 0, label %if.end37
  ]

do.end16.if.then36_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.end22:                                         ; preds = %do.end16
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %delete_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %30, i32 0, i32 27, i32 12
  %31 = ptrtoint ptr %delete_item_restarted to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delete_item_restarted, align 4
  %inc24 = add i32 %32, 1
  store i32 %inc24, ptr %delete_item_restarted, align 4
  %call25 = call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef %item_key, ptr noundef %path)
  %33 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call25, label %if.end22.while.cond_crit_edge [
    i32 -2, label %if.end22.if.then36_crit_edge
    i32 -1, label %if.then32
  ]

if.end22.if.then36_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then36

if.end22.while.cond_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.reiserfs_delete_item, ptr noundef nonnull @.str.20, ptr noundef %item_key) #14
  br label %if.then36

if.then36:                                        ; preds = %if.then32, %if.end22.if.then36_crit_edge, %do.end16.if.then36_crit_edge
  call void @unfix_nodes(ptr noundef nonnull %s_del_balance) #14
  br label %cleanup

if.end37:                                         ; preds = %do.end16
  %s_ih.sroa.5.sroa.0.0.extract.shift.le = lshr i64 %s_ih.sroa.5.0.copyload, 32
  %s_ih.sroa.5.sroa.0.0.extract.trunc.le = trunc i64 %s_ih.sroa.5.sroa.0.0.extract.shift.le to i32
  %34 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tb_path.i, align 8
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %37
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i, align 4
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %37, i32 1
  %40 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pe_position.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %41
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.i.i.i.i = icmp eq i16 %45, 0
  %u.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %is_statdata_le_ih.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end37
  %k_uniqueness.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cond50.i = icmp eq i32 %47, 0
  br i1 %cond50.i, label %if.then.i.i.i.i.calc_deleted_bytes_number.exit_crit_edge, label %is_direntry_le_ih.exit.i

if.then.i.i.i.i.calc_deleted_bytes_number.exit_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_deleted_bytes_number.exit

is_statdata_le_ih.exit.i:                         ; preds = %if.end37
  %48 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %u.i.i.i.i, align 1
  %50 = and i64 %49, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %phi.cmp1.i.i.not.i = icmp eq i64 %50, 0
  br i1 %phi.cmp1.i.i.not.i, label %is_statdata_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge, label %is_direntry_le_ih.exit.thread.i

is_statdata_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge: ; preds = %is_statdata_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_deleted_bytes_number.exit

is_direntry_le_ih.exit.i:                         ; preds = %if.then.i.i.i.i
  %ih_item_len.i139 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %ih_item_len.i139 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %ih_item_len.i139, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #14
  %conv3.i140 = zext i16 %53 to i32
  %54 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %55)
  %cond = icmp eq i32 %55, -16777217
  br i1 %cond, label %is_direntry_le_ih.exit.i.if.then10.i_crit_edge, label %is_direntry_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge

is_direntry_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge: ; preds = %is_direntry_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_deleted_bytes_number.exit

is_direntry_le_ih.exit.i.if.then10.i_crit_edge:   ; preds = %is_direntry_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i

is_direntry_le_ih.exit.thread.i:                  ; preds = %is_statdata_le_ih.exit.i
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %ih_item_len.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #14
  %conv3.i = zext i16 %58 to i32
  %59 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %u.i.i.i.i, align 1
  %61 = and i64 %60, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %61)
  %cond146 = icmp eq i64 %61, 16
  br i1 %cond146, label %is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge, label %is_direntry_le_ih.exit.thread.i.calc_deleted_bytes_number.exit_crit_edge

is_direntry_le_ih.exit.thread.i.calc_deleted_bytes_number.exit_crit_edge: ; preds = %is_direntry_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %calc_deleted_bytes_number.exit

is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge: ; preds = %is_direntry_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i

if.then10.i:                                      ; preds = %is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge, %is_direntry_le_ih.exit.i.if.then10.i_crit_edge
  %conv3.i142 = phi i32 [ %conv3.i, %is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge ], [ %conv3.i140, %is_direntry_le_ih.exit.i.if.then10.i_crit_edge ]
  %div23.i = lshr i32 %conv3.i142, 2
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 4
  %62 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %b_size.i, align 8
  %mul.i = mul i32 %63, %div23.i
  br label %calc_deleted_bytes_number.exit

calc_deleted_bytes_number.exit:                   ; preds = %if.then10.i, %is_direntry_le_ih.exit.thread.i.calc_deleted_bytes_number.exit_crit_edge, %is_direntry_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge, %is_statdata_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge, %if.then.i.i.i.i.calc_deleted_bytes_number.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %is_statdata_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge ], [ %mul.i, %if.then10.i ], [ 0, %if.then.i.i.i.i.calc_deleted_bytes_number.exit_crit_edge ], [ %conv3.i, %is_direntry_le_ih.exit.thread.i.calc_deleted_bytes_number.exit_crit_edge ], [ %conv3.i140, %is_direntry_le_ih.exit.i.calc_deleted_bytes_number.exit_crit_edge ]
  %64 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %path, align 4
  %add.ptr.i120 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %65
  %66 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i120, align 4
  %pe_position.i121 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %65, i32 1
  %68 = ptrtoint ptr %pe_position.i121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pe_position.i121, align 4
  %b_data.i.i.i122 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %70 = ptrtoint ptr %b_data.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data.i.i.i122, align 4
  %add.ptr.i.i.i123 = getelementptr i8, ptr %71, i32 24
  %arrayidx.i.i124 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i123, i32 %69
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i124, i32 0, i32 2
  %72 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %ih_item_len, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73)
  %conv40 = zext i16 %74 to i32
  %75 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %inode, align 8
  %77 = and i16 %76, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %77)
  %cmp42 = icmp eq i16 %77, -24576
  br i1 %cmp42, label %calc_deleted_bytes_number.exit.if.end55_crit_edge, label %land.lhs.true

calc_deleted_bytes_number.exit.if.end55_crit_edge: ; preds = %calc_deleted_bytes_number.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true:                                    ; preds = %calc_deleted_bytes_number.exit
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i124, i32 0, i32 4
  %78 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp.i.i.i = icmp eq i16 %79, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i124, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direct_le_ih.exit, label %is_direct_le_ih.exit.thread

is_direct_le_ih.exit:                             ; preds = %land.lhs.true
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cond.i.i.not = icmp eq i32 %81, -1
  br i1 %cond.i.i.not, label %cond.true.i.i, label %is_direct_le_ih.exit.if.end55_crit_edge

is_direct_le_ih.exit.if.end55_crit_edge:          ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

is_direct_le_ih.exit.thread:                      ; preds = %land.lhs.true
  %82 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %u.i.i.i, align 1
  %84 = and i64 %83, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %84)
  %phi.cmp1.i.i.not = icmp eq i64 %84, 32
  br i1 %phi.cmp1.i.i.not, label %cond.false.i.i, label %is_direct_le_ih.exit.thread.if.end55_crit_edge

is_direct_le_ih.exit.thread.if.end55_crit_edge:   ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

cond.true.i.i:                                    ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %u.i.i.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #14
  %conv.i.i = zext i32 %87 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %is_direct_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %u.i.i.i, align 1
  %90 = and i64 %89, -241
  %91 = call i64 @llvm.bswap.i64(i64 %90) #14
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i126 = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %91, %cond.false.i.i ]
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %93, -1
  %conv48 = zext i32 %sub to i64
  %and49 = and i64 %cond.i.i126, %conv48
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and49)
  %cmp50 = icmp eq i64 %and49, 1
  %add = add i32 %93, 4
  %spec.select = select i1 %cmp50, i32 %add, i32 0
  br label %if.end55

if.end55:                                         ; preds = %le_ih_k_offset.exit, %is_direct_le_ih.exit.thread.if.end55_crit_edge, %is_direct_le_ih.exit.if.end55_crit_edge, %calc_deleted_bytes_number.exit.if.end55_crit_edge
  %quota_cut_bytes.0 = phi i32 [ %conv40, %calc_deleted_bytes_number.exit.if.end55_crit_edge ], [ %conv40, %is_direct_le_ih.exit.if.end55_crit_edge ], [ %spec.select, %le_ih_k_offset.exit ], [ %conv40, %is_direct_le_ih.exit.thread.if.end55_crit_edge ]
  %tobool56.not = icmp eq ptr %un_bh, null
  br i1 %tobool56.not, label %if.end55.if.end71_crit_edge, label %if.then57

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then57:                                        ; preds = %if.end55
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %un_bh, i32 0, i32 2
  %94 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %96 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %96, 512
  %97 = call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %100, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !200
  %101 = call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i1.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 213
  %105 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %106, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %95, i32 noundef %or.i) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %s_ih.sroa.12.0.copyload)
  %cmp.i.i128 = icmp eq i16 %s_ih.sroa.12.0.copyload, 0
  br i1 %cmp.i.i128, label %cond.true.i.i131, label %cond.false.i.i132

cond.true.i.i131:                                 ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %107 = call i32 @llvm.bswap.i32(i32 %s_ih.sroa.5.sroa.0.0.extract.trunc.le) #14
  br label %le_ih_k_offset.exit134

cond.false.i.i132:                                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %108 = and i64 %s_ih.sroa.5.0.copyload, -241
  %109 = call i64 @llvm.bswap.i64(i64 %108) #14
  %extract.t147 = trunc i64 %109 to i32
  br label %le_ih_k_offset.exit134

le_ih_k_offset.exit134:                           ; preds = %cond.false.i.i132, %cond.true.i.i131
  %cond.i.i133.off0 = phi i32 [ %107, %cond.true.i.i131 ], [ %extract.t147, %cond.false.i.i132 ]
  %110 = add i32 %cond.i.i133.off0, 4095
  %conv62 = and i32 %110, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %conv62
  %111 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %path, align 4
  %add.ptr63 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %112
  %113 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr63, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %b_data.i, align 4
  %117 = call i16 @llvm.bswap.i16(i16 %s_ih.sroa.10.0.copyload) #14
  %conv.i = zext i16 %117 to i32
  %add.ptr.i135 = getelementptr i8, ptr %116, i32 %conv.i
  %118 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i135, i32 %retval.0.i)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %119 = call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i1.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 213
  %123 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %124, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !203
  %125 = call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %128, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %le_ih_k_offset.exit134, %if.end55.if.end71_crit_edge
  call void @do_balance(ptr noundef nonnull %s_del_balance, ptr noundef null, ptr noundef null, i32 noundef 100) #14
  %129 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i_sb, align 4
  %call73 = call i32 @reiserfs_write_unlock_nested(ptr noundef %130) #14
  %conv74 = sext i32 %quota_cut_bytes.0 to i64
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %conv74, i32 noundef 0) #14
  %131 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %132, i32 noundef %call73) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then36
  %retval.0 = phi i32 [ 0, %if.then36 ], [ %retval.0.i, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %removed) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %del_size) #14
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %s_del_balance) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @prepare_for_delete_or_cut(ptr noundef %th, ptr noundef %inode, ptr noundef %path, ptr noundef %item_key, ptr nocapture noundef %removed, ptr nocapture noundef %cut_size, i64 noundef %new_file_length) unnamed_addr #9 align 64 {
entry:
  %s_ih = alloca %struct.item_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %3, i32 1
  %6 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %7
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %10 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1053, 0\0A.popsection", ""() #14, !srcloc !204
  unreachable

do.end9:                                          ; preds = %entry
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i.i.i = icmp eq i16 %13, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %is_statdata_le_ih.exit

if.then.i.i.i:                                    ; preds = %do.end9
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cond = icmp eq i32 %15, 0
  br i1 %cond, label %if.then.i.i.i.do.body13_crit_edge, label %is_direntry_le_ih.exit

if.then.i.i.i.do.body13_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

is_statdata_le_ih.exit:                           ; preds = %do.end9
  %16 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %u.i.i.i, align 1
  %18 = and i64 %17, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %phi.cmp1.i.i.not = icmp eq i64 %18, 0
  br i1 %phi.cmp1.i.i.not, label %is_statdata_le_ih.exit.do.body13_crit_edge, label %is_direntry_le_ih.exit.thread

is_statdata_le_ih.exit.do.body13_crit_edge:       ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

do.body13:                                        ; preds = %is_statdata_le_ih.exit.do.body13_crit_edge, %if.then.i.i.i.do.body13_crit_edge
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %19 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp.i, i64 4294967295, i64 1152921504606846975
  call void @__sanitizer_cov_trace_cmp8(i64 %..i, i64 %new_file_length)
  %cmp.not = icmp eq i64 %..i, %new_file_length
  br i1 %cmp.not, label %do.end18, label %if.then15

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prepare_for_delete_or_cut, ptr noundef nonnull @.str.83, i32 noundef 1059, ptr noundef nonnull @__func__.prepare_for_delete_or_cut) #17
  unreachable

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %ih_item_len, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv = zext i16 %23 to i32
  %sub = sub nuw nsw i32 -24, %conv
  %24 = ptrtoint ptr %cut_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %cut_size, align 4
  br label %cleanup102

is_direntry_le_ih.exit:                           ; preds = %if.then.i.i.i
  %25 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -201261056, i32 %26)
  %cond.i.i.not = icmp eq i32 %26, -201261056
  br i1 %cond.i.i.not, label %cond.true.i.i.i.critedge, label %is_direct_le_ih.exit

is_direntry_le_ih.exit.thread:                    ; preds = %is_statdata_le_ih.exit
  %27 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %u.i.i.i, align 1
  %29 = and i64 %28, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %29)
  %phi.cmp1.i.i158.not = icmp eq i64 %29, 48
  br i1 %phi.cmp1.i.i158.not, label %cond.false.i.i.i, label %if.else.i.i.i175

cond.true.i.i.i.critedge:                         ; preds = %is_direntry_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %u.i.i.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #14
  %conv.i.i.i = zext i32 %32 to i64
  br label %le_ih_k_offset.exit.i

cond.false.i.i.i:                                 ; preds = %is_direntry_le_ih.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %33 = and i64 %28, -241
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #14
  br label %le_ih_k_offset.exit.i

le_ih_k_offset.exit.i:                            ; preds = %cond.false.i.i.i, %cond.true.i.i.i.critedge
  %cond.i.i.i = phi i64 [ %conv.i.i.i, %cond.true.i.i.i.critedge ], [ %34, %cond.false.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i.i.i)
  %cmp.i163 = icmp eq i64 %cond.i.i.i, 1
  br i1 %cmp.i163, label %land.lhs.true.i, label %le_ih_k_offset.exit.i.if.end7.i_crit_edge

le_ih_k_offset.exit.i.if.end7.i_crit_edge:        ; preds = %le_ih_k_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %le_ih_k_offset.exit.i
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -248
  %35 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %cmp.i.i, i64 4294967295, i64 1152921504606846975
  call void @__sanitizer_cov_trace_cmp8(i64 %..i.i, i64 %new_file_length)
  %cmp2.i = icmp eq i64 %..i.i, %new_file_length
  br i1 %cmp2.i, label %do.body.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %u.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %38)
  %cmp3.not.i = icmp eq i16 %38, 512
  br i1 %cmp3.not.i, label %do.end.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prepare_for_direntry_item, ptr noundef nonnull @.str.84, i32 noundef 999, ptr noundef nonnull @__func__.prepare_for_direntry_item, ptr noundef %arrayidx.i.i) #17
  unreachable

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %ih_item_len.i, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #14
  %conv6.i = zext i16 %41 to i32
  %sub.i = sub nuw nsw i32 -24, %conv6.i
  br label %prepare_for_direntry_item.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %le_ih_k_offset.exit.i.if.end7.i_crit_edge
  %u8.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %u8.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %u8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %43)
  %cmp10.i = icmp eq i16 %43, 256
  br i1 %cmp10.i, label %if.then12.i, label %if.end17.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_len13.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %ih_item_len13.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %ih_item_len13.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #14
  %conv14.i = zext i16 %46 to i32
  %sub16.i = sub nuw nsw i32 -24, %conv14.i
  br label %prepare_for_direntry_item.exit

if.end17.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %pos_in_item.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %47 = ptrtoint ptr %pos_in_item.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos_in_item.i, align 4
  %ih_item_location.i.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %ih_item_location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %ih_item_location.i.i.i, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #14
  %conv.i.i31.i = zext i16 %51 to i32
  %add.ptr.i.i.i167 = getelementptr i8, ptr %9, i32 %conv.i.i31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  %ih_item_len.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %add.ptr.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i167, i32 %48
  %add.ptr1.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i, i32 -1
  %deh_location.i.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %add.ptr1.i.i, i32 0, i32 3
  %ih_item_len.sink.i.i = select i1 %tobool.not.i.i, ptr %ih_item_len.i.i, ptr %deh_location.i.i
  %52 = ptrtoint ptr %ih_item_len.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %ih_item_len.sink.i.i, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #14
  %conv4.i.i = zext i16 %54 to i32
  %deh_location5.i.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i.i167, i32 %48, i32 3
  %55 = ptrtoint ptr %deh_location5.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %deh_location5.i.i, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #14
  %conv6.i.i = zext i16 %57 to i32
  %sub7.i.neg.i = sub nuw nsw i32 -16, %conv4.i.i
  %sub20.i = add nsw i32 %sub7.i.neg.i, %conv6.i.i
  br label %prepare_for_direntry_item.exit

prepare_for_direntry_item.exit:                   ; preds = %if.end17.i, %if.then12.i, %do.end.i
  %sub20.sink.i = phi i32 [ %sub20.i, %if.end17.i ], [ %sub16.i, %if.then12.i ], [ %sub.i, %do.end.i ]
  %retval.0.i = phi i8 [ 99, %if.end17.i ], [ 100, %if.then12.i ], [ 100, %do.end.i ]
  %58 = ptrtoint ptr %cut_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub20.sink.i, ptr %cut_size, align 4
  br label %cleanup102

if.else.i.i.i175:                                 ; preds = %is_direntry_le_ih.exit.thread
  %59 = and i64 %28, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %59)
  %phi.cmp1.i.i174 = icmp eq i64 %59, 32
  br i1 %phi.cmp1.i.i174, label %if.else.i.i.i175.if.then28_crit_edge, label %if.else.i.i.i175.if.end31_crit_edge

if.else.i.i.i175.if.end31_crit_edge:              ; preds = %if.else.i.i.i175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.else.i.i.i175.if.then28_crit_edge:             ; preds = %if.else.i.i.i175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

is_direct_le_ih.exit:                             ; preds = %is_direntry_le_ih.exit
  %60 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cond.i.i172 = icmp eq i32 %61, -1
  br i1 %cond.i.i172, label %is_direct_le_ih.exit.if.then28_crit_edge, label %is_direct_le_ih.exit.if.end31_crit_edge

is_direct_le_ih.exit.if.end31_crit_edge:          ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

is_direct_le_ih.exit.if.then28_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.then28:                                        ; preds = %is_direct_le_ih.exit.if.then28_crit_edge, %if.else.i.i.i175.if.then28_crit_edge
  %i_flags.i.i178 = getelementptr i8, ptr %inode, i32 -248
  %62 = ptrtoint ptr %i_flags.i.i178 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags.i.i178, align 8
  %and.i.i179 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i179)
  %cmp.i.i180 = icmp eq i32 %and.i.i179, 0
  %..i.i181 = select i1 %cmp.i.i180, i64 4294967295, i64 1152921504606846975
  call void @__sanitizer_cov_trace_cmp8(i64 %..i.i181, i64 %new_file_length)
  %cmp.i182 = icmp eq i64 %..i.i181, %new_file_length
  br i1 %cmp.i182, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_len.i183 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %ih_item_len.i183 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %ih_item_len.i183, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #14
  %conv.i = zext i16 %66 to i32
  %sub.i184 = sub nuw nsw i32 -24, %conv.i
  br label %prepare_for_direct_item.exit

if.end.i:                                         ; preds = %if.then28
  br i1 %cmp.i.i180, label %if.end26.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %sub6.i = add i64 %new_file_length, 7
  %and7.i = and i64 %sub6.i, -8
  br i1 %cmp.i.i.i, label %le_ih_k_offset.exit.i190, label %le_ih_k_offset.exit.thread.i

le_ih_k_offset.exit.i190:                         ; preds = %if.then4.i
  %67 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %u.i.i.i, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #14
  %conv.i.i.i189 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and7.i, i64 %conv.i.i.i189)
  %cmp9.i = icmp slt i64 %and7.i, %conv.i.i.i189
  br i1 %cmp9.i, label %le_ih_k_offset.exit.i190.if.then11.i_crit_edge, label %le_ih_k_offset.exit.i190.le_ih_k_offset.exit71.i_crit_edge

le_ih_k_offset.exit.i190.le_ih_k_offset.exit71.i_crit_edge: ; preds = %le_ih_k_offset.exit.i190
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_offset.exit71.i

le_ih_k_offset.exit.i190.if.then11.i_crit_edge:   ; preds = %le_ih_k_offset.exit.i190
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i

le_ih_k_offset.exit.thread.i:                     ; preds = %if.then4.i
  %70 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %u.i.i.i, align 1
  %72 = and i64 %71, -241
  %73 = tail call i64 @llvm.bswap.i64(i64 %72) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %and7.i, i64 %73)
  %cmp989.i = icmp slt i64 %and7.i, %73
  br i1 %cmp989.i, label %le_ih_k_offset.exit.thread.i.if.then11.i_crit_edge, label %le_ih_k_offset.exit.thread.i.le_ih_k_offset.exit71.i_crit_edge

le_ih_k_offset.exit.thread.i.le_ih_k_offset.exit71.i_crit_edge: ; preds = %le_ih_k_offset.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_offset.exit71.i

le_ih_k_offset.exit.thread.i.if.then11.i_crit_edge: ; preds = %le_ih_k_offset.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i

if.then11.i:                                      ; preds = %le_ih_k_offset.exit.thread.i.if.then11.i_crit_edge, %le_ih_k_offset.exit.i190.if.then11.i_crit_edge
  %ih_item_len12.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %ih_item_len12.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %ih_item_len12.i, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #14
  %conv13.i = zext i16 %76 to i32
  %sub15.i = sub nuw nsw i32 -24, %conv13.i
  br label %prepare_for_direct_item.exit

le_ih_k_offset.exit71.i:                          ; preds = %le_ih_k_offset.exit.thread.i.le_ih_k_offset.exit71.i_crit_edge, %le_ih_k_offset.exit.i190.le_ih_k_offset.exit71.i_crit_edge
  %cond.i.i70.i = phi i64 [ %conv.i.i.i189, %le_ih_k_offset.exit.i190.le_ih_k_offset.exit71.i_crit_edge ], [ %73, %le_ih_k_offset.exit.thread.i.le_ih_k_offset.exit71.i_crit_edge ]
  %sub18.neg.i = or i64 %and7.i, 1
  %sub19.i = sub i64 %sub18.neg.i, %cond.i.i70.i
  %conv20.i = trunc i64 %sub19.i to i32
  %pos_in_item.i191 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %77 = ptrtoint ptr %pos_in_item.i191 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv20.i, ptr %pos_in_item.i191, align 4
  %ih_item_len21.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %ih_item_len21.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %ih_item_len21.i, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #14
  %conv22.i = zext i16 %80 to i32
  %sub24.neg.i = sub i32 %conv20.i, %conv22.i
  br label %prepare_for_direct_item.exit

if.end26.i:                                       ; preds = %if.end.i
  br i1 %cmp.i.i.i, label %le_ih_k_offset.exit79.i, label %le_ih_k_offset.exit79.thread.i

le_ih_k_offset.exit79.i:                          ; preds = %if.end26.i
  %81 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %u.i.i.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #14
  %conv.i.i75.i = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i.i75.i, i64 %new_file_length)
  %cmp28.i = icmp sgt i64 %conv.i.i75.i, %new_file_length
  br i1 %cmp28.i, label %le_ih_k_offset.exit79.i.if.then30.i_crit_edge, label %le_ih_k_offset.exit79.i.le_ih_k_offset.exit87.i_crit_edge

le_ih_k_offset.exit79.i.le_ih_k_offset.exit87.i_crit_edge: ; preds = %le_ih_k_offset.exit79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_offset.exit87.i

le_ih_k_offset.exit79.i.if.then30.i_crit_edge:    ; preds = %le_ih_k_offset.exit79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i

le_ih_k_offset.exit79.thread.i:                   ; preds = %if.end26.i
  %84 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %u.i.i.i, align 1
  %86 = and i64 %85, -241
  %87 = tail call i64 @llvm.bswap.i64(i64 %86) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %new_file_length)
  %cmp2891.i = icmp sgt i64 %87, %new_file_length
  br i1 %cmp2891.i, label %le_ih_k_offset.exit79.thread.i.if.then30.i_crit_edge, label %le_ih_k_offset.exit79.thread.i.le_ih_k_offset.exit87.i_crit_edge

le_ih_k_offset.exit79.thread.i.le_ih_k_offset.exit87.i_crit_edge: ; preds = %le_ih_k_offset.exit79.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_offset.exit87.i

le_ih_k_offset.exit79.thread.i.if.then30.i_crit_edge: ; preds = %le_ih_k_offset.exit79.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30.i

if.then30.i:                                      ; preds = %le_ih_k_offset.exit79.thread.i.if.then30.i_crit_edge, %le_ih_k_offset.exit79.i.if.then30.i_crit_edge
  %ih_item_len31.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %ih_item_len31.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %ih_item_len31.i, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #14
  %conv32.i = zext i16 %90 to i32
  %sub34.i = sub nuw nsw i32 -24, %conv32.i
  br label %prepare_for_direct_item.exit

le_ih_k_offset.exit87.i:                          ; preds = %le_ih_k_offset.exit79.thread.i.le_ih_k_offset.exit87.i_crit_edge, %le_ih_k_offset.exit79.i.le_ih_k_offset.exit87.i_crit_edge
  %cond.i.i86.i = phi i64 [ %conv.i.i75.i, %le_ih_k_offset.exit79.i.le_ih_k_offset.exit87.i_crit_edge ], [ %87, %le_ih_k_offset.exit79.thread.i.le_ih_k_offset.exit87.i_crit_edge ]
  %ih_item_len3692.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %ih_item_len3692.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %ih_item_len3692.i, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #14
  %conv3795.i = zext i16 %93 to i32
  %add3897.i = add i64 %new_file_length, 1
  %sub40.i = sub i64 %add3897.i, %cond.i.i86.i
  %conv41.i = trunc i64 %sub40.i to i32
  %pos_in_item42.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %94 = ptrtoint ptr %pos_in_item42.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv41.i, ptr %pos_in_item42.i, align 4
  %sub43.neg.i = sub i32 %conv41.i, %conv3795.i
  br label %prepare_for_direct_item.exit

prepare_for_direct_item.exit:                     ; preds = %le_ih_k_offset.exit87.i, %if.then30.i, %le_ih_k_offset.exit71.i, %if.then11.i, %if.then.i
  %sub43.neg.sink.i = phi i32 [ %sub43.neg.i, %le_ih_k_offset.exit87.i ], [ %sub34.i, %if.then30.i ], [ %sub24.neg.i, %le_ih_k_offset.exit71.i ], [ %sub15.i, %if.then11.i ], [ %sub.i184, %if.then.i ]
  %retval.0.i192 = phi i8 [ 99, %le_ih_k_offset.exit87.i ], [ 100, %if.then30.i ], [ 99, %le_ih_k_offset.exit71.i ], [ 100, %if.then11.i ], [ 100, %if.then.i ]
  %95 = ptrtoint ptr %cut_size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub43.neg.sink.i, ptr %cut_size, align 4
  br label %cleanup102

if.end31:                                         ; preds = %is_direct_le_ih.exit.if.end31_crit_edge, %if.else.i.i.i175.if.end31_crit_edge
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s_ih) #14
  %98 = getelementptr inbounds %struct.reiserfs_key, ptr %s_ih, i32 0, i32 2
  %99 = getelementptr inbounds %struct.item_head, ptr %s_ih, i32 0, i32 2
  %100 = getelementptr inbounds %struct.item_head, ptr %s_ih, i32 0, i32 3
  %101 = getelementptr inbounds %struct.item_head, ptr %s_ih, i32 0, i32 4
  %i_flags.i193 = getelementptr i8, ptr %inode, i32 -248
  %102 = ptrtoint ptr %i_flags.i193 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %i_flags.i193, align 8
  %and.i194 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %cmp.i195 = icmp eq i32 %and.i194, 0
  %..i196 = select i1 %cmp.i195, i64 4294967295, i64 1152921504606846975
  call void @__sanitizer_cov_trace_cmp8(i64 %..i196, i64 %new_file_length)
  %cmp33 = icmp eq i64 %..i196, %new_file_length
  %spec.select = select i1 %cmp33, i64 0, i64 %new_file_length
  %t_blocks_allocated.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 3
  %t_blocks_logged.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 2
  br label %do.body37

do.body37:                                        ; preds = %while.end.thread.do.body37_crit_edge, %if.end31
  %104 = ptrtoint ptr %cut_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %cut_size, align 4
  %105 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %path, align 4
  %add.ptr41 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %106
  %107 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr41, align 4
  %pe_position.i199 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %106, i32 1
  %109 = ptrtoint ptr %pe_position.i199 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pe_position.i199, align 4
  %b_data.i.i.i200 = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 5
  %111 = ptrtoint ptr %b_data.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b_data.i.i.i200, align 4
  %add.ptr.i.i.i201 = getelementptr i8, ptr %112, i32 24
  %arrayidx.i.i202 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i201, i32 %110
  %113 = call ptr @memcpy(ptr %s_ih, ptr %arrayidx.i.i202, i32 24)
  %114 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %99, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %117 = lshr i16 %116, 2
  %div = zext i16 %117 to i32
  %118 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp.i.i204 = icmp eq i16 %119, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end76.while.cond_crit_edge, %do.body37
  %pos.0 = phi i32 [ %div, %do.body37 ], [ %sub47, %if.end76.while.cond_crit_edge ]
  br i1 %cmp.i.i204, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %98, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #14
  %conv.i.i = zext i32 %122 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %98 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %98, align 4
  %125 = and i64 %124, -241
  %126 = tail call i64 @llvm.bswap.i64(i64 %125) #14
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i205 = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %126, %cond.false.i.i ]
  %sub47 = add i32 %pos.0, -1
  %mul = mul i32 %sub47, %97
  %conv48 = sext i32 %mul to i64
  %add49 = add nsw i64 %cond.i.i205, %conv48
  call void @__sanitizer_cov_trace_cmp8(i64 %add49, i64 %spec.select)
  %cmp50 = icmp ugt i64 %add49, %spec.select
  br i1 %cmp50, label %while.body, label %le_ih_k_offset.exit.while.end_crit_edge

le_ih_k_offset.exit.while.end_crit_edge:          ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %le_ih_k_offset.exit
  br i1 %cmp33, label %while.body.if.end60_crit_edge, label %land.lhs.true

while.body.if.end60_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true:                                    ; preds = %while.body
  %127 = ptrtoint ptr %cut_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cut_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp53.not = icmp eq i32 %128, 0
  br i1 %cmp53.not, label %land.lhs.true.if.end60_crit_edge, label %land.lhs.true55

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true55:                                  ; preds = %land.lhs.true
  %129 = ptrtoint ptr %t_blocks_allocated.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %t_blocks_allocated.i, align 4
  %131 = ptrtoint ptr %t_blocks_logged.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %t_blocks_logged.i, align 4
  %sub.i206 = sub i32 %130, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %sub.i206)
  %cmp57 = icmp slt i32 %sub.i206, 37
  br i1 %cmp57, label %land.lhs.true55.while.end_crit_edge, label %land.lhs.true55.if.end60_crit_edge

land.lhs.true55.if.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true55.while.end_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end60:                                         ; preds = %land.lhs.true55.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %while.body.if.end60_crit_edge
  %133 = ptrtoint ptr %b_data.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %b_data.i.i.i200, align 4
  %135 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %100, align 4
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #14
  %conv.i207 = zext i16 %137 to i32
  %add.ptr.i208 = getelementptr i8, ptr %134, i32 %conv.i207
  %add.ptr62 = getelementptr i32, ptr %add.ptr.i208, i32 -1
  %add.ptr63 = getelementptr i32, ptr %add.ptr62, i32 %pos.0
  %138 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %add.ptr63, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp66.not = icmp eq i32 %139, 0
  br i1 %cmp66.not, label %if.end60.if.end72_crit_edge, label %if.then68

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #14
  %call69 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef %108, i32 noundef 1) #14
  %141 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 0, ptr %add.ptr63, align 1
  %call71 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %108) #14
  tail call void @reiserfs_free_block(ptr noundef %th, ptr noundef %inode, i32 noundef %140, i32 noundef 1) #14
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end60.if.end72_crit_edge
  %142 = tail call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i to ptr
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 16384
  %146 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.i.not.i = icmp eq i32 %146, 0
  br i1 %tobool.i.not.i, label %if.end72.reiserfs_cond_resched.exit_crit_edge, label %if.then.i209

if.end72.reiserfs_cond_resched.exit_crit_edge:    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit

if.then.i209:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #14
  tail call void @schedule() #14
  tail call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call1.i) #14
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i209, %if.end72.reiserfs_cond_resched.exit_crit_edge
  %147 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %path, align 4
  %add.ptr.i212 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %148
  %149 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr.i212, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %b_data.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %152, align 2
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %155)
  %cmp.i.i213 = icmp ugt i16 %155, 5
  br i1 %cmp.i.i213, label %if.then.i.i, label %B_IS_IN_TREE.exit.i

if.then.i.i:                                      ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__func__.B_IS_IN_TREE, ptr noundef %150, ptr noundef %150) #17
  unreachable

B_IS_IN_TREE.exit.i:                              ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %cmp5.i.not.i = icmp eq i16 %154, 0
  br i1 %cmp5.i.not.i, label %B_IS_IN_TREE.exit.i.while.end.thread_crit_edge, label %if.end.i216

B_IS_IN_TREE.exit.i.while.end.thread_crit_edge:   ; preds = %B_IS_IN_TREE.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

if.end.i216:                                      ; preds = %B_IS_IN_TREE.exit.i
  %pe_position.i214 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %148, i32 1
  %156 = ptrtoint ptr %pe_position.i214 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pe_position.i214, align 4
  %blk_nr_item.i = getelementptr inbounds %struct.block_head, ptr %152, i32 0, i32 1
  %158 = ptrtoint ptr %blk_nr_item.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %blk_nr_item.i, align 2
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #14
  %conv.i215 = zext i16 %160 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %conv.i215)
  %cmp.not.i = icmp slt i32 %157, %conv.i215
  br i1 %cmp.not.i, label %comp_items.exit, label %if.end.i216.while.end.thread_crit_edge

if.end.i216.while.end.thread_crit_edge:           ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

comp_items.exit:                                  ; preds = %if.end.i216
  %add.ptr.i.i.i.i = getelementptr i8, ptr %152, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %157
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %s_ih, ptr noundef dereferenceable(24) %arrayidx.i.i.i, i32 24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool74.not = icmp eq i32 %bcmp, 0
  br i1 %tobool74.not, label %if.end76, label %comp_items.exit.while.end.thread_crit_edge

comp_items.exit.while.end.thread_crit_edge:       ; preds = %comp_items.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.thread

if.end76:                                         ; preds = %comp_items.exit
  %161 = ptrtoint ptr %removed to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %removed, align 4
  %inc = add i32 %162, 1
  store i32 %inc, ptr %removed, align 4
  %163 = ptrtoint ptr %cut_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cut_size, align 4
  %sub77 = add i32 %164, -4
  store i32 %sub77, ptr %cut_size, align 4
  %cmp78 = icmp eq i32 %sub47, 0
  br i1 %cmp78, label %if.then80, label %if.end76.while.cond_crit_edge

if.end76.while.cond_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %sub81 = add i32 %164, -28
  %165 = ptrtoint ptr %cut_size to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %sub81, ptr %cut_size, align 4
  br label %while.end

while.end.thread:                                 ; preds = %comp_items.exit.while.end.thread_crit_edge, %if.end.i216.while.end.thread_crit_edge, %B_IS_IN_TREE.exit.i.while.end.thread_crit_edge
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %1, ptr noundef %108) #14
  %call86 = tail call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef %item_key, ptr noundef %path)
  %cmp87 = icmp eq i32 %call86, 1
  br i1 %cmp87, label %while.end.thread.do.body37_crit_edge, label %while.end.thread.do.end89_crit_edge

while.end.thread.do.end89_crit_edge:              ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end89

while.end.thread.do.body37_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body37

while.end:                                        ; preds = %if.then80, %land.lhs.true55.while.end_crit_edge, %le_ih_k_offset.exit.while.end_crit_edge
  %result.3 = phi i8 [ 100, %if.then80 ], [ 99, %le_ih_k_offset.exit.while.end_crit_edge ], [ 99, %land.lhs.true55.while.end_crit_edge ]
  %pos.2 = phi i32 [ 0, %if.then80 ], [ %pos.0, %le_ih_k_offset.exit.while.end_crit_edge ], [ %pos.0, %land.lhs.true55.while.end_crit_edge ]
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %1, ptr noundef %108) #14
  br label %do.end89

do.end89:                                         ; preds = %while.end, %while.end.thread.do.end89_crit_edge
  %pos.2241 = phi i32 [ %pos.2, %while.end ], [ %pos.0, %while.end.thread.do.end89_crit_edge ]
  %result.3239 = phi i8 [ %result.3, %while.end ], [ 99, %while.end.thread.do.end89_crit_edge ]
  %mul90 = shl i32 %pos.2241, 2
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  %166 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %mul90, ptr %pos_in_item, align 4
  %167 = ptrtoint ptr %cut_size to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cut_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp91 = icmp eq i32 %168, 0
  %conv95 = select i1 %cmp91, i8 118, i8 %result.3239
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %s_ih) #14
  br label %cleanup102

cleanup102:                                       ; preds = %do.end89, %prepare_for_direct_item.exit, %prepare_for_direntry_item.exit, %do.end18
  %retval.0 = phi i8 [ 100, %do.end18 ], [ %retval.0.i, %prepare_for_direntry_item.exit ], [ %retval.0.i192, %prepare_for_direct_item.exit ], [ %conv95, %do.end89 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fix_nodes(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @unfix_nodes(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_balance(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_delete_solid_item(ptr noundef %th, ptr noundef %inode, ptr noundef %key) local_unnamed_addr #9 align 64 {
entry:
  %tb = alloca %struct.tree_balance, align 8
  %path = alloca %struct.treepath, align 4
  %cpu_key = alloca %struct.cpu_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %tb) #14
  %2 = call ptr @memset(ptr %tb, i32 255, i32 456)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path) #14
  %3 = getelementptr inbounds i8, ptr %path, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 64)
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cpu_key) #14
  %6 = getelementptr inbounds i8, ptr %cpu_key, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 24)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %8 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1416, 0\0A.popsection", ""() #14, !srcloc !205
  unreachable

do.end9:                                          ; preds = %entry
  %10 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %key, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %13 = ptrtoint ptr %cpu_key to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cpu_key, align 8
  %k_objectid.i = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 1
  %14 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %k_objectid.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  %k_objectid3.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 1
  %17 = ptrtoint ptr %k_objectid3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %k_objectid3.i, align 4
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 2
  %18 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %u.i.i, align 1
  %20 = trunc i64 %19 to i32
  %21 = lshr i32 %20, 4
  %conv1.i.i.i = and i32 %21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i = icmp ult i32 %conv1.i.i.i, 4
  %phi.cast.i.i.i = trunc i32 %conv1.i.i.i to i16
  %phi.cast.i.op.i.i = add nsw i16 %phi.cast.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %phi.cast.i.op.i.i)
  %switch9.i.i = icmp ult i16 %phi.cast.i.op.i.i, 3
  %switch.i.i = select i1 %cmp.i.i.i, i1 %switch9.i.i, i1 false
  %spec.select.i.i = zext i1 %switch.i.i to i32
  %version4.i = getelementptr inbounds %struct.cpu_key, ptr %cpu_key, i32 0, i32 1
  %22 = ptrtoint ptr %version4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i.i, ptr %version4.i, align 8
  br i1 %switch.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9
  %23 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %u.i.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %conv.i.i = zext i32 %25 to i64
  %k_offset25.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 2
  %26 = ptrtoint ptr %k_offset25.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv.i.i, ptr %k_offset25.i, align 8
  %k_uniqueness.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %k_uniqueness.i.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %29, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_key2cpu_key.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_key2cpu_key.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key2cpu_key.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key2cpu_key.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key2cpu_key.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key2cpu_key.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_key2cpu_key.exit

if.else.i.i:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  %31 = and i64 %19, -241
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #14
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 2
  %33 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %k_offset.i, align 8
  %34 = trunc i32 %conv1.i.i.i to i8
  br label %le_key2cpu_key.exit

le_key2cpu_key.exit:                              ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_key2cpu_key.exit_crit_edge
  %retval.0.in.i.i = phi i8 [ %34, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ 0, %if.then.i.i.le_key2cpu_key.exit_crit_edge ]
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %cpu_key, i32 0, i32 3
  %35 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %retval.0.in.i.i, ptr %k_type.i, align 8
  %path_elements.i89 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 3
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 2
  %tb_path.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 4
  %add.ptr.i91 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2, i32 1
  %pe_position.i92 = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2, i32 1, i32 1
  %insert_size.i = getelementptr inbounds %struct.tree_balance, ptr %tb, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %if.then38, %le_key2cpu_key.exit
  %tobool27.not = phi i1 [ false, %if.then38 ], [ true, %le_key2cpu_key.exit ]
  %36 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %th, align 4
  %call = call i32 @search_by_key(ptr noundef %37, ptr noundef nonnull %cpu_key, ptr noundef nonnull %path, i32 noundef 1)
  %38 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call, label %if.then15 [
    i32 -2, label %if.then11
    i32 1, label %if.end26
  ]

if.then11:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %th, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %40, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.reiserfs_delete_solid_item, ptr noundef nonnull @.str.22, ptr noundef nonnull %cpu_key) #14
  br label %while.end

if.then15:                                        ; preds = %while.cond
  %41 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i = icmp slt i32 %42, 1
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp17.not.i = icmp eq i32 %42, 1
  br i1 %cmp17.not.i, label %while.cond.preheader.i.pathrelse.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.pathrelse.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %path_offset.08.i = phi i32 [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ], [ %42, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.08.i, -1
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i89, i32 %path_offset.08.i
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i71

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i

if.then.i.i71:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %44) #14
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i71, %while.body.i.brelse.exit.i_crit_edge
  %cmp1.i = icmp ugt i32 %path_offset.08.i, 2
  br i1 %cmp1.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.pathrelse.exit_crit_edge

brelse.exit.i.pathrelse.exit_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

pathrelse.exit:                                   ; preds = %brelse.exit.i.pathrelse.exit_crit_edge, %while.cond.preheader.i.pathrelse.exit_crit_edge
  %45 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %path, align 4
  %46 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %u.i.i, align 1
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %48, 4
  %conv1.i.i = and i32 %49, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, 3
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %50 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %50)
  %switch9.i = icmp ult i16 %50, -3
  %switch.i = select i1 %cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %le_key_k_offset.exit, label %le_key_k_offset.exit.thread

le_key_k_offset.exit:                             ; preds = %pathrelse.exit
  %51 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %u.i.i, align 1
  %53 = and i32 %52, -2130706561
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp18 = icmp eq i32 %53, 0
  br i1 %cmp18, label %cond.true.i85, label %le_key_k_offset.exit.if.then23_crit_edge

le_key_k_offset.exit.if.then23_crit_edge:         ; preds = %le_key_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

le_key_k_offset.exit.thread:                      ; preds = %pathrelse.exit
  %54 = and i64 %47, -9151314996867629056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %cmp18102 = icmp eq i64 %54, 0
  br i1 %cmp18102, label %cond.false.i86, label %le_key_k_offset.exit.thread.if.then23_crit_edge

le_key_k_offset.exit.thread.if.then23_crit_edge:  ; preds = %le_key_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

cond.true.i85:                                    ; preds = %le_key_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %u.i.i, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56) #14
  %conv.i84 = zext i32 %57 to i64
  br label %le_key_k_offset.exit88

cond.false.i86:                                   ; preds = %le_key_k_offset.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %58 = and i64 %47, -241
  %59 = call i64 @llvm.bswap.i64(i64 %58) #14
  br label %le_key_k_offset.exit88

le_key_k_offset.exit88:                           ; preds = %cond.false.i86, %cond.true.i85
  %cond.i87 = phi i64 [ %conv.i84, %cond.true.i85 ], [ %59, %cond.false.i86 ]
  %and21 = and i64 %cond.i87, 127
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and21)
  %cmp22 = icmp eq i64 %and21, 1
  br i1 %cmp22, label %le_key_k_offset.exit88.while.end_crit_edge, label %le_key_k_offset.exit88.if.then23_crit_edge

le_key_k_offset.exit88.if.then23_crit_edge:       ; preds = %le_key_k_offset.exit88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

le_key_k_offset.exit88.while.end_crit_edge:       ; preds = %le_key_k_offset.exit88
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then23:                                        ; preds = %le_key_k_offset.exit88.if.then23_crit_edge, %le_key_k_offset.exit.thread.if.then23_crit_edge, %le_key_k_offset.exit.if.then23_crit_edge
  %60 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %th, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %61, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.reiserfs_delete_solid_item, ptr noundef nonnull @.str.24, ptr noundef %key) #14
  br label %while.end

if.end26:                                         ; preds = %while.cond
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  %62 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %do.body4.i, label %init_tb_struct.exit, !prof !198

do.body4.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #14, !srcloc !206
  unreachable

init_tb_struct.exit:                              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %path, align 4
  %add.ptr.i90 = getelementptr %struct.path_element, ptr %path_elements.i89, i32 %65
  %66 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i90, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 24
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i89, i32 %65, i32 1
  %70 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pe_position.i, align 4
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %71
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %ih_item_len, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73)
  %conv = zext i16 %74 to i32
  %sub = sub nuw nsw i32 -24, %conv
  %75 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %th, align 4
  %77 = call ptr @memset(ptr %tb, i32 0, i32 456)
  %78 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %th, ptr %transaction_handle.i, align 4
  %79 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %tb_sb.i, align 8
  %80 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %path, ptr %tb_path.i, align 8
  %81 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %add.ptr.i91, align 4
  %82 = ptrtoint ptr %pe_position.i92 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %pe_position.i92, align 4
  %83 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub, ptr %insert_size.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %init_tb_struct.exit, %if.end26.if.end31_crit_edge
  %84 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %path, align 4
  %add.ptr.i94 = getelementptr %struct.path_element, ptr %path_elements.i89, i32 %85
  %86 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i94, align 4
  %pe_position.i95 = getelementptr %struct.path_element, ptr %path_elements.i89, i32 %85, i32 1
  %88 = ptrtoint ptr %pe_position.i95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pe_position.i95, align 4
  %b_data.i.i.i96 = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 5
  %90 = ptrtoint ptr %b_data.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_data.i.i.i96, align 4
  %add.ptr.i.i.i97 = getelementptr i8, ptr %91, i32 24
  %arrayidx.i.i98 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i97, i32 %89
  %ih_item_len33 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i98, i32 0, i32 2
  %92 = ptrtoint ptr %ih_item_len33 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %ih_item_len33, align 1
  %call35 = call i32 @fix_nodes(i32 noundef 100, ptr noundef nonnull %tb, ptr noundef null, ptr noundef null) #14
  %94 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call35, label %if.end50 [
    i32 -1, label %if.then38
    i32 0, label %if.then44
  ]

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 33
  %97 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_fs_info.i, align 16
  %delete_solid_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %98, i32 0, i32 27, i32 11
  %99 = ptrtoint ptr %delete_solid_item_restarted to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %delete_solid_item_restarted, align 4
  %inc = add i32 %100, 1
  store i32 %inc, ptr %delete_solid_item_restarted, align 4
  br label %while.cond

if.then44:                                        ; preds = %if.end31
  call void @do_balance(ptr noundef nonnull %tb, ptr noundef null, ptr noundef null, i32 noundef 100) #14
  %tobool45.not = icmp eq ptr %inode, null
  br i1 %tobool45.not, label %if.then44.while.end_crit_edge, label %if.then46

if.then44.while.end_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %101 = call i16 @llvm.bswap.i16(i16 %93)
  %call47 = call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #14
  %102 = zext i16 %101 to i64
  call void @__dquot_free_space(ptr noundef nonnull %inode, i64 noundef %102, i32 noundef 0) #14
  call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call47) #14
  br label %while.end

if.end50:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %th, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %104, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.reiserfs_delete_solid_item, ptr noundef nonnull @.str.26, ptr noundef nonnull %cpu_key) #14
  call void @unfix_nodes(ptr noundef nonnull %tb) #14
  br label %while.end

while.end:                                        ; preds = %if.end50, %if.then46, %if.then44.while.end_crit_edge, %if.then23, %le_key_k_offset.exit88.while.end_crit_edge, %if.then11
  %105 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.not.i = icmp eq i32 %106, 1
  br i1 %cmp.not.i, label %reiserfs_check_path.exit, label %if.then.i99

if.then.i99:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_check_path, ptr noundef nonnull @.str.4, i32 noundef 350, ptr noundef nonnull @__func__.reiserfs_check_path) #17
  unreachable

reiserfs_check_path.exit:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cpu_key) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path) #14
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %tb) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_delete_object(ptr noundef %th, ptr noundef %inode) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %i_size, align 8
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %1 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1499, 0\0A.popsection", ""() #14, !srcloc !207
  unreachable

do.end9:                                          ; preds = %entry
  %call = tail call i32 @reiserfs_do_truncate(ptr noundef %th, ptr noundef %inode, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %3 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_properties, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_rs, align 4
  %s_inode_generation = getelementptr inbounds %struct.reiserfs_super_block, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %s_inode_generation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_inode_generation, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %add.i = add i32 %13, 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %add.i) #14
  %15 = ptrtoint ptr %s_inode_generation to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %s_inode_generation, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @reiserfs_delete_solid_item(ptr noundef %th, ptr noundef %inode, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end9.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_do_truncate(ptr noundef %th, ptr noundef %inode, ptr noundef %page, i32 noundef %update_timestamps) local_unnamed_addr #9 align 64 {
entry:
  %s_search_path = alloca %struct.treepath, align 4
  %s_item_key = alloca %struct.cpu_key, align 8
  %tmp = alloca %struct.timespec64, align 8
  %tmp94 = alloca %struct.timespec64, align 8
  %tmp130 = alloca %struct.timespec64, align 8
  %tmp132 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %s_search_path) #14
  %0 = getelementptr inbounds i8, ptr %s_search_path, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 64)
  %2 = ptrtoint ptr %s_search_path to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %s_search_path, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %s_item_key) #14
  %3 = call ptr @memset(ptr %s_item_key, i32 255, i32 32)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %4 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !198

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1900, 0\0A.popsection", ""() #14, !srcloc !208
  unreachable

do.end10:                                         ; preds = %entry
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %8, label %do.end10.cleanup_crit_edge [
    i16 16384, label %do.end7.i
    i16 -32768, label %do.end10.if.end31_crit_edge
    i16 -24576, label %do.end10.if.end31_crit_edge317
  ]

do.end10.if.end31_crit_edge317:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

do.end10.if.end31_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end7.i:                                        ; preds = %do.end10
  %10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.i = icmp eq i32 %12, 0
  br i1 %tobool8.not.i, label %do.end7.i.truncate_directory.exit_crit_edge, label %if.then9.i

do.end7.i.truncate_directory.exit_crit_edge:      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %truncate_directory.exit

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %14, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.truncate_directory, ptr noundef nonnull @.str.93) #14
  br label %truncate_directory.exit

truncate_directory.exit:                          ; preds = %if.then9.i, %do.end7.i.truncate_directory.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -264
  %u.i.i = getelementptr i8, ptr %inode, i32 -256
  %15 = ptrtoint ptr %u.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 16777216, ptr %u.i.i, align 1
  %k_uniqueness.i.i = getelementptr i8, ptr %inode, i32 -252
  %16 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 -201261056, ptr %k_uniqueness.i.i, align 1
  tail call void @reiserfs_delete_solid_item(ptr noundef %th, ptr noundef %inode, ptr noundef %add.ptr.i.i) #14
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %17 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_size.i.i, align 8
  tail call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %18) #14
  %19 = ptrtoint ptr %u.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %u.i.i, align 1
  %20 = ptrtoint ptr %k_uniqueness.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %k_uniqueness.i.i, align 1
  br label %cleanup

if.end31:                                         ; preds = %do.end10.if.end31_crit_edge, %do.end10.if.end31_crit_edge317
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size, align 8
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %23 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp.i, i64 4294967295, i64 1152921504606846975
  call void @make_cpu_key(ptr noundef nonnull %s_item_key, ptr noundef %inode, i64 noundef %..i, i32 noundef 2, i32 noundef 3) #14
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %call32 = call i32 @search_for_position_by_key(ptr noundef %26, ptr noundef nonnull %s_item_key, ptr noundef nonnull %s_search_path)
  %27 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call32, label %if.end45 [
    i32 -2, label %if.then35
    i32 1, label %if.end31.if.then43_crit_edge
    i32 -1, label %if.end31.if.then43_crit_edge318
  ]

if.end31.if.then43_crit_edge318:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.end31.if.then43_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %29, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.reiserfs_do_truncate, ptr noundef nonnull @.str.42, ptr noundef nonnull %s_item_key) #14
  br label %out

if.then43:                                        ; preds = %if.end31.if.then43_crit_edge, %if.end31.if.then43_crit_edge318
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %31, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.reiserfs_do_truncate, ptr noundef nonnull @.str.44, i32 noundef %call32, ptr noundef nonnull %s_item_key) #14
  br label %out

if.end45:                                         ; preds = %if.end31
  %pos_in_item = getelementptr inbounds %struct.treepath, ptr %s_search_path, i32 0, i32 3
  %32 = ptrtoint ptr %pos_in_item to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pos_in_item, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %pos_in_item, align 4
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %s_search_path, i32 0, i32 2
  %34 = ptrtoint ptr %s_search_path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_search_path, align 4
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %35
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %35, i32 1
  %38 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pe_position.i, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %39
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.i.i.i = icmp eq i16 %43, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %is_statdata_le_ih.exit

if.then.i.i.i:                                    ; preds = %if.end45
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cond = icmp eq i32 %45, 0
  br i1 %cond, label %if.then.i.i.i.if.end55_crit_edge, label %if.then.i.i

if.then.i.i.i.if.end55_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

is_statdata_le_ih.exit:                           ; preds = %if.end45
  %46 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %u.i.i.i, align 1
  %48 = and i64 %47, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %phi.cmp1.i.i.not = icmp eq i64 %48, 0
  br i1 %phi.cmp1.i.i.not, label %is_statdata_le_ih.exit.if.end55_crit_edge, label %if.else.i.i

is_statdata_le_ih.exit.if.end55_crit_edge:        ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then.i.i:                                      ; preds = %if.then.i.i.i
  %49 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %u.i.i.i, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50) #14
  %conv.i.i = zext i32 %51 to i64
  %52 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %k_uniqueness.i.i.i, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #14
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %54, label %sw.default.i.i.i [
    i32 0, label %if.then.i.i.le_ih_k_type.exit_crit_edge
    i32 -2, label %sw.bb1.i.i.i
    i32 -1, label %sw.bb2.i.i.i
    i32 500, label %sw.bb3.i.i.i
  ]

if.then.i.i.le_ih_k_type.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb1.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb2.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.bb3.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

sw.default.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit

if.else.i.i:                                      ; preds = %is_statdata_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %u.i.i.i, align 1
  %58 = and i64 %57, -241
  %59 = call i64 @llvm.bswap.i64(i64 %58) #14
  %60 = trunc i64 %57 to i32
  %61 = lshr i32 %60, 4
  %conv1.i.i.i = and i32 %61, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i)
  %cmp.i.i.i207 = icmp ult i32 %conv1.i.i.i, 4
  %narrow.i.i = select i1 %cmp.i.i.i207, i32 %conv1.i.i.i, i32 15
  br label %le_ih_k_type.exit

le_ih_k_type.exit:                                ; preds = %if.else.i.i, %sw.default.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge
  %cond.i.i236 = phi i64 [ %59, %if.else.i.i ], [ %conv.i.i, %sw.default.i.i.i ], [ %conv.i.i, %sw.bb3.i.i.i ], [ %conv.i.i, %sw.bb2.i.i.i ], [ %conv.i.i, %sw.bb1.i.i.i ], [ %conv.i.i, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %retval.0.in.i.i = phi i32 [ %narrow.i.i, %if.else.i.i ], [ 15, %sw.default.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ %54, %if.then.i.i.le_ih_k_type.exit_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_blocksize, align 16
  %call53 = call i32 %65(ptr noundef %arrayidx.i.i, i32 noundef %69) #14
  %conv54 = sext i32 %call53 to i64
  %add = add i64 %cond.i.i236, -1
  %sub = add i64 %add, %conv54
  br label %if.end55

if.end55:                                         ; preds = %le_ih_k_type.exit, %is_statdata_le_ih.exit.if.end55_crit_edge, %if.then.i.i.i.if.end55_crit_edge
  %file_size.0 = phi i64 [ %sub, %le_ih_k_type.exit ], [ 0, %is_statdata_le_ih.exit.if.end55_crit_edge ], [ 0, %if.then.i.i.i.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp56 = icmp eq i64 %22, 0
  br i1 %cmp56, label %if.then58, label %if.end55.if.end59_crit_edge

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %reada = getelementptr inbounds %struct.treepath, ptr %s_search_path, i32 0, i32 1
  %70 = ptrtoint ptr %reada to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %reada, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end55.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %file_size.0)
  %cmp60 = icmp eq i64 %file_size.0, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %file_size.0, i64 %22)
  %cmp63 = icmp slt i64 %file_size.0, %22
  %or.cond = select i1 %cmp60, i1 true, i1 %cmp63
  br i1 %or.cond, label %if.end59.update_and_out_crit_edge, label %if.end66

if.end59.update_and_out_crit_edge:                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_and_out

if.end66:                                         ; preds = %if.end59
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %s_item_key, i32 0, i32 2
  %71 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %file_size.0, ptr %k_offset.i, align 8
  %t_blocks_allocated.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 3
  %t_blocks_logged.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_timestamps)
  %tobool92.not = icmp eq i32 %update_timestamps, 0
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %sub108 = add i64 %22, 7
  %and109 = and i64 %sub108, -8
  br label %do.body67

do.body67:                                        ; preds = %land.rhs.do.body67_crit_edge, %if.end66
  %file_size.1 = phi i64 [ %file_size.0, %if.end66 ], [ %sub84, %land.rhs.do.body67_crit_edge ]
  %call68 = call i32 @reiserfs_cut_from_item(ptr noundef %th, ptr noundef nonnull %s_search_path, ptr noundef nonnull %s_item_key, ptr noundef %inode, ptr noundef %page, i64 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %do.body75

if.then71:                                        ; preds = %do.body67
  %72 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %73, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.reiserfs_do_truncate, ptr noundef nonnull @.str.46) #14
  %74 = ptrtoint ptr %s_search_path to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.not.i = icmp eq i32 %75, 1
  br i1 %cmp.not.i, label %if.then71.cleanup_crit_edge, label %if.then.i

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_check_path, ptr noundef nonnull @.str.4, i32 noundef 350, ptr noundef nonnull @__func__.reiserfs_check_path) #17
  unreachable

do.body75:                                        ; preds = %do.body67
  %conv76238 = zext i32 %call68 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %file_size.1, i64 %conv76238)
  %cmp77 = icmp slt i64 %file_size.1, %conv76238
  br i1 %cmp77, label %if.then79, label %do.end82

if.then79:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_do_truncate, ptr noundef nonnull @.str.47, i32 noundef 1984, ptr noundef nonnull @__func__.reiserfs_do_truncate, i32 noundef %call68, i64 noundef %file_size.1, ptr noundef nonnull %s_item_key) #17
  unreachable

do.end82:                                         ; preds = %do.body75
  %sub84 = sub i64 %file_size.1, %conv76238
  %76 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %sub84, ptr %k_offset.i, align 8
  %call85 = call i32 @journal_transaction_should_end(ptr noundef %th, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %do.end82.if.then91_crit_edge

do.end82.if.then91_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then91

lor.lhs.false87:                                  ; preds = %do.end82
  %77 = ptrtoint ptr %t_blocks_allocated.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %t_blocks_allocated.i, align 4
  %79 = ptrtoint ptr %t_blocks_logged.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %t_blocks_logged.i, align 4
  %sub.i = sub i32 %78, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %sub.i)
  %cmp89 = icmp slt i32 %sub.i, 38
  br i1 %cmp89, label %lor.lhs.false87.if.then91_crit_edge, label %lor.lhs.false87.do.cond106_crit_edge

lor.lhs.false87.do.cond106_crit_edge:             ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond106

lor.lhs.false87.if.then91_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false87.if.then91_crit_edge, %do.end82.if.then91_crit_edge
  %81 = ptrtoint ptr %s_search_path to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i209 = icmp slt i32 %82, 1
  br i1 %cmp.i209, label %if.then.i211, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then91
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp17.not.i = icmp eq i32 %82, 1
  br i1 %cmp17.not.i, label %while.cond.preheader.i.pathrelse.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.pathrelse.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

if.then.i211:                                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %path_offset.08.i = phi i32 [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ], [ %82, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.08.i, -1
  %add.ptr.i212 = getelementptr %struct.path_element, ptr %path_elements.i, i32 %path_offset.08.i
  %83 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i212, align 4
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i213

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i

if.then.i.i213:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %84) #14
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i213, %while.body.i.brelse.exit.i_crit_edge
  %cmp1.i = icmp ugt i32 %path_offset.08.i, 2
  br i1 %cmp1.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.pathrelse.exit_crit_edge

brelse.exit.i.pathrelse.exit_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

pathrelse.exit:                                   ; preds = %brelse.exit.i.pathrelse.exit_crit_edge, %while.cond.preheader.i.pathrelse.exit_crit_edge
  %85 = ptrtoint ptr %s_search_path to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %s_search_path, align 4
  br i1 %tobool92.not, label %pathrelse.exit.if.end95_crit_edge, label %if.then93

pathrelse.exit.if.end95_crit_edge:                ; preds = %pathrelse.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then93:                                        ; preds = %pathrelse.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #14
  %86 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp94) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp94, ptr noundef %inode) #14
  %87 = call ptr @memcpy(ptr %i_ctime, ptr %tmp94, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp94) #14
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %pathrelse.exit.if.end95_crit_edge
  %88 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %89) #14
  %call96 = call i32 @journal_end(ptr noundef %th) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.out_crit_edge

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end99:                                         ; preds = %if.end95
  %90 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb, align 4
  %call101 = call i32 @journal_begin(ptr noundef %th, ptr noundef %91, i32 noundef 109) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end104:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_update_inode_transaction(ptr noundef %inode) #14
  br label %do.cond106

do.cond106:                                       ; preds = %if.end104, %lor.lhs.false87.do.cond106_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %sub84, i64 %and109)
  %cmp110 = icmp sgt i64 %sub84, %and109
  br i1 %cmp110, label %land.rhs, label %do.cond106.update_and_out_crit_edge

do.cond106.update_and_out_crit_edge:              ; preds = %do.cond106
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_and_out

land.rhs:                                         ; preds = %do.cond106
  %92 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb, align 4
  %call113 = call i32 @search_for_position_by_key(ptr noundef %93, ptr noundef nonnull %s_item_key, ptr noundef nonnull %s_search_path)
  %cmp114 = icmp eq i32 %call113, 1
  br i1 %cmp114, label %land.rhs.do.body67_crit_edge, label %if.then123.critedge

land.rhs.do.body67_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body67

if.then123.critedge:                              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %k_objectid = getelementptr inbounds %struct.in_core_key, ptr %s_item_key, i32 0, i32 1
  %94 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %k_objectid, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_do_truncate, ptr noundef nonnull @.str.48, i32 noundef 2028, ptr noundef nonnull @__func__.reiserfs_do_truncate, i64 noundef %22, i64 noundef %sub84, i32 noundef %95) #17
  unreachable

update_and_out:                                   ; preds = %do.cond106.update_and_out_crit_edge, %if.end59.update_and_out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_timestamps)
  %tobool127.not = icmp eq i32 %update_timestamps, 0
  br i1 %tobool127.not, label %update_and_out.if.end133_crit_edge, label %if.then128

update_and_out.if.end133_crit_edge:               ; preds = %update_and_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then128:                                       ; preds = %update_and_out
  call void @__sanitizer_cov_trace_pc() #16
  %i_mtime129 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp130) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp130, ptr noundef %inode) #14
  %96 = call ptr @memcpy(ptr %i_mtime129, ptr %tmp130, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp130) #14
  %i_ctime131 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp132) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp132, ptr noundef %inode) #14
  %97 = call ptr @memcpy(ptr %i_ctime131, ptr %tmp132, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp132) #14
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %update_and_out.if.end133_crit_edge
  %98 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %i_size, align 8
  call void @reiserfs_update_sd_size(ptr noundef %th, ptr noundef %inode, i64 noundef %99) #14
  br label %out

out:                                              ; preds = %if.end133, %if.end99.out_crit_edge, %if.end95.out_crit_edge, %if.then43, %if.then35
  %err.3 = phi i32 [ -5, %if.then35 ], [ -5, %if.then43 ], [ 0, %if.end133 ], [ %call101, %if.end99.out_crit_edge ], [ %call96, %if.end95.out_crit_edge ]
  %100 = ptrtoint ptr %s_search_path to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.i215 = icmp slt i32 %101, 1
  br i1 %cmp.i215, label %if.then.i220, label %while.cond.preheader.i217

while.cond.preheader.i217:                        ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp17.not.i216 = icmp eq i32 %101, 1
  br i1 %cmp17.not.i216, label %while.cond.preheader.i217.cleanup_crit_edge, label %while.body.lr.ph.i219

while.cond.preheader.i217.cleanup_crit_edge:      ; preds = %while.cond.preheader.i217
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph.i219:                            ; preds = %while.cond.preheader.i217
  %path_elements.i218 = getelementptr inbounds %struct.treepath, ptr %s_search_path, i32 0, i32 2
  br label %while.body.i225

if.then.i220:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i225:                                  ; preds = %brelse.exit.i228.while.body.i225_crit_edge, %while.body.lr.ph.i219
  %path_offset.08.i221 = phi i32 [ %101, %while.body.lr.ph.i219 ], [ %dec.i222, %brelse.exit.i228.while.body.i225_crit_edge ]
  %dec.i222 = add nsw i32 %path_offset.08.i221, -1
  %add.ptr.i223 = getelementptr %struct.path_element, ptr %path_elements.i218, i32 %path_offset.08.i221
  %102 = ptrtoint ptr %add.ptr.i223 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i223, align 4
  %tobool.not.i.i224 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i224, label %while.body.i225.brelse.exit.i228_crit_edge, label %if.then.i.i226

while.body.i225.brelse.exit.i228_crit_edge:       ; preds = %while.body.i225
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i228

if.then.i.i226:                                   ; preds = %while.body.i225
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %103) #14
  br label %brelse.exit.i228

brelse.exit.i228:                                 ; preds = %if.then.i.i226, %while.body.i225.brelse.exit.i228_crit_edge
  %cmp1.i227 = icmp ugt i32 %path_offset.08.i221, 2
  br i1 %cmp1.i227, label %brelse.exit.i228.while.body.i225_crit_edge, label %brelse.exit.i228.cleanup_crit_edge

brelse.exit.i228.cleanup_crit_edge:               ; preds = %brelse.exit.i228
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

brelse.exit.i228.while.body.i225_crit_edge:       ; preds = %brelse.exit.i228
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i225

cleanup:                                          ; preds = %brelse.exit.i228.cleanup_crit_edge, %while.cond.preheader.i217.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %truncate_directory.exit, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %truncate_directory.exit ], [ 0, %do.end10.cleanup_crit_edge ], [ 0, %if.then71.cleanup_crit_edge ], [ %err.3, %while.cond.preheader.i217.cleanup_crit_edge ], [ %err.3, %brelse.exit.i228.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %s_item_key) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %s_search_path) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_cut_from_item(ptr noundef %th, ptr noundef %path, ptr noundef %item_key, ptr noundef %inode, ptr noundef %page, i64 noundef %new_file_size) local_unnamed_addr #9 align 64 {
entry:
  %tail_key.i = alloca %struct.cpu_key, align 8
  %s_cut_balance = alloca %struct.tree_balance, align 8
  %cut_size = alloca i32, align 4
  %removed = alloca i32, align 4
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %s_cut_balance) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cut_size) #14
  %2 = ptrtoint ptr %cut_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cut_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %removed) #14
  %3 = ptrtoint ptr %removed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %removed, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #14
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %mode, align 1, !annotation !197
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %5 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body4, label %init_tb_struct.exit, !prof !198

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1664, 0\0A.popsection", ""() #14, !srcloc !209
  unreachable

init_tb_struct.exit:                              ; preds = %entry
  %7 = call ptr @memset(ptr %s_cut_balance, i32 0, i32 456)
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %s_cut_balance, i32 0, i32 3
  %8 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %th, ptr %transaction_handle.i, align 4
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %s_cut_balance, i32 0, i32 2
  %9 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %tb_sb.i, align 8
  %tb_path.i = getelementptr inbounds %struct.tree_balance, ptr %s_cut_balance, i32 0, i32 4
  %10 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %path, ptr %tb_path.i, align 8
  %add.ptr.i = getelementptr %struct.treepath, ptr %path, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %add.ptr.i, align 4
  %pe_position.i = getelementptr %struct.treepath, ptr %path, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pe_position.i, align 4
  %insert_size.i = getelementptr inbounds %struct.tree_balance, ptr %s_cut_balance, i32 0, i32 18
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %i_count.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %tobool158.not.old.i = icmp eq ptr %page, null
  %i_flags.i = getelementptr i8, ptr %inode, i32 -248
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %item_key, i32 0, i32 3
  %key_length = getelementptr inbounds %struct.cpu_key, ptr %item_key, i32 0, i32 2
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %item_key, i32 0, i32 2
  %call359481 = call fastcc zeroext i8 @prepare_for_delete_or_cut(ptr noundef %th, ptr noundef %inode, ptr noundef %path, ptr noundef %item_key, ptr noundef nonnull %removed, ptr noundef nonnull %cut_size, i64 noundef %new_file_size)
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call359481, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %call359481)
  %cmp360482 = icmp eq i8 %call359481, 118
  br i1 %cmp360482, label %init_tb_struct.exit.do.body13_crit_edge, label %init_tb_struct.exit.if.end44.preheader_crit_edge

init_tb_struct.exit.if.end44.preheader_crit_edge: ; preds = %init_tb_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.preheader

init_tb_struct.exit.do.body13_crit_edge:          ; preds = %init_tb_struct.exit
  br label %do.body13

while.cond.outer:                                 ; preds = %if.end25
  %call359 = call fastcc zeroext i8 @prepare_for_delete_or_cut(ptr noundef %th, ptr noundef %inode, ptr noundef %path, ptr noundef %item_key, ptr noundef nonnull %removed, ptr noundef nonnull %cut_size, i64 noundef %sub27)
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call359, ptr %mode, align 1
  %cmp360 = icmp eq i8 %call359, 118
  br i1 %cmp360, label %while.cond.outer.do.body13_crit_edge, label %while.cond.outer.if.end44.preheader_crit_edge

while.cond.outer.do.body13_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13

while.cond.outer.if.end44.preheader_crit_edge:    ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t = trunc i64 %sub27 to i32
  %phi.bo = and i32 %extract.t, 4095
  br label %if.end44.preheader

if.end44.preheader:                               ; preds = %while.cond.outer.if.end44.preheader_crit_edge, %init_tb_struct.exit.if.end44.preheader_crit_edge
  %new_file_size.addr.0.ph.lcssa = phi i64 [ %sub27, %while.cond.outer.if.end44.preheader_crit_edge ], [ %new_file_size, %init_tb_struct.exit.if.end44.preheader_crit_edge ]
  %retval2.0.ph.lcssa = phi i32 [ %retval.0.i, %while.cond.outer.if.end44.preheader_crit_edge ], [ -1, %init_tb_struct.exit.if.end44.preheader_crit_edge ]
  %tail_pos.0.off0.ph.lcssa = phi i32 [ %phi.bo, %while.cond.outer.if.end44.preheader_crit_edge ], [ 0, %init_tb_struct.exit.if.end44.preheader_crit_edge ]
  %call359.lcssa = phi i8 [ %call359, %while.cond.outer.if.end44.preheader_crit_edge ], [ %call359481, %init_tb_struct.exit.if.end44.preheader_crit_edge ]
  br label %if.end44

while.cond:                                       ; preds = %if.end54
  %call = call fastcc zeroext i8 @prepare_for_delete_or_cut(ptr noundef %th, ptr noundef %inode, ptr noundef %path, ptr noundef %item_key, ptr noundef nonnull %removed, ptr noundef nonnull %cut_size, i64 noundef %new_file_size.addr.0.ph.lcssa)
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call, ptr %mode, align 1
  %cmp = icmp eq i8 %call, 118
  br i1 %cmp, label %while.cond.if.then16_crit_edge, label %while.cond.if.end44_crit_edge

while.cond.if.end44_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

while.cond.if.then16_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

do.body13:                                        ; preds = %while.cond.outer.do.body13_crit_edge, %init_tb_struct.exit.do.body13_crit_edge
  %ret_value.0.ph484 = phi i32 [ %retval.0.i, %while.cond.outer.do.body13_crit_edge ], [ 0, %init_tb_struct.exit.do.body13_crit_edge ]
  %new_file_size.addr.0.ph483 = phi i64 [ %sub27, %while.cond.outer.do.body13_crit_edge ], [ %new_file_size, %init_tb_struct.exit.do.body13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_value.0.ph484)
  %cmp14.not = icmp eq i32 %ret_value.0.ph484, 0
  br i1 %cmp14.not, label %do.end19, label %do.body13.if.then16_crit_edge

do.body13.if.then16_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.then16:                                        ; preds = %do.body13.if.then16_crit_edge, %while.cond.if.then16_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.27, i32 noundef 1691, ptr noundef nonnull @__func__.reiserfs_cut_from_item) #17
  unreachable

do.end19:                                         ; preds = %do.body13
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %20 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i248 = icmp eq i32 %21, 0
  br i1 %tobool.not.i248, label %do.body4.i249, label %do.body10.i, !prof !198

do.body4.i249:                                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #14, !srcloc !210
  unreachable

do.body10.i:                                      ; preds = %do.end19
  %22 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %new_file_size.addr.0.ph483)
  %cmp.not.i = icmp eq i64 %23, %new_file_size.addr.0.ph483
  br i1 %cmp.not.i, label %do.end26.i, label %do.body18.i, !prof !211

do.body18.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1568, 0\0A.popsection", ""() #14, !srcloc !212
  unreachable

do.end26.i:                                       ; preds = %do.body10.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_count.i, i32 noundef 4) #14
  %24 = ptrtoint ptr %i_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp27.i = icmp sgt i32 %25, 1
  br i1 %cmp27.i, label %do.end26.i.if.then163.i_crit_edge, label %lor.lhs.false.i

do.end26.i.if.then163.i_crit_edge:                ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false.i:                                  ; preds = %do.end26.i
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_mount_opt.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_size.i, align 8
  %s_blocksize33.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %s_blocksize33.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize33.i, align 16
  %sub.i = add i32 %35, -1
  %conv.i = zext i32 %sub.i to i64
  %and34.i = and i64 %33, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34.i)
  %tobool35.not.i = icmp eq i64 %and34.i, 0
  br i1 %tobool35.not.i, label %cond.true.i.if.then163.i_crit_edge, label %lor.lhs.false36.i

cond.true.i.if.then163.i_crit_edge:               ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false36.i:                                ; preds = %cond.true.i
  %sub48.i = add i32 %35, -120
  %conv49.i = zext i32 %sub48.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and34.i, i64 %conv49.i)
  %cmp50.i = icmp ugt i64 %and34.i, %conv49.i
  br i1 %cmp50.i, label %lor.lhs.false36.i.if.then163.i_crit_edge, label %lor.lhs.false52.i

lor.lhs.false36.i.if.then163.i_crit_edge:         ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false52.i:                                ; preds = %lor.lhs.false36.i
  %mul.i = shl i32 %35, 2
  %conv56.i = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv56.i)
  %cmp57.not.i = icmp slt i64 %33, %conv56.i
  br i1 %cmp57.not.i, label %lor.lhs.false59.i, label %lor.lhs.false52.i.if.then163.i_crit_edge

lor.lhs.false52.i.if.then163.i_crit_edge:         ; preds = %lor.lhs.false52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false59.i:                                ; preds = %lor.lhs.false52.i
  %mul63.i = mul i32 %35, 3
  %conv64.i = zext i32 %mul63.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv64.i)
  %cmp65.not.i = icmp slt i64 %33, %conv64.i
  br i1 %cmp65.not.i, label %lor.lhs.false59.i.lor.lhs.false82.i_crit_edge, label %land.lhs.true.i

lor.lhs.false59.i.lor.lhs.false82.i_crit_edge:    ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false82.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false59.i
  %div219.i = lshr i32 %sub48.i, 2
  %conv79.i = zext i32 %div219.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and34.i, i64 %conv79.i)
  %cmp80.not.i = icmp ult i64 %and34.i, %conv79.i
  br i1 %cmp80.not.i, label %land.lhs.true.i.lor.lhs.false82.i_crit_edge, label %land.lhs.true.i.if.then163.i_crit_edge

land.lhs.true.i.if.then163.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

land.lhs.true.i.lor.lhs.false82.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false82.i

lor.lhs.false82.i:                                ; preds = %land.lhs.true.i.lor.lhs.false82.i_crit_edge, %lor.lhs.false59.i.lor.lhs.false82.i_crit_edge
  %mul86.i = shl i32 %35, 1
  %conv87.i = zext i32 %mul86.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv87.i)
  %cmp88.not.i = icmp slt i64 %33, %conv87.i
  br i1 %cmp88.not.i, label %lor.lhs.false82.i.lor.lhs.false107.i_crit_edge, label %land.lhs.true90.i

lor.lhs.false82.i.lor.lhs.false107.i_crit_edge:   ; preds = %lor.lhs.false82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false107.i

land.lhs.true90.i:                                ; preds = %lor.lhs.false82.i
  %div103218.i = lshr i32 %sub48.i, 1
  %conv104.i = zext i32 %div103218.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and34.i, i64 %conv104.i)
  %cmp105.not.i = icmp ult i64 %and34.i, %conv104.i
  br i1 %cmp105.not.i, label %land.lhs.true90.i.lor.lhs.false107.i_crit_edge, label %land.lhs.true90.i.if.then163.i_crit_edge

land.lhs.true90.i.if.then163.i_crit_edge:         ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

land.lhs.true90.i.lor.lhs.false107.i_crit_edge:   ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false107.i

lor.lhs.false107.i:                               ; preds = %land.lhs.true90.i.lor.lhs.false107.i_crit_edge, %lor.lhs.false82.i.lor.lhs.false107.i_crit_edge
  %conv111.i = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %conv111.i)
  %cmp112.not.i = icmp slt i64 %33, %conv111.i
  br i1 %cmp112.not.i, label %lor.lhs.false157.i, label %land.lhs.true114.i

land.lhs.true114.i:                               ; preds = %lor.lhs.false107.i
  %mul127.i = add i32 %mul63.i, -360
  %div128217.i = lshr i32 %mul127.i, 2
  %conv129.i = zext i32 %div128217.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and34.i, i64 %conv129.i)
  %cmp130.not.i = icmp uge i64 %and34.i, %conv129.i
  %or.cond220.i = or i1 %tobool158.not.old.i, %cmp130.not.i
  br i1 %or.cond220.i, label %land.lhs.true114.i.if.then163.i_crit_edge, label %land.lhs.true114.i.lor.lhs.false159.i_crit_edge

land.lhs.true114.i.lor.lhs.false159.i_crit_edge:  ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false159.i

land.lhs.true114.i.if.then163.i_crit_edge:        ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

cond.false.i:                                     ; preds = %lor.lhs.false.i
  %and135.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %cond.false.i.if.then163.i_crit_edge, label %cond.true137.i

cond.false.i.if.then163.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

cond.true137.i:                                   ; preds = %cond.false.i
  %36 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_size.i, align 8
  %s_blocksize140.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %38 = ptrtoint ptr %s_blocksize140.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_blocksize140.i, align 16
  %sub141.i = add i32 %39, -1
  %conv142.i = zext i32 %sub141.i to i64
  %and143.i = and i64 %37, %conv142.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and143.i)
  %tobool144.not.i = icmp eq i64 %and143.i, 0
  br i1 %tobool144.not.i, label %cond.true137.i.if.then163.i_crit_edge, label %lor.lhs.false145.i

cond.true137.i.if.then163.i_crit_edge:            ; preds = %cond.true137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false145.i:                               ; preds = %cond.true137.i
  %sub152.i = add i32 %39, -120
  %conv153.i = zext i32 %sub152.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %conv153.i)
  %cmp154.i = icmp sgt i64 %37, %conv153.i
  %or.cond.i = or i1 %tobool158.not.old.i, %cmp154.i
  br i1 %or.cond.i, label %lor.lhs.false145.i.if.then163.i_crit_edge, label %lor.lhs.false145.i.lor.lhs.false159.i_crit_edge

lor.lhs.false145.i.lor.lhs.false159.i_crit_edge:  ; preds = %lor.lhs.false145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false159.i

lor.lhs.false145.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false157.i:                               ; preds = %lor.lhs.false107.i
  br i1 %tobool158.not.old.i, label %lor.lhs.false157.i.if.then163.i_crit_edge, label %lor.lhs.false157.i.lor.lhs.false159.i_crit_edge

lor.lhs.false157.i.lor.lhs.false159.i_crit_edge:  ; preds = %lor.lhs.false157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false159.i

lor.lhs.false157.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

lor.lhs.false159.i:                               ; preds = %lor.lhs.false157.i.lor.lhs.false159.i_crit_edge, %lor.lhs.false145.i.lor.lhs.false159.i_crit_edge, %land.lhs.true114.i.lor.lhs.false159.i_crit_edge
  %40 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_flags.i, align 8
  %and161.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  br i1 %tobool162.not.i, label %if.end170.i, label %lor.lhs.false159.i.if.then163.i_crit_edge

lor.lhs.false159.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false159.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then163.i

if.then163.i:                                     ; preds = %lor.lhs.false159.i.if.then163.i_crit_edge, %lor.lhs.false157.i.if.then163.i_crit_edge, %lor.lhs.false145.i.if.then163.i_crit_edge, %cond.true137.i.if.then163.i_crit_edge, %cond.false.i.if.then163.i_crit_edge, %land.lhs.true114.i.if.then163.i_crit_edge, %land.lhs.true90.i.if.then163.i_crit_edge, %land.lhs.true.i.if.then163.i_crit_edge, %lor.lhs.false52.i.if.then163.i_crit_edge, %lor.lhs.false36.i.if.then163.i_crit_edge, %cond.true.i.if.then163.i_crit_edge, %do.end26.i.if.then163.i_crit_edge
  %42 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 115, ptr %mode, align 1
  %sub165.i = add i32 %19, -1
  %43 = trunc i64 %new_file_size.addr.0.ph483 to i32
  %44 = and i32 %sub165.i, %43
  %conv169.i = sub i32 %19, %44
  %45 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i.i = icmp slt i32 %46, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp17.not.i.i = icmp eq i32 %46, 1
  br i1 %cmp17.not.i.i, label %while.cond.preheader.i.i.pathrelse.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.pathrelse.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit.i

if.then.i.i:                                      ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i.i:                                   ; preds = %brelse.exit.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %path_offset.08.i.i = phi i32 [ %dec.i.i, %brelse.exit.i.i.while.body.i.i_crit_edge ], [ %46, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %path_offset.08.i.i, -1
  %add.ptr.i222.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %path_offset.08.i.i
  %47 = ptrtoint ptr %add.ptr.i222.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i222.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

while.body.i.i.brelse.exit.i.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %48) #14
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %while.body.i.i.brelse.exit.i.i_crit_edge
  %cmp1.i.i = icmp ugt i32 %path_offset.08.i.i, 2
  br i1 %cmp1.i.i, label %brelse.exit.i.i.while.body.i.i_crit_edge, label %brelse.exit.i.i.pathrelse.exit.i_crit_edge

brelse.exit.i.i.pathrelse.exit.i_crit_edge:       ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit.i

brelse.exit.i.i.while.body.i.i_crit_edge:         ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

pathrelse.exit.i:                                 ; preds = %brelse.exit.i.i.pathrelse.exit.i_crit_edge, %while.cond.preheader.i.i.pathrelse.exit.i_crit_edge
  %49 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %path, align 4
  br label %maybe_indirect_to_direct.exit

if.end170.i:                                      ; preds = %lor.lhs.false159.i
  call void @__sanitizer_cov_trace_pc() #16
  %call171.i = call i32 @indirect2direct(ptr noundef %th, ptr noundef %inode, ptr noundef nonnull %page, ptr noundef %path, ptr noundef %item_key, i64 noundef %new_file_size.addr.0.ph483, ptr noundef nonnull %mode) #14
  br label %maybe_indirect_to_direct.exit

maybe_indirect_to_direct.exit:                    ; preds = %if.end170.i, %pathrelse.exit.i
  %retval.0.i = phi i32 [ %conv169.i, %pathrelse.exit.i ], [ %call171.i, %if.end170.i ]
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %51)
  %cmp22 = icmp eq i8 %51, 115
  br i1 %cmp22, label %maybe_indirect_to_direct.exit.cleanup_crit_edge, label %if.end25

maybe_indirect_to_direct.exit.cleanup_crit_edge:  ; preds = %maybe_indirect_to_direct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %maybe_indirect_to_direct.exit
  %52 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %k_type.i, align 8
  %53 = ptrtoint ptr %key_length to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %key_length, align 4
  %54 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %55, -1
  %conv26 = zext i32 %sub to i64
  %conv26.not = xor i64 %conv26, -1
  %sub27 = and i64 %new_file_size.addr.0.ph483, %conv26.not
  %add = add i64 %sub27, 1
  %56 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add, ptr %k_offset.i, align 8
  %call28 = call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef %item_key, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %while.cond.outer

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %path, align 4
  %add.ptr = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %58
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %pe_position = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %58, i32 1
  %61 = ptrtoint ptr %pe_position to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pe_position, align 4
  %sub36 = add i32 %62, -1
  %add42 = add i32 %62, 1
  call void (ptr, ...) @print_block(ptr noundef %60, i32 noundef 3, i32 noundef %sub36, i32 noundef %add42) #14
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.29, ptr noundef %item_key) #17
  unreachable

if.end44:                                         ; preds = %while.cond.if.end44_crit_edge, %if.end44.preheader
  %call361 = phi i8 [ %call, %while.cond.if.end44_crit_edge ], [ %call359.lcssa, %if.end44.preheader ]
  %63 = ptrtoint ptr %cut_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cut_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp45 = icmp eq i32 %64, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %65 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i = icmp slt i32 %66, 1
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp17.not.i = icmp eq i32 %66, 1
  br i1 %cmp17.not.i, label %while.cond.preheader.i.pathrelse.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.pathrelse.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %path_offset.08.i = phi i32 [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ], [ %66, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.08.i, -1
  %add.ptr.i250 = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %path_offset.08.i
  %67 = ptrtoint ptr %add.ptr.i250 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i250, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i251

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i

if.then.i.i251:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %68) #14
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i251, %while.body.i.brelse.exit.i_crit_edge
  %cmp1.i = icmp ugt i32 %path_offset.08.i, 2
  br i1 %cmp1.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.pathrelse.exit_crit_edge

brelse.exit.i.pathrelse.exit_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

pathrelse.exit:                                   ; preds = %brelse.exit.i.pathrelse.exit_crit_edge, %while.cond.preheader.i.pathrelse.exit_crit_edge
  %69 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %path, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %70 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %64, ptr %insert_size.i, align 4
  %conv49 = zext i8 %call361 to i32
  %call50 = call i32 @fix_nodes(i32 noundef %conv49, ptr noundef nonnull %s_cut_balance, ptr noundef null, ptr noundef null) #14
  %71 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call50, label %if.then65 [
    i32 -1, label %if.end54
    i32 0, label %do.body74
  ]

if.end54:                                         ; preds = %if.end48
  %72 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i, align 16
  %cut_from_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %73, i32 0, i32 27, i32 10
  %74 = ptrtoint ptr %cut_from_item_restarted to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cut_from_item_restarted, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %cut_from_item_restarted, align 4
  %call56 = call i32 @search_for_position_by_key(ptr noundef %1, ptr noundef %item_key, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call56)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %while.cond, label %if.end60

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.31, ptr noundef %item_key) #14
  call void @unfix_nodes(ptr noundef nonnull %s_cut_balance) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call56)
  %cmp61 = icmp eq i32 %call56, -2
  %cond = select i1 %cmp61, i32 -5, i32 -2
  br label %cleanup

if.then65:                                        ; preds = %if.end48
  br i1 %cmp360482, label %if.then67, label %if.then65.if.end68_crit_edge

if.then65.if.end68_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then67:                                        ; preds = %if.then65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tail_key.i) #14
  %76 = call ptr @memset(ptr %tail_key.i, i32 255, i32 32)
  %77 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i253 = icmp eq i32 %78, 0
  br i1 %tobool.not.i253, label %do.body4.i254, label %do.end9.i, !prof !198

do.body4.i254:                                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1603, 0\0A.popsection", ""() #14, !srcloc !213
  unreachable

do.end9.i:                                        ; preds = %if.then67
  %79 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %i_size.i, align 8
  %add.i = add i64 %80, 1
  call void @make_cpu_key(ptr noundef nonnull %tail_key.i, ptr noundef %inode, i64 noundef %add.i, i32 noundef 2, i32 noundef 4) #14
  %key_length.i = getelementptr inbounds %struct.cpu_key, ptr %tail_key.i, i32 0, i32 2
  %81 = ptrtoint ptr %key_length.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %key_length.i, align 4
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %tail_key.i, i32 0, i32 2
  %82 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %k_offset.i.i, align 8
  %84 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i257 = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %s_blocksize.i257 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %s_blocksize.i257, align 16
  %sub.i258 = add i32 %87, -1
  %88 = trunc i64 %83 to i32
  %89 = and i32 %sub.i258, %88
  %conv11.i = add i32 %89, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11.i)
  %tobool12.not70.i = icmp eq i32 %conv11.i, 0
  br i1 %tobool12.not70.i, label %do.end9.i.indirect_to_direct_roll_back.exit_crit_edge, label %while.body.lr.ph.i260

do.end9.i.indirect_to_direct_roll_back.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %indirect_to_direct_roll_back.exit

while.body.lr.ph.i260:                            ; preds = %do.end9.i
  %pos_in_item.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 3
  br label %while.body.i262

while.body.i262:                                  ; preds = %do.end38.i.while.body.i262_crit_edge, %while.body.lr.ph.i260
  %tail_len.071.i = phi i32 [ %conv11.i, %while.body.lr.ph.i260 ], [ %sub39.i, %do.end38.i.while.body.i262_crit_edge ]
  %90 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb, align 4
  %call14.i = call i32 @search_for_position_by_key(ptr noundef %91, ptr noundef nonnull %tail_key.i, ptr noundef %path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i261 = icmp eq i32 %call14.i, 0
  br i1 %cmp.i261, label %if.then16.i, label %do.body19.i

if.then16.i:                                      ; preds = %while.body.i262
  call void @__sanitizer_cov_trace_pc() #16
  %92 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %93, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.indirect_to_direct_roll_back, ptr noundef nonnull @.str.86) #17
  unreachable

do.body19.i:                                      ; preds = %while.body.i262
  %94 = ptrtoint ptr %pos_in_item.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pos_in_item.i, align 4
  %96 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %path, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %97
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i.i, align 4
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %97, i32 1
  %100 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pe_position.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %99, i32 0, i32 5
  %102 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %103, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %101
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %ih_item_len.i, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105) #14
  %conv21.i = zext i16 %106 to i32
  %sub22.i = add nsw i32 %conv21.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %sub22.i)
  %cmp23.not.i = icmp eq i32 %95, %sub22.i
  br i1 %cmp23.not.i, label %do.end28.i, label %if.then25.i

if.then25.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.indirect_to_direct_roll_back, ptr noundef nonnull @.str.87, i32 noundef 1618, ptr noundef nonnull @__func__.indirect_to_direct_roll_back) #17
  unreachable

do.end28.i:                                       ; preds = %do.body19.i
  %dec.i263 = add i32 %101, -1
  %107 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %dec.i263, ptr %pe_position.i.i, align 4
  %call29.i = call i32 @reiserfs_delete_item(ptr noundef %th, ptr noundef %path, ptr noundef nonnull %tail_key.i, ptr noundef %inode, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29.i)
  %cmp31.i = icmp slt i32 %call29.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tail_len.071.i, i32 %call29.i)
  %cmp33.i = icmp slt i32 %tail_len.071.i, %call29.i
  %or.cond.i264 = select i1 %cmp31.i, i1 true, i1 %cmp33.i
  br i1 %or.cond.i264, label %if.then35.i, label %do.end38.i

if.then35.i:                                      ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.indirect_to_direct_roll_back, ptr noundef nonnull @.str.88, i32 noundef 1627, ptr noundef nonnull @__func__.indirect_to_direct_roll_back, i32 noundef %tail_len.071.i, i32 noundef %call29.i) #17
  unreachable

do.end38.i:                                       ; preds = %do.end28.i
  %sub39.i = sub i32 %tail_len.071.i, %call29.i
  %108 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %k_offset.i.i, align 8
  %conv4166.i = zext i32 %call29.i to i64
  %sub42.i = sub i64 %109, %conv4166.i
  store i64 %sub42.i, ptr %k_offset.i.i, align 8
  %tobool12.not.i = icmp eq i32 %sub39.i, 0
  br i1 %tobool12.not.i, label %do.end38.i.indirect_to_direct_roll_back.exit_crit_edge, label %do.end38.i.while.body.i262_crit_edge

do.end38.i.while.body.i262_crit_edge:             ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i262

do.end38.i.indirect_to_direct_roll_back.exit_crit_edge: ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %indirect_to_direct_roll_back.exit

indirect_to_direct_roll_back.exit:                ; preds = %do.end38.i.indirect_to_direct_roll_back.exit_crit_edge, %do.end9.i.indirect_to_direct_roll_back.exit_crit_edge
  %110 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %111, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.indirect_to_direct_roll_back, ptr noundef nonnull @.str.90) #14
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tail_key.i) #14
  br label %if.end68

if.end68:                                         ; preds = %indirect_to_direct_roll_back.exit, %if.then65.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call50)
  %cmp69 = icmp eq i32 %call50, -3
  br i1 %cmp69, label %if.then71, label %if.end68.if.end72_crit_edge

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.33) #14
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge
  call void @unfix_nodes(ptr noundef nonnull %s_cut_balance) #14
  br label %cleanup

do.body74:                                        ; preds = %if.end48
  %112 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %mode, align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %113, label %cond.false [
    i8 112, label %do.body74.if.then81_crit_edge
    i8 105, label %do.body74.if.then81_crit_edge514
    i8 100, label %cond.true
  ]

do.body74.if.then81_crit_edge514:                 ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then81

do.body74.if.then81_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then81

if.then81:                                        ; preds = %do.body74.if.then81_crit_edge, %do.body74.if.then81_crit_edge514
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.34, i32 noundef 1777, ptr noundef nonnull @__func__.reiserfs_cut_from_item) #17
  unreachable

cond.true:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  %115 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %path, align 4
  %add.ptr.i266 = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %116
  %117 = ptrtoint ptr %add.ptr.i266 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i266, align 4
  %pe_position.i267 = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %116, i32 1
  %119 = ptrtoint ptr %pe_position.i267 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pe_position.i267, align 4
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 5
  %121 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %122, i32 24
  %arrayidx.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i, i32 %120
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %ih_item_len, align 1
  %125 = call i16 @llvm.bswap.i16(i16 %124)
  %conv89 = zext i16 %125 to i32
  br label %cond.end

cond.false:                                       ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %insert_size.i, align 4
  %sub92 = sub i32 0, %127
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond93 = phi i32 [ %conv89, %cond.true ], [ %sub92, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval2.0.ph.lcssa)
  %cmp94 = icmp eq i32 %retval2.0.ph.lcssa, -1
  br i1 %cmp94, label %if.then96, label %cond.end.if.end98_crit_edge

cond.end.if.end98_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then96:                                        ; preds = %cond.end
  %128 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tb_path.i, align 8
  %path_elements.i.i269 = getelementptr inbounds %struct.treepath, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add.ptr.i.i270 = getelementptr %struct.path_element, ptr %path_elements.i.i269, i32 %131
  %132 = ptrtoint ptr %add.ptr.i.i270 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i.i270, align 4
  %pe_position.i.i271 = getelementptr %struct.path_element, ptr %path_elements.i.i269, i32 %131, i32 1
  %134 = ptrtoint ptr %pe_position.i.i271 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pe_position.i.i271, align 4
  %b_data.i.i.i.i272 = getelementptr inbounds %struct.buffer_head, ptr %133, i32 0, i32 5
  %136 = ptrtoint ptr %b_data.i.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %b_data.i.i.i.i272, align 4
  %add.ptr.i.i.i.i273 = getelementptr i8, ptr %137, i32 24
  %arrayidx.i.i.i274 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i273, i32 %135
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i274, i32 0, i32 4
  %138 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %cmp.i.i.i.i = icmp eq i16 %139, 0
  %u.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i274, i32 0, i32 2
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %is_statdata_le_ih.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then96
  %k_uniqueness.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cond50.i = icmp eq i32 %141, 0
  br i1 %cond50.i, label %if.then.i.i.i.i.if.end98_crit_edge, label %if.then.i.i.i.i.if.end.i_crit_edge

if.then.i.i.i.i.if.end.i_crit_edge:               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i.i.i.i.if.end98_crit_edge:               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

is_statdata_le_ih.exit.i:                         ; preds = %if.then96
  %142 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %143 = load i64, ptr %u.i.i.i.i, align 1
  %144 = and i64 %143, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %phi.cmp1.i.i.not.i = icmp eq i64 %144, 0
  br i1 %phi.cmp1.i.i.not.i, label %is_statdata_le_ih.exit.i.if.end98_crit_edge, label %is_statdata_le_ih.exit.i.if.end.i_crit_edge

is_statdata_le_ih.exit.i.if.end.i_crit_edge:      ; preds = %is_statdata_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

is_statdata_le_ih.exit.i.if.end98_crit_edge:      ; preds = %is_statdata_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.end.i:                                         ; preds = %is_statdata_le_ih.exit.i.if.end.i_crit_edge, %if.then.i.i.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %113)
  %cmp.i275 = icmp eq i8 %113, 100
  br i1 %cmp.i275, label %cond.true.i277, label %cond.false.i280

cond.true.i277:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %ih_item_len.i276 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i274, i32 0, i32 2
  %145 = ptrtoint ptr %ih_item_len.i276 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %ih_item_len.i276, align 1
  %147 = call i16 @llvm.bswap.i16(i16 %146) #14
  %conv3.i = zext i16 %147 to i32
  br label %cond.end.i

cond.false.i280:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %insert_size.i, align 4
  %sub.i279 = sub i32 0, %149
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i280, %cond.true.i277
  %cond.i = phi i32 [ %conv3.i, %cond.true.i277 ], [ %sub.i279, %cond.false.i280 ]
  br i1 %cmp.i.i.i.i, label %is_direntry_le_ih.exit.i, label %is_direntry_le_ih.exit.thread.i

is_direntry_le_ih.exit.i:                         ; preds = %cond.end.i
  %k_uniqueness.i.i.i27.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %k_uniqueness.i.i.i27.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %k_uniqueness.i.i.i27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %151)
  %cond319 = icmp eq i32 %151, -16777217
  br i1 %cond319, label %is_direntry_le_ih.exit.i.if.then10.i_crit_edge, label %is_direntry_le_ih.exit.i.if.end98_crit_edge

is_direntry_le_ih.exit.i.if.end98_crit_edge:      ; preds = %is_direntry_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

is_direntry_le_ih.exit.i.if.then10.i_crit_edge:   ; preds = %is_direntry_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i

is_direntry_le_ih.exit.thread.i:                  ; preds = %cond.end.i
  %152 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %u.i.i.i.i, align 1
  %154 = and i64 %153, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %154)
  %cond320 = icmp eq i64 %154, 16
  br i1 %cond320, label %is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge, label %is_direntry_le_ih.exit.thread.i.if.end98_crit_edge

is_direntry_le_ih.exit.thread.i.if.end98_crit_edge: ; preds = %is_direntry_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge: ; preds = %is_direntry_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i

if.then10.i:                                      ; preds = %is_direntry_le_ih.exit.thread.i.if.then10.i_crit_edge, %is_direntry_le_ih.exit.i.if.then10.i_crit_edge
  %div23.i = lshr i32 %cond.i, 2
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %133, i32 0, i32 4
  %155 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %b_size.i, align 8
  %mul.i281 = mul i32 %156, %div23.i
  br label %if.end98

if.end98:                                         ; preds = %if.then10.i, %is_direntry_le_ih.exit.thread.i.if.end98_crit_edge, %is_direntry_le_ih.exit.i.if.end98_crit_edge, %is_statdata_le_ih.exit.i.if.end98_crit_edge, %if.then.i.i.i.i.if.end98_crit_edge, %cond.end.if.end98_crit_edge
  %ret_value.1 = phi i32 [ %retval2.0.ph.lcssa, %cond.end.if.end98_crit_edge ], [ 0, %is_statdata_le_ih.exit.i.if.end98_crit_edge ], [ %mul.i281, %if.then10.i ], [ 0, %if.then.i.i.i.i.if.end98_crit_edge ], [ %cond.i, %is_direntry_le_ih.exit.thread.i.if.end98_crit_edge ], [ %cond.i, %is_direntry_le_ih.exit.i.if.end98_crit_edge ]
  %157 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tb_path.i, align 8
  %path_elements.i283 = getelementptr inbounds %struct.treepath, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %inode, align 8
  %161 = and i16 %160, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %161)
  %cmp102 = icmp eq i16 %161, -24576
  br i1 %cmp102, label %if.end98.if.end124_crit_edge, label %land.lhs.true

if.end98.if.end124_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

land.lhs.true:                                    ; preds = %if.end98
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %158, align 4
  %add.ptr.i284 = getelementptr %struct.path_element, ptr %path_elements.i283, i32 %163
  %164 = ptrtoint ptr %add.ptr.i284 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i284, align 4
  %b_data.i.i.i286 = getelementptr inbounds %struct.buffer_head, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %b_data.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %b_data.i.i.i286, align 4
  %add.ptr.i.i.i287 = getelementptr i8, ptr %167, i32 24
  %pe_position.i285 = getelementptr %struct.path_element, ptr %path_elements.i283, i32 %163, i32 1
  %168 = ptrtoint ptr %pe_position.i285 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pe_position.i285, align 4
  %arrayidx.i.i288 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i287, i32 %169
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i288, i32 0, i32 4
  %170 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %cmp.i.i.i = icmp eq i16 %171, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i288, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direct_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true
  %172 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 8)
  %173 = load i64, ptr %u.i.i.i, align 1
  %174 = and i64 %173, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %174)
  %phi.cmp1.i.i = icmp eq i64 %174, 32
  br i1 %phi.cmp1.i.i, label %if.then106.thread, label %if.else.i.i.i.if.end124_crit_edge

if.else.i.i.i.if.end124_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

is_direct_le_ih.exit:                             ; preds = %land.lhs.true
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %176)
  %cond.i.i = icmp eq i32 %176, -1
  br i1 %cond.i.i, label %if.then106, label %is_direct_le_ih.exit.if.end124_crit_edge

is_direct_le_ih.exit.if.end124_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then106:                                       ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %113)
  %cmp108 = icmp eq i8 %113, 100
  br i1 %cmp108, label %cond.true.i.i, label %if.then106.if.end124_crit_edge

if.then106.if.end124_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then106.thread:                                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %113)
  %cmp108400 = icmp eq i8 %113, 100
  br i1 %cmp108400, label %cond.false.i.i, label %if.then106.thread.if.end124_crit_edge

if.then106.thread.if.end124_crit_edge:            ; preds = %if.then106.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

cond.true.i.i:                                    ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  %177 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %u.i.i.i, align 1
  %179 = call i32 @llvm.bswap.i32(i32 %178) #14
  %conv.i.i = zext i32 %179 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %if.then106.thread
  call void @__sanitizer_cov_trace_pc() #16
  %180 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 8)
  %181 = load i64, ptr %u.i.i.i, align 1
  %182 = and i64 %181, -241
  %183 = call i64 @llvm.bswap.i64(i64 %182) #14
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i292 = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %183, %cond.false.i.i ]
  %184 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %s_blocksize, align 16
  %sub113 = add i32 %185, -1
  %conv114 = zext i32 %sub113 to i64
  %and115 = and i64 %cond.i.i292, %conv114
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and115)
  %cmp116 = icmp eq i64 %and115, 1
  br i1 %cmp116, label %if.then118, label %le_ih_k_offset.exit.if.end124_crit_edge

le_ih_k_offset.exit.if.end124_crit_edge:          ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then118:                                       ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_first_direct_byte = getelementptr i8, ptr %inode, i32 -244
  %186 = ptrtoint ptr %i_first_direct_byte to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %i_first_direct_byte, align 4
  %187 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %s_blocksize, align 16
  %add121 = add i32 %188, 4
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %le_ih_k_offset.exit.if.end124_crit_edge, %if.then106.thread.if.end124_crit_edge, %if.then106.if.end124_crit_edge, %is_direct_le_ih.exit.if.end124_crit_edge, %if.else.i.i.i.if.end124_crit_edge, %if.end98.if.end124_crit_edge
  %quota_cut_bytes.0 = phi i32 [ %cond93, %if.end98.if.end124_crit_edge ], [ %add121, %if.then118 ], [ %cond93, %is_direct_le_ih.exit.if.end124_crit_edge ], [ 0, %le_ih_k_offset.exit.if.end124_crit_edge ], [ 0, %if.then106.if.end124_crit_edge ], [ %cond93, %if.else.i.i.i.if.end124_crit_edge ], [ 0, %if.then106.thread.if.end124_crit_edge ]
  br i1 %cmp360482, label %if.then126, label %if.end161.critedge

if.then126:                                       ; preds = %if.end124
  %189 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %158, align 4
  %add.ptr.i295 = getelementptr %struct.path_element, ptr %path_elements.i283, i32 %190
  %191 = ptrtoint ptr %add.ptr.i295 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr.i295, align 4
  %pe_position.i296 = getelementptr %struct.path_element, ptr %path_elements.i283, i32 %190, i32 1
  %193 = ptrtoint ptr %pe_position.i296 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pe_position.i296, align 4
  %b_data.i.i.i297 = getelementptr inbounds %struct.buffer_head, ptr %192, i32 0, i32 5
  %195 = ptrtoint ptr %b_data.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %b_data.i.i.i297, align 4
  %add.ptr.i.i.i298 = getelementptr i8, ptr %196, i32 24
  %arrayidx.i.i299 = getelementptr %struct.item_head, ptr %add.ptr.i.i.i298, i32 %194
  %ih_version.i300 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i299, i32 0, i32 4
  %197 = ptrtoint ptr %ih_version.i300 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %ih_version.i300, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %cmp.i.i.i301 = icmp eq i16 %198, 0
  %u.i.i.i302 = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i299, i32 0, i32 2
  br i1 %cmp.i.i.i301, label %is_indirect_le_ih.exit, label %if.else.i.i.i307

if.else.i.i.i307:                                 ; preds = %if.then126
  %199 = ptrtoint ptr %u.i.i.i302 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 8)
  %200 = load i64, ptr %u.i.i.i302, align 1
  %201 = and i64 %200, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %201)
  %phi.cmp1.i.i306 = icmp eq i64 %201, 16
  br i1 %phi.cmp1.i.i306, label %if.else.i.i.i307.if.end132_crit_edge, label %if.else.i.i.i307.if.then131_crit_edge

if.else.i.i.i307.if.then131_crit_edge:            ; preds = %if.else.i.i.i307
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then131

if.else.i.i.i307.if.end132_crit_edge:             ; preds = %if.else.i.i.i307
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132

is_indirect_le_ih.exit:                           ; preds = %if.then126
  %k_uniqueness.i.i.i303 = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i302, i32 0, i32 1
  %202 = ptrtoint ptr %k_uniqueness.i.i.i303 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %k_uniqueness.i.i.i303, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %203)
  %cond.i.i304 = icmp eq i32 %203, -16777217
  br i1 %cond.i.i304, label %is_indirect_le_ih.exit.if.end132_crit_edge, label %is_indirect_le_ih.exit.if.then131_crit_edge

is_indirect_le_ih.exit.if.then131_crit_edge:      ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then131

is_indirect_le_ih.exit.if.end132_crit_edge:       ; preds = %is_indirect_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132

if.then131:                                       ; preds = %is_indirect_le_ih.exit.if.then131_crit_edge, %if.else.i.i.i307.if.then131_crit_edge
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.36, ptr noundef %arrayidx.i.i299) #17
  unreachable

if.end132:                                        ; preds = %is_indirect_le_ih.exit.if.end132_crit_edge, %if.else.i.i.i307.if.end132_crit_edge
  %204 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %113, label %if.end132.if.then158.critedge_crit_edge [
    i8 100, label %land.lhs.true136
    i8 99, label %land.lhs.true146
  ]

if.end132.if.then158.critedge_crit_edge:          ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then158.critedge

land.lhs.true136:                                 ; preds = %if.end132
  %ih_item_len137 = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i299, i32 0, i32 2
  %205 = ptrtoint ptr %ih_item_len137 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %206 = load i16, ptr %ih_item_len137, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %206)
  %cmp139.not = icmp eq i16 %206, 1024
  br i1 %cmp139.not, label %land.lhs.true136.if.then158.critedge_crit_edge, label %if.then141

land.lhs.true136.if.then158.critedge_crit_edge:   ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then158.critedge

if.then141:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.38, ptr noundef %arrayidx.i.i299) #17
  unreachable

land.lhs.true146:                                 ; preds = %if.end132
  %207 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %insert_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %208)
  %cmp149.not = icmp eq i32 %208, -4
  br i1 %cmp149.not, label %land.lhs.true146.if.then158_crit_edge, label %if.then151

land.lhs.true146.if.then158_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then158

if.then151:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.reiserfs_cut_from_item, ptr noundef nonnull @.str.40, ptr noundef %arrayidx.i.i299, i32 noundef %208) #17
  unreachable

if.then158.critedge:                              ; preds = %land.lhs.true136.if.then158.critedge_crit_edge, %if.end132.if.then158.critedge_crit_edge
  %conv156.c = zext i8 %113 to i32
  br label %if.then158

if.then158:                                       ; preds = %if.then158.critedge, %land.lhs.true146.if.then158_crit_edge
  %.sink = phi i32 [ %conv156.c, %if.then158.critedge ], [ 99, %land.lhs.true146.if.then158_crit_edge ]
  call void @do_balance(ptr noundef nonnull %s_cut_balance, ptr noundef null, ptr noundef null, i32 noundef %.sink) #14
  br i1 %tobool158.not.old.i, label %if.then158.unmap_buffers.exit_crit_edge, label %if.then.i311

if.then158.unmap_buffers.exit_crit_edge:          ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #16
  br label %unmap_buffers.exit

if.then.i311:                                     ; preds = %if.then158
  %209 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %210)
  %cmp.i.not.i.i = icmp eq i32 %210, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i312, label %PagePrivate.exit.i, !prof !198

if.then.i.i312:                                   ; preds = %if.then.i311
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.91) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !214
  unreachable

PagePrivate.exit.i:                               ; preds = %if.then.i311
  %211 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %page, align 4
  %213 = and i32 %212, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool1.not.i = icmp eq i32 %213, 0
  br i1 %tobool1.not.i, label %PagePrivate.exit.i.unmap_buffers.exit_crit_edge, label %if.then2.i

PagePrivate.exit.i.unmap_buffers.exit_crit_edge:  ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unmap_buffers.exit

if.then2.i:                                       ; preds = %PagePrivate.exit.i
  %214 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %215)
  %cmp.i.not.i33.i = icmp eq i32 %215, -1
  br i1 %cmp.i.not.i33.i, label %if.then.i34.i, label %PagePrivate.exit37.i, !prof !198

if.then.i34.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dump_page(ptr noundef nonnull %page, ptr noundef nonnull @.str.91) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #14, !srcloc !214
  unreachable

PagePrivate.exit37.i:                             ; preds = %if.then2.i
  %216 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %page, align 4
  %218 = and i32 %217, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool4.not.i = icmp eq i32 %218, 0
  br i1 %tobool4.not.i, label %do.body9.i, label %do.end14.i, !prof !198

do.body9.i:                                       ; preds = %PagePrivate.exit37.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1534, 0\0A.popsection", ""() #14, !srcloc !215
  unreachable

do.end14.i:                                       ; preds = %PagePrivate.exit37.i
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %219 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %private.i, align 4
  %221 = inttoptr i32 %220 to ptr
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.end18.i.do.body15.i_crit_edge, %do.end14.i
  %cur_index.0.i = phi i32 [ 0, %do.end14.i ], [ %add.i315, %if.end18.i.do.body15.i_crit_edge ]
  %bh.0.i = phi ptr [ %221, %do.end14.i ], [ %223, %if.end18.i.do.body15.i_crit_edge ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %222 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %b_this_page.i, align 4
  %b_size.i314 = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 4
  %224 = ptrtoint ptr %b_size.i314 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %b_size.i314, align 8
  %add.i315 = add i32 %225, %cur_index.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i315, i32 %tail_pos.0.off0.ph.lcssa)
  %cmp.i316 = icmp ugt i32 %add.i315, %tail_pos.0.off0.ph.lcssa
  br i1 %cmp.i316, label %if.then17.i, label %do.body15.i.if.end18.i_crit_edge

do.body15.i.if.end18.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then17.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @reiserfs_unmap_buffer(ptr noundef %bh.0.i) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %do.body15.i.if.end18.i_crit_edge
  %cmp20.not.i = icmp eq ptr %223, %221
  br i1 %cmp20.not.i, label %if.end18.i.unmap_buffers.exit_crit_edge, label %if.end18.i.do.body15.i_crit_edge

if.end18.i.do.body15.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15.i

if.end18.i.unmap_buffers.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unmap_buffers.exit

unmap_buffers.exit:                               ; preds = %if.end18.i.unmap_buffers.exit_crit_edge, %PagePrivate.exit.i.unmap_buffers.exit_crit_edge, %if.then158.unmap_buffers.exit_crit_edge
  %226 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %i_flags.i, align 8
  %and160 = and i32 %227, -5
  store i32 %and160, ptr %i_flags.i, align 8
  br label %if.end161

if.end161.critedge:                               ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %conv156.c246 = zext i8 %113 to i32
  call void @do_balance(ptr noundef nonnull %s_cut_balance, ptr noundef null, ptr noundef null, i32 noundef %conv156.c246) #14
  br label %if.end161

if.end161:                                        ; preds = %if.end161.critedge, %unmap_buffers.exit
  %call162 = call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #14
  %conv163 = sext i32 %quota_cut_bytes.0 to i64
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %conv163, i32 noundef 0) #14
  call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call162) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %if.end72, %if.end60, %pathrelse.exit, %maybe_indirect_to_direct.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pathrelse.exit ], [ -5, %if.end72 ], [ %ret_value.1, %if.end161 ], [ %cond, %if.end60 ], [ %retval.0.i, %maybe_indirect_to_direct.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %removed) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cut_size) #14
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %s_cut_balance) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_block(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_cpu_key(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_transaction_should_end(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_inode_transaction(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_paste_into_item(ptr noundef %th, ptr noundef %search_path, ptr noundef %key, ptr noundef %inode, ptr noundef %body, i32 noundef %pasted_size) local_unnamed_addr #9 align 64 {
entry:
  %s_paste_balance = alloca %struct.tree_balance, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %s_paste_balance) #14
  %2 = call ptr @memset(ptr %s_paste_balance, i32 255, i32 456)
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %3 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !198

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2100, 0\0A.popsection", ""() #14, !srcloc !216
  unreachable

do.end10:                                         ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %6, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #14
  %7 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_generation_counter, align 4
  %call13 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #14
  %conv = sext i32 %pasted_size to i64
  %call.i = tail call i32 @__dquot_alloc_space(ptr noundef %inode, i64 noundef %conv, i32 noundef 1) #14
  tail call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %do.end10
  %9 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %search_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp17.not.i = icmp eq i32 %10, 1
  br i1 %cmp17.not.i, label %while.cond.preheader.i.pathrelse.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.pathrelse.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  br label %while.body.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %path_offset.08.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.08.i, -1
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %path_offset.08.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %12) #14
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %cmp1.i = icmp ugt i32 %path_offset.08.i, 2
  br i1 %cmp1.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.pathrelse.exit_crit_edge

brelse.exit.i.pathrelse.exit_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

pathrelse.exit:                                   ; preds = %brelse.exit.i.pathrelse.exit_crit_edge, %while.cond.preheader.i.pathrelse.exit_crit_edge
  %13 = ptrtoint ptr %search_path to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %search_path, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.end10
  %14 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.body4.i, label %init_tb_struct.exit, !prof !198

do.body4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #14, !srcloc !206
  unreachable

init_tb_struct.exit:                              ; preds = %if.end17
  %16 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %th, align 4
  %18 = call ptr @memset(ptr %s_paste_balance, i32 0, i32 432)
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %s_paste_balance, i32 0, i32 3
  %19 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %th, ptr %transaction_handle.i, align 4
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %s_paste_balance, i32 0, i32 2
  %20 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %tb_sb.i, align 8
  %tb_path.i = getelementptr inbounds %struct.tree_balance, ptr %s_paste_balance, i32 0, i32 4
  %21 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %search_path, ptr %tb_path.i, align 8
  %add.ptr.i86 = getelementptr %struct.treepath, ptr %search_path, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %add.ptr.i86, align 4
  %pe_position.i = getelementptr %struct.treepath, ptr %search_path, i32 0, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pe_position.i, align 4
  %insert_size.i = getelementptr inbounds %struct.tree_balance, ptr %s_paste_balance, i32 0, i32 18
  %24 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %pasted_size, ptr %insert_size.i, align 4
  %key18 = getelementptr inbounds %struct.tree_balance, ptr %s_paste_balance, i32 0, i32 35
  %25 = call ptr @memcpy(ptr %key18, ptr %key, i32 24)
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 16384
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %init_tb_struct.exit.reiserfs_cond_resched.exit_crit_edge, label %if.then.i87

init_tb_struct.exit.reiserfs_cond_resched.exit_crit_edge: ; preds = %init_tb_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit

if.then.i87:                                      ; preds = %init_tb_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %27) #14
  tail call void @schedule() #14
  tail call void @reiserfs_write_lock_nested(ptr noundef %27, i32 noundef %call1.i) #14
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i87, %init_tb_struct.exit.reiserfs_cond_resched.exit_crit_edge
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i88 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i88, align 16
  %s_generation_counter22 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %36, i32 0, i32 14
  %call.i.i85 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter22, i32 noundef 4) #14
  %37 = ptrtoint ptr %s_generation_counter22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %s_generation_counter22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %38)
  %cmp.not = icmp eq i32 %8, %38
  br i1 %cmp.not, label %reiserfs_cond_resched.exit.while.cond_crit_edge, label %reiserfs_cond_resched.exit.search_again_crit_edge

reiserfs_cond_resched.exit.search_again_crit_edge: ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_again

reiserfs_cond_resched.exit.while.cond_crit_edge:  ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.cond:                                       ; preds = %cond.false.i.while.cond_crit_edge, %lor.lhs.false48.i.while.cond_crit_edge, %is_indirect_le_ih.exit.thread.i.while.cond_crit_edge, %is_indirect_le_ih.exit.i.while.cond_crit_edge, %reiserfs_cond_resched.exit.while.cond_crit_edge
  %call28 = call i32 @fix_nodes(i32 noundef 112, ptr noundef nonnull %s_paste_balance, ptr noundef null, ptr noundef %body) #14
  %39 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call28, label %if.end47 [
    i32 -1, label %while.cond.search_again_crit_edge
    i32 0, label %if.then46
  ]

while.cond.search_again_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_again

search_again:                                     ; preds = %while.cond.search_again_crit_edge, %reiserfs_cond_resched.exit.search_again_crit_edge
  %40 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %th, align 4
  %s_fs_info.i89 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i89, align 16
  %paste_into_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %43, i32 0, i32 27, i32 9
  %44 = ptrtoint ptr %paste_into_item_restarted to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %paste_into_item_restarted, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %paste_into_item_restarted, align 4
  %46 = load ptr, ptr %th, align 4
  %call34 = call i32 @search_for_position_by_key(ptr noundef %46, ptr noundef %key, ptr noundef %search_path)
  %47 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call34, label %if.end43 [
    i32 -2, label %search_again.error_out_crit_edge
    i32 1, label %if.then41
  ]

search_again.error_out_crit_edge:                 ; preds = %search_again
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.then41:                                        ; preds = %search_again
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %49, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.reiserfs_paste_into_item, ptr noundef nonnull @.str.50, ptr noundef %key) #14
  br label %error_out

if.end43:                                         ; preds = %search_again
  %path_elements.i.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 2
  %50 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %search_path, align 4
  %add.ptr.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %51
  %52 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i.i, align 4
  %pe_position.i.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %51, i32 1
  %54 = ptrtoint ptr %pe_position.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pe_position.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 24
  %arrayidx.i.i.i = getelementptr %struct.item_head, ptr %add.ptr.i.i.i.i, i32 %55
  %ih_version.i.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp.i.i.i.i = icmp eq i16 %59, 0
  %u.i.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %arrayidx.i.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i.i, label %is_direct_le_ih.exit.i, label %is_direct_le_ih.exit.thread.i

is_direct_le_ih.exit.i:                           ; preds = %if.end43
  %k_uniqueness.i.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %k_uniqueness.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %k_uniqueness.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cond.i.i.not.i = icmp eq i32 %61, -1
  br i1 %cond.i.i.not.i, label %sw.bb2.i.i.i.i, label %is_direct_le_ih.exit.i.if.end22.i_crit_edge

is_direct_le_ih.exit.i.if.end22.i_crit_edge:      ; preds = %is_direct_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

is_direct_le_ih.exit.thread.i:                    ; preds = %if.end43
  %62 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %u.i.i.i.i, align 1
  %64 = and i64 %63, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %64)
  %phi.cmp1.i.i.not.i = icmp eq i64 %64, 32
  br i1 %phi.cmp1.i.i.not.i, label %if.else.i.i.i, label %is_direct_le_ih.exit.thread.i.if.end22.i_crit_edge

is_direct_le_ih.exit.thread.i.if.end22.i_crit_edge: ; preds = %is_direct_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

sw.bb2.i.i.i.i:                                   ; preds = %is_direct_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %u.i.i.i.i, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66) #14
  %conv.i.i.i = zext i32 %67 to i64
  br label %le_ih_k_type.exit.i

if.else.i.i.i:                                    ; preds = %is_direct_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %68 = and i64 %63, -241
  %69 = call i64 @llvm.bswap.i64(i64 %68) #14
  %70 = trunc i64 %63 to i32
  %71 = lshr i32 %70, 4
  %conv1.i.i.i.i = and i32 %71, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i.i)
  %cmp.i.i.i91.i = icmp ult i32 %conv1.i.i.i.i, 4
  %narrow.i.i.i = select i1 %cmp.i.i.i91.i, i32 %conv1.i.i.i.i, i32 15
  br label %le_ih_k_type.exit.i

le_ih_k_type.exit.i:                              ; preds = %if.else.i.i.i, %sw.bb2.i.i.i.i
  %cond.i.i87147.i = phi i64 [ %69, %if.else.i.i.i ], [ %conv.i.i.i, %sw.bb2.i.i.i.i ]
  %retval.0.in.i.i.i = phi i32 [ %narrow.i.i.i, %if.else.i.i.i ], [ 2, %sw.bb2.i.i.i.i ]
  %arrayidx.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 4
  %76 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %b_size.i, align 8
  %call4.i = call i32 %75(ptr noundef %arrayidx.i.i.i, i32 noundef %77) #14
  %conv.i = sext i32 %call4.i to i64
  %add.i = add nsw i64 %cond.i.i87147.i, %conv.i
  %k_offset.i.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %78 = ptrtoint ptr %k_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %k_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %79)
  %cmp.not.i = icmp eq i64 %add.i, %79
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %le_ih_k_type.exit.i.if.then20.i_crit_edge

le_ih_k_type.exit.i.if.then20.i_crit_edge:        ; preds = %le_ih_k_type.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %le_ih_k_type.exit.i
  %80 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp.i.i93.i = icmp eq i16 %81, 0
  br i1 %cmp.i.i93.i, label %if.then.i.i96.i, label %if.else.i.i104.i

if.then.i.i96.i:                                  ; preds = %lor.lhs.false.i
  %k_uniqueness.i.i95.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %k_uniqueness.i.i95.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %k_uniqueness.i.i95.i, align 1
  %84 = call i32 @llvm.bswap.i32(i32 %83) #14
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %84, label %sw.default.i.i.i100.i [
    i32 0, label %if.then.i.i96.i.le_ih_k_type.exit107.i_crit_edge
    i32 -2, label %sw.bb1.i.i.i97.i
    i32 -1, label %sw.bb2.i.i.i98.i
    i32 500, label %sw.bb3.i.i.i99.i
  ]

if.then.i.i96.i.le_ih_k_type.exit107.i_crit_edge: ; preds = %if.then.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit107.i

sw.bb1.i.i.i97.i:                                 ; preds = %if.then.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit107.i

sw.bb2.i.i.i98.i:                                 ; preds = %if.then.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit107.i

sw.bb3.i.i.i99.i:                                 ; preds = %if.then.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit107.i

sw.default.i.i.i100.i:                            ; preds = %if.then.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %le_ih_k_type.exit107.i

if.else.i.i104.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %u.i.i.i.i, align 1
  %88 = trunc i64 %87 to i32
  %89 = lshr i32 %88, 4
  %conv1.i.i.i101.i = and i32 %89, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i101.i)
  %cmp.i.i.i102.i = icmp ult i32 %conv1.i.i.i101.i, 4
  %narrow.i.i103.i = select i1 %cmp.i.i.i102.i, i32 %conv1.i.i.i101.i, i32 15
  br label %le_ih_k_type.exit107.i

le_ih_k_type.exit107.i:                           ; preds = %if.else.i.i104.i, %sw.default.i.i.i100.i, %sw.bb3.i.i.i99.i, %sw.bb2.i.i.i98.i, %sw.bb1.i.i.i97.i, %if.then.i.i96.i.le_ih_k_type.exit107.i_crit_edge
  %retval.0.in.i.i105.i = phi i32 [ %narrow.i.i103.i, %if.else.i.i104.i ], [ 15, %sw.default.i.i.i100.i ], [ 3, %sw.bb3.i.i.i99.i ], [ 2, %sw.bb2.i.i.i98.i ], [ 1, %sw.bb1.i.i.i97.i ], [ %84, %if.then.i.i96.i.le_ih_k_type.exit107.i_crit_edge ]
  %arrayidx9.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i105.i
  %90 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx9.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %94 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %search_path, align 4
  %add.ptr14.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %95
  %96 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr14.i, align 4
  %b_size16.i = getelementptr inbounds %struct.buffer_head, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %b_size16.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %b_size16.i, align 8
  %call17.i = call i32 %93(ptr noundef %arrayidx.i.i.i, i32 noundef %99) #14
  %pos_in_item.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %100 = ptrtoint ptr %pos_in_item.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pos_in_item.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i, i32 %101)
  %cmp18.not.i = icmp eq i32 %call17.i, %101
  br i1 %cmp18.not.i, label %le_ih_k_type.exit107.i.if.end22.i_crit_edge, label %le_ih_k_type.exit107.i.if.then20.i_crit_edge

le_ih_k_type.exit107.i.if.then20.i_crit_edge:     ; preds = %le_ih_k_type.exit107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20.i

le_ih_k_type.exit107.i.if.end22.i_crit_edge:      ; preds = %le_ih_k_type.exit107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.then20.i:                                      ; preds = %le_ih_k_type.exit107.i.if.then20.i_crit_edge, %le_ih_k_type.exit.i.if.then20.i_crit_edge
  %pos_in_item21.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %102 = ptrtoint ptr %pos_in_item21.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pos_in_item21.i, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.check_research_for_paste, ptr noundef nonnull @.str.95, ptr noundef %arrayidx.i.i.i, i32 noundef %103, ptr noundef %key) #17
  unreachable

if.end22.i:                                       ; preds = %le_ih_k_type.exit107.i.if.end22.i_crit_edge, %is_direct_le_ih.exit.thread.i.if.end22.i_crit_edge, %is_direct_le_ih.exit.i.if.end22.i_crit_edge
  %104 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp.i.i.i109.i = icmp eq i16 %105, 0
  br i1 %cmp.i.i.i109.i, label %is_indirect_le_ih.exit.i, label %is_indirect_le_ih.exit.thread.i

is_indirect_le_ih.exit.i:                         ; preds = %if.end22.i
  %k_uniqueness.i.i.i111.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %k_uniqueness.i.i.i111.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %k_uniqueness.i.i.i111.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %107)
  %cond.i.i112.not.i = icmp eq i32 %107, -16777217
  br i1 %cond.i.i112.not.i, label %sw.bb1.i.i.i131.i, label %is_indirect_le_ih.exit.i.while.cond_crit_edge

is_indirect_le_ih.exit.i.while.cond_crit_edge:    ; preds = %is_indirect_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

is_indirect_le_ih.exit.thread.i:                  ; preds = %if.end22.i
  %108 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %u.i.i.i.i, align 1
  %110 = and i64 %109, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %110)
  %phi.cmp1.i.i114.not.i = icmp eq i64 %110, 16
  br i1 %phi.cmp1.i.i114.not.i, label %if.else.i.i138.i, label %is_indirect_le_ih.exit.thread.i.while.cond_crit_edge

is_indirect_le_ih.exit.thread.i.while.cond_crit_edge: ; preds = %is_indirect_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

sw.bb1.i.i.i131.i:                                ; preds = %is_indirect_le_ih.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %111 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %u.i.i.i.i, align 1
  %113 = call i32 @llvm.bswap.i32(i32 %112) #14
  %conv.i.i121.i = zext i32 %113 to i64
  br label %le_ih_k_type.exit141.i

if.else.i.i138.i:                                 ; preds = %is_indirect_le_ih.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %114 = and i64 %109, -241
  %115 = call i64 @llvm.bswap.i64(i64 %114) #14
  %116 = trunc i64 %109 to i32
  %117 = lshr i32 %116, 4
  %conv1.i.i.i135.i = and i32 %117, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1.i.i.i135.i)
  %cmp.i.i.i136.i = icmp ult i32 %conv1.i.i.i135.i, 4
  %narrow.i.i137.i = select i1 %cmp.i.i.i136.i, i32 %conv1.i.i.i135.i, i32 15
  br label %le_ih_k_type.exit141.i

le_ih_k_type.exit141.i:                           ; preds = %if.else.i.i138.i, %sw.bb1.i.i.i131.i
  %cond.i.i124153.i = phi i64 [ %115, %if.else.i.i138.i ], [ %conv.i.i121.i, %sw.bb1.i.i.i131.i ]
  %retval.0.in.i.i139.i = phi i32 [ %narrow.i.i137.i, %if.else.i.i138.i ], [ 1, %sw.bb1.i.i.i131.i ]
  %arrayidx29.i = getelementptr [16 x ptr], ptr @item_ops, i32 0, i32 %retval.0.in.i.i139.i
  %118 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx29.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %122 = ptrtoint ptr %search_path to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %search_path, align 4
  %add.ptr34.i = getelementptr %struct.path_element, ptr %path_elements.i.i, i32 %123
  %124 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr34.i, align 4
  %b_size36.i = getelementptr inbounds %struct.buffer_head, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %b_size36.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %b_size36.i, align 8
  %call37.i = call i32 %121(ptr noundef %arrayidx.i.i.i, i32 noundef %127) #14
  %conv38.i = sext i32 %call37.i to i64
  %add39.i = add nsw i64 %cond.i.i124153.i, %conv38.i
  %k_offset.i142.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %128 = ptrtoint ptr %k_offset.i142.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %k_offset.i142.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add39.i, i64 %129)
  %cmp41.not.i = icmp eq i64 %add39.i, %129
  br i1 %cmp41.not.i, label %lor.lhs.false43.i, label %le_ih_k_type.exit141.i.if.then55.i_crit_edge

le_ih_k_type.exit141.i.if.then55.i_crit_edge:     ; preds = %le_ih_k_type.exit141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

lor.lhs.false43.i:                                ; preds = %le_ih_k_type.exit141.i
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 2
  %130 = ptrtoint ptr %ih_item_len.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %ih_item_len.i, align 1
  %132 = call i16 @llvm.bswap.i16(i16 %131) #14
  %133 = lshr i16 %132, 2
  %div.i = zext i16 %133 to i32
  %pos_in_item45.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %134 = ptrtoint ptr %pos_in_item45.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pos_in_item45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %div.i)
  %cmp46.not.i = icmp eq i32 %135, %div.i
  br i1 %cmp46.not.i, label %lor.lhs.false48.i, label %lor.lhs.false43.i.if.then55.i_crit_edge

lor.lhs.false43.i.if.then55.i_crit_edge:          ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

lor.lhs.false48.i:                                ; preds = %lor.lhs.false43.i
  %136 = ptrtoint ptr %ih_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %ih_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %137)
  %cmp50.i = icmp eq i16 %137, 256
  br i1 %cmp50.i, label %lor.lhs.false48.i.while.cond_crit_edge, label %cond.false.i

lor.lhs.false48.i.while.cond_crit_edge:           ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

cond.false.i:                                     ; preds = %lor.lhs.false48.i
  %u.i = getelementptr inbounds %struct.item_head, ptr %arrayidx.i.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %phi.cmp.i = icmp eq i16 %139, 0
  br i1 %phi.cmp.i, label %cond.false.i.while.cond_crit_edge, label %cond.false.i.if.then55.i_crit_edge

cond.false.i.if.then55.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55.i

cond.false.i.while.cond_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then55.i:                                      ; preds = %cond.false.i.if.then55.i_crit_edge, %lor.lhs.false43.i.if.then55.i_crit_edge, %le_ih_k_type.exit141.i.if.then55.i_crit_edge
  %pos_in_item56.i = getelementptr inbounds %struct.treepath, ptr %search_path, i32 0, i32 3
  %140 = ptrtoint ptr %pos_in_item56.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pos_in_item56.i, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.check_research_for_paste, ptr noundef nonnull @.str.97, ptr noundef %arrayidx.i.i.i, i32 noundef %141, ptr noundef %key) #17
  unreachable

if.then46:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @do_balance(ptr noundef nonnull %s_paste_balance, ptr noundef null, ptr noundef %body, i32 noundef 112) #14
  br label %cleanup

if.end47:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call28)
  %cmp48 = icmp eq i32 %call28, -3
  %cond = select i1 %cmp48, i32 -28, i32 -5
  br label %error_out

error_out:                                        ; preds = %if.end47, %if.then41, %search_again.error_out_crit_edge
  %retval1.0 = phi i32 [ -17, %if.then41 ], [ %cond, %if.end47 ], [ -5, %search_again.error_out_crit_edge ]
  call void @unfix_nodes(ptr noundef nonnull %s_paste_balance) #14
  %call50 = call i32 @reiserfs_write_unlock_nested(ptr noundef %1) #14
  call void @__dquot_free_space(ptr noundef %inode, i64 noundef %conv, i32 noundef 0) #14
  call void @reiserfs_write_lock_nested(ptr noundef %1, i32 noundef %call50) #14
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.then46, %pathrelse.exit
  %retval.0 = phi i32 [ %call.i, %pathrelse.exit ], [ %retval1.0, %error_out ], [ 0, %if.then46 ]
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %s_paste_balance) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_insert_item(ptr noundef %th, ptr noundef %path, ptr noundef %key, ptr noundef %ih, ptr noundef %inode, ptr noundef %body) local_unnamed_addr #9 align 64 {
entry:
  %s_ins_balance = alloca %struct.tree_balance, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %s_ins_balance) #14
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %0 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !198

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2195, 0\0A.popsection", ""() #14, !srcloc !217
  unreachable

do.end10:                                         ; preds = %entry
  %tobool11.not = icmp eq ptr %inode, null
  br i1 %tobool11.not, label %do.end10.init_tb_struct.exit_crit_edge, label %if.then12

do.end10.init_tb_struct.exit_crit_edge:           ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_tb_struct.exit

if.then12:                                        ; preds = %do.end10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_generation_counter = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter, i32 noundef 4) #14
  %6 = ptrtoint ptr %s_generation_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_generation_counter, align 4
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %8 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %ih_item_len, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %inode, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %13)
  %cmp = icmp eq i16 %13, -24576
  br i1 %cmp, label %if.then12.if.end20_crit_edge, label %land.lhs.true

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then12
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %14 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, 0
  %u.i.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %ih, i32 0, i32 2
  br i1 %cmp.i.i.i, label %is_direct_le_ih.exit, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true
  %16 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %u.i.i.i, align 1
  %18 = and i64 %17, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %18)
  %phi.cmp1.i.i = icmp eq i64 %18, 32
  br i1 %phi.cmp1.i.i, label %if.else.i.i.i.if.then18_crit_edge, label %if.else.i.i.i.if.end20_crit_edge

if.else.i.i.i.if.end20_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else.i.i.i.if.then18_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

is_direct_le_ih.exit:                             ; preds = %land.lhs.true
  %k_uniqueness.i.i.i = getelementptr inbounds %struct.offset_v1, ptr %u.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %k_uniqueness.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %k_uniqueness.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cond.i.i = icmp eq i32 %20, -1
  br i1 %cond.i.i, label %is_direct_le_ih.exit.if.then18_crit_edge, label %is_direct_le_ih.exit.if.end20_crit_edge

is_direct_le_ih.exit.if.end20_crit_edge:          ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

is_direct_le_ih.exit.if.then18_crit_edge:         ; preds = %is_direct_le_ih.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.then18:                                        ; preds = %is_direct_le_ih.exit.if.then18_crit_edge, %if.else.i.i.i.if.then18_crit_edge
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize, align 16
  %add = add i32 %24, 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %is_direct_le_ih.exit.if.end20_crit_edge, %if.else.i.i.i.if.end20_crit_edge, %if.then12.if.end20_crit_edge
  %quota_bytes.0 = phi i32 [ %conv, %if.then12.if.end20_crit_edge ], [ %add, %if.then18 ], [ %conv, %is_direct_le_ih.exit.if.end20_crit_edge ], [ %conv, %if.else.i.i.i.if.end20_crit_edge ]
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %call22 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %26) #14
  %conv23 = sext i32 %quota_bytes.0 to i64
  %call.i = tail call i32 @__dquot_alloc_space(ptr noundef nonnull %inode, i64 noundef %conv23, i32 noundef 1) #14
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock_nested(ptr noundef %28, i32 noundef %call22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end20
  %29 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp slt i32 %30, 1
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp17.not.i = icmp eq i32 %30, 1
  br i1 %cmp17.not.i, label %while.cond.preheader.i.pathrelse.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.pathrelse.exit_crit_edge:  ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %path_elements.i = getelementptr inbounds %struct.treepath, ptr %path, i32 0, i32 2
  br label %while.body.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.pathrelse, ptr noundef nonnull @.str.6, i32 noundef 382, ptr noundef nonnull @__func__.pathrelse) #17
  unreachable

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %path_offset.08.i = phi i32 [ %30, %while.body.lr.ph.i ], [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %path_offset.08.i, -1
  %add.ptr.i = getelementptr %struct.path_element, ptr %path_elements.i, i32 %path_offset.08.i
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %32) #14
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %cmp1.i = icmp ugt i32 %path_offset.08.i, 2
  br i1 %cmp1.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.pathrelse.exit_crit_edge

brelse.exit.i.pathrelse.exit_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pathrelse.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

pathrelse.exit:                                   ; preds = %brelse.exit.i.pathrelse.exit_crit_edge, %while.cond.preheader.i.pathrelse.exit_crit_edge
  %33 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %path, align 4
  br label %cleanup76

if.end29:                                         ; preds = %if.end20
  %34 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.body4.i, label %if.end29.init_tb_struct.exit_crit_edge, !prof !198

if.end29.init_tb_struct.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_tb_struct.exit

do.body4.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/stree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #14, !srcloc !206
  unreachable

init_tb_struct.exit:                              ; preds = %if.end29.init_tb_struct.exit_crit_edge, %do.end10.init_tb_struct.exit_crit_edge
  %quota_bytes.1124 = phi i32 [ %quota_bytes.0, %if.end29.init_tb_struct.exit_crit_edge ], [ 0, %do.end10.init_tb_struct.exit_crit_edge ]
  %fs_gen.0123 = phi i32 [ %7, %if.end29.init_tb_struct.exit_crit_edge ], [ 0, %do.end10.init_tb_struct.exit_crit_edge ]
  %ih_item_len30 = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %35 = ptrtoint ptr %ih_item_len30 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ih_item_len30, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv31 = zext i16 %37 to i32
  %add32 = add nuw nsw i32 %conv31, 24
  %38 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %th, align 4
  %40 = call ptr @memset(ptr %s_ins_balance, i32 0, i32 432)
  %transaction_handle.i = getelementptr inbounds %struct.tree_balance, ptr %s_ins_balance, i32 0, i32 3
  %41 = ptrtoint ptr %transaction_handle.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %th, ptr %transaction_handle.i, align 4
  %tb_sb.i = getelementptr inbounds %struct.tree_balance, ptr %s_ins_balance, i32 0, i32 2
  %42 = ptrtoint ptr %tb_sb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %tb_sb.i, align 8
  %tb_path.i = getelementptr inbounds %struct.tree_balance, ptr %s_ins_balance, i32 0, i32 4
  %43 = ptrtoint ptr %tb_path.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %path, ptr %tb_path.i, align 8
  %add.ptr.i116 = getelementptr %struct.treepath, ptr %path, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %add.ptr.i116, align 4
  %pe_position.i = getelementptr %struct.treepath, ptr %path, i32 0, i32 2, i32 1, i32 1
  %45 = ptrtoint ptr %pe_position.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %pe_position.i, align 4
  %insert_size.i = getelementptr inbounds %struct.tree_balance, ptr %s_ins_balance, i32 0, i32 18
  %46 = ptrtoint ptr %insert_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add32, ptr %insert_size.i, align 4
  %key33 = getelementptr inbounds %struct.tree_balance, ptr %s_ins_balance, i32 0, i32 35
  %47 = call ptr @memcpy(ptr %key33, ptr %key, i32 24)
  br i1 %tobool11.not, label %init_tb_struct.exit.while.cond_crit_edge, label %land.lhs.true35

init_tb_struct.exit.while.cond_crit_edge:         ; preds = %init_tb_struct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

land.lhs.true35:                                  ; preds = %init_tb_struct.exit
  %i_sb36 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb36, align 4
  %50 = tail call i32 @llvm.read_register.i32(metadata !187) #14
  %and.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 16384
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i, label %land.lhs.true35.reiserfs_cond_resched.exit_crit_edge, label %if.then.i117

land.lhs.true35.reiserfs_cond_resched.exit_crit_edge: ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %reiserfs_cond_resched.exit

if.then.i117:                                     ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %49) #14
  tail call void @schedule() #14
  tail call void @reiserfs_write_lock_nested(ptr noundef %49, i32 noundef %call1.i) #14
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i117, %land.lhs.true35.reiserfs_cond_resched.exit_crit_edge
  %55 = ptrtoint ptr %i_sb36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb36, align 4
  %s_fs_info.i118 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %57 = ptrtoint ptr %s_fs_info.i118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i118, align 16
  %s_generation_counter39 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %58, i32 0, i32 14
  %call.i.i115 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_generation_counter39, i32 noundef 4) #14
  %59 = ptrtoint ptr %s_generation_counter39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %s_generation_counter39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fs_gen.0123, i32 %60)
  %cmp41.not = icmp eq i32 %fs_gen.0123, %60
  br i1 %cmp41.not, label %reiserfs_cond_resched.exit.while.cond_crit_edge, label %reiserfs_cond_resched.exit.search_again_crit_edge

reiserfs_cond_resched.exit.search_again_crit_edge: ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_again

reiserfs_cond_resched.exit.while.cond_crit_edge:  ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.cond:                                       ; preds = %search_again.while.cond_crit_edge, %reiserfs_cond_resched.exit.while.cond_crit_edge, %init_tb_struct.exit.while.cond_crit_edge
  %call46 = call i32 @fix_nodes(i32 noundef 105, ptr noundef nonnull %s_ins_balance, ptr noundef %ih, ptr noundef %body) #14
  %61 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %call46, label %if.end65 [
    i32 -1, label %while.cond.search_again_crit_edge
    i32 0, label %if.then64
  ]

while.cond.search_again_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_again

search_again:                                     ; preds = %while.cond.search_again_crit_edge, %reiserfs_cond_resched.exit.search_again_crit_edge
  %62 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %th, align 4
  %s_fs_info.i119 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i119, align 16
  %insert_item_restarted = getelementptr inbounds %struct.reiserfs_sb_info, ptr %65, i32 0, i32 27, i32 8
  %66 = ptrtoint ptr %insert_item_restarted to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %insert_item_restarted, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %insert_item_restarted, align 4
  %68 = load ptr, ptr %th, align 4
  %call52 = call i32 @search_by_key(ptr noundef %68, ptr noundef %key, ptr noundef %path, i32 noundef 1)
  %69 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %call52, label %search_again.while.cond_crit_edge [
    i32 -2, label %search_again.error_out_crit_edge
    i32 1, label %if.then59
  ]

search_again.error_out_crit_edge:                 ; preds = %search_again
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

search_again.while.cond_crit_edge:                ; preds = %search_again
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then59:                                        ; preds = %search_again
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %th, align 4
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %71, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.reiserfs_insert_item, ptr noundef nonnull @.str.52, ptr noundef %key) #14
  br label %error_out

if.then64:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @do_balance(ptr noundef nonnull %s_ins_balance, ptr noundef %ih, ptr noundef %body, i32 noundef 105) #14
  br label %cleanup76

if.end65:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call46)
  %cmp66 = icmp eq i32 %call46, -3
  %cond = select i1 %cmp66, i32 -28, i32 -5
  br label %error_out

error_out:                                        ; preds = %if.end65, %if.then59, %search_again.error_out_crit_edge
  %retval1.0 = phi i32 [ -17, %if.then59 ], [ %cond, %if.end65 ], [ -5, %search_again.error_out_crit_edge ]
  call void @unfix_nodes(ptr noundef nonnull %s_ins_balance) #14
  br i1 %tobool11.not, label %error_out.cleanup76_crit_edge, label %if.then69

error_out.cleanup76_crit_edge:                    ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup76

if.then69:                                        ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb71 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb71, align 4
  %call72 = call i32 @reiserfs_write_unlock_nested(ptr noundef %73) #14
  %conv73 = sext i32 %quota_bytes.1124 to i64
  call void @__dquot_free_space(ptr noundef nonnull %inode, i64 noundef %conv73, i32 noundef 0) #14
  %74 = ptrtoint ptr %i_sb71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb71, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %75, i32 noundef %call72) #14
  br label %cleanup76

cleanup76:                                        ; preds = %if.then69, %error_out.cleanup76_crit_edge, %if.then64, %pathrelse.exit
  %retval.1 = phi i32 [ 0, %if.then64 ], [ %call.i, %pathrelse.exit ], [ %retval1.0, %if.then69 ], [ %retval1.0, %error_out.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %s_ins_balance) #14
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_free_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indirect2direct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_unmap_buffer(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_update_sd_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { noreturn nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !24, !26, !28, !30, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !109, !111, !113, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !159, !160, !162, !163, !165, !166, !167, !169, !171, !173, !174, !176, !178, !179, !180, !182, !183, !184, !186}
!llvm.named.register.sp = !{!187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/stree.c", i32 23, i32 2}
!2 = !{ptr @__func__.B_IS_IN_TREE, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @MIN_KEY, !5, !"MIN_KEY", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/stree.c", i32 197, i32 27}
!6 = !{ptr @__func__.get_rkey, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/reiserfs/stree.c", i32 268, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/reiserfs/stree.c", i32 273, i32 3}
!11 = !{ptr @__func__.reiserfs_check_path, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/reiserfs/stree.c", i32 349, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.pathrelse_and_restore, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/stree.c", i32 364, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.pathrelse, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/reiserfs/stree.c", i32 381, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/reiserfs/stree.c", i32 654, i32 4}
!22 = !{ptr @__func__.search_by_key, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/reiserfs/stree.c", i32 738, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/reiserfs/stree.c", i32 743, i32 17}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/stree.c", i32 744, i32 4}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/reiserfs/stree.c", i32 754, i32 4}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/reiserfs/stree.c", i32 766, i32 3}
!36 = !{ptr @__func__.search_for_position_by_key, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/reiserfs/stree.c", i32 879, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/stree.c", i32 889, i32 2}
!41 = !{ptr @__func__.reiserfs_delete_item, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/reiserfs/stree.c", i32 1285, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/reiserfs/stree.c", i32 1302, i32 4}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/reiserfs/stree.c", i32 1423, i32 4}
!49 = !{ptr @__func__.reiserfs_delete_solid_item, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/reiserfs/stree.c", i32 1443, i32 5}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/reiserfs/stree.c", i32 1484, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__func__.reiserfs_cut_from_item, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/reiserfs/stree.c", i32 1690, i32 4}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/reiserfs/stree.c", i32 1729, i32 5}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/reiserfs/stree.c", i32 1753, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/reiserfs/stree.c", i32 1769, i32 4}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/stree.c", i32 1777, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/reiserfs/stree.c", i32 1815, i32 4}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/stree.c", i32 1819, i32 4}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/reiserfs/stree.c", i32 1826, i32 4}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/reiserfs/stree.c", i32 1923, i32 3}
!82 = !{ptr @__func__.reiserfs_do_truncate, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/reiserfs/stree.c", i32 1930, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/reiserfs/stree.c", i32 1976, i32 4}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/reiserfs/stree.c", i32 1982, i32 3}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/reiserfs/stree.c", i32 2026, i32 2}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/reiserfs/stree.c", i32 2143, i32 4}
!96 = !{ptr @__func__.reiserfs_paste_into_item, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/reiserfs/stree.c", i32 2251, i32 4}
!100 = !{ptr @__func__.reiserfs_insert_item, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @MAX_KEY, !103, !"MAX_KEY", i1 false, i1 false}
!103 = !{!"../fs/reiserfs/stree.c", i32 200, i32 34}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!106 = !{ptr @__func__.key_in_buffer, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/reiserfs/stree.c", i32 330, i32 2}
!108 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/reiserfs/stree.c", i32 334, i32 2}
!111 = !{ptr @__func__.get_lkey, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/reiserfs/stree.c", i32 221, i32 2}
!113 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/reiserfs/stree.c", i32 227, i32 3}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/reiserfs/stree.c", i32 533, i32 3}
!118 = !{ptr @__func__.is_tree_node, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/reiserfs/stree.c", i32 419, i32 3}
!122 = !{ptr @__func__.is_leaf, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/reiserfs/stree.c", i32 427, i32 3}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/reiserfs/stree.c", i32 436, i32 3}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/reiserfs/stree.c", i32 450, i32 4}
!132 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/reiserfs/stree.c", i32 457, i32 4}
!135 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/reiserfs/stree.c", i32 464, i32 4}
!138 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/reiserfs/stree.c", i32 470, i32 4}
!141 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/reiserfs/stree.c", i32 477, i32 5}
!144 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/reiserfs/stree.c", i32 398, i32 4}
!147 = !{ptr @__func__.has_valid_deh_location, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/reiserfs/stree.c", i32 502, i32 3}
!151 = !{ptr @__func__.is_internal, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/reiserfs/stree.c", i32 510, i32 3}
!154 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/reiserfs/stree.c", i32 517, i32 3}
!157 = !{ptr @__func__.prepare_for_delete_or_cut, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/reiserfs/stree.c", i32 1058, i32 3}
!159 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__func__.prepare_for_direntry_item, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/reiserfs/stree.c", i32 998, i32 3}
!162 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/reiserfs/stree.c", i32 1614, i32 4}
!165 = !{ptr @__func__.indirect_to_direct_roll_back, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/reiserfs/stree.c", i32 1616, i32 3}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/reiserfs/stree.c", i32 1624, i32 3}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/reiserfs/stree.c", i32 1632, i32 2}
!173 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/reiserfs/stree.c", i32 1865, i32 3}
!178 = !{ptr @__func__.truncate_directory, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/reiserfs/stree.c", i32 2058, i32 4}
!182 = !{ptr @__func__.check_research_for_paste, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.96, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/reiserfs/stree.c", i32 2070, i32 4}
!186 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!187 = !{!"sp"}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"auto-init"}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{i64 2154671768, i64 2154672253, i64 2154671805, i64 2154671861, i64 2154671895, i64 2154671919, i64 2154671960, i64 2154671981, i64 2154672009, i64 2154672043}
!200 = !{i64 2153737806}
!201 = !{i64 2152830921}
!202 = !{i64 2152831128}
!203 = !{i64 2153740577}
!204 = !{i64 2154666132, i64 2154666617, i64 2154666169, i64 2154666225, i64 2154666259, i64 2154666283, i64 2154666324, i64 2154666345, i64 2154666373, i64 2154666407}
!205 = !{i64 2154680646, i64 2154681131, i64 2154680683, i64 2154680739, i64 2154680773, i64 2154680797, i64 2154680838, i64 2154680859, i64 2154680887, i64 2154680921}
!206 = !{i64 2154669959, i64 2154670444, i64 2154669996, i64 2154670052, i64 2154670086, i64 2154670110, i64 2154670151, i64 2154670172, i64 2154670200, i64 2154670234}
!207 = !{i64 2154683519, i64 2154684004, i64 2154683556, i64 2154683612, i64 2154683646, i64 2154683670, i64 2154683711, i64 2154683732, i64 2154683760, i64 2154683794}
!208 = !{i64 2154704659, i64 2154705144, i64 2154704696, i64 2154704752, i64 2154704786, i64 2154704810, i64 2154704851, i64 2154704872, i64 2154704900, i64 2154704934}
!209 = !{i64 2154697515, i64 2154698000, i64 2154697552, i64 2154697608, i64 2154697642, i64 2154697666, i64 2154697707, i64 2154697728, i64 2154697756, i64 2154697790}
!210 = !{i64 2154687057, i64 2154687542, i64 2154687094, i64 2154687150, i64 2154687184, i64 2154687208, i64 2154687249, i64 2154687270, i64 2154687298, i64 2154687332}
!211 = !{!"branch_weights", i32 2000, i32 1}
!212 = !{i64 2154688676, i64 2154689161, i64 2154688713, i64 2154688769, i64 2154688803, i64 2154688827, i64 2154688868, i64 2154688889, i64 2154688917, i64 2154688951}
!213 = !{i64 2154693209, i64 2154693694, i64 2154693246, i64 2154693302, i64 2154693336, i64 2154693360, i64 2154693401, i64 2154693422, i64 2154693450, i64 2154693484}
!214 = !{i64 2150785639, i64 2150786130, i64 2150785676, i64 2150785732, i64 2150785766, i64 2150785790, i64 2150785831, i64 2150785852, i64 2150785880, i64 2150785914}
!215 = !{i64 2154685445, i64 2154685930, i64 2154685482, i64 2154685538, i64 2154685572, i64 2154685596, i64 2154685637, i64 2154685658, i64 2154685686, i64 2154685720}
!216 = !{i64 2154711900, i64 2154712385, i64 2154711937, i64 2154711993, i64 2154712027, i64 2154712051, i64 2154712092, i64 2154712113, i64 2154712141, i64 2154712175}
!217 = !{i64 2154714109, i64 2154714594, i64 2154714146, i64 2154714202, i64 2154714236, i64 2154714260, i64 2154714301, i64 2154714322, i64 2154714350, i64 2154714384}
